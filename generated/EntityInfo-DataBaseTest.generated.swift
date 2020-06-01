// Generated using the ObjectBox Swift Generator — https://objectbox.io
// DO NOT EDIT

// swiftlint:disable all
import ObjectBox

// MARK: - Entity metadata


extension ProductEntity: ObjectBox.__EntityRelatable {
    internal typealias EntityType = ProductEntity

    internal var _id: EntityId<ProductEntity> {
        return EntityId<ProductEntity>(self.id.value)
    }
}

extension ProductEntity: ObjectBox.EntityInspectable {
    internal typealias EntityBindingType = ProductEntityBinding

    /// Generated metadata used by ObjectBox to persist the entity.
    internal static var entityInfo = ObjectBox.EntityInfo(name: "ProductEntity", id: 1)

    internal static var entityBinding = EntityBindingType()

    fileprivate static func buildEntity(modelBuilder: ObjectBox.ModelBuilder) throws {
        let entityBuilder = try modelBuilder.entityBuilder(for: ProductEntity.self, id: 1, uid: 6110242734134139392)
        try entityBuilder.addProperty(name: "id", type: Id.entityPropertyType, flags: [.id], id: 1, uid: 7685924735540724224)
        try entityBuilder.addProperty(name: "prdouctName", type: String.entityPropertyType, id: 2, uid: 6648189499218404096)
        try entityBuilder.addProperty(name: "prdouctID", type: String.entityPropertyType, id: 3, uid: 1203724177511789824)
        try entityBuilder.addProperty(name: "prdouctDes", type: String.entityPropertyType, id: 4, uid: 3847910419902337280)
        try entityBuilder.addProperty(name: "prdouctPrice", type: String.entityPropertyType, id: 5, uid: 3541118664194669056)
        try entityBuilder.addProperty(name: "prdouctUom", type: String.entityPropertyType, id: 6, uid: 7705520716054105600)
        try entityBuilder.addProperty(name: "prdouctCategory", type: String.entityPropertyType, id: 7, uid: 482752501308451584)

        try entityBuilder.lastProperty(id: 7, uid: 482752501308451584)
    }
}

extension ProductEntity {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.id == myId }
    internal static var id: Property<ProductEntity, Id, Id> { return Property<ProductEntity, Id, Id>(propertyId: 1, isPrimaryKey: true) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.prdouctName.startsWith("X") }
    internal static var prdouctName: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 2, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.prdouctID.startsWith("X") }
    internal static var prdouctID: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 3, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.prdouctDes.startsWith("X") }
    internal static var prdouctDes: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 4, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.prdouctPrice.startsWith("X") }
    internal static var prdouctPrice: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 5, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.prdouctUom.startsWith("X") }
    internal static var prdouctUom: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 6, isPrimaryKey: false) }
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { ProductEntity.prdouctCategory.startsWith("X") }
    internal static var prdouctCategory: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 7, isPrimaryKey: false) }

    fileprivate func __setId(identifier: ObjectBox.Id) {
        self.id = Id(identifier)
    }
}

extension ObjectBox.Property where E == ProductEntity {
    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .id == myId }

    internal static var id: Property<ProductEntity, Id, Id> { return Property<ProductEntity, Id, Id>(propertyId: 1, isPrimaryKey: true) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .prdouctName.startsWith("X") }

    internal static var prdouctName: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 2, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .prdouctID.startsWith("X") }

    internal static var prdouctID: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 3, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .prdouctDes.startsWith("X") }

    internal static var prdouctDes: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 4, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .prdouctPrice.startsWith("X") }

    internal static var prdouctPrice: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 5, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .prdouctUom.startsWith("X") }

    internal static var prdouctUom: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 6, isPrimaryKey: false) }

    /// Generated entity property information.
    ///
    /// You may want to use this in queries to specify fetch conditions, for example:
    ///
    ///     box.query { .prdouctCategory.startsWith("X") }

    internal static var prdouctCategory: Property<ProductEntity, String, Void> { return Property<ProductEntity, String, Void>(propertyId: 7, isPrimaryKey: false) }

}


/// Generated service type to handle persisting and reading entity data. Exposed through `ProductEntity.EntityBindingType`.
internal class ProductEntityBinding: NSObject, ObjectBox.EntityBinding {
    internal typealias EntityType = ProductEntity
    internal typealias IdType = Id

    override internal required init() {}

    internal func setEntityIdUnlessStruct(of entity: EntityType, to entityId: ObjectBox.Id) {
        entity.__setId(identifier: entityId)
    }

    internal func entityId(of entity: EntityType) -> ObjectBox.Id {
        return entity.id.value
    }

    internal func collect(fromEntity entity: EntityType, id: ObjectBox.Id,
                                  propertyCollector: ObjectBox.FlatBufferBuilder, store: ObjectBox.Store) {
        let propertyOffset_prdouctName = propertyCollector.prepare(string: entity.prdouctName)
        let propertyOffset_prdouctID = propertyCollector.prepare(string: entity.prdouctID)
        let propertyOffset_prdouctDes = propertyCollector.prepare(string: entity.prdouctDes)
        let propertyOffset_prdouctPrice = propertyCollector.prepare(string: entity.prdouctPrice)
        let propertyOffset_prdouctUom = propertyCollector.prepare(string: entity.prdouctUom)
        let propertyOffset_prdouctCategory = propertyCollector.prepare(string: entity.prdouctCategory)

        propertyCollector.collect(id, at: 2 + 2 * 1)
        propertyCollector.collect(dataOffset: propertyOffset_prdouctName, at: 2 + 2 * 2)
        propertyCollector.collect(dataOffset: propertyOffset_prdouctID, at: 2 + 2 * 3)
        propertyCollector.collect(dataOffset: propertyOffset_prdouctDes, at: 2 + 2 * 4)
        propertyCollector.collect(dataOffset: propertyOffset_prdouctPrice, at: 2 + 2 * 5)
        propertyCollector.collect(dataOffset: propertyOffset_prdouctUom, at: 2 + 2 * 6)
        propertyCollector.collect(dataOffset: propertyOffset_prdouctCategory, at: 2 + 2 * 7)
    }

    internal func createEntity(entityReader: ObjectBox.FlatBufferReader, store: ObjectBox.Store) -> EntityType {
        let entity = ProductEntity()

        entity.id = entityReader.read(at: 2 + 2 * 1)
        entity.prdouctName = entityReader.read(at: 2 + 2 * 2)
        entity.prdouctID = entityReader.read(at: 2 + 2 * 3)
        entity.prdouctDes = entityReader.read(at: 2 + 2 * 4)
        entity.prdouctPrice = entityReader.read(at: 2 + 2 * 5)
        entity.prdouctUom = entityReader.read(at: 2 + 2 * 6)
        entity.prdouctCategory = entityReader.read(at: 2 + 2 * 7)

        return entity
    }
}


/// Helper function that allows calling Enum(rawValue: value) with a nil value, which will return nil.
fileprivate func optConstruct<T: RawRepresentable>(_ type: T.Type, rawValue: T.RawValue?) -> T? {
    guard let rawValue = rawValue else { return nil }
    return T(rawValue: rawValue)
}

// MARK: - Store setup

fileprivate func cModel() throws -> OpaquePointer {
    let modelBuilder = try ObjectBox.ModelBuilder()
    try ProductEntity.buildEntity(modelBuilder: modelBuilder)
    modelBuilder.lastEntity(id: 1, uid: 6110242734134139392)
    return modelBuilder.finish()
}

extension ObjectBox.Store {
    /// A store with a fully configured model. Created by the code generator with your model's metadata in place.
    ///
    /// - Parameters:
    ///   - directoryPath: Directory path to store database files in.
    ///   - maxDbSizeInKByte: Limit of on-disk space for the database files. Default is `1024 * 1024` (1 GiB).
    ///   - fileMode: UNIX-style bit mask used for the database files; default is `0o755`.
    ///   - maxReaders: Maximum amount of concurrent readers, tailored to your use case. Default is `0` (unlimited).
    internal convenience init(directoryPath: String, maxDbSizeInKByte: UInt64 = 1024 * 1024, fileMode: UInt32 = 0o755, maxReaders: UInt32 = 0) throws {
        try self.init(
            model: try cModel(),
            directory: directoryPath,
            maxDbSizeInKByte: maxDbSizeInKByte,
            fileMode: fileMode,
            maxReaders: maxReaders)
    }
}

// swiftlint:enable all
