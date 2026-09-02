Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/SIISelLowering?download=true
inline.NumInlined: 17199
inline.NumDeleted: 4185
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 196
begin_hunk_0_@_ZNK4llvm16SITargetLowering14handleD16VDataENS_7SDValueERNS_12SelectionDAGEb:bb.a
  %i.fb = load i16, ptr %10, align 8, !tbaa !239  ; 2 uses
  %.not.i191 = icmp eq i16 %i.fb, 0
  br i1 %.not.i191, label %bb.y, label %bb.x

bb.x:                                             ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit
  %i.fc = zext i16 %i.fb to i64
  %i.fd = getelementptr [2 x i8], ptr @_ZZNK4llvm3MVT20getVectorElementTypeEvE10EltTyTable, i64 %i.fc
  %i.fe = getelementptr i8, ptr %i.fd, i64 -2
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !217
  %i.fg = insertvalue { i16, ptr } poison, i16 %i.ff, 0
  %i.fh = insertvalue { i16, ptr } %i.fg, ptr null, 1
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

bb.y:                                             ; preds = %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit
  %i.fi = call { i16, ptr } @_ZNK4llvm3EVT28getExtendedVectorElementTypeEv(ptr noundef nonnull align 8 dereferenceable(16) %10) #27
  br label %_ZNK4llvm3EVT20getVectorElementTypeEv.exit

_ZNK4llvm3EVT20getVectorElementTypeEv.exit:       ; preds = %bb.x, %bb.y
  %.fca.1.insert.merged.i192 = phi { i16, ptr } [ %i.fh, %bb.x ], [ %i.fi, %bb.y ] ; 2 uses
  %i.fj = extractvalue { i16, ptr } %.fca.1.insert.merged.i192, 0 ; 2 uses
  %switch.tableidx = add i16 %i.fj, -2            ; 3 uses
  %i.fk = icmp ult i16 %switch.tableidx, 14
  %switch.shifted = lshr i16 15481, %switch.tableidx
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond = select i1 %i.fk, i1 %switch.lobit, i1 false
  %i.fl = getelementptr inbounds nuw i8, ptr %23, i64 8 ; 3 uses
  br i1 %or.cond, label %switch.lookup, label %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit198

switch.lookup:                                    ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.fm = zext nneg i16 %switch.tableidx to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._ZNK4llvm16SITargetLowering12lowerSBufferENS_3EVTENS_5SDLocENS_7SDValueES3_S3_RNS_12SelectionDAGE, i64 %i.fm
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i16       ; 2 uses
  store i16 %switch.ext, ptr %23, align 8
  store ptr null, ptr %i.fl, align 8
  %i.fn = load ptr, ptr %i.eg, align 8, !tbaa !539
  br label %bb.z

_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit198: ; preds = %_ZNK4llvm3EVT20getVectorElementTypeEv.exit
  %i.fo = extractvalue { i16, ptr } %.fca.1.insert.merged.i192, 1
  %i.fp = call { i16, ptr } @_ZN4llvm3EVT19getExtendedVectorVTERNS_11LLVMContextES0_jb(ptr noundef nonnull align 8 dereferenceable(8) %i.fa, i16 %i.fj, ptr %i.fo, i32 noundef 4, i1 noundef zeroext false) #27 ; 2 uses
  %i.fq = extractvalue { i16, ptr } %i.fp, 0      ; 3 uses
  %i.fr = extractvalue { i16, ptr } %i.fp, 1
  store i16 %i.fq, ptr %23, align 8
  store ptr %i.fr, ptr %i.fl, align 8
  %i.fs = load ptr, ptr %i.eg, align 8, !tbaa !539 ; 2 uses
  %.not.i.i.i199 = icmp eq i16 %i.fq, 0
  br i1 %.not.i.i.i199, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %switch.lookup, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit198
  %i.ft = phi ptr [ %i.fn, %switch.lookup ], [ %i.fs, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit198 ]
  %.sroa.0.0.i195271 = phi i16 [ %switch.ext, %switch.lookup ], [ %i.fq, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit198 ]
  %i.fu = zext i16 %.sroa.0.0.i195271 to i64
  %i.fv = getelementptr [16 x i8], ptr @_ZZNK4llvm3MVT13getSizeInBitsEvE9SizeTable, i64 %i.fu ; 2 uses
  %i.fw = getelementptr i8, ptr %i.fv, i64 -16
  %.sroa.0.0.copyload.i.i.i.i200 = load i64, ptr %i.fw, align 16
  %.sroa.2.0..sroa_idx.i.i.i.i201 = getelementptr i8, ptr %i.fv, i64 -8
  %.sroa.2.0.copyload.i.i.i.i202 = load i8, ptr %.sroa.2.0..sroa_idx.i.i.i.i201, align 8
  %.fca.0.insert.i.i.i.i203 = insertvalue { i64, i8 } poison, i64 %.sroa.0.0.copyload.i.i.i.i200, 0
  %.fca.1.insert.i.i.i.i204 = insertvalue { i64, i8 } %.fca.0.insert.i.i.i.i203, i8 %.sroa.2.0.copyload.i.i.i.i202, 1
  br label %_ZNK4llvm3EVT18getStoreSizeInBitsEv.exit210

bb.aa:                                            ; preds = %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit198
  %i.fx = call { i64, i8 } @_ZNK4llvm3EVT21getExtendedSizeInBitsEv(ptr noundef nonnull align 8 dereferenceable(16) %23) #28
  br label %_ZNK4llvm3EVT18getStoreSizeInBitsEv.exit210

_ZNK4llvm3EVT18getStoreSizeInBitsEv.exit210:      ; preds = %bb.z, %bb.aa
  %i.fy = phi ptr [ %i.ft, %bb.z ], [ %i.fs, %bb.aa ]
  %.pn.i.i.i205 = phi { i64, i8 } [ %.fca.1.insert.i.i.i.i204, %bb.z ], [ %i.fx, %bb.aa ] ; 2 uses
  %.fca.1.extract.i.i207 = extractvalue { i64, i8 } %.pn.i.i.i205, 1
  %i.fz = trunc nuw i8 %.fca.1.extract.i.i207 to i1
  br i1 %i.fz, label %bb.ab, label %_ZNK4llvm8TypeSizecvmEv.exit211

bb.ab:                                            ; preds = %_ZNK4llvm3EVT18getStoreSizeInBitsEv.exit210
  call void @_ZN4llvm24reportFatalInternalErrorEPKc(ptr noundef nonnull @.str.104) #29
  unreachable

_ZNK4llvm8TypeSizecvmEv.exit211:                  ; preds = %_ZNK4llvm3EVT18getStoreSizeInBitsEv.exit210
  %.fca.0.extract.i.i206 = extractvalue { i64, i8 } %.pn.i.i.i205, 0
  %i.ga = trunc i64 %.fca.0.extract.i.i206 to i32
  %i.gb = add i32 %i.ga, 7
  %i.gc = and i32 %i.gb, -8                       ; 3 uses
  %i.gd = call range(i32 0, 30) i32 @llvm.ctpop.i32(i32 %i.gc)
  %i.ge = icmp eq i32 %i.gd, 1
  br i1 %i.ge, label %.split.i.i214, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i212

.split.i.i214:                                    ; preds = %_ZNK4llvm8TypeSizecvmEv.exit211
  %i.gf = call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.gc, i1 true) ; 2 uses
  %i.gg = icmp samesign ult i32 %i.gf, 10
  br i1 %i.gg, label %_ZN4llvm3MVT12getIntegerVTEj.exit.i215, label %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i212

_ZN4llvm3MVT12getIntegerVTEj.exit.i215:           ; preds = %.split.i.i214
  %switch.idx.cast.i.i216 = trunc nuw nsw i32 %i.gf to i16
  %switch.offset.i.i217 = add nuw nsw i16 %switch.idx.cast.i.i216, 2
  %i.gh = insertvalue { i16, ptr } poison, i16 %switch.offset.i.i217, 0
  %i.gi = insertvalue { i16, ptr } %i.gh, ptr null, 1
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit218

_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i212:    ; preds = %.split.i.i214, %_ZNK4llvm8TypeSizecvmEv.exit211
  %i.gj = call { i16, ptr } @_ZN4llvm3EVT20getExtendedIntegerVTERNS_11LLVMContextEj(ptr noundef nonnull align 8 dereferenceable(8) %i.fy, i32 noundef %i.gc) #27
  br label %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit218

_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit218: ; preds = %_ZN4llvm3MVT12getIntegerVTEj.exit.i215, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i212
  %.fca.1.insert.merged.i213 = phi { i16, ptr } [ %i.gj, %_ZN4llvm3MVT12getIntegerVTEj.exit.thread.i212 ], [ %i.gi, %_ZN4llvm3MVT12getIntegerVTEj.exit.i215 ] ; 2 uses
  %i.gk = extractvalue { i16, ptr } %.fca.1.insert.merged.i213, 0
  %i.gl = extractvalue { i16, ptr } %.fca.1.insert.merged.i213, 1
  store ptr %.fca.0.extract21, ptr %24, align 8, !tbaa !533
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %24, i64 8
  store i32 %.fca.1.extract22, ptr %.sroa.429.0..sroa_idx, align 8, !tbaa !233
  %i.gm = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 228, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %i.gk, ptr %i.gl, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %24) #27 ; 2 uses
  %.fca.0.extract4 = extractvalue { ptr, i32 } %i.gm, 0
  %.fca.1.extract5 = extractvalue { ptr, i32 } %i.gm, 1
  %.sroa.01.0.copyload = load i16, ptr %23, align 8, !tbaa !217
  %.sroa.23.0.copyload = load ptr, ptr %i.fl, align 8, !tbaa !240
  store ptr %.fca.0.extract4, ptr %25, align 8, !tbaa !533
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %25, i64 8
  store i32 %.fca.1.extract5, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !233
  %i.gn = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %3, i32 noundef 248, ptr noundef nonnull align 8 dereferenceable(12) %11, i16 %.sroa.01.0.copyload, ptr %.sroa.23.0.copyload, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %25) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.gn, 0
  %.fca.1.extract = extractvalue { ptr, i32 } %i.gn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #27
  br label %bb.ac

bb.ac:                                            ; preds = %bb.s, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit218, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit190, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit
  %.sroa.0169.0 = phi ptr [ %.fca.0.extract114, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %.fca.0.extract38, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit190 ], [ %.fca.0.extract, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit218 ], [ %1, %bb.s ]
  %.sroa.6171.0 = phi i32 [ %.fca.1.extract115, %_ZN4llvm3EVT11getVectorVTERNS_11LLVMContextES0_jb.exit ], [ %.fca.1.extract39, %_ZN4llvm11SmallVectorINS_7SDValueELj4EED2Ev.exit190 ], [ %.fca.1.extract, %_ZN4llvm3EVT12getIntegerVTERNS_11LLVMContextEj.exit218 ], [ %2, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #27
  br label %bb.ad

bb.ad:                                            ; preds = %_ZNK4llvm3EVT8isVectorEv.exit, %.split, %bb.ac
  %.sroa.0169.1 = phi ptr [ %.sroa.0169.0, %bb.ac ], [ %1, %.split ], [ %1, %_ZNK4llvm3EVT8isVectorEv.exit ]
  %.sroa.6171.1 = phi i32 [ %.sroa.6171.0, %bb.ac ], [ %2, %.split ], [ %2, %_ZNK4llvm3EVT8isVectorEv.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  %.fca.0.insert = insertvalue { ptr, i32 } poison, ptr %.sroa.0169.1, 0
  %.fca.1.insert = insertvalue { ptr, i32 } %.fca.0.insert, i32 %.sroa.6171.1, 1
  ret { ptr, i32 } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZN4llvm6AMDGPU21getMIMGG16MappingInfoEj(i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZL25packImage16bitOpsToDwordsRN4llvm12SelectionDAGENS_7SDValueENS_3MVTERNS_15SmallVectorImplIS2_EEjjj(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr nofree readonly captures(none) %1, i16 %2, ptr noundef nonnull align 8 dereferenceable(16) %3, i32 noundef range(i32 1, 258) %4, i32 noundef range(i32 1, 258) %5, i32 noundef range(i32 0, 256) %6) unnamed_addr #1 {
bb.a:
  %7 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %8 = alloca %"class.llvm::SDLoc", align 8       ; 6 uses
  %9 = alloca %"class.llvm::SDValue", align 8     ; 4 uses
  %10 = alloca [2 x %"class.llvm::SDValue"], align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.b = load i64, ptr %i.a, align 8, !tbaa !550
  store i64 %i.b, ptr %8, align 8, !tbaa !550
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 68
  %i.e = load i32, ptr %i.d, align 4, !tbaa !551
  store i32 %i.e, ptr %i.c, align 8, !tbaa !553
  %i.f = icmp samesign ult i32 %4, %5
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = and i32 %6, 2
  %.not59 = icmp eq i32 %i.h, 0
  %i.i = lshr i32 %6, 1
  %i.j = add nsw i32 %4, -1                       ; 2 uses
  %i.k = add nuw nsw i32 %i.j, %i.i
  %i.l = add nuw nsw i32 %i.j, %6
  %.sroa.12.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %9, i64 8
  %.sroa.19.0..sroa_idx79 = getelementptr inbounds nuw i8, ptr %9, i64 12
  %.sroa.12.0..sroa_idx77 = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %10, i64 16
  %.sroa.26.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 12
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #27
  ret void

bb.b:                                             ; preds = %.lr.ph, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit
  %.084 = phi i32 [ %4, %.lr.ph ], [ %i.ao, %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit ] ; 5 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !846  ; 2 uses
  %i.q = zext nneg i32 %.084 to i64
  %i.r = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.q ; 3 uses
  %.sroa.072.0.copyload = load ptr, ptr %i.r, align 8, !tbaa !533 ; 4 uses
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %.sroa.12.0.copyload = load i32, ptr %.sroa.12.0..sroa_idx, align 8, !tbaa !233 ; 4 uses
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 12
  %.sroa.19.0.copyload = load i32, ptr %.sroa.19.0..sroa_idx, align 4
  %i.s = add nuw nsw i32 %.084, 1                 ; 3 uses
  %.not = icmp ult i32 %i.s, %5
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  br i1 %.not59, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = icmp eq i32 %.084, %i.k
  %i.u = icmp eq i32 %.084, %i.l
  %or.cond = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d, %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.072.0.copyload, i64 48
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !540
  %i.x = zext i32 %.sroa.12.0.copyload to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.x ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.y, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !240
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 6
  %i.z = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.aa = select i1 %.not.i, i1 true, i1 %i.z
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 6, ptr null, ptr nonnull %.sroa.072.0.copyload, i32 %.sroa.12.0.copyload) #27 ; 2 uses
  %.fca.0.extract24 = extractvalue { ptr, i32 } %i.ab, 0
  %.fca.1.extract25 = extractvalue { ptr, i32 } %i.ab, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.072.0 = phi ptr [ %.fca.0.extract24, %bb.f ], [ %.sroa.072.0.copyload, %bb.e ]
  %.sroa.12.0 = phi i32 [ %.fca.1.extract25, %bb.f ], [ %.sroa.12.0.copyload, %bb.e ]
  store ptr %.sroa.072.0, ptr %9, align 8, !tbaa !533
  store i32 %.sroa.12.0, ptr %.sroa.12.0..sroa_idx75, align 8, !tbaa !233
  store i32 %.sroa.19.0.copyload, ptr %.sroa.19.0..sroa_idx79, align 4
  %i.ac = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 229, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 7, ptr null, ptr noundef nonnull byval(%"class.llvm::SDValue") align 8 %9) #27
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #27
  store ptr %.sroa.072.0.copyload, ptr %10, align 8, !tbaa !533
  store i32 %.sroa.12.0.copyload, ptr %.sroa.12.0..sroa_idx77, align 8, !tbaa !233
  %i.ad = zext nneg i32 %i.s to i64
  %i.ae = getelementptr inbounds nuw [40 x i8], ptr %i.p, i64 %i.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.m, ptr noundef nonnull align 8 dereferenceable(12) %i.ae, i64 12, i1 false), !tbaa.struct !769
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  store ptr %10, ptr %7, align 8, !tbaa !768
  store i64 2, ptr %.sroa.26.0..sroa_idx.i, align 8, !tbaa !497
  %i.af = call { ptr, i32 } @_ZN4llvm12SelectionDAG7getNodeEjRKNS_5SDLocENS_3EVTENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, i32 noundef 162, ptr noundef nonnull align 8 dereferenceable(12) %8, i16 %2, ptr null, ptr noundef nonnull byval(%"class.llvm::ArrayRef.518") align 8 %7) #27
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #27
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.af, %bb.h ], [ %i.ac, %bb.g ] ; 2 uses
  %.1 = phi i32 [ %i.s, %bb.h ], [ %.084, %bb.g ]
  %.sroa.12.1 = extractvalue { ptr, i32 } %.pn, 1
  %.sroa.072.1 = extractvalue { ptr, i32 } %.pn, 0
  %i.ag = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 14, ptr null, ptr %.sroa.072.1, i32 %.sroa.12.1) #27 ; 2 uses
  %.fca.0.extract = extractvalue { ptr, i32 } %i.ag, 0 ; 2 uses
  %.fca.1.extract = extractvalue { ptr, i32 } %i.ag, 1 ; 2 uses
  %i.ah = load i32, ptr %i.n, align 8, !tbaa !489 ; 2 uses
  %i.ai = load i32, ptr %i.o, align 4, !tbaa !490
  %.not.i60 = icmp ult i32 %i.ah, %i.ai
  br i1 %.not.i60, label %bb.k, label %bb.j, !prof !491

bb.j:                                             ; preds = %bb.i
  call void @_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE15growAndPushBackES1_(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr %.fca.0.extract, i32 %.fca.1.extract)
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

bb.k:                                             ; preds = %bb.i
  %i.aj = zext i32 %i.ah to i64
  %i.ak = load ptr, ptr %3, align 8, !tbaa !34
  %i.al = getelementptr inbounds nuw [16 x i8], ptr %i.ak, i64 %i.aj ; 2 uses
  store ptr %.fca.0.extract, ptr %i.al, align 1
  %.sroa.32.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i32 %.fca.1.extract, ptr %.sroa.32.0..sroa_idx.i, align 1
  %i.am = load i32, ptr %i.n, align 8, !tbaa !489
  %i.an = add i32 %i.am, 1
  store i32 %i.an, ptr %i.n, align 8, !tbaa !489
  br label %_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit

_ZN4llvm23SmallVectorTemplateBaseINS_7SDValueELb1EE9push_backES1_.exit: ; preds = %bb.j, %bb.k
  %i.ao = add nuw nsw i32 %.1, 1                  ; 2 uses
  %i.ap = icmp ult i32 %i.ao, %5
  br i1 %i.ap, label %bb.b, label %._crit_edge, !llvm.loop !2382
}

declare noundef i32 @_ZNK4llvm12GCNSubtarget15getNSAThresholdERKNS_15MachineFunctionE(ptr noundef nonnull align 8 dereferenceable(520232), ptr noundef nonnull align 8 dereferenceable(1065)) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc { ptr, i32 } @_ZL20getBuildDwordsVectorRN4llvm12SelectionDAGENS_5SDLocENS_8ArrayRefINS_7SDValueEEE(ptr noundef nonnull align 8 dereferenceable(920) %0, ptr %1, i32 %2, ptr nofree readonly captures(none) %3, i64 %4) unnamed_addr #1 {
bb.a:
  %5 = alloca %"class.llvm::ArrayRef.518", align 8 ; 5 uses
  %6 = alloca %"class.llvm::SDLoc", align 8       ; 4 uses
  %7 = alloca %"class.llvm::SDLoc", align 8       ; 3 uses
  %8 = alloca %"class.llvm::SmallVector.637", align 8 ; 15 uses
  store ptr %1, ptr %7, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = trunc i64 %4 to i32                      ; 4 uses
  %i.c = icmp ult i32 %i.b, 13
  br i1 %i.c, label %bb.b, label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

bb.b:                                             ; preds = %bb.a
  %switch.tableidx = add nsw i32 %i.b, -1         ; 2 uses
  %i.d = icmp ult i32 %switch.tableidx, 12
  br i1 %i.d, label %switch.lookup, label %_ZN4llvm3MVT11getVectorVTES0_j.exit

switch.lookup:                                    ; preds = %bb.b
  %switch.idx.cast = trunc nuw i32 %switch.tableidx to i16
  %switch.offset = add nuw nsw i16 %switch.idx.cast, 133
  br label %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread

_ZN4llvm3MVT11getVectorVTES0_j.exit.thread:       ; preds = %switch.lookup, %bb.a
  %.sroa.052.0.ph = phi i16 [ 145, %bb.a ], [ %switch.offset, %switch.lookup ]
  %.0.ph = phi i32 [ 16, %bb.a ], [ %i.b, %switch.lookup ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.e = zext nneg i32 %.0.ph to i64
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  store ptr %i.f, ptr %8, align 8, !tbaa !34
  %i.g = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.h, align 4, !tbaa !490
  br label %.lr.ph.preheader.i.i.i

_ZN4llvm3MVT11getVectorVTES0_j.exit:              ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #27
  %i.i = and i64 %4, 15                           ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 3 uses
  store ptr %i.j, ptr %8, align 8, !tbaa !34
  %i.k = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 3 uses
  store i32 0, ptr %i.k, align 8, !tbaa !489
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 12
  store i32 16, ptr %i.l, align 4, !tbaa !490
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread
  %i.n = phi ptr [ %i.g, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ %i.k, %_ZN4llvm3MVT11getVectorVTES0_j.exit ] ; 2 uses
  %i.o = phi ptr [ %i.f, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ %i.j, %_ZN4llvm3MVT11getVectorVTES0_j.exit ] ; 3 uses
  %i.p = phi i64 [ %i.e, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ %i.i, %_ZN4llvm3MVT11getVectorVTES0_j.exit ] ; 2 uses
  %.061 = phi i32 [ %.0.ph, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ 0, %_ZN4llvm3MVT11getVectorVTES0_j.exit ] ; 2 uses
  %.sroa.052.059 = phi i16 [ %.sroa.052.0.ph, %_ZN4llvm3MVT11getVectorVTES0_j.exit.thread ], [ 0, %_ZN4llvm3MVT11getVectorVTES0_j.exit ]
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.p
  %i.s = shl nuw nsw i64 %i.p, 4
  call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.o, i8 0, i64 %i.s, i1 false)
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.preheader.i.i.i
  %.012.i.i.i = phi ptr [ %i.u, %.lr.ph.i.i.i ], [ %i.o, %.lr.ph.preheader.i.i.i ] ; 3 uses
  store ptr null, ptr %.012.i.i.i, align 8, !tbaa !805
  %i.t = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i32 0, ptr %i.t, align 8, !tbaa !806
  %i.u = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.u, %i.r
  br i1 %.not.i.i.i, label %.sink.split.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

.sink.split.i.i.i:                                ; preds = %.lr.ph.i.i.i
  store i32 %.061, ptr %i.n, align 8, !tbaa !489
  br label %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit

_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit: ; preds = %_ZN4llvm3MVT11getVectorVTES0_j.exit, %.sink.split.i.i.i
  %i.v = phi ptr [ %i.k, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ %i.n, %.sink.split.i.i.i ]
  %i.w = phi ptr [ %i.j, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ %i.o, %.sink.split.i.i.i ] ; 3 uses
  %.062 = phi i32 [ 0, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ %.061, %.sink.split.i.i.i ] ; 3 uses
  %.sroa.052.060 = phi i16 [ 0, %_ZN4llvm3MVT11getVectorVTES0_j.exit ], [ %.sroa.052.059, %.sink.split.i.i.i ]
  %.not = icmp eq i64 %4, 0
  br i1 %.not, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.d, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit
  %i.x = phi ptr [ %i.w, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit ], [ %i.aj, %bb.d ]
  %i.y = icmp ugt i32 %.062, %i.b
  br i1 %i.y, label %.lr.ph75, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit, %bb.d
  %i.z = phi ptr [ %i.aj, %bb.d ], [ %i.w, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit ]
  %i.aa = phi i64 [ %i.am, %bb.d ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit ] ; 2 uses
  %.03373 = phi i32 [ %i.al, %bb.d ], [ 0, %_ZN4llvm11SmallVectorINS_7SDValueELj16EEC2Em.exit ]
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %3, i64 %i.aa ; 2 uses
  %.sroa.046.0.copyload = load ptr, ptr %i.ab, align 8, !tbaa !533 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !233 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.046.0.copyload, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !540
  %i.ae = zext i32 %.sroa.7.0.copyload to i64
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.ae ; 2 uses
  %.sroa.0.0.copyload.i.i = load i16, ptr %i.af, align 8, !tbaa !217
  %.sroa.21.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.21.0.copyload.i.i = load ptr, ptr %.sroa.21.0..sroa_idx.i.i, align 8, !tbaa !240
  %.not.i = icmp ne i16 %.sroa.0.0.copyload.i.i, 14
  %i.ag = icmp ne ptr %.sroa.21.0.copyload.i.i, null
  %i.ah = select i1 %.not.i, i1 true, i1 %i.ag
  br i1 %i.ah, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  %i.ai = call { ptr, i32 } @_ZN4llvm12SelectionDAG10getBitcastENS_3EVTENS_7SDValueE(ptr noundef nonnull align 8 dereferenceable(920) %0, i16 14, ptr null, ptr nonnull %.sroa.046.0.copyload, i32 %.sroa.7.0.copyload) #27 ; 2 uses
  %.fca.0.extract9 = extractvalue { ptr, i32 } %i.ai, 0
  %.fca.1.extract10 = extractvalue { ptr, i32 } %i.ai, 1
  %.pre = load ptr, ptr %8, align 8, !tbaa !34
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph
  %i.aj = phi ptr [ %.pre, %bb.c ], [ %i.z, %.lr.ph ] ; 3 uses
  %.sroa.046.0 = phi ptr [ %.fca.0.extract9, %bb.c ], [ %.sroa.046.0.copyload, %.lr.ph ]
  %.sroa.7.0 = phi i32 [ %.fca.1.extract10, %bb.c ], [ %.sroa.7.0.copyload, %.lr.ph ]
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.aj, i64 %i.aa ; 2 uses
end_hunk_0
