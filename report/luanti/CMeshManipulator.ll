Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CMeshManipulator?download=true
inline.NumInlined: 1427
inline.NumDeleted: 509
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0
@.str.1 = private unnamed_addr constant [35 x i8] c"src->getType() == video::EIT_16BIT\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"/opt-bench/work/luanti/luanti/irr/src/CMeshManipulator.cpp\00", align 1
@__PRETTY_FUNCTION__._ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE = private unnamed_addr constant [76 x i8] c"void scene::copyIndices(const scene::IIndexBuffer *, scene::SIndexBuffer *)\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"vector::_M_realloc_insert\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ReferenceCounter > 0\00", align 1
@.str.6 = private unnamed_addr constant [62 x i8] c"/opt-bench/work/luanti/luanti/irr/include/IReferenceCounted.h\00", align 1
@__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv = private unnamed_addr constant [37 x i8] c"bool IReferenceCounted::drop() const\00", align 1
@.str.7 = private unnamed_addr constant [48 x i8] c"getIndexBuffer()->getType() == video::EIT_16BIT\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"/opt-bench/work/luanti/luanti/irr/include/IMeshBuffer.h\00", align 1
@__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv = private unnamed_addr constant [38 x i8] c"u16 *scene::IMeshBuffer::getIndices()\00", align 1
@_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11CMeshBufferIN5video9S3DVertexEEE, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14setBoundingBoxERKN4core8aabbox3dIfEE, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE22recalculateBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE6appendEPKvjPKtj, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE16setPrimitiveTypeENS_16E_PRIMITIVE_TYPEE, ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE16getPrimitiveTypeEv, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev, ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11CMeshBufferIN5video9S3DVertexEEE, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video9S3DVertexEED1Ev, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video9S3DVertexEED0Ev] }, comdat, align 8
@_ZTTN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video9S3DVertexEEE0_NS_11IMeshBufferE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video9S3DVertexEEE0_NS_11IMeshBufferE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video9S3DVertexEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN5scene11CMeshBufferIN5video9S3DVertexEEE0_NS_11IMeshBufferE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11IMeshBufferE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5scene11IMeshBufferD1Ev, ptr @_ZN5scene11IMeshBufferD0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11IMeshBufferE, ptr @_ZTv0_n24_N5scene11IMeshBufferD1Ev, ptr @_ZTv0_n24_N5scene11IMeshBufferD0Ev] }, comdat, align 8
@_ZTIN5scene11IMeshBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene11IMeshBufferE, i32 0, i32 1, ptr @_ZTI17IReferenceCounted, i64 -6141 }, comdat, align 8
@_ZTSN5scene11IMeshBufferE = linkonce_odr constant [22 x i8] c"N5scene11IMeshBufferE\00", comdat, align 1
@_ZTIN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE, ptr @_ZTIN5scene11IMeshBufferE }, comdat, align 8
@_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE = linkonce_odr constant [42 x i8] c"N5scene11CMeshBufferIN5video9S3DVertexEEE\00", comdat, align 1
@_ZTVN5scene13CVertexBufferIN5video9S3DVertexEEE = linkonce_odr constant { [19 x ptr], [5 x ptr] } { [19 x ptr] [ptr inttoptr (i64 72 to ptr), ptr null, ptr @_ZTIN5scene13CVertexBufferIN5video9S3DVertexEEE, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE13getBufferTypeEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE14getElementSizeEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE8getCountEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE7getDataEv, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED0Ev, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE7getTypeEv, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE7getDataEv, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE11getPositionEj, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE11getPositionEj, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE9getNormalEj, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE9getNormalEj, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE10getTCoordsEj, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE10getTCoordsEj, ptr @_ZNK5scene13CVertexBufferIN5video9S3DVertexEE15getWeightBufferEv, ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEE13useSwSkinningEv], [5 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN5scene13CVertexBufferIN5video9S3DVertexEEE, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video9S3DVertexEED1Ev, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video9S3DVertexEED0Ev] }, comdat, align 8
@_ZTIN5scene13IVertexBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene13IVertexBufferE, i32 2, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTIN5scene8HWBufferE, i64 2 }, comdat, align 8
@_ZTSN5scene13IVertexBufferE = linkonce_odr constant [24 x i8] c"N5scene13IVertexBufferE\00", comdat, align 1
@_ZTIN5scene8HWBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene8HWBufferE, i32 0, i32 1, ptr @_ZTI17IReferenceCounted, i64 -6141 }, comdat, align 8
@_ZTSN5scene8HWBufferE = linkonce_odr constant [18 x i8] c"N5scene8HWBufferE\00", comdat, align 1
@_ZTIN5scene13CVertexBufferIN5video9S3DVertexEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE, ptr @_ZTIN5scene13IVertexBufferE }, comdat, align 8
@_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE = linkonce_odr constant [44 x i8] c"N5scene13CVertexBufferIN5video9S3DVertexEEE\00", comdat, align 1
@_ZTVN5scene12CIndexBufferItEE = linkonce_odr constant { [11 x ptr], [5 x ptr] } { [11 x ptr] [ptr inttoptr (i64 56 to ptr), ptr null, ptr @_ZTIN5scene12CIndexBufferItEE, ptr @_ZNK5scene12CIndexBufferItE13getBufferTypeEv, ptr @_ZNK5scene12CIndexBufferItE14getElementSizeEv, ptr @_ZNK5scene12CIndexBufferItE8getCountEv, ptr @_ZNK5scene12CIndexBufferItE7getDataEv, ptr @_ZN5scene12CIndexBufferItED1Ev, ptr @_ZN5scene12CIndexBufferItED0Ev, ptr @_ZNK5scene12CIndexBufferItE7getTypeEv, ptr @_ZN5scene12CIndexBufferItE7getDataEv], [5 x ptr] [ptr inttoptr (i64 -56 to ptr), ptr inttoptr (i64 -56 to ptr), ptr @_ZTIN5scene12CIndexBufferItEE, ptr @_ZTv0_n24_N5scene12CIndexBufferItED1Ev, ptr @_ZTv0_n24_N5scene12CIndexBufferItED0Ev] }, comdat, align 8
@_ZTIN5scene12IIndexBufferE = linkonce_odr constant { ptr, ptr, i32, i32, ptr, i64, ptr, i64 } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv121__vmi_class_type_infoE, i64 2), ptr @_ZTSN5scene12IIndexBufferE, i32 2, i32 2, ptr @_ZTI17IReferenceCounted, i64 -6141, ptr @_ZTIN5scene8HWBufferE, i64 2 }, comdat, align 8
@_ZTSN5scene12IIndexBufferE = linkonce_odr constant [23 x i8] c"N5scene12IIndexBufferE\00", comdat, align 1
@_ZTIN5scene12CIndexBufferItEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene12CIndexBufferItEE, ptr @_ZTIN5scene12IIndexBufferE }, comdat, align 8
@_ZTSN5scene12CIndexBufferItEE = linkonce_odr constant [26 x i8] c"N5scene12CIndexBufferItEE\00", comdat, align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"vector::_M_range_insert\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"T::getType() == src->getType()\00", align 1
@__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE = private unnamed_addr constant [105 x i8] c"void scene::copyVertices(const scene::IVertexBuffer *, scene::CVertexBuffer<T> *) [T = video::S3DVertex]\00", align 1
@_ZTVN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE15getVertexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE15getVertexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14getIndexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14getIndexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14getBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE14setBoundingBoxERKN4core8aabbox3dIfEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE22recalculateBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE6appendEPKvjPKtj, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE16setPrimitiveTypeENS_16E_PRIMITIVE_TYPEE, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertex2TCoordsEE16getPrimitiveTypeEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED0Ev] }, comdat, align 8
@_ZTTN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE0_NS_11IMeshBufferE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE0_NS_11IMeshBufferE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE0_NS_11IMeshBufferE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11IMeshBufferE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5scene11IMeshBufferD1Ev, ptr @_ZN5scene11IMeshBufferD0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11IMeshBufferE, ptr @_ZTv0_n24_N5scene11IMeshBufferD1Ev, ptr @_ZTv0_n24_N5scene11IMeshBufferD0Ev] }, comdat, align 8
@_ZTIN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTIN5scene11IMeshBufferE }, comdat, align 8
@_ZTSN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant [51 x i8] c"N5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE\00", comdat, align 1
@_ZTVN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { [19 x ptr], [5 x ptr] } { [19 x ptr] [ptr inttoptr (i64 72 to ptr), ptr null, ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE13getBufferTypeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE14getElementSizeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE8getCountEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE7getDataEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED0Ev, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE7getTypeEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE7getDataEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE11getPositionEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE11getPositionEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE9getNormalEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE9getNormalEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE10getTCoordsEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE10getTCoordsEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE15getWeightBufferEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEE13useSwSkinningEv], [5 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED0Ev] }, comdat, align 8
@_ZTIN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE, ptr @_ZTIN5scene13IVertexBufferE }, comdat, align 8
@_ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE = linkonce_odr constant [53 x i8] c"N5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE\00", comdat, align 1
@__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video17S3DVertex2TCoordsEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE = private unnamed_addr constant [113 x i8] c"void scene::copyVertices(const scene::IVertexBuffer *, scene::CVertexBuffer<T> *) [T = video::S3DVertex2TCoords]\00", align 1
@_ZTVN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE11getMaterialEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE15getVertexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE15getVertexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE14getIndexBufferEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE14getIndexBufferEv, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE14getBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE14setBoundingBoxERKN4core8aabbox3dIfEE, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE22recalculateBoundingBoxEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE6appendEPKvjPKtj, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEE16setPrimitiveTypeENS_16E_PRIMITIVE_TYPEE, ptr @_ZNK5scene11CMeshBufferIN5video17S3DVertexTangentsEE16getPrimitiveTypeEv, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZTv0_n24_N5scene11CMeshBufferIN5video17S3DVertexTangentsEED0Ev] }, comdat, align 8
@_ZTTN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr unnamed_addr constant [4 x ptr] [ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 112) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE0_NS_11IMeshBufferE, i32 0, i32 0, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTCN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE0_NS_11IMeshBufferE, i32 0, i32 1, i32 3), ptr getelementptr inbounds inrange(-24, 16) ({ [17 x ptr], [5 x ptr] }, ptr @_ZTVN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, i32 0, i32 1, i32 3)], comdat, align 8
@_ZTCN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE0_NS_11IMeshBufferE = linkonce_odr constant { [17 x ptr], [5 x ptr] } { [17 x ptr] [ptr inttoptr (i64 184 to ptr), ptr null, ptr @_ZTIN5scene11IMeshBufferE, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @__cxa_pure_virtual, ptr @_ZN5scene11IMeshBufferD1Ev, ptr @_ZN5scene11IMeshBufferD0Ev], [5 x ptr] [ptr inttoptr (i64 -184 to ptr), ptr inttoptr (i64 -184 to ptr), ptr @_ZTIN5scene11IMeshBufferE, ptr @_ZTv0_n24_N5scene11IMeshBufferD1Ev, ptr @_ZTv0_n24_N5scene11IMeshBufferD0Ev] }, comdat, align 8
@_ZTIN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTIN5scene11IMeshBufferE }, comdat, align 8
@_ZTSN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant [51 x i8] c"N5scene11CMeshBufferIN5video17S3DVertexTangentsEEE\00", comdat, align 1
@_ZTVN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { [19 x ptr], [5 x ptr] } { [19 x ptr] [ptr inttoptr (i64 72 to ptr), ptr null, ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE13getBufferTypeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE14getElementSizeEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE8getCountEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE7getDataEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED0Ev, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE7getTypeEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE7getDataEv, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE11getPositionEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE11getPositionEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE9getNormalEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE9getNormalEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE10getTCoordsEj, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE10getTCoordsEj, ptr @_ZNK5scene13CVertexBufferIN5video17S3DVertexTangentsEE15getWeightBufferEv, ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEE13useSwSkinningEv], [5 x ptr] [ptr inttoptr (i64 -72 to ptr), ptr inttoptr (i64 -72 to ptr), ptr @_ZTIN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, ptr @_ZTv0_n24_N5scene13CVertexBufferIN5video17S3DVertexTangentsEED0Ev] }, comdat, align 8
@_ZTIN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE, ptr @_ZTIN5scene13IVertexBufferE }, comdat, align 8
@_ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE = linkonce_odr constant [53 x i8] c"N5scene13CVertexBufferIN5video17S3DVertexTangentsEEE\00", comdat, align 1
@__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video17S3DVertexTangentsEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE = private unnamed_addr constant [113 x i8] c"void scene::copyVertices(const scene::IVertexBuffer *, scene::CVertexBuffer<T> *) [T = video::S3DVertexTangents]\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene16CMeshManipulator18recalculateNormalsEPNS_11IMeshBufferEbb(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef ptr %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !149 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(28) %i.d), !inline_history !149
  %i.i = icmp eq i32 %i.h, 0
  %i.j = load ptr, ptr %1, align 8, !tbaa !20
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef i32 %i.p(ptr noundef nonnull align 8 dereferenceable(28) %i.m) ; 6 uses
  %i.r = load ptr, ptr %1, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call noundef ptr %i.t(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef i32 %i.x(ptr noundef nonnull align 8 dereferenceable(28) %i.u) ; 8 uses
  %i.z = load ptr, ptr %1, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !20
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call noundef i32 %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.ac)
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  br i1 %i.i, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  br i1 %i.ah, label %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv) #18
  unreachable

_ZN5scene11IMeshBuffer10getIndicesEv.exit.i:      ; preds = %bb.c
  %i.ai = load ptr, ptr %1, align 8, !tbaa !20
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = tail call noundef ptr %i.ak(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !150 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !20
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 56
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = tail call noundef ptr %i.ao(ptr noundef nonnull align 8 dereferenceable(28) %i.al), !inline_history !150 ; 6 uses
  br i1 %2, label %.preheader132.i, label %.preheader133.i

.preheader133.i:                                  ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i
  %.not144.i = icmp eq i32 %i.y, 0
  br i1 %.not144.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph.i

.preheader132.i:                                  ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i
  %.not136.i = icmp eq i32 %i.q, 0                ; 2 uses
  br i1 %.not136.i, label %.preheader131.i, label %.lr.ph138.i.a

.lr.ph.i:                                         ; preds = %.preheader133.i, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i
  %.0135.i = phi i32 [ %i.ey, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i ], [ 0, %.preheader133.i ] ; 4 uses
  %i.aq = zext i32 %.0135.i to i64
  %i.ar = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.aq ; 2 uses
  %i.as = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.at = zext i16 %i.as to i32
  %i.au = load ptr, ptr %1, align 8, !tbaa !20
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = tail call noundef ptr %i.aw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !20
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 72
  %i.ba = load ptr, ptr %i.az, align 8
  %i.bb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ba(ptr noundef nonnull align 8 dereferenceable(28) %i.ax, i32 noundef %i.at), !inline_history !151 ; 2 uses
  %i.bc = add nuw i32 %.0135.i, 1
  %i.bd = zext i32 %i.bc to i64
  %i.be = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bd ; 2 uses
  %i.bf = load i16, ptr %i.be, align 2, !tbaa !22
  %i.bg = zext i16 %i.bf to i32
  %i.bh = load ptr, ptr %1, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef ptr %i.bj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !20
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 72
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.bn(ptr noundef nonnull align 8 dereferenceable(28) %i.bk, i32 noundef %i.bg), !inline_history !151 ; 2 uses
  %i.bp = add i32 %.0135.i, 2
  %i.bq = zext i32 %i.bp to i64
  %i.br = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.bq ; 2 uses
  %i.bs = load i16, ptr %i.br, align 2, !tbaa !22
  %i.bt = zext i16 %i.bs to i32
  %i.bu = load ptr, ptr %1, align 8, !tbaa !20
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8
  %i.bx = tail call noundef ptr %i.bw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !20
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 72
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ca(ptr noundef nonnull align 8 dereferenceable(28) %i.bx, i32 noundef %i.bt), !inline_history !151 ; 2 uses
  %i.cc = load float, ptr %i.bo, align 4, !tbaa !25
  %i.cd = load float, ptr %i.bb, align 4, !tbaa !25
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.cg = load float, ptr %i.cb, align 4, !tbaa !25
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.ci = load <2 x float>, ptr %i.ce, align 4, !tbaa !26 ; 2 uses
  %i.cj = load <2 x float>, ptr %i.cf, align 4, !tbaa !26 ; 3 uses
  %i.ck = fsub <2 x float> %i.ci, %i.cj           ; 2 uses
  %i.cl = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cm = insertelement <2 x float> %i.cl, float %i.cc, i64 1
  %i.cn = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.co = insertelement <2 x float> %i.cn, float %i.cd, i64 1 ; 2 uses
  %i.cp = fsub <2 x float> %i.cm, %i.co           ; 2 uses
  %i.cq = load <2 x float>, ptr %i.ch, align 4, !tbaa !26 ; 2 uses
  %i.cr = shufflevector <2 x float> %i.cq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.cg, i64 1
  %i.ct = fsub <2 x float> %i.cs, %i.co           ; 2 uses
  %i.cu = fsub <2 x float> %i.cq, %i.cj           ; 2 uses
  %i.cv = fneg <2 x float> %i.cu
  %i.cw = fmul <2 x float> %i.cp, %i.cv
  %i.cx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.ct, <2 x float> %i.cw) ; 5 uses
  %i.cy = extractelement <2 x float> %i.ct, i64 1
  %i.cz = fneg float %i.cy
  %i.da = extractelement <2 x float> %i.ck, i64 0
  %i.db = fmul float %i.da, %i.cz
  %i.dc = extractelement <2 x float> %i.cp, i64 1
  %i.dd = extractelement <2 x float> %i.cu, i64 0
  %i.de = tail call float @llvm.fmuladd.f32(float %i.dc, float %i.dd, float %i.db) ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.cx, %i.cx
  %i.df = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.dg = extractelement <2 x float> %i.cx, i64 0 ; 2 uses
  %i.dh = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.df)
  %i.di = tail call float @llvm.fmuladd.f32(float %i.de, float %i.de, float %i.dh) ; 2 uses
  %i.dj = fcmp oeq float %i.di, 0.000000e+00
  br i1 %i.dj, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.dk = fpext float %i.di to double
  %sqrt.i.i.i.i = tail call double @sqrt(double noundef %i.dk) #19
  %i.dl = fdiv double 1.000000e+00, %sqrt.i.i.i.i ; 2 uses
  %i.dm = fpext <2 x float> %i.cx to <2 x double>
  %i.dn = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x double> %i.do, %i.dm
  %i.dq = fptrunc <2 x double> %i.dp to <2 x float>
  %i.dr = fpext float %i.de to double
  %i.ds = fmul double %i.dl, %i.dr
  %i.dt = fptrunc double %i.ds to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i: ; preds = %bb.e, %.lr.ph.i
  %.sroa.0117.0.i = phi <2 x float> [ %i.cx, %.lr.ph.i ], [ %i.dq, %bb.e ] ; 3 uses
  %.sroa.8122.0.i = phi float [ %i.de, %.lr.ph.i ], [ %i.dt, %bb.e ] ; 3 uses
  %i.du = load i16, ptr %i.ar, align 2, !tbaa !22
  %i.dv = zext i16 %i.du to i32
  %i.dw = load ptr, ptr %1, align 8, !tbaa !20
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8
  %i.dz = tail call noundef ptr %i.dy(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !20
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  %i.ec = load ptr, ptr %i.eb, align 8
  %i.ed = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ec(ptr noundef nonnull align 8 dereferenceable(28) %i.dz, i32 noundef %i.dv), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0117.0.i, ptr %i.ed, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ed, i64 8
  store float %.sroa.8122.0.i, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !26
  %i.ee = load i16, ptr %i.be, align 2, !tbaa !22
  %i.ef = zext i16 %i.ee to i32
  %i.eg = load ptr, ptr %1, align 8, !tbaa !20
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 24
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = tail call noundef ptr %i.ei(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !20
  %i.el = getelementptr inbounds nuw i8, ptr %i.ek, i64 88
  %i.em = load ptr, ptr %i.el, align 8
  %i.en = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.em(ptr noundef nonnull align 8 dereferenceable(28) %i.ej, i32 noundef %i.ef), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0117.0.i, ptr %i.en, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx127.i.a = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  store float %.sroa.8122.0.i, ptr %.sroa.6.0..sroa_idx127.i.a, align 4, !tbaa !26
  %i.eo = load i16, ptr %i.br, align 2, !tbaa !22
  %i.ep = zext i16 %i.eo to i32
  %i.eq = load ptr, ptr %1, align 8, !tbaa !20
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.es = load ptr, ptr %i.er, align 8
  %i.et = tail call noundef ptr %i.es(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !20
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 88
  %i.ew = load ptr, ptr %i.ev, align 8
  %i.ex = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ew(ptr noundef nonnull align 8 dereferenceable(28) %i.et, i32 noundef %i.ep), !inline_history !152 ; 2 uses
  store <2 x float> %.sroa.0117.0.i, ptr %i.ex, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx129.i = getelementptr inbounds nuw i8, ptr %i.ex, i64 8
  store float %.sroa.8122.0.i, ptr %.sroa.6.0..sroa_idx129.i, align 4, !tbaa !26
  %i.ey = add i32 %.0135.i, 3                     ; 2 uses
  %i.ez = icmp ult i32 %i.ey, %i.y
  br i1 %i.ez, label %.lr.ph.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, !llvm.loop !153

.preheader131.i:                                  ; preds = %.lr.ph138.i.a, %.preheader132.i
  %.not145.i = icmp eq i32 %i.y, 0
  br i1 %.not145.i, label %.preheader.i, label %.lr.ph140.i

.lr.ph138.i.a:                                    ; preds = %.preheader132.i, %.lr.ph138.i.a
  %.078137.i = phi i32 [ %i.fj, %.lr.ph138.i.a ], [ 0, %.preheader132.i ] ; 2 uses
  %i.fa = load ptr, ptr %1, align 8, !tbaa !20
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = tail call noundef ptr %i.fc(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !20
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 88
  %i.fg = load ptr, ptr %i.ff, align 8
  %i.fh = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.fg(ptr noundef nonnull align 8 dereferenceable(28) %i.fd, i32 noundef %.078137.i), !inline_history !152 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.fh, align 4, !tbaa !26
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fh, i64 8
  store float 0.000000e+00, ptr %i.fi, align 4, !tbaa !28
  %i.fj = add nuw i32 %.078137.i, 1               ; 2 uses
  %.not.i = icmp eq i32 %i.fj, %i.q
  br i1 %.not.i, label %.preheader131.i, label %.lr.ph138.i.a, !llvm.loop !154

.preheader.i:                                     ; preds = %bb.h, %.preheader131.i
  br i1 %.not136.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i

.lr.ph140.i:                                      ; preds = %.preheader131.i, %bb.h
  %.1139.i = phi i32 [ %i.lp, %bb.h ], [ 0, %.preheader131.i ] ; 4 uses
  %i.fk = zext i32 %.1139.i to i64
  %i.fl = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fk ; 2 uses
  %i.fm = load i16, ptr %i.fl, align 2, !tbaa !22
  %i.fn = zext i16 %i.fm to i32
  %i.fo = load ptr, ptr %1, align 8, !tbaa !20
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = tail call noundef ptr %i.fq(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.fs = load ptr, ptr %i.fr, align 8, !tbaa !20
  %i.ft = getelementptr inbounds nuw i8, ptr %i.fs, i64 72
  %i.fu = load ptr, ptr %i.ft, align 8
  %i.fv = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.fu(ptr noundef nonnull align 8 dereferenceable(28) %i.fr, i32 noundef %i.fn), !inline_history !151 ; 2 uses
  %i.fw = add nuw i32 %.1139.i, 1
  %i.fx = zext i32 %i.fw to i64
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.fx ; 2 uses
  %i.fz = load i16, ptr %i.fy, align 2, !tbaa !22
  %i.ga = zext i16 %i.fz to i32
  %i.gb = load ptr, ptr %1, align 8, !tbaa !20
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 24
  %i.gd = load ptr, ptr %i.gc, align 8
  %i.ge = tail call noundef ptr %i.gd(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !20
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 72
  %i.gh = load ptr, ptr %i.gg, align 8
  %i.gi = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.gh(ptr noundef nonnull align 8 dereferenceable(28) %i.ge, i32 noundef %i.ga), !inline_history !151 ; 2 uses
  %i.gj = add i32 %.1139.i, 2
  %i.gk = zext i32 %i.gj to i64
  %i.gl = getelementptr inbounds nuw [2 x i8], ptr %i.ap, i64 %i.gk ; 2 uses
  %i.gm = load i16, ptr %i.gl, align 2, !tbaa !22
  %i.gn = zext i16 %i.gm to i32
  %i.go = load ptr, ptr %1, align 8, !tbaa !20
  %i.gp = getelementptr inbounds nuw i8, ptr %i.go, i64 24
  %i.gq = load ptr, ptr %i.gp, align 8
  %i.gr = tail call noundef ptr %i.gq(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !151 ; 2 uses
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !20
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gs, i64 72
  %i.gu = load ptr, ptr %i.gt, align 8
  %i.gv = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.gu(ptr noundef nonnull align 8 dereferenceable(28) %i.gr, i32 noundef %i.gn), !inline_history !151 ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gi, i64 4
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fv, i64 4
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gv, i64 4
  %i.gz = load float, ptr %i.fv, align 4, !tbaa !25 ; 2 uses
  %i.ha = load <2 x float>, ptr %i.gi, align 4, !tbaa !26 ; 4 uses
  %i.hb = load <2 x float>, ptr %i.gv, align 4, !tbaa !26 ; 4 uses
  %i.hc = load <2 x float>, ptr %i.gw, align 4, !tbaa !26 ; 5 uses
  %i.hd = load <2 x float>, ptr %i.gx, align 4, !tbaa !26 ; 5 uses
  %i.he = fsub <2 x float> %i.hc, %i.hd           ; 2 uses
  %i.hf = shufflevector <2 x float> %i.hc, <2 x float> %i.ha, <2 x i32> <i32 1, i32 2>
  %i.hg = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.hh = insertelement <2 x float> %i.hg, float %i.gz, i64 1 ; 2 uses
  %i.hi = fsub <2 x float> %i.hf, %i.hh           ; 2 uses
  %i.hj = load <2 x float>, ptr %i.gy, align 4, !tbaa !26 ; 5 uses
  %i.hk = shufflevector <2 x float> %i.hj, <2 x float> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hl = fsub <2 x float> %i.hk, %i.hh           ; 2 uses
  %i.hm = fsub <2 x float> %i.hj, %i.hd           ; 2 uses
  %i.hn = fneg <2 x float> %i.hm
  %i.ho = fmul <2 x float> %i.hi, %i.hn
  %i.hp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.he, <2 x float> %i.hl, <2 x float> %i.ho) ; 5 uses
  %i.hq = extractelement <2 x float> %i.hl, i64 1
  %i.hr = fneg float %i.hq
  %i.hs = extractelement <2 x float> %i.he, i64 0
  %i.ht = fmul float %i.hs, %i.hr
  %i.hu = extractelement <2 x float> %i.hi, i64 1
  %i.hv = extractelement <2 x float> %i.hm, i64 0
  %i.hw = tail call float @llvm.fmuladd.f32(float %i.hu, float %i.hv, float %i.ht) ; 4 uses
  %foldExtExtBinop89.a = fmul <2 x float> %i.hp, %i.hp
  %i.hx = extractelement <2 x float> %foldExtExtBinop89.a, i64 1
  %i.hy = extractelement <2 x float> %i.hp, i64 0 ; 2 uses
  %i.hz = tail call float @llvm.fmuladd.f32(float %i.hy, float %i.hy, float %i.hx)
  %i.ia = tail call float @llvm.fmuladd.f32(float %i.hw, float %i.hw, float %i.hz) ; 2 uses
  %i.ib = fcmp oeq float %i.ia, 0.000000e+00
  br i1 %i.ib, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i, label %bb.f

bb.f:                                             ; preds = %.lr.ph140.i
  %i.ic = fpext float %i.ia to double
  %sqrt.i.i.i83.i = tail call double @sqrt(double noundef %i.ic) #19
  %i.id = fdiv double 1.000000e+00, %sqrt.i.i.i83.i ; 2 uses
  %i.ie = fpext <2 x float> %i.hp to <2 x double>
  %i.if = insertelement <2 x double> poison, double %i.id, i64 0
  %i.ig = shufflevector <2 x double> %i.if, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ih = fmul <2 x double> %i.ig, %i.ie
  %i.ii = fptrunc <2 x double> %i.ih to <2 x float>
  %i.ij = fpext float %i.hw to double
  %i.ik = fmul double %i.id, %i.ij
  %i.il = fptrunc double %i.ik to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i: ; preds = %bb.f, %.lr.ph140.i
  %.sroa.8.0.i = phi float [ %i.hw, %.lr.ph140.i ], [ %i.il, %bb.f ] ; 3 uses
  %.sroa.0101.0.i = phi <2 x float> [ %i.hp, %.lr.ph140.i ], [ %i.ii, %bb.f ] ; 3 uses
  br i1 %3, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i
  %foldExtExtBinop91.a = fsub <2 x float> %i.ha, %i.hb
  %i.im = extractelement <2 x float> %foldExtExtBinop91.a, i64 0 ; 2 uses
  %foldExtExtBinop93.a = fsub <2 x float> %i.hc, %i.hj ; 2 uses
  %foldExtExtBinop95.a = fsub <2 x float> %i.hc, %i.hj
  %i.in = extractelement <2 x float> %foldExtExtBinop95.a, i64 1 ; 2 uses
  %foldExtExtBinop97.a = fmul <2 x float> %foldExtExtBinop93.a, %foldExtExtBinop93.a
  %i.io = extractelement <2 x float> %foldExtExtBinop97.a, i64 0
  %i.ip = tail call float @llvm.fmuladd.f32(float %i.im, float %i.im, float %i.io)
  %i.iq = tail call noundef float @llvm.fmuladd.f32(float %i.in, float %i.in, float %i.ip) ; 3 uses
  %sqrt26.i.i = tail call float @sqrtf(float noundef %i.iq) #19 ; 2 uses
  %i.ir = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.is = shufflevector <2 x float> %i.ir, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = shufflevector <2 x float> %i.hb, <2 x float> %i.ha, <2 x i32> <i32 0, i32 2>
  %i.iu = fsub <2 x float> %i.is, %i.it           ; 2 uses
  %i.iv = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.iw = shufflevector <2 x float> %i.hb, <2 x float> %i.ha, <2 x i32> <i32 1, i32 3>
  %i.ix = fsub <2 x float> %i.iv, %i.iw           ; 2 uses
  %i.iy = shufflevector <2 x float> %i.hd, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.iz = shufflevector <2 x float> %i.hc, <2 x float> %i.hj, <2 x i32> <i32 3, i32 1>
  %i.ja = fsub <2 x float> %i.iy, %i.iz           ; 2 uses
  %i.jb = fmul <2 x float> %i.ix, %i.ix
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iu, <2 x float> %i.iu, <2 x float> %i.jb)
  %i.jd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ja, <2 x float> %i.ja, <2 x float> %i.jc) ; 4 uses
  %4 = shufflevector <2 x float> %i.jd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.je = extractelement <2 x float> %i.jd, i64 0 ; 2 uses
  %sqrt25.i.i = tail call float @sqrtf(float noundef %i.je) #19
  %i.jf = extractelement <2 x float> %i.jd, i64 1 ; 2 uses
  %sqrt.i.i = tail call float @sqrtf(float noundef %i.jf) #19 ; 2 uses
  %i.jg = fadd float %i.jf, %i.je
  %i.jh = fsub float %i.jg, %i.iq
  %5 = insertelement <2 x float> poison, float %sqrt26.i.i, i64 0
  %6 = insertelement <2 x float> %5, float %sqrt25.i.i, i64 1
  %7 = fmul <2 x float> %6, splat (float 2.000000e+00) ; 2 uses
  %8 = extractelement <2 x float> %7, i64 1
  %i.ji = fmul float %8, %sqrt.i.i
  %i.jj = fdiv float %i.jh, %i.ji
  %i.jk = tail call float @acosf(float noundef %i.jj) #19
  %9 = fsub <2 x float> %4, %i.jd
  %10 = insertelement <2 x float> poison, float %i.iq, i64 0
  %11 = shufflevector <2 x float> %10, <2 x float> poison, <2 x i32> zeroinitializer
  %12 = fadd <2 x float> %11, %9
  %13 = insertelement <2 x float> poison, float %sqrt.i.i, i64 0
  %14 = insertelement <2 x float> %13, float %sqrt26.i.i, i64 1
  %15 = fmul <2 x float> %7, %14
  %16 = fdiv <2 x float> %12, %15                 ; 2 uses
  %17 = extractelement <2 x float> %16, i64 0
  %18 = tail call float @acosf(float noundef %17) #19
  %19 = extractelement <2 x float> %16, i64 1
  %i.jl = tail call float @acosf(float noundef %19) #19
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.jk, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %18, i64 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i
  %.sroa.7.0.i = phi float [ %i.jl, %bb.g ], [ 1.000000e+00, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i ] ; 2 uses
  %.sroa.098.0.i = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i, %bb.g ], [ splat (float 1.000000e+00), %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i ] ; 4 uses
  %.sroa.098.0.vec.extract.i = extractelement <2 x float> %.sroa.098.0.i, i64 0
  %i.jm = fmul float %.sroa.8.0.i, %.sroa.098.0.vec.extract.i
  %i.jn = load i16, ptr %i.fl, align 2, !tbaa !22
  %i.jo = zext i16 %i.jn to i32
  %i.jp = load ptr, ptr %1, align 8, !tbaa !20
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 24
  %i.jr = load ptr, ptr %i.jq, align 8
  %i.js = tail call noundef ptr %i.jr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.jt = load ptr, ptr %i.js, align 8, !tbaa !20
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 88
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.jv(ptr noundef nonnull align 8 dereferenceable(28) %i.js, i32 noundef %i.jo), !inline_history !152 ; 3 uses
  %i.jx = shufflevector <2 x float> %.sroa.098.0.i, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jy = fmul <2 x float> %.sroa.0101.0.i, %i.jx
  %i.jz = load <2 x float>, ptr %i.jw, align 4, !tbaa !26
  %i.ka = fadd <2 x float> %i.jy, %i.jz
  store <2 x float> %i.ka, ptr %i.jw, align 4, !tbaa !26
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jw, i64 8 ; 2 uses
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !28
  %i.kd = fadd float %i.jm, %i.kc
  store float %i.kd, ptr %i.kb, align 4, !tbaa !28
  %.sroa.098.4.vec.extract.i = extractelement <2 x float> %.sroa.098.0.i, i64 1
  %i.ke = fmul float %.sroa.8.0.i, %.sroa.098.4.vec.extract.i
  %i.kf = load i16, ptr %i.fy, align 2, !tbaa !22
  %i.kg = zext i16 %i.kf to i32
  %i.kh = load ptr, ptr %1, align 8, !tbaa !20
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 24
  %i.kj = load ptr, ptr %i.ki, align 8
  %i.kk = tail call noundef ptr %i.kj(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !20
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 88
  %i.kn = load ptr, ptr %i.km, align 8
  %i.ko = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.kn(ptr noundef nonnull align 8 dereferenceable(28) %i.kk, i32 noundef %i.kg), !inline_history !152 ; 3 uses
  %i.kp = shufflevector <2 x float> %.sroa.098.0.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.kq = fmul <2 x float> %.sroa.0101.0.i, %i.kp
  %i.kr = load <2 x float>, ptr %i.ko, align 4, !tbaa !26
  %i.ks = fadd <2 x float> %i.kq, %i.kr
  store <2 x float> %i.ks, ptr %i.ko, align 4, !tbaa !26
  %i.kt = getelementptr inbounds nuw i8, ptr %i.ko, i64 8 ; 2 uses
  %i.ku = load float, ptr %i.kt, align 4, !tbaa !28
  %i.kv = fadd float %i.ke, %i.ku
  store float %i.kv, ptr %i.kt, align 4, !tbaa !28
  %i.kw = fmul float %.sroa.8.0.i, %.sroa.7.0.i
  %i.kx = load i16, ptr %i.gl, align 2, !tbaa !22
  %i.ky = zext i16 %i.kx to i32
  %i.kz = load ptr, ptr %1, align 8, !tbaa !20
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 24
  %i.lb = load ptr, ptr %i.la, align 8
  %i.lc = tail call noundef ptr %i.lb(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.ld = load ptr, ptr %i.lc, align 8, !tbaa !20
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 88
  %i.lf = load ptr, ptr %i.le, align 8
  %i.lg = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.lf(ptr noundef nonnull align 8 dereferenceable(28) %i.lc, i32 noundef %i.ky), !inline_history !152 ; 3 uses
  %i.lh = insertelement <2 x float> poison, float %.sroa.7.0.i, i64 0
  %i.li = shufflevector <2 x float> %i.lh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lj = fmul <2 x float> %.sroa.0101.0.i, %i.li
  %i.lk = load <2 x float>, ptr %i.lg, align 4, !tbaa !26
  %i.ll = fadd <2 x float> %i.lj, %i.lk
  store <2 x float> %i.ll, ptr %i.lg, align 4, !tbaa !26
  %i.lm = getelementptr inbounds nuw i8, ptr %i.lg, i64 8 ; 2 uses
  %i.ln = load float, ptr %i.lm, align 4, !tbaa !28
  %i.lo = fadd float %i.kw, %i.ln
  store float %i.lo, ptr %i.lm, align 4, !tbaa !28
  %i.lp = add i32 %.1139.i, 3                     ; 2 uses
  %i.lq = icmp ult i32 %i.lp, %i.y
  br i1 %i.lq, label %.lr.ph140.i, label %.preheader.i, !llvm.loop !155

.lr.ph143.i:                                      ; preds = %.preheader.i, %_ZN4core8vector3dIfE9normalizeEv.exit.i
  %.2142.i = phi i32 [ %i.mr, %_ZN4core8vector3dIfE9normalizeEv.exit.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.lr = load ptr, ptr %1, align 8, !tbaa !20
  %i.ls = getelementptr inbounds nuw i8, ptr %i.lr, i64 24
  %i.lt = load ptr, ptr %i.ls, align 8
  %i.lu = tail call noundef ptr %i.lt(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !152 ; 2 uses
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !20
  %i.lw = getelementptr inbounds nuw i8, ptr %i.lv, i64 88
  %i.lx = load ptr, ptr %i.lw, align 8
  %i.ly = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.lx(ptr noundef nonnull align 8 dereferenceable(28) %i.lu, i32 noundef %.2142.i), !inline_history !152 ; 3 uses
  %i.lz = load <2 x float>, ptr %i.ly, align 4, !tbaa !26 ; 4 uses
  %foldExtExtBinop99.a = fmul <2 x float> %i.lz, %i.lz
  %i.ma = extractelement <2 x float> %foldExtExtBinop99.a, i64 1
  %i.mb = extractelement <2 x float> %i.lz, i64 0 ; 2 uses
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.mb, float %i.mb, float %i.ma)
  %i.md = getelementptr inbounds nuw i8, ptr %i.ly, i64 8 ; 2 uses
  %i.me = load float, ptr %i.md, align 4, !tbaa !28 ; 3 uses
  %i.mf = tail call float @llvm.fmuladd.f32(float %i.me, float %i.me, float %i.mc) ; 2 uses
  %i.mg = fcmp oeq float %i.mf, 0.000000e+00
  br i1 %i.mg, label %_ZN4core8vector3dIfE9normalizeEv.exit.i, label %bb.i

bb.i:                                             ; preds = %.lr.ph143.i
  %i.mh = fpext float %i.mf to double
  %sqrt.i93.i = tail call double @sqrt(double noundef %i.mh) #19
  %i.mi = fdiv double 1.000000e+00, %sqrt.i93.i   ; 2 uses
  %i.mj = fpext <2 x float> %i.lz to <2 x double>
  %i.mk = insertelement <2 x double> poison, double %i.mi, i64 0
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mm = fmul <2 x double> %i.ml, %i.mj
  %i.mn = fptrunc <2 x double> %i.mm to <2 x float>
  store <2 x float> %i.mn, ptr %i.ly, align 4, !tbaa !26
  %i.mo = fpext float %i.me to double
  %i.mp = fmul double %i.mi, %i.mo
  %i.mq = fptrunc double %i.mp to float
  store float %i.mq, ptr %i.md, align 4, !tbaa !28
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i

_ZN4core8vector3dIfE9normalizeEv.exit.i:          ; preds = %bb.i, %.lr.ph143.i
  %i.mr = add nuw i32 %.2142.i, 1                 ; 2 uses
  %.not80.i = icmp eq i32 %i.mr, %i.q
  br i1 %.not80.i, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i, !llvm.loop !156

bb.j:                                             ; preds = %bb.b
  br i1 %i.ah, label %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @__assert_fail(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, i32 noundef 131, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene11IMeshBuffer10getIndicesEv) #18
  unreachable

_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7:     ; preds = %bb.j
  %i.ms = load ptr, ptr %1, align 8, !tbaa !20
  %i.mt = getelementptr inbounds nuw i8, ptr %i.ms, i64 40
  %i.mu = load ptr, ptr %i.mt, align 8
  %i.mv = tail call noundef ptr %i.mu(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !157 ; 2 uses
  %i.mw = load ptr, ptr %i.mv, align 8, !tbaa !20
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mw, i64 56
  %i.my = load ptr, ptr %i.mx, align 8
  %i.mz = tail call noundef ptr %i.my(ptr noundef nonnull align 8 dereferenceable(28) %i.mv), !inline_history !157 ; 6 uses
  br i1 %2, label %.preheader132.i23, label %.preheader133.i8

.preheader133.i8:                                 ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7
  %.not144.i9 = icmp eq i32 %i.y, 0
  br i1 %.not144.i9, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph.i10

.preheader132.i23:                                ; preds = %_ZN5scene11IMeshBuffer10getIndicesEv.exit.i7
  %.not136.i24 = icmp eq i32 %i.q, 0              ; 2 uses
  br i1 %.not136.i24, label %.preheader131.i28, label %.lr.ph138.i25

.lr.ph.i10:                                       ; preds = %.preheader133.i8, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17
  %.0135.i11 = phi i32 [ %i.rc, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17 ], [ 0, %.preheader133.i8 ] ; 4 uses
  %i.na = zext i32 %.0135.i11 to i64
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.na ; 2 uses
  %i.nc = load i32, ptr %i.nb, align 4, !tbaa !29
  %i.nd = load ptr, ptr %1, align 8, !tbaa !20
  %i.ne = getelementptr inbounds nuw i8, ptr %i.nd, i64 24
  %i.nf = load ptr, ptr %i.ne, align 8
  %i.ng = tail call noundef ptr %i.nf(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !20
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nh, i64 72
  %i.nj = load ptr, ptr %i.ni, align 8
  %i.nk = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.nj(ptr noundef nonnull align 8 dereferenceable(28) %i.ng, i32 noundef %i.nc), !inline_history !158 ; 2 uses
  %i.nl = add nuw i32 %.0135.i11, 1
  %i.nm = zext i32 %i.nl to i64
  %i.nn = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.nm ; 2 uses
  %i.no = load i32, ptr %i.nn, align 4, !tbaa !29
  %i.np = load ptr, ptr %1, align 8, !tbaa !20
  %i.nq = getelementptr inbounds nuw i8, ptr %i.np, i64 24
  %i.nr = load ptr, ptr %i.nq, align 8
  %i.ns = tail call noundef ptr %i.nr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.nt = load ptr, ptr %i.ns, align 8, !tbaa !20
  %i.nu = getelementptr inbounds nuw i8, ptr %i.nt, i64 72
  %i.nv = load ptr, ptr %i.nu, align 8
  %i.nw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.nv(ptr noundef nonnull align 8 dereferenceable(28) %i.ns, i32 noundef %i.no), !inline_history !158 ; 2 uses
  %i.nx = add i32 %.0135.i11, 2
  %i.ny = zext i32 %i.nx to i64
  %i.nz = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.ny ; 2 uses
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !29
  %i.ob = load ptr, ptr %1, align 8, !tbaa !20
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 24
  %i.od = load ptr, ptr %i.oc, align 8
  %i.oe = tail call noundef ptr %i.od(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !20
  %i.og = getelementptr inbounds nuw i8, ptr %i.of, i64 72
  %i.oh = load ptr, ptr %i.og, align 8
  %i.oi = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.oh(ptr noundef nonnull align 8 dereferenceable(28) %i.oe, i32 noundef %i.oa), !inline_history !158 ; 2 uses
  %i.oj = load float, ptr %i.nw, align 4, !tbaa !25
  %i.ok = load float, ptr %i.nk, align 4, !tbaa !25
  %i.ol = getelementptr inbounds nuw i8, ptr %i.nw, i64 4
  %i.om = getelementptr inbounds nuw i8, ptr %i.nk, i64 4
  %i.on = load float, ptr %i.oi, align 4, !tbaa !25
  %i.oo = getelementptr inbounds nuw i8, ptr %i.oi, i64 4
  %i.op = load <2 x float>, ptr %i.ol, align 4, !tbaa !26 ; 2 uses
  %i.oq = load <2 x float>, ptr %i.om, align 4, !tbaa !26 ; 3 uses
  %i.or = fsub <2 x float> %i.op, %i.oq           ; 2 uses
  %i.os = shufflevector <2 x float> %i.op, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ot = insertelement <2 x float> %i.os, float %i.oj, i64 1
  %i.ou = shufflevector <2 x float> %i.oq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ov = insertelement <2 x float> %i.ou, float %i.ok, i64 1 ; 2 uses
  %i.ow = fsub <2 x float> %i.ot, %i.ov           ; 2 uses
  %i.ox = load <2 x float>, ptr %i.oo, align 4, !tbaa !26 ; 2 uses
  %i.oy = shufflevector <2 x float> %i.ox, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oz = insertelement <2 x float> %i.oy, float %i.on, i64 1
  %i.pa = fsub <2 x float> %i.oz, %i.ov           ; 2 uses
  %i.pb = fsub <2 x float> %i.ox, %i.oq           ; 2 uses
  %i.pc = fneg <2 x float> %i.pb
  %i.pd = fmul <2 x float> %i.ow, %i.pc
  %i.pe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.or, <2 x float> %i.pa, <2 x float> %i.pd) ; 5 uses
  %i.pf = extractelement <2 x float> %i.pa, i64 1
  %i.pg = fneg float %i.pf
  %i.ph = extractelement <2 x float> %i.or, i64 0
  %i.pi = fmul float %i.ph, %i.pg
  %i.pj = extractelement <2 x float> %i.ow, i64 1
  %i.pk = extractelement <2 x float> %i.pb, i64 0
  %i.pl = tail call float @llvm.fmuladd.f32(float %i.pj, float %i.pk, float %i.pi) ; 4 uses
  %foldExtExtBinop101.a = fmul <2 x float> %i.pe, %i.pe
  %i.pm = extractelement <2 x float> %foldExtExtBinop101.a, i64 1
  %i.pn = extractelement <2 x float> %i.pe, i64 0 ; 2 uses
  %i.po = tail call float @llvm.fmuladd.f32(float %i.pn, float %i.pn, float %i.pm)
  %i.pp = tail call float @llvm.fmuladd.f32(float %i.pl, float %i.pl, float %i.po) ; 2 uses
  %i.pq = fcmp oeq float %i.pp, 0.000000e+00
  br i1 %i.pq, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i10
  %i.pr = fpext float %i.pp to double
  %sqrt.i.i.i.i14 = tail call double @sqrt(double noundef %i.pr) #19
  %i.ps = fdiv double 1.000000e+00, %sqrt.i.i.i.i14 ; 2 uses
  %i.pt = fpext <2 x float> %i.pe to <2 x double>
  %i.pu = insertelement <2 x double> poison, double %i.ps, i64 0
  %i.pv = shufflevector <2 x double> %i.pu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pw = fmul <2 x double> %i.pv, %i.pt
  %i.px = fptrunc <2 x double> %i.pw to <2 x float>
  %i.py = fpext float %i.pl to double
  %i.pz = fmul double %i.ps, %i.py
  %i.qa = fptrunc double %i.pz to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17: ; preds = %bb.l, %.lr.ph.i10
  %.sroa.0117.0.i18 = phi <2 x float> [ %i.pe, %.lr.ph.i10 ], [ %i.px, %bb.l ] ; 3 uses
  %.sroa.8122.0.i19 = phi float [ %i.pl, %.lr.ph.i10 ], [ %i.qa, %bb.l ] ; 3 uses
  %i.qb = load i32, ptr %i.nb, align 4, !tbaa !29
  %i.qc = load ptr, ptr %1, align 8, !tbaa !20
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 24
  %i.qe = load ptr, ptr %i.qd, align 8
  %i.qf = tail call noundef ptr %i.qe(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qg = load ptr, ptr %i.qf, align 8, !tbaa !20
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qg, i64 88
  %i.qi = load ptr, ptr %i.qh, align 8
  %i.qj = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.qi(ptr noundef nonnull align 8 dereferenceable(28) %i.qf, i32 noundef %i.qb), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0117.0.i18, ptr %i.qj, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx.i20 = getelementptr inbounds nuw i8, ptr %i.qj, i64 8
  store float %.sroa.8122.0.i19, ptr %.sroa.6.0..sroa_idx.i20, align 4, !tbaa !26
  %i.qk = load i32, ptr %i.nn, align 4, !tbaa !29
  %i.ql = load ptr, ptr %1, align 8, !tbaa !20
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 24
  %i.qn = load ptr, ptr %i.qm, align 8
  %i.qo = tail call noundef ptr %i.qn(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !20
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 88
  %i.qr = load ptr, ptr %i.qq, align 8
  %i.qs = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.qr(ptr noundef nonnull align 8 dereferenceable(28) %i.qo, i32 noundef %i.qk), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0117.0.i18, ptr %i.qs, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx127.i21.a = getelementptr inbounds nuw i8, ptr %i.qs, i64 8
  store float %.sroa.8122.0.i19, ptr %.sroa.6.0..sroa_idx127.i21.a, align 4, !tbaa !26
  %i.qt = load i32, ptr %i.nz, align 4, !tbaa !29
  %i.qu = load ptr, ptr %1, align 8, !tbaa !20
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qu, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8
  %i.qx = tail call noundef ptr %i.qw(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.qy = load ptr, ptr %i.qx, align 8, !tbaa !20
  %i.qz = getelementptr inbounds nuw i8, ptr %i.qy, i64 88
  %i.ra = load ptr, ptr %i.qz, align 8
  %i.rb = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.ra(ptr noundef nonnull align 8 dereferenceable(28) %i.qx, i32 noundef %i.qt), !inline_history !159 ; 2 uses
  store <2 x float> %.sroa.0117.0.i18, ptr %i.rb, align 4, !tbaa !26
  %.sroa.6.0..sroa_idx129.i22 = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  store float %.sroa.8122.0.i19, ptr %.sroa.6.0..sroa_idx129.i22, align 4, !tbaa !26
  %i.rc = add i32 %.0135.i11, 3                   ; 2 uses
  %i.rd = icmp ult i32 %i.rc, %i.y
  br i1 %i.rd, label %.lr.ph.i10, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, !llvm.loop !160

.preheader131.i28:                                ; preds = %.lr.ph138.i25, %.preheader132.i23
  %.not145.i29 = icmp eq i32 %i.y, 0
  br i1 %.not145.i29, label %.preheader.i46, label %.lr.ph140.i30

.lr.ph138.i25:                                    ; preds = %.preheader132.i23, %.lr.ph138.i25
  %.078137.i26 = phi i32 [ %i.rn, %.lr.ph138.i25 ], [ 0, %.preheader132.i23 ] ; 2 uses
  %i.re = load ptr, ptr %1, align 8, !tbaa !20
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 24
  %i.rg = load ptr, ptr %i.rf, align 8
  %i.rh = tail call noundef ptr %i.rg(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.ri = load ptr, ptr %i.rh, align 8, !tbaa !20
  %i.rj = getelementptr inbounds nuw i8, ptr %i.ri, i64 88
  %i.rk = load ptr, ptr %i.rj, align 8
  %i.rl = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.rk(ptr noundef nonnull align 8 dereferenceable(28) %i.rh, i32 noundef %.078137.i26), !inline_history !159 ; 2 uses
  store <2 x float> zeroinitializer, ptr %i.rl, align 4, !tbaa !26
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rl, i64 8
  store float 0.000000e+00, ptr %i.rm, align 4, !tbaa !28
  %i.rn = add nuw i32 %.078137.i26, 1             ; 2 uses
  %.not.i27 = icmp eq i32 %i.rn, %i.q
  br i1 %.not.i27, label %.preheader131.i28, label %.lr.ph138.i25, !llvm.loop !161

.preheader.i46:                                   ; preds = %bb.o, %.preheader131.i28
  br i1 %.not136.i24, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i47

.lr.ph140.i30:                                    ; preds = %.preheader131.i28, %bb.o
  %.1139.i31 = phi i32 [ %i.xn, %bb.o ], [ 0, %.preheader131.i28 ] ; 4 uses
  %i.ro = zext i32 %.1139.i31 to i64
  %i.rp = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.ro ; 2 uses
  %i.rq = load i32, ptr %i.rp, align 4, !tbaa !29
  %i.rr = load ptr, ptr %1, align 8, !tbaa !20
  %i.rs = getelementptr inbounds nuw i8, ptr %i.rr, i64 24
  %i.rt = load ptr, ptr %i.rs, align 8
  %i.ru = tail call noundef ptr %i.rt(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !20
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 72
  %i.rx = load ptr, ptr %i.rw, align 8
  %i.ry = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.rx(ptr noundef nonnull align 8 dereferenceable(28) %i.ru, i32 noundef %i.rq), !inline_history !158 ; 2 uses
  %i.rz = add nuw i32 %.1139.i31, 1
  %i.sa = zext i32 %i.rz to i64
  %i.sb = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.sa ; 2 uses
  %i.sc = load i32, ptr %i.sb, align 4, !tbaa !29
  %i.sd = load ptr, ptr %1, align 8, !tbaa !20
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 24
  %i.sf = load ptr, ptr %i.se, align 8
  %i.sg = tail call noundef ptr %i.sf(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.sh = load ptr, ptr %i.sg, align 8, !tbaa !20
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 72
  %i.sj = load ptr, ptr %i.si, align 8
  %i.sk = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.sj(ptr noundef nonnull align 8 dereferenceable(28) %i.sg, i32 noundef %i.sc), !inline_history !158 ; 2 uses
  %i.sl = add i32 %.1139.i31, 2
  %i.sm = zext i32 %i.sl to i64
  %i.sn = getelementptr inbounds nuw [4 x i8], ptr %i.mz, i64 %i.sm ; 2 uses
  %i.so = load i32, ptr %i.sn, align 4, !tbaa !29
  %i.sp = load ptr, ptr %1, align 8, !tbaa !20
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 24
  %i.sr = load ptr, ptr %i.sq, align 8
  %i.ss = tail call noundef ptr %i.sr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !158 ; 2 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !20
  %i.su = getelementptr inbounds nuw i8, ptr %i.st, i64 72
  %i.sv = load ptr, ptr %i.su, align 8
  %i.sw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.sv(ptr noundef nonnull align 8 dereferenceable(28) %i.ss, i32 noundef %i.so), !inline_history !158 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sk, i64 4
  %i.sy = getelementptr inbounds nuw i8, ptr %i.ry, i64 4
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sw, i64 4
  %i.ta = load float, ptr %i.ry, align 4, !tbaa !25 ; 2 uses
  %i.tb = load <2 x float>, ptr %i.sk, align 4, !tbaa !26 ; 4 uses
  %i.tc = load <2 x float>, ptr %i.sw, align 4, !tbaa !26 ; 4 uses
  %i.td = load <2 x float>, ptr %i.sx, align 4, !tbaa !26 ; 5 uses
  %i.te = load <2 x float>, ptr %i.sy, align 4, !tbaa !26 ; 5 uses
  %i.tf = fsub <2 x float> %i.td, %i.te           ; 2 uses
  %i.tg = shufflevector <2 x float> %i.td, <2 x float> %i.tb, <2 x i32> <i32 1, i32 2>
  %i.th = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ti = insertelement <2 x float> %i.th, float %i.ta, i64 1 ; 2 uses
  %i.tj = fsub <2 x float> %i.tg, %i.ti           ; 2 uses
  %i.tk = load <2 x float>, ptr %i.sz, align 4, !tbaa !26 ; 5 uses
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> %i.tc, <2 x i32> <i32 1, i32 2>
  %i.tm = fsub <2 x float> %i.tl, %i.ti           ; 2 uses
  %i.tn = fsub <2 x float> %i.tk, %i.te           ; 2 uses
  %i.to = fneg <2 x float> %i.tn
  %i.tp = fmul <2 x float> %i.tj, %i.to
  %i.tq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tf, <2 x float> %i.tm, <2 x float> %i.tp) ; 5 uses
  %i.tr = extractelement <2 x float> %i.tm, i64 1
  %i.ts = fneg float %i.tr
  %i.tt = extractelement <2 x float> %i.tf, i64 0
  %i.tu = fmul float %i.tt, %i.ts
  %i.tv = extractelement <2 x float> %i.tj, i64 1
  %i.tw = extractelement <2 x float> %i.tn, i64 0
  %i.tx = tail call float @llvm.fmuladd.f32(float %i.tv, float %i.tw, float %i.tu) ; 4 uses
  %foldExtExtBinop103.a = fmul <2 x float> %i.tq, %i.tq
  %i.ty = extractelement <2 x float> %foldExtExtBinop103.a, i64 1
  %i.tz = extractelement <2 x float> %i.tq, i64 0 ; 2 uses
  %i.ua = tail call float @llvm.fmuladd.f32(float %i.tz, float %i.tz, float %i.ty)
  %i.ub = tail call float @llvm.fmuladd.f32(float %i.tx, float %i.tx, float %i.ua) ; 2 uses
  %i.uc = fcmp oeq float %i.ub, 0.000000e+00
  br i1 %i.uc, label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37, label %bb.m

bb.m:                                             ; preds = %.lr.ph140.i30
  %i.ud = fpext float %i.ub to double
  %sqrt.i.i.i83.i34 = tail call double @sqrt(double noundef %i.ud) #19
  %i.ue = fdiv double 1.000000e+00, %sqrt.i.i.i83.i34 ; 2 uses
  %i.uf = fpext <2 x float> %i.tq to <2 x double>
  %i.ug = insertelement <2 x double> poison, double %i.ue, i64 0
  %i.uh = shufflevector <2 x double> %i.ug, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ui = fmul <2 x double> %i.uh, %i.uf
  %i.uj = fptrunc <2 x double> %i.ui to <2 x float>
  %i.uk = fpext float %i.tx to double
  %i.ul = fmul double %i.ue, %i.uk
  %i.um = fptrunc double %i.ul to float
  br label %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37

_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37: ; preds = %bb.m, %.lr.ph140.i30
  %.sroa.8.0.i38 = phi float [ %i.tx, %.lr.ph140.i30 ], [ %i.um, %bb.m ] ; 3 uses
  %.sroa.0101.0.i39 = phi <2 x float> [ %i.tq, %.lr.ph140.i30 ], [ %i.uj, %bb.m ] ; 3 uses
  br i1 %3, label %bb.n, label %bb.o

bb.n:                                             ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37
  %foldExtExtBinop105.a = fsub <2 x float> %i.tb, %i.tc
  %i.un = extractelement <2 x float> %foldExtExtBinop105.a, i64 0 ; 2 uses
  %foldExtExtBinop107.a = fsub <2 x float> %i.td, %i.tk ; 2 uses
  %foldExtExtBinop109 = fsub <2 x float> %i.td, %i.tk
  %i.uo = extractelement <2 x float> %foldExtExtBinop109, i64 1 ; 2 uses
  %foldExtExtBinop111 = fmul <2 x float> %foldExtExtBinop107.a, %foldExtExtBinop107.a
  %i.up = extractelement <2 x float> %foldExtExtBinop111, i64 0
  %i.uq = tail call float @llvm.fmuladd.f32(float %i.un, float %i.un, float %i.up)
  %i.ur = tail call noundef float @llvm.fmuladd.f32(float %i.uo, float %i.uo, float %i.uq) ; 3 uses
  %sqrt26.i.i52 = tail call float @sqrtf(float noundef %i.ur) #19 ; 2 uses
  %i.us = insertelement <2 x float> poison, float %i.ta, i64 0
  %i.ut = shufflevector <2 x float> %i.us, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uu = shufflevector <2 x float> %i.tc, <2 x float> %i.tb, <2 x i32> <i32 0, i32 2>
  %i.uv = fsub <2 x float> %i.ut, %i.uu           ; 2 uses
  %i.uw = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ux = shufflevector <2 x float> %i.tc, <2 x float> %i.tb, <2 x i32> <i32 1, i32 3>
  %i.uy = fsub <2 x float> %i.uw, %i.ux           ; 2 uses
  %i.uz = shufflevector <2 x float> %i.te, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.va = shufflevector <2 x float> %i.td, <2 x float> %i.tk, <2 x i32> <i32 3, i32 1>
  %i.vb = fsub <2 x float> %i.uz, %i.va           ; 2 uses
  %i.vc = fmul <2 x float> %i.uy, %i.uy
  %i.vd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> %i.uv, <2 x float> %i.vc)
  %i.ve = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.vb, <2 x float> %i.vb, <2 x float> %i.vd) ; 4 uses
  %20 = shufflevector <2 x float> %i.ve, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vf = extractelement <2 x float> %i.ve, i64 0 ; 2 uses
  %sqrt25.i.i53 = tail call float @sqrtf(float noundef %i.vf) #19
  %i.vg = extractelement <2 x float> %i.ve, i64 1 ; 2 uses
  %sqrt.i.i54 = tail call float @sqrtf(float noundef %i.vg) #19 ; 2 uses
  %i.vh = fadd float %i.vg, %i.vf
  %i.vi = fsub float %i.vh, %i.ur
  %21 = insertelement <2 x float> poison, float %sqrt26.i.i52, i64 0
  %22 = insertelement <2 x float> %21, float %sqrt25.i.i53, i64 1
  %23 = fmul <2 x float> %22, splat (float 2.000000e+00) ; 2 uses
  %24 = extractelement <2 x float> %23, i64 1
  %i.vj = fmul float %24, %sqrt.i.i54
  %i.vk = fdiv float %i.vi, %i.vj
  %i.vl = tail call float @acosf(float noundef %i.vk) #19
  %25 = fsub <2 x float> %20, %i.ve
  %26 = insertelement <2 x float> poison, float %i.ur, i64 0
  %27 = shufflevector <2 x float> %26, <2 x float> poison, <2 x i32> zeroinitializer
  %28 = fadd <2 x float> %27, %25
  %29 = insertelement <2 x float> poison, float %sqrt.i.i54, i64 0
  %30 = insertelement <2 x float> %29, float %sqrt26.i.i52, i64 1
  %31 = fmul <2 x float> %23, %30
  %32 = fdiv <2 x float> %28, %31                 ; 2 uses
  %33 = extractelement <2 x float> %32, i64 0
  %34 = tail call float @acosf(float noundef %33) #19
  %35 = extractelement <2 x float> %32, i64 1
  %i.vm = tail call float @acosf(float noundef %35) #19
  %.sroa.0.0.vec.insert.i.i55 = insertelement <2 x float> poison, float %i.vl, i64 0
  %.sroa.0.4.vec.insert.i.i56 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i55, float %34, i64 1
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37
  %.sroa.7.0.i40 = phi float [ %i.vm, %bb.n ], [ 1.000000e+00, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37 ] ; 2 uses
  %.sroa.098.0.i41 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i56, %bb.n ], [ splat (float 1.000000e+00), %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit84.i37 ] ; 4 uses
  %.sroa.098.0.vec.extract.i42 = extractelement <2 x float> %.sroa.098.0.i41, i64 0
  %i.vn = fmul float %.sroa.8.0.i38, %.sroa.098.0.vec.extract.i42
  %i.vo = load i32, ptr %i.rp, align 4, !tbaa !29
  %i.vp = load ptr, ptr %1, align 8, !tbaa !20
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 24
  %i.vr = load ptr, ptr %i.vq, align 8
  %i.vs = tail call noundef ptr %i.vr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.vt = load ptr, ptr %i.vs, align 8, !tbaa !20
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 88
  %i.vv = load ptr, ptr %i.vu, align 8
  %i.vw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.vv(ptr noundef nonnull align 8 dereferenceable(28) %i.vs, i32 noundef %i.vo), !inline_history !159 ; 3 uses
  %i.vx = shufflevector <2 x float> %.sroa.098.0.i41, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vy = fmul <2 x float> %.sroa.0101.0.i39, %i.vx
  %i.vz = load <2 x float>, ptr %i.vw, align 4, !tbaa !26
  %i.wa = fadd <2 x float> %i.vy, %i.vz
  store <2 x float> %i.wa, ptr %i.vw, align 4, !tbaa !26
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vw, i64 8 ; 2 uses
  %i.wc = load float, ptr %i.wb, align 4, !tbaa !28
  %i.wd = fadd float %i.vn, %i.wc
  store float %i.wd, ptr %i.wb, align 4, !tbaa !28
  %.sroa.098.4.vec.extract.i45 = extractelement <2 x float> %.sroa.098.0.i41, i64 1
  %i.we = fmul float %.sroa.8.0.i38, %.sroa.098.4.vec.extract.i45
  %i.wf = load i32, ptr %i.sb, align 4, !tbaa !29
  %i.wg = load ptr, ptr %1, align 8, !tbaa !20
  %i.wh = getelementptr inbounds nuw i8, ptr %i.wg, i64 24
  %i.wi = load ptr, ptr %i.wh, align 8
  %i.wj = tail call noundef ptr %i.wi(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.wk = load ptr, ptr %i.wj, align 8, !tbaa !20
  %i.wl = getelementptr inbounds nuw i8, ptr %i.wk, i64 88
  %i.wm = load ptr, ptr %i.wl, align 8
  %i.wn = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.wm(ptr noundef nonnull align 8 dereferenceable(28) %i.wj, i32 noundef %i.wf), !inline_history !159 ; 3 uses
  %i.wo = shufflevector <2 x float> %.sroa.098.0.i41, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wp = fmul <2 x float> %.sroa.0101.0.i39, %i.wo
  %i.wq = load <2 x float>, ptr %i.wn, align 4, !tbaa !26
  %i.wr = fadd <2 x float> %i.wp, %i.wq
  store <2 x float> %i.wr, ptr %i.wn, align 4, !tbaa !26
  %i.ws = getelementptr inbounds nuw i8, ptr %i.wn, i64 8 ; 2 uses
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !28
  %i.wu = fadd float %i.we, %i.wt
  store float %i.wu, ptr %i.ws, align 4, !tbaa !28
  %i.wv = fmul float %.sroa.8.0.i38, %.sroa.7.0.i40
  %i.ww = load i32, ptr %i.sn, align 4, !tbaa !29
  %i.wx = load ptr, ptr %1, align 8, !tbaa !20
  %i.wy = getelementptr inbounds nuw i8, ptr %i.wx, i64 24
  %i.wz = load ptr, ptr %i.wy, align 8
  %i.xa = tail call noundef ptr %i.wz(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !20
  %i.xc = getelementptr inbounds nuw i8, ptr %i.xb, i64 88
  %i.xd = load ptr, ptr %i.xc, align 8
  %i.xe = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.xd(ptr noundef nonnull align 8 dereferenceable(28) %i.xa, i32 noundef %i.ww), !inline_history !159 ; 3 uses
  %i.xf = insertelement <2 x float> poison, float %.sroa.7.0.i40, i64 0
  %i.xg = shufflevector <2 x float> %i.xf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.xh = fmul <2 x float> %.sroa.0101.0.i39, %i.xg
  %i.xi = load <2 x float>, ptr %i.xe, align 4, !tbaa !26
  %i.xj = fadd <2 x float> %i.xh, %i.xi
  store <2 x float> %i.xj, ptr %i.xe, align 4, !tbaa !26
  %i.xk = getelementptr inbounds nuw i8, ptr %i.xe, i64 8 ; 2 uses
  %i.xl = load float, ptr %i.xk, align 4, !tbaa !28
  %i.xm = fadd float %i.wv, %i.xl
  store float %i.xm, ptr %i.xk, align 4, !tbaa !28
  %i.xn = add i32 %.1139.i31, 3                   ; 2 uses
  %i.xo = icmp ult i32 %i.xn, %i.y
  br i1 %i.xo, label %.lr.ph140.i30, label %.preheader.i46, !llvm.loop !162

.lr.ph143.i47:                                    ; preds = %.preheader.i46, %_ZN4core8vector3dIfE9normalizeEv.exit.i50
  %.2142.i48 = phi i32 [ %i.yp, %_ZN4core8vector3dIfE9normalizeEv.exit.i50 ], [ 0, %.preheader.i46 ] ; 2 uses
  %i.xp = load ptr, ptr %1, align 8, !tbaa !20
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 24
  %i.xr = load ptr, ptr %i.xq, align 8
  %i.xs = tail call noundef ptr %i.xr(ptr noundef nonnull align 8 dereferenceable(8) %1), !inline_history !159 ; 2 uses
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !20
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 88
  %i.xv = load ptr, ptr %i.xu, align 8
  %i.xw = tail call noundef nonnull align 4 dereferenceable(12) ptr %i.xv(ptr noundef nonnull align 8 dereferenceable(28) %i.xs, i32 noundef %.2142.i48), !inline_history !159 ; 3 uses
  %i.xx = load <2 x float>, ptr %i.xw, align 4, !tbaa !26 ; 4 uses
  %foldExtExtBinop113 = fmul <2 x float> %i.xx, %i.xx
  %i.xy = extractelement <2 x float> %foldExtExtBinop113, i64 1
  %i.xz = extractelement <2 x float> %i.xx, i64 0 ; 2 uses
  %i.ya = tail call float @llvm.fmuladd.f32(float %i.xz, float %i.xz, float %i.xy)
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xw, i64 8 ; 2 uses
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !28 ; 3 uses
  %i.yd = tail call float @llvm.fmuladd.f32(float %i.yc, float %i.yc, float %i.ya) ; 2 uses
  %i.ye = fcmp oeq float %i.yd, 0.000000e+00
  br i1 %i.ye, label %_ZN4core8vector3dIfE9normalizeEv.exit.i50, label %bb.p

bb.p:                                             ; preds = %.lr.ph143.i47
  %i.yf = fpext float %i.yd to double
  %sqrt.i93.i49 = tail call double @sqrt(double noundef %i.yf) #19
  %i.yg = fdiv double 1.000000e+00, %sqrt.i93.i49 ; 2 uses
  %i.yh = fpext <2 x float> %i.xx to <2 x double>
  %i.yi = insertelement <2 x double> poison, double %i.yg, i64 0
  %i.yj = shufflevector <2 x double> %i.yi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.yk = fmul <2 x double> %i.yj, %i.yh
  %i.yl = fptrunc <2 x double> %i.yk to <2 x float>
  store <2 x float> %i.yl, ptr %i.xw, align 4, !tbaa !26
  %i.ym = fpext float %i.yc to double
  %i.yn = fmul double %i.yg, %i.ym
  %i.yo = fptrunc double %i.yn to float
  store float %i.yo, ptr %i.yb, align 4, !tbaa !28
  br label %_ZN4core8vector3dIfE9normalizeEv.exit.i50

_ZN4core8vector3dIfE9normalizeEv.exit.i50:        ; preds = %bb.p, %.lr.ph143.i47
  %i.yp = add nuw i32 %.2142.i48, 1               ; 2 uses
  %.not80.i51 = icmp eq i32 %i.yp, %i.q
  br i1 %.not80.i51, label %_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit, label %.lr.ph143.i47, !llvm.loop !163

_ZN5scene12_GLOBAL__N_119recalculateNormalsTItEEvPNS_11IMeshBufferEbb.exit: ; preds = %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i17, %_ZN4core8vector3dIfE9normalizeEv.exit.i50, %_ZN4core7plane3dIfEC2ERKNS_8vector3dIfEES5_S5_.exit.i, %_ZN4core8vector3dIfE9normalizeEv.exit.i, %.preheader.i46, %.preheader133.i8, %.preheader.i, %.preheader133.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZNK5scene16CMeshManipulator18recalculateNormalsEPNS_5IMeshEbb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i1 noundef zeroext %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %1, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i32 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN5scene11SkinnedMesh14resetAnimationEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.f = load ptr, ptr %1, align 8, !tbaa !20
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef i32 %i.g(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not17 = icmp eq i32 %i.h, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.i = load ptr, ptr %1, align 8, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.m = icmp eq i32 %i.l, 1
  br i1 %i.m, label %bb.e, label %bb.f

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.016 = phi i32 [ %i.u, %.lr.ph ], [ 0, %bb.d ] ; 2 uses
  %i.n = load ptr, ptr %1, align 8, !tbaa !20
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = tail call noundef ptr %i.p(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.016)
  %i.r = load ptr, ptr %0, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.q, i1 noundef zeroext %2, i1 noundef zeroext %3)
  %i.u = add nuw i32 %.016, 1                     ; 2 uses
  %exitcond.not = icmp eq i32 %i.u, %i.h
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !164

bb.e:                                             ; preds = %._crit_edge
  tail call void @_ZN5scene11SkinnedMesh16updateStaticPoseEv(ptr noundef nonnull align 8 dereferenceable(152) %1)
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge, %bb.e, %bb.a
  ret void
}

declare void @_ZN5scene11SkinnedMesh14resetAnimationEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

declare void @_ZN5scene11SkinnedMesh16updateStaticPoseEv(ptr noundef nonnull align 8 dereferenceable(152)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef ptr @_ZNK5scene16CMeshManipulator14createMeshCopyEPNS_5IMeshE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.y, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noalias noundef nonnull dereferenceable(96) ptr @_Znwm(i64 noundef 96) #20 ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i32 1, ptr %i.c, align 8, !tbaa !31
  store ptr getelementptr inbounds nuw inrange(-24, 112) (i8, ptr @_ZTVN5scene5SMeshE, i64 24), ptr %i.a, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-24, 16) (i8, ptr @_ZTVN5scene5SMeshE, i64 160), ptr %i.b, align 8, !tbaa !20
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.d, i8 0, i64 72, i1 false)
  %i.e = load ptr, ptr %1, align 8, !tbaa !20
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = tail call noundef i32 %i.f(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 2 uses
  %.not65 = icmp eq i32 %i.g, 0
  br i1 %.not65, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK17IReferenceCounted4dropEv.exit, %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !20
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call noundef nonnull align 4 dereferenceable(24) ptr %i.j(ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(24) %i.k, i64 24, i1 false), !tbaa.struct !32
  br label %bb.y

.lr.ph:                                           ; preds = %bb.b, %_ZNK17IReferenceCounted4dropEv.exit
  %.064 = phi i32 [ %i.gp, %_ZNK17IReferenceCounted4dropEv.exit ], [ 0, %bb.b ] ; 2 uses
  %i.m = load ptr, ptr %1, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = tail call noundef ptr %i.o(ptr noundef nonnull align 8 dereferenceable(8) %1, i32 noundef %.064) ; 20 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef ptr %i.s(ptr noundef nonnull align 8 dereferenceable(8) %i.p), !inline_history !165 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !20
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = tail call noundef i32 %i.w(ptr noundef nonnull align 8 dereferenceable(28) %i.t), !inline_history !165
  switch i32 %i.x, label %_ZNK17IReferenceCounted4dropEv.exit [
    i32 0, label %bb.c
    i32 1, label %bb.j
    i32 2, label %bb.q
  ]

bb.c:                                             ; preds = %.lr.ph
  %i.y = tail call noalias noundef nonnull dereferenceable(200) ptr @_Znwm(i64 noundef 200) #20 ; 8 uses
  invoke void @_ZN5scene11CMeshBufferIN5video9S3DVertexEEC1Ev(ptr noundef nonnull align 8 dereferenceable(200) %i.y)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef nonnull align 8 dereferenceable(127) ptr %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.p)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.ae = tail call noundef nonnull align 8 dereferenceable(127) ptr @_ZN5video9SMaterialaSERKS0_(ptr noundef nonnull align 8 dereferenceable(127) %i.ad, ptr noundef nonnull align 8 dereferenceable(127) %i.ac) ; 0 uses
  %i.af = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8
  %i.ai = tail call noundef ptr %i.ah(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 6 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 136
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.an = load ptr, ptr %i.am, align 8
  %i.ao = tail call noundef i32 %i.an(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !166
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @__assert_fail(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.2, i32 noundef 120, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE) #18
  unreachable

_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit: ; preds = %bb.d
  %i.aq = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = tail call noundef ptr %i.as(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !166 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.av = load ptr, ptr %i.ai, align 8, !tbaa !20
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = tail call noundef i32 %i.ax(ptr noundef nonnull align 8 dereferenceable(28) %i.ai), !inline_history !166
  %i.az = zext i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [40 x i8], ptr %i.at, i64 %i.az
  tail call void @_ZNSt6vectorIN5video9S3DVertexESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef %i.at, ptr noundef %i.ba)
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !20
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = tail call noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(8) %i.p) ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.y, i64 144
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !50
  %i.bh = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = tail call noundef i32 %i.bj(ptr noundef nonnull align 8 dereferenceable(28) %i.be), !inline_history !167
  %i.bl = icmp eq i32 %i.bk, 0
  br i1 %i.bl, label %_ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 127, ptr noundef nonnull @__PRETTY_FUNCTION__._ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE) #18
  unreachable

_ZN5sceneL11copyIndicesEPKNS_12IIndexBufferEPNS_12CIndexBufferItEE.exit: ; preds = %_ZN5scene12copyVerticesIN5video9S3DVertexEEEvPKNS_13IVertexBufferEPNS_13CVertexBufferIT_EE.exit
  %i.bm = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = tail call noundef ptr %i.bo(ptr noundef nonnull align 8 dereferenceable(28) %i.be), !inline_history !167 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bg, i64 32
  %i.br = load ptr, ptr %i.be, align 8, !tbaa !20
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = tail call noundef i32 %i.bt(ptr noundef nonnull align 8 dereferenceable(28) %i.be), !inline_history !167
end_hunk_0
begin_hunk_1_@_ZNK4core8CMatrix4IfEeqERKS1_:bb.a
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !26
  %i.bk = fcmp oeq float %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bm = load float, ptr %i.bl, align 4, !tbaa !26
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !26
  %i.bp = fcmp oeq float %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.br = load float, ptr %i.bq, align 4, !tbaa !26
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !26
  %i.bu = fcmp oeq float %i.br, %i.bt
  br i1 %i.bu, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !26
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.by = load float, ptr %i.bx, align 4, !tbaa !26
  %i.bz = fcmp oeq float %i.bw, %i.by
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ false, %bb.i ], [ false, %bb.b ], [ %i.bz, %bb.p ], [ false, %bb.c ], [ false, %bb.k ], [ false, %bb.d ], [ false, %bb.o ], [ false, %bb.e ], [ false, %bb.j ], [ false, %bb.f ], [ false, %bb.n ], [ false, %bb.g ], [ false, %bb.l ], [ false, %bb.h ], [ false, %bb.m ]
  ret i1 %.lcssa
}

; Function Attrs: noreturn
declare void @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef, ...) local_unnamed_addr #12

declare void @_ZN5scene8HWBuffer8setDirtyEv(ptr noundef nonnull align 8 dereferenceable(28)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: noreturn nounwind
declare void @__assert_fail(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorItSaItEE13_M_assign_auxIPKtEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64                   ; 2 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.f = load ptr, ptr %0, align 8, !tbaa !93     ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775806
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 4 uses
  %i.m = icmp samesign ugt i64 %i.c, 2
  br i1 %i.m, label %bb.d, label %bb.e, !prof !94

bb.d:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %i.l, ptr align 2 %1, i64 %i.c, i1 false)
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit

bb.e:                                             ; preds = %_ZNSt12_Vector_baseItSaItEE11_M_allocateEm.exit.i
  %i.n = icmp eq i64 %i.c, 2
  br i1 %i.n, label %bb.f, label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit

bb.f:                                             ; preds = %bb.e
  %i.o = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.o, ptr %i.l, align 2, !tbaa !22
  br label %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit

_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit: ; preds = %bb.d, %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %0, align 8, !tbaa !93     ; 3 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit
  %i.r = load ptr, ptr %i.d, align 8, !tbaa !92
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.q to i64
  %i.u = sub i64 %i.s, %i.t
  tail call void @_ZdlPvm(ptr noundef nonnull %i.q, i64 noundef %i.u) #21
  br label %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit

_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit: ; preds = %_ZNSt6vectorItSaItEE20_M_allocate_and_copyIPKtEEPtmT_S6_.exit, %bb.g
  store ptr %i.l, ptr %0, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.v, ptr %i.p, align 8, !tbaa !95
  store ptr %i.v, ptr %i.d, align 8, !tbaa !92
  br label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit

bb.h:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !95   ; 5 uses
  %i.y = ptrtoint ptr %i.x to i64
  %i.z = sub i64 %i.y, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.z, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.aa = icmp sgt i64 %i.c, 2
  br i1 %i.aa, label %bb.j, label %bb.k, !prof !94

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.f, ptr align 2 %1, i64 %i.c, i1 false)
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !95
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.k:                                             ; preds = %bb.i
  %i.ab = icmp eq i64 %i.c, 2
  br i1 %i.ab, label %bb.l, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

bb.l:                                             ; preds = %bb.k
  %i.ac = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ac, ptr %i.f, align 2, !tbaa !22
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit

_ZSt4copyIPKtPtET0_T_S4_S3_.exit:                 ; preds = %bb.j, %bb.k, %bb.l
  %i.ad = phi ptr [ %.pre, %bb.j ], [ %i.x, %bb.k ], [ %i.x, %bb.l ]
  %i.ae = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %.not.i16 = icmp eq ptr %i.ad, %i.ae
  br i1 %.not.i16, label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit, label %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i

_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i:          ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit
  store ptr %i.ae, ptr %i.w, align 8, !tbaa !95
  br label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit

_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.h
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.z ; 3 uses
  %i.af = ptrtoint ptr %.sink.i to i64
  %i.ag = icmp sgt i64 %i.z, 2
  br i1 %i.ag, label %bb.m, label %bb.n, !prof !94

bb.m:                                             ; preds = %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.f, ptr align 2 %1, i64 %i.z, i1 false)
  %.pre21 = load ptr, ptr %i.w, align 8, !tbaa !95
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17

bb.n:                                             ; preds = %_ZSt9__advanceIPKtlEvRT_T0_St26random_access_iterator_tag.exit
  %i.ah = icmp eq i64 %i.z, 2
  br i1 %i.ah, label %bb.o, label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17

bb.o:                                             ; preds = %bb.n
  %i.ai = load i16, ptr %1, align 2, !tbaa !22
  store i16 %i.ai, ptr %i.f, align 2, !tbaa !22
  br label %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17

_ZSt4copyIPKtPtET0_T_S4_S3_.exit17:               ; preds = %bb.m, %bb.n, %bb.o
  %i.aj = phi ptr [ %.pre21, %bb.m ], [ %i.x, %bb.n ], [ %i.x, %bb.o ] ; 3 uses
  %i.ak = sub i64 %i.a, %i.af                     ; 4 uses
  %i.al = icmp sgt i64 %i.ak, 2
  br i1 %i.al, label %bb.p, label %bb.q, !prof !94

bb.p:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17
  tail call void @llvm.memmove.p0.p0.i64(ptr align 2 %i.aj, ptr align 2 %.sink.i, i64 %i.ak, i1 false)
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

bb.q:                                             ; preds = %_ZSt4copyIPKtPtET0_T_S4_S3_.exit17
  %i.am = icmp eq i64 %i.ak, 2
  br i1 %i.am, label %bb.r, label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

bb.r:                                             ; preds = %bb.q
  %i.an = load i16, ptr %.sink.i, align 2, !tbaa !22
  store i16 %i.an, ptr %i.aj, align 2, !tbaa !22
  br label %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit

_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit: ; preds = %bb.p, %bb.q, %bb.r
  %i.ao = getelementptr inbounds i8, ptr %i.aj, i64 %i.ak
  store ptr %i.ao, ptr %i.w, align 8, !tbaa !95
  br label %_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit

_ZNSt6vectorItSaItEE15_M_erase_at_endEPt.exit:    ; preds = %_ZSt8_DestroyIPttEvT_S1_RSaIT0_E.exit.i, %_ZSt4copyIPKtPtET0_T_S4_S3_.exit, %_ZSt22__uninitialized_copy_aIPKtPttET0_T_S4_S3_RSaIT1_E.exit, %_ZNSt12_Vector_baseItSaItEE13_M_deallocateEPtm.exit
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #6

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #16

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sqrt(double noundef) local_unnamed_addr #16

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5video9SMaterialD2Ev(ptr noundef nonnull align 8 dead_on_return(127) dereferenceable(127) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !72   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN5video14SMaterialLayerD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit

_ZN5video14SMaterialLayerD2Ev.exit:               ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !72   ; 2 uses
  %.not.i.1 = icmp eq ptr %i.d, null
  br i1 %.not.i.1, label %_ZN5video14SMaterialLayerD2Ev.exit.1, label %bb.c

bb.c:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1

_ZN5video14SMaterialLayerD2Ev.exit.1:             ; preds = %bb.c, %_ZN5video14SMaterialLayerD2Ev.exit
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !72   ; 2 uses
  %.not.i.2 = icmp eq ptr %i.f, null
  br i1 %.not.i.2, label %_ZN5video14SMaterialLayerD2Ev.exit.2, label %bb.d

bb.d:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1
  tail call void @_ZdlPvm(ptr noundef nonnull %i.f, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2

_ZN5video14SMaterialLayerD2Ev.exit.2:             ; preds = %bb.d, %_ZN5video14SMaterialLayerD2Ev.exit.1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !72   ; 2 uses
  %.not.i.3 = icmp eq ptr %i.h, null
  br i1 %.not.i.3, label %_ZN5video14SMaterialLayerD2Ev.exit.3, label %bb.e

bb.e:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2
  tail call void @_ZdlPvm(ptr noundef nonnull %i.h, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.3

_ZN5video14SMaterialLayerD2Ev.exit.3:             ; preds = %bb.e, %_ZN5video14SMaterialLayerD2Ev.exit.2
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshBufferD1Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11IMeshBufferD0Ev(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshBufferD1Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr void @_ZTv0_n24_N5scene11IMeshBufferD0Ev(ptr noundef %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #18
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(127) ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE11getMaterialEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE15getVertexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14getIndexBufferEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  ret ptr %i.b
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 4 dereferenceable(24) ptr @_ZNK5scene11CMeshBufferIN5video9S3DVertexEE14getBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  ret ptr %i.a
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE14setBoundingBoxERKN4core8aabbox3dIfEE(ptr noundef nonnull align 8 dereferenceable(200) %0, ptr noundef nonnull align 4 dereferenceable(24) %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 4 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !32
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5scene11CMeshBufferIN5video9S3DVertexEE22recalculateBoundingBoxEv(ptr noundef nonnull align 8 dereferenceable(200) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !99   ; 3 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64
  %i.i = sub i64 %i.g, %i.h
  %i.j = sdiv exact i64 %i.i, 40
  %i.k = and i64 %i.j, 4294967295
  %.not = icmp eq i64 %i.k, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 164 ; 5 uses
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.m, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 4 dereferenceable(12) %i.f, i64 12, i1 false), !tbaa.struct !100
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !98
  %i.o = load ptr, ptr %i.c, align 8, !tbaa !99   ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = ptrtoint ptr %i.o to i64
  %i.r = sub i64 %i.p, %i.q
  %i.s = sdiv exact i64 %i.r, 40                  ; 2 uses
  %i.t = and i64 %i.s, 4294967294
  %.not22 = icmp eq i64 %i.t, 0
  br i1 %.not22, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %.promoted4 = load float, ptr %i.l, align 8
  %.promoted = load float, ptr %i.m, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 172 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 156 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %.promoted6 = load float, ptr %i.u, align 8, !tbaa !101
  %.promoted7 = load float, ptr %i.v, align 4, !tbaa !102
  %.promoted8 = load float, ptr %i.w, align 4, !tbaa !103
  %.promoted9 = load float, ptr %i.x, align 8, !tbaa !104
  %wide.trip.count = and i64 %i.s, 4294967295
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit
  %indvars.iv = phi i64 [ 1, %.lr.ph ], [ %indvars.iv.next, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.y = phi float [ %.promoted9, %.lr.ph ], [ %i.av, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.z = phi float [ %.promoted8, %.lr.ph ], [ %i.at, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.aa = phi float [ %.promoted7, %.lr.ph ], [ %i.ap, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ab = phi float [ %.promoted6, %.lr.ph ], [ %i.an, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ac = phi float [ %.promoted, %.lr.ph ], [ %i.al, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ad = phi float [ %.promoted4, %.lr.ph ], [ %i.ar, %_ZN4core8aabbox3dIfE16addInternalPointERKNS_8vector3dIfEE.exit ] ; 2 uses
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.o, i64 %indvars.iv ; 3 uses
  %i.af = load float, ptr %i.ae, align 4, !tbaa !25 ; 6 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !105 ; 6 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !28 ; 6 uses
  %i.ak = fcmp ogt float %i.af, %i.ac
  br i1 %i.ak, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.af, ptr %i.m, align 4, !tbaa !106
end_hunk_1
begin_hunk_2_@_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED2Ev:bb.a

_ZNK17IReferenceCounted4dropEv.exit:              ; preds = %bb.c, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !58   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !31   ; 2 uses
  %i.p = icmp sgt i32 %i.o, 0
  br i1 %i.p, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  tail call void @__assert_fail(ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 119, ptr noundef nonnull @__PRETTY_FUNCTION__._ZNK17IReferenceCounted4dropEv) #18
  unreachable

bb.f:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit
  %i.q = add nsw i32 %i.o, -1                     ; 2 uses
  store i32 %i.q, ptr %i.n, align 8, !tbaa !31
  %.not.i2 = icmp eq i32 %i.q, 0
  br i1 %.not.i2, label %bb.g, label %_ZNK17IReferenceCounted4dropEv.exit3

bb.g:                                             ; preds = %bb.f
  %i.r = load ptr, ptr %i.m, align 8, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  tail call void %i.t(ptr noundef nonnull align 8 dereferenceable(12) %i.m) #19, !inline_history !6
  br label %_ZNK17IReferenceCounted4dropEv.exit3

_ZNK17IReferenceCounted4dropEv.exit3:             ; preds = %bb.f, %bb.g
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !72   ; 2 uses
  %.not.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i.i, label %_ZN5video14SMaterialLayerD2Ev.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNK17IReferenceCounted4dropEv.exit3
  tail call void @_ZdlPvm(ptr noundef nonnull %i.v, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.i

_ZN5video14SMaterialLayerD2Ev.exit.i:             ; preds = %bb.h, %_ZNK17IReferenceCounted4dropEv.exit3
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !72   ; 2 uses
  %.not.i.1.i = icmp eq ptr %i.x, null
  br i1 %.not.i.1.i, label %_ZN5video14SMaterialLayerD2Ev.exit.1.i, label %bb.i

bb.i:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.x, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.1.i

_ZN5video14SMaterialLayerD2Ev.exit.1.i:           ; preds = %bb.i, %_ZN5video14SMaterialLayerD2Ev.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !72   ; 2 uses
  %.not.i.2.i = icmp eq ptr %i.z, null
  br i1 %.not.i.2.i, label %_ZN5video14SMaterialLayerD2Ev.exit.2.i, label %bb.j

bb.j:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef 64) #21
  br label %_ZN5video14SMaterialLayerD2Ev.exit.2.i

_ZN5video14SMaterialLayerD2Ev.exit.2.i:           ; preds = %bb.j, %_ZN5video14SMaterialLayerD2Ev.exit.1.i
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !72 ; 2 uses
  %.not.i.3.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.3.i, label %_ZN5video9SMaterialD2Ev.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.ab, i64 noundef 64) #21
  br label %_ZN5video9SMaterialD2Ev.exit

_ZN5video9SMaterialD2Ev.exit:                     ; preds = %_ZN5video14SMaterialLayerD2Ev.exit.2.i, %bb.k
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE13_M_assign_auxIPKS1_EEvT_S7_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.a, %i.b                       ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.f = load ptr, ptr %0, align 8, !tbaa !140    ; 6 uses
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.i = sub i64 %i.g, %i.h
  %i.j = icmp ugt i64 %i.c, %i.i
  br i1 %i.j, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.k = icmp ugt i64 %i.c, 9223372036854775744
  br i1 %i.k, label %bb.c, label %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE11_M_allocateEm.exit.i

bb.c:                                             ; preds = %bb.b
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.3) #22
  unreachable

_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE11_M_allocateEm.exit.i: ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #20 ; 3 uses
  %.not9.i.i.i.i.i = icmp eq ptr %1, %2
  br i1 %.not9.i.i.i.i.i, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE11_M_allocateEm.exit.i
  %i.m = and i64 %i.c, 9223372036854775744
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.l, ptr align 4 %1, i64 %i.m, i1 false)
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit: ; preds = %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load ptr, ptr %0, align 8, !tbaa !140    ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !142
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.o to i64
  %i.s = sub i64 %i.q, %i.r
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef %i.s) #21
  br label %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE20_M_allocate_and_copyIPKS1_EEPS1_mT_S8_.exit, %bb.d
  store ptr %i.l, ptr %0, align 8, !tbaa !140
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.c ; 2 uses
  store ptr %i.t, ptr %i.n, align 8, !tbaa !139
  store ptr %i.t, ptr %i.d, align 8, !tbaa !142
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit

bb.e:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !139
  %i.w = ptrtoint ptr %i.v to i64
  %i.x = sub i64 %i.w, %i.h                       ; 5 uses
  %.not = icmp ult i64 %i.x, %i.c
  br i1 %.not, label %_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.y = icmp sgt i64 %i.c, 64
  br i1 %i.y, label %bb.g, label %bb.h, !prof !94

bb.g:                                             ; preds = %bb.f
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.c, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit

bb.h:                                             ; preds = %bb.f
  %i.z = icmp eq i64 %i.c, 64
  br i1 %i.z, label %bb.i, label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit

_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit: ; preds = %bb.g, %bb.h, %bb.i
  %i.aa = getelementptr inbounds i8, ptr %i.f, i64 %i.c ; 2 uses
  %i.ab = load ptr, ptr %i.u, align 8, !tbaa !139
  %.not.i16 = icmp eq ptr %i.ab, %i.aa
  br i1 %.not.i16, label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit, label %_ZSt8_DestroyIPN5video17S3DVertexTangentsES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN5video17S3DVertexTangentsES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit
  store ptr %i.aa, ptr %i.u, align 8, !tbaa !139
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit: ; preds = %bb.e
  %.sink.i = getelementptr inbounds i8, ptr %1, i64 %i.x ; 2 uses
  %i.ac = icmp sgt i64 %i.x, 64
  br i1 %i.ac, label %bb.j, label %bb.k, !prof !94

bb.j:                                             ; preds = %_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.f, ptr align 4 %1, i64 %i.x, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17

bb.k:                                             ; preds = %_ZSt9__advanceIPKN5video17S3DVertexTangentsElEvRT_T0_St26random_access_iterator_tag.exit
  %i.ad = icmp eq i64 %i.x, 64
  br i1 %i.ad, label %bb.l, label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  br label %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17

_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17: ; preds = %bb.j, %bb.k, %bb.l
  %i.ae = load ptr, ptr %i.u, align 8, !tbaa !139 ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %.sink.i, %2
  br i1 %.not9.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ag, %.lr.ph.i.i.i.i ], [ %i.ae, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17 ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.af, %.lr.ph.i.i.i.i ], [ %.sink.i, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %.011.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(64) %.0810.i.i.i.i, i64 64, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 64 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, %2
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !10

_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17
  %.0.lcssa.i.i.i.i = phi ptr [ %i.ae, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit17 ], [ %i.ag, %.lr.ph.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i, ptr %i.u, align 8, !tbaa !139
  br label %_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit

_ZNSt6vectorIN5video17S3DVertexTangentsESaIS1_EE15_M_erase_at_endEPS1_.exit: ; preds = %_ZSt8_DestroyIPN5video17S3DVertexTangentsES1_EvT_S3_RSaIT0_E.exit.i, %_ZSt4copyIPKN5video17S3DVertexTangentsEPS1_ET0_T_S6_S5_.exit, %_ZSt22__uninitialized_copy_aIPKN5video17S3DVertexTangentsEPS1_S1_ET0_T_S6_S5_RSaIT1_E.exit, %_ZNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE13_M_deallocateEPS1_m.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #12 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { noreturn nounwind }
attributes #19 = { nounwind }
attributes #20 = { builtin allocsize(0) }
attributes #21 = { builtin nounwind }
attributes #22 = { noreturn }

!llvm.module.flags = !{!11, !12}
!llvm.ident = !{!13}
!llvm.errno.tbaa = !{!18}

!0 = distinct !{ptr @_ZN5scene5SMeshD1Ev, null, null}
!1 = distinct !{null}
!2 = distinct !{null}
!3 = distinct !{null}
!4 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev, null, null, null, null}
!5 = distinct !{!5, !27}
!6 = distinct !{null}
!7 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev, null, null, null, null}
!8 = distinct !{!8, !27}
!9 = distinct !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev, null, null, null, null}
!10 = distinct !{!10, !27}
!11 = !{i32 8, !"PIC Level", i32 2}
!12 = !{i32 7, !"uwtable", i32 2}
!13 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!14 = !{!"Simple C++ TBAA"}
!15 = !{!"omnipotent char", !14, i64 0}
!16 = !{!"int", !15, i64 0}
!17 = !{!"__libc_errno", !16, i64 0}
!18 = !{!17, !16, i64 0}
!19 = !{!"vtable pointer", !14, i64 0}
!20 = !{!19, !19, i64 0}
!21 = !{!"short", !15, i64 0}
!22 = !{!21, !21, i64 0}
!23 = !{!"float", !15, i64 0}
!24 = !{!"_ZTSN4core8vector3dIfEE", !23, i64 0, !23, i64 4, !23, i64 8}
!25 = !{!24, !23, i64 0}
!26 = !{!23, !23, i64 0}
!27 = !{!"llvm.loop.mustprogress"}
!28 = !{!24, !23, i64 8}
!29 = !{!16, !16, i64 0}
!30 = !{!"_ZTS17IReferenceCounted", !16, i64 8}
!31 = !{!30, !16, i64 8}
!32 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 20, i64 4, !26}
!33 = !{!"_ZTSN5scene11IMeshBufferE"}
!34 = !{!"_ZTSN5video15E_MATERIAL_TYPEE", !15, i64 0}
!35 = !{!"_ZTSN5video6SColorE", !16, i64 0}
!36 = !{!"_ZTSN5video17E_COMPARISON_FUNCE", !15, i64 0}
!37 = !{!"_ZTSN5video20E_ANTI_ALIASING_MODEE", !15, i64 0}
!38 = !{!"_ZTSN5video13E_COLOR_PLANEE", !15, i64 0}
!39 = !{!"_ZTSN5video17E_BLEND_OPERATIONE", !15, i64 0}
!40 = !{!"bool", !15, i64 0}
!41 = !{!"_ZTSN5video8E_ZWRITEE", !15, i64 0}
!42 = !{!"_ZTSN5video9SMaterialE", !15, i64 0, !34, i64 96, !35, i64 100, !23, i64 104, !23, i64 108, !23, i64 112, !23, i64 116, !23, i64 120, !36, i64 124, !37, i64 124, !38, i64 125, !39, i64 125, !40, i64 126, !40, i64 126, !41, i64 126, !40, i64 126, !40, i64 126, !40, i64 126, !40, i64 126}
!43 = !{!"any pointer", !15, i64 0}
!44 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !43, i64 0}
!45 = !{!"p1 _ZTSN5scene12CIndexBufferItEE", !43, i64 0}
!46 = !{!"_ZTSN4core8aabbox3dIfEE", !24, i64 0, !24, i64 12}
!47 = !{!"_ZTSN5scene16E_PRIMITIVE_TYPEE", !15, i64 0}
!48 = !{!"_ZTSN5scene11CMeshBufferIN5video9S3DVertexEEE", !33, i64 0, !42, i64 8, !44, i64 136, !45, i64 144, !46, i64 152, !47, i64 176}
!49 = !{!48, !44, i64 136}
!50 = !{!48, !45, i64 144}
!51 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE", !43, i64 0}
!52 = !{!"_ZTSN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEEE", !33, i64 0, !42, i64 8, !51, i64 136, !45, i64 144, !46, i64 152, !47, i64 176}
!53 = !{!52, !51, i64 136}
!54 = !{!52, !45, i64 144}
!55 = !{!"p1 _ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE", !43, i64 0}
!56 = !{!"_ZTSN5scene11CMeshBufferIN5video17S3DVertexTangentsEEE", !33, i64 0, !42, i64 8, !55, i64 136, !45, i64 144, !46, i64 152, !47, i64 176}
!57 = !{!56, !55, i64 136}
!58 = !{!56, !45, i64 144}
!59 = !{!"p1 _ZTSN5video8ITextureE", !43, i64 0}
!60 = !{!"_ZTSN5video20E_TEXTURE_MIN_FILTERE", !15, i64 0}
!61 = !{!"_ZTSN5video20E_TEXTURE_MAG_FILTERE", !15, i64 0}
!62 = !{!"p1 _ZTSN4core8CMatrix4IfEE", !43, i64 0}
!63 = !{!"_ZTSN5video14SMaterialLayerE", !59, i64 0, !15, i64 8, !15, i64 8, !15, i64 9, !60, i64 10, !61, i64 11, !15, i64 12, !15, i64 13, !62, i64 16}
!64 = !{!63, !59, i64 0}
!65 = !{!15, !15, i64 0}
!66 = !{!48, !47, i64 176}
!67 = !{!"_ZTSN5scene18E_HARDWARE_MAPPINGE", !15, i64 0}
!68 = !{!"_ZTSN5scene8HWBufferE", !67, i64 8, !43, i64 16, !16, i64 24}
!69 = !{!68, !67, i64 8}
!70 = !{!68, !43, i64 16}
!71 = !{!68, !16, i64 24}
!72 = !{!63, !62, i64 16}
!73 = !{!"any p2 pointer", !43, i64 0}
!74 = !{!"p2 _ZTSN5scene11IMeshBufferE", !73, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseIPN5scene11IMeshBufferESaIS2_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!75, !74, i64 8}
!77 = !{!75, !74, i64 16}
!78 = !{!"p1 _ZTSN5scene11IMeshBufferE", !43, i64 0}
!79 = !{!78, !78, i64 0}
!80 = !{!75, !74, i64 0}
!81 = !{!"p1 int", !43, i64 0}
!82 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !81, i64 0, !81, i64 8, !81, i64 16}
!83 = !{!82, !81, i64 8}
!84 = !{!82, !81, i64 16}
!85 = !{!82, !81, i64 0}
!86 = !{!52, !47, i64 176}
!87 = !{!56, !47, i64 176}
!88 = !{!74, !74, i64 0}
!89 = !{ptr @_ZN5scene5SMeshD1Ev}
!90 = !{!"p1 short", !43, i64 0}
!91 = !{!"_ZTSNSt12_Vector_baseItSaItEE17_Vector_impl_dataE", !90, i64 0, !90, i64 8, !90, i64 16}
!92 = !{!91, !90, i64 16}
!93 = !{!91, !90, i64 0}
!94 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!95 = !{!91, !90, i64 8}
!96 = !{!"p1 _ZTSN5video9S3DVertexE", !43, i64 0}
!97 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE17_Vector_impl_dataE", !96, i64 0, !96, i64 8, !96, i64 16}
!98 = !{!97, !96, i64 8}
!99 = !{!97, !96, i64 0}
!100 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26}
!101 = !{!46, !23, i64 16}
!102 = !{!46, !23, i64 20}
!103 = !{!46, !23, i64 4}
!104 = !{!46, !23, i64 8}
!105 = !{!24, !23, i64 4}
!106 = !{!46, !23, i64 12}
!107 = !{!46, !23, i64 0}
!108 = !{!90, !90, i64 0}
!109 = !{ptr @_ZN5scene11CMeshBufferIN5video9S3DVertexEED1Ev}
!110 = !{!"p1 _ZTSN5scene12WeightBufferE", !43, i64 0}
!111 = !{!"_ZTS7irr_ptrIN5scene12WeightBufferEE", !110, i64 0}
!112 = !{!111, !110, i64 0}
!113 = !{!97, !96, i64 16}
!114 = !{ptr @_ZN5scene13CVertexBufferIN5video9S3DVertexEED1Ev}
!115 = !{!"_ZTSN5scene13IVertexBufferE", !68, i64 0}
!116 = !{!"_ZTSNSt12_Vector_baseIN5video9S3DVertexESaIS1_EE12_Vector_implE", !97, i64 0}
!117 = !{!"_ZTSSt12_Vector_baseIN5video9S3DVertexESaIS1_EE", !116, i64 0}
!118 = !{!"_ZTSSt6vectorIN5video9S3DVertexESaIS1_EE", !117, i64 0}
!119 = !{!"_ZTSN5scene13CVertexBufferIN5video9S3DVertexEEE", !115, i64 0, !118, i64 32, !111, i64 56, !40, i64 64}
!120 = !{!119, !40, i64 64}
!121 = !{i8 0, i8 2}
!122 = !{}
!123 = !{ptr @_ZN5scene12CIndexBufferItED1Ev}
!124 = !{i64 0, i64 4, !26, i64 4, i64 4, !26, i64 8, i64 4, !26, i64 12, i64 4, !26, i64 16, i64 4, !26, i64 20, i64 4, !26, i64 24, i64 4, !29, i64 28, i64 4, !26, i64 32, i64 4, !26, i64 36, i64 2, !22}
!125 = !{!"p1 _ZTSN5video17S3DVertex2TCoordsE", !43, i64 0}
!126 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE17_Vector_impl_dataE", !125, i64 0, !125, i64 8, !125, i64 16}
!127 = !{!126, !125, i64 8}
!128 = !{!126, !125, i64 0}
!129 = !{ptr @_ZN5scene11CMeshBufferIN5video17S3DVertex2TCoordsEED1Ev}
!130 = !{!126, !125, i64 16}
!131 = !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEED1Ev}
!132 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE12_Vector_implE", !126, i64 0}
!133 = !{!"_ZTSSt12_Vector_baseIN5video17S3DVertex2TCoordsESaIS1_EE", !132, i64 0}
!134 = !{!"_ZTSSt6vectorIN5video17S3DVertex2TCoordsESaIS1_EE", !133, i64 0}
!135 = !{!"_ZTSN5scene13CVertexBufferIN5video17S3DVertex2TCoordsEEE", !115, i64 0, !134, i64 32, !111, i64 56, !40, i64 64}
!136 = !{!135, !40, i64 64}
!137 = !{!"p1 _ZTSN5video17S3DVertexTangentsE", !43, i64 0}
!138 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE17_Vector_impl_dataE", !137, i64 0, !137, i64 8, !137, i64 16}
!139 = !{!138, !137, i64 8}
!140 = !{!138, !137, i64 0}
!141 = !{ptr @_ZN5scene11CMeshBufferIN5video17S3DVertexTangentsEED1Ev}
!142 = !{!138, !137, i64 16}
!143 = !{ptr @_ZN5scene13CVertexBufferIN5video17S3DVertexTangentsEED1Ev}
!144 = !{!"_ZTSNSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE12_Vector_implE", !138, i64 0}
!145 = !{!"_ZTSSt12_Vector_baseIN5video17S3DVertexTangentsESaIS1_EE", !144, i64 0}
!146 = !{!"_ZTSSt6vectorIN5video17S3DVertexTangentsESaIS1_EE", !145, i64 0}
!147 = !{!"_ZTSN5scene13CVertexBufferIN5video17S3DVertexTangentsEEE", !115, i64 0, !146, i64 32, !111, i64 56, !40, i64 64}
!148 = !{!147, !40, i64 64}
!149 = distinct !{null}
!150 = distinct !{null, null}
!151 = distinct !{null, null}
!152 = distinct !{null, null}
!153 = distinct !{!153, !27}
!154 = distinct !{!154, !27}
!155 = distinct !{!155, !27}
!156 = distinct !{!156, !27}
!157 = distinct !{null, null}
!158 = distinct !{null, null}
!159 = distinct !{null, null}
!160 = distinct !{!160, !27}
end_hunk_2
