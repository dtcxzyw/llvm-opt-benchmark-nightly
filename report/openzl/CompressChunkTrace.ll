Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openzl/original/CompressChunkTrace?download=true
inline.NumInlined: 1971
inline.NumDeleted: 1047
begin_hunk_0_@_ZN6openzl10visualizer18CompressChunkTrace19resolveErrorStringsEPK9ZL_CCtx_s:bb.a
  br i1 %.not37, label %._crit_edge, label %.lr.ph

._crit_edge46:                                    ; preds = %bb.e, %._crit_edge
  ret void

.lr.ph45:                                         ; preds = %._crit_edge, %bb.e
  %.sroa.030.043 = phi ptr [ %i.z, %bb.e ], [ %i.f, %._crit_edge ] ; 5 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 16
  %.sroa.03.0.copyload = load i32, ptr %i.r, align 8 ; 2 uses
  %.not39 = icmp eq i32 %.sroa.03.0.copyload, 0
  br i1 %.not39, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph45
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 24
  %.sroa.21.0.copyload = load i64, ptr %.sroa.25.0..sroa_idx, align 8, !tbaa !99
  %i.s = tail call ptr @ZL_CCtx_getErrorContextString(ptr noundef %1, i32 %.sroa.03.0.copyload, i64 %.sroa.21.0.copyload) ; 2 uses
  %.not27 = icmp eq ptr %i.s, null
  %i.t = select i1 %.not27, ptr @.str.5, ptr %i.s ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 32
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 40
  %i.w = load i64, ptr %i.v, align 8, !tbaa !148
  %i.x = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.t) #25
  %i.y = tail call noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 0, i64 noundef %i.w, ptr noundef nonnull %i.t, i64 noundef %i.x) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph45
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.030.043, i64 320 ; 2 uses
  %.not38 = icmp eq ptr %i.z, %i.h
  br i1 %.not38, label %._crit_edge46, label %.lr.ph45
}

declare ptr @ZL_CCtx_getErrorContextString(ptr noundef, i32, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define { i32, i64 } @_ZN6openzl10visualizer18CompressChunkTrace15serializeToCBOREP9A1C_ArenaP16A1C_ArrayBuilderP21ZL_OperationContext_s(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !82
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.e = tail call { i32, i64 } @_ZN6openzl10visualizer14ChunkTraceCore24serializeChunkDataToCBOREP9A1C_ArenaP16A1C_ArrayBuildermRSt3mapI9ZL_DataIDNS0_6StreamENS0_25ZL_DataIDCustomComparatorESaISt4pairIKS7_S8_EEERSt6vectorINS0_5CodecESaISH_EERSG_INS0_5GraphESaISL_EEP21ZL_OperationContext_s(ptr noundef %1, ptr noundef %2, i64 noundef %i.a, ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef %3)
  ret { i32, i64 } %i.e
}

declare { i32, i64 } @_ZN6openzl10visualizer14ChunkTraceCore24serializeChunkDataToCBOREP9A1C_ArenaP16A1C_ArrayBuildermRSt3mapI9ZL_DataIDNS0_6StreamENS0_25ZL_DataIDCustomComparatorESaISt4pairIKS7_S8_EEERSt6vectorINS0_5CodecESaISH_EERSG_INS0_5GraphESaISL_EEP21ZL_OperationContext_s(ptr noundef, ptr noundef, i64 noundef, ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef i64 @_ZN6openzl10visualizer18CompressChunkTrace17getCompressedSizeEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(208) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !138
  ret i64 %i.b
}

declare noundef i64 @_ZN6openzl10visualizer14ChunkTraceCore9fillCSizeERK9ZL_DataIDRSt3mapIS2_NS0_6StreamENS0_25ZL_DataIDCustomComparatorESaISt4pairIS3_S6_EEERKSt6vectorINS0_5CodecESaISE_EEm(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(24), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6openzl10visualizerL16printLocalParamsERKNS_11LocalParamsE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(200) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 4 uses
  %i.b = alloca i8, align 1                       ; 4 uses
  %i.c = alloca i8, align 1                       ; 4 uses
  %i.d = alloca i8, align 1                       ; 4 uses
  %i.e = alloca i8, align 1                       ; 4 uses
  %i.f = alloca i8, align 1                       ; 4 uses
  %i.g = alloca i8, align 1                       ; 4 uses
  %i.h = alloca i8, align 1                       ; 4 uses
  %i.i = alloca i8, align 1                       ; 4 uses
  %i.j = alloca i8, align 1                       ; 4 uses
  %i.k = alloca i8, align 1                       ; 4 uses
  %i.l = alloca i8, align 1                       ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !202  ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !267  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.n to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 3                   ; 2 uses
  %.not = icmp eq ptr %i.p, %i.n
  br i1 %.not, label %.loopexit68, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.50, i64 noundef 35) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i8 40, ptr %i.l, align 1, !tbaa !99
  %i.v = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.w = getelementptr i8, ptr %i.v, i64 -24
  %i.x = load i64, ptr %i.w, align 8
  %i.y = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !tbaa !146
  %.not.i = icmp eq i64 %i.aa, 0
  br i1 %.not.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ab = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.l, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %i.ab, %bb.c ], [ @_ZSt4cout, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ad = load i32, ptr %i.n, align 4, !tbaa !269
  %i.ae = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i, i32 noundef %i.ad) ; 2 uses
  %i.af = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !270
  %i.ai = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.ae, i32 noundef %i.ah) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store i8 41, ptr %i.k, align 1, !tbaa !99
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !103
  %i.ak = getelementptr i8, ptr %i.aj, i64 -24
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds i8, ptr %i.ai, i64 %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.ao = load i64, ptr %i.an, align 8, !tbaa !146
  %.not.i17 = icmp eq i64 %i.ao, 0
  br i1 %.not.i17, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.ap = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, ptr noundef nonnull %i.k, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

bb.f:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %i.aq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.ai, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19: ; preds = %bb.e, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ar = icmp ugt i64 %i.t, 1
  br i1 %i.ar, label %.lr.ph, label %.loopexit68

.lr.ph:                                           ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25
  %.01469 = phi i64 [ %i.bq, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25 ], [ 1, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19 ] ; 2 uses
  %i.as = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i8 40, ptr %i.j, align 1, !tbaa !99
  %i.at = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.au = getelementptr i8, ptr %i.at, i64 -24
  %i.av = load i64, ptr %i.au, align 8
  %i.aw = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !146
  %.not.i20 = icmp eq i64 %i.ay, 0
  br i1 %.not.i20, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.az = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.j, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22

bb.h:                                             ; preds = %.lr.ph
  %i.ba = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22: ; preds = %bb.g, %bb.h
  %.0.i21 = phi ptr [ %i.az, %bb.g ], [ @_ZSt4cout, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.01469 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !269
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i21, i32 noundef %i.bc) ; 2 uses
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !270
  %i.bh = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %i.bd, i32 noundef %i.bg) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i8 41, ptr %i.i, align 1, !tbaa !99
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !103
  %i.bj = getelementptr i8, ptr %i.bi, i64 -24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = getelementptr inbounds i8, ptr %i.bh, i64 %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !146
  %.not.i23 = icmp eq i64 %i.bn, 0
  br i1 %.not.i23, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22
  %i.bo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef nonnull %i.i, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

bb.j:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit22
  %i.bp = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.bh, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bq = add nuw i64 %.01469, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.bq, %i.t
  br i1 %exitcond.not, label %.loopexit68, label %.lr.ph, !llvm.loop !264

.loopexit68:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit25, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit19, %bb.a
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !203 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !271 ; 2 uses
  %i.bv = ptrtoint ptr %i.bu to i64
  %i.bw = ptrtoint ptr %i.bs to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 2 uses
  %i.by = sdiv exact i64 %i.bx, 24
  %.not15 = icmp eq ptr %i.bu, %i.bs
  br i1 %.not15, label %.loopexit67, label %bb.k

bb.k:                                             ; preds = %.loopexit68
  %i.bz = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.52, i64 noundef 35) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i8 40, ptr %i.h, align 1, !tbaa !99
  %i.ca = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.cb = getelementptr i8, ptr %i.ca, i64 -24
  %i.cc = load i64, ptr %i.cb, align 8
  %i.cd = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.cc
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %i.cf = load i64, ptr %i.ce, align 8, !tbaa !146
  %.not.i28 = icmp eq i64 %i.cf, 0
  br i1 %.not.i28, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.h, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

bb.m:                                             ; preds = %bb.k
  %i.ch = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30: ; preds = %bb.l, %bb.m
  %.0.i29 = phi ptr [ %i.cg, %bb.l ], [ @_ZSt4cout, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.ci = load i32, ptr %i.bs, align 8, !tbaa !273
  %i.cj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i29, i32 noundef %i.ci) ; 2 uses
  %i.ck = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !274
  %i.cn = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, i64 noundef %i.cm) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i8 41, ptr %i.g, align 1, !tbaa !99
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !103
  %i.cp = getelementptr i8, ptr %i.co, i64 -24
  %i.cq = load i64, ptr %i.cp, align 8
  %i.cr = getelementptr inbounds i8, ptr %i.cn, i64 %i.cq
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  %i.ct = load i64, ptr %i.cs, align 8, !tbaa !146
  %.not.i31 = icmp eq i64 %i.ct, 0
  br i1 %.not.i31, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30
  %i.cu = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, ptr noundef nonnull %i.g, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

bb.o:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit30
  %i.cv = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.cn, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33: ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.cw = icmp ugt i64 %i.bx, 24
  br i1 %i.cw, label %.lr.ph71.preheader, label %.loopexit67

.lr.ph71.preheader:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33
  %umax = call i64 @llvm.umax.i64(i64 %i.by, i64 2)
  br label %.lr.ph71

.lr.ph71:                                         ; preds = %.lr.ph71.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39
  %.01370 = phi i64 [ %i.dv, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39 ], [ 1, %.lr.ph71.preheader ] ; 2 uses
  %i.cx = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 40, ptr %i.f, align 1, !tbaa !99
  %i.cy = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.cz = getelementptr i8, ptr %i.cy, i64 -24
  %i.da = load i64, ptr %i.cz, align 8
  %i.db = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.da
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !146
  %.not.i34 = icmp eq i64 %i.dd, 0
  br i1 %.not.i34, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph71
  %i.de = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.f, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

bb.q:                                             ; preds = %.lr.ph71
  %i.df = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36: ; preds = %bb.p, %bb.q
  %.0.i35 = phi ptr [ %i.de, %bb.p ], [ @_ZSt4cout, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.dg = getelementptr inbounds nuw [24 x i8], ptr %i.bs, i64 %.01370 ; 2 uses
  %i.dh = load i32, ptr %i.dg, align 8, !tbaa !273
  %i.di = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i35, i32 noundef %i.dh) ; 2 uses
  %i.dj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.di, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !274
  %i.dm = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8) %i.di, i64 noundef %i.dl) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 41, ptr %i.e, align 1, !tbaa !99
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !103
  %i.do = getelementptr i8, ptr %i.dn, i64 -24
  %i.dp = load i64, ptr %i.do, align 8
  %i.dq = getelementptr inbounds i8, ptr %i.dm, i64 %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load i64, ptr %i.dr, align 8, !tbaa !146
  %.not.i37 = icmp eq i64 %i.ds, 0
  br i1 %.not.i37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36
  %i.dt = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, ptr noundef nonnull %i.e, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

bb.s:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit36
  %i.du = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.dm, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.dv = add nuw i64 %.01370, 1                  ; 2 uses
  %exitcond74.not = icmp eq i64 %i.dv, %umax
  br i1 %exitcond74.not, label %.loopexit67, label %.lr.ph71, !llvm.loop !265

.loopexit67:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit39, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit33, %.loopexit68
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !204 ; 4 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !275 ; 2 uses
  %i.ea = ptrtoint ptr %i.dz to i64
  %i.eb = ptrtoint ptr %i.dx to i64
  %i.ec = sub i64 %i.ea, %i.eb                    ; 2 uses
  %i.ed = sdiv exact i64 %i.ec, 24
  %.not16 = icmp eq ptr %i.dz, %i.dx
  br i1 %.not16, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %.loopexit67
  %i.ee = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.53, i64 noundef 23) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i8 40, ptr %i.d, align 1, !tbaa !99
  %i.ef = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.eg = getelementptr i8, ptr %i.ef, i64 -24
  %i.eh = load i64, ptr %i.eg, align 8
  %i.ei = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.eh
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %i.ek = load i64, ptr %i.ej, align 8, !tbaa !146
  %.not.i42 = icmp eq i64 %i.ek, 0
  br i1 %.not.i42, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.el = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.d, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44

bb.v:                                             ; preds = %bb.t
  %i.em = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44: ; preds = %bb.u, %bb.v
  %.0.i43 = phi ptr [ %i.el, %bb.u ], [ @_ZSt4cout, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.en = load i32, ptr %i.dx, align 8, !tbaa !277
  %i.eo = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i43, i32 noundef %i.en) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i8 41, ptr %i.c, align 1, !tbaa !99
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !103
  %i.eq = getelementptr i8, ptr %i.ep, i64 -24
  %i.er = load i64, ptr %i.eq, align 8
  %i.es = getelementptr inbounds i8, ptr %i.eo, i64 %i.er
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !146
  %.not.i45 = icmp eq i64 %i.eu, 0
  br i1 %.not.i45, label %bb.x, label %bb.w

bb.w:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44
  %i.ev = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, ptr noundef nonnull %i.c, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit47

bb.x:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit44
  %i.ew = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.eo, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit47

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit47: ; preds = %bb.w, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ex = icmp ugt i64 %i.ec, 24
  br i1 %i.ex, label %.lr.ph73.preheader, label %.loopexit

.lr.ph73.preheader:                               ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit47
  %umax75 = call i64 @llvm.umax.i64(i64 %i.ed, i64 2)
  br label %.lr.ph73

.lr.ph73:                                         ; preds = %.lr.ph73.preheader, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53
  %.072 = phi i64 [ %i.fs, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53 ], [ 1, %.lr.ph73.preheader ] ; 2 uses
  %i.ey = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull @.str.51, i64 noundef 2) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 40, ptr %i.b, align 1, !tbaa !99
  %i.ez = load ptr, ptr @_ZSt4cout, align 8, !tbaa !103
  %i.fa = getelementptr i8, ptr %i.ez, i64 -24
  %i.fb = load i64, ptr %i.fa, align 8
  %i.fc = getelementptr inbounds i8, ptr @_ZSt4cout, i64 %i.fb
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fe = load i64, ptr %i.fd, align 8, !tbaa !146
  %.not.i48 = icmp eq i64 %i.fe, 0
  br i1 %.not.i48, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph73
  %i.ff = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, ptr noundef nonnull %i.b, i64 noundef 1)
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

bb.z:                                             ; preds = %.lr.ph73
  %i.fg = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) @_ZSt4cout, i8 noundef signext 40) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50: ; preds = %bb.y, %bb.z
  %.0.i49 = phi ptr [ %i.ff, %bb.y ], [ @_ZSt4cout, %bb.z ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.fh = getelementptr inbounds nuw [24 x i8], ptr %i.dx, i64 %.072
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !277
  %i.fj = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSolsEi(ptr noundef nonnull align 8 dereferenceable(8) %.0.i49, i32 noundef %i.fi) ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 41, ptr %i.a, align 1, !tbaa !99
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !103
  %i.fl = getelementptr i8, ptr %i.fk, i64 -24
  %i.fm = load i64, ptr %i.fl, align 8
  %i.fn = getelementptr inbounds i8, ptr %i.fj, i64 %i.fm
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 16
  %i.fp = load i64, ptr %i.fo, align 8, !tbaa !146
  %.not.i51 = icmp eq i64 %i.fp, 0
  br i1 %.not.i51, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50
  %i.fq = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, ptr noundef nonnull %i.a, i64 noundef 1) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53

bb.ab:                                            ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit50
  %i.fr = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.fj, i8 noundef signext 41) ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53: ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.fs = add nuw i64 %.072, 1                    ; 2 uses
  %exitcond75.not = icmp eq i64 %i.fs, %umax75
  br i1 %exitcond75.not, label %.loopexit, label %.lr.ph73, !llvm.loop !266

.loopexit:                                        ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit53, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit47, %.loopexit67
  ret void
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @"_ZSt4sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEEZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EvT_SC_T0_"(ptr %0, ptr %1) unnamed_addr #7 {
bb.a:
  %.not.i = icmp eq ptr %0, %1
  br i1 %.not.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2
  %i.e = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.d, i1 true)
  %i.f = shl nuw nsw i64 %i.e, 1
  %i.g = xor i64 %i.f, 126
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEElNS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_T1_"(ptr %0, ptr %1, i64 noundef %i.g)
  %i.h = icmp sgt i64 %i.c, 64
  %scevgep.i.i = getelementptr i8, ptr %0, i64 4  ; 3 uses
  br i1 %i.h, label %.lr.ph.i.i.i, label %bb.g

.lr.ph.i.i.i:                                     ; preds = %bb.b, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i
  %.sroa.0.021.i.idx.i.i = phi i64 [ %.sroa.0.021.i.add.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i ], [ 4, %bb.b ] ; 4 uses
  %.pn20.i.i.i = phi ptr [ %.sroa.0.021.i.ptr.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i ], [ %0, %bb.b ] ; 3 uses
  %.sroa.0.021.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx.i.i ; 4 uses
  %.val.i.i.i.i = load i32, ptr %.sroa.0.021.i.ptr.i.i, align 4, !tbaa !26 ; 4 uses
  %.val1.i.i.i.i = load i32, ptr %0, align 4, !tbaa !26 ; 2 uses
  %i.i = icmp ult i32 %.val.i.i.i.i, %.val1.i.i.i.i
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.j = icmp samesign ugt i64 %.sroa.0.021.i.idx.i.i, 4
  br i1 %i.j, label %bb.d, label %bb.e, !prof !205

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep.i.i, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx.i.i, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pn20.i.i.i, i64 4
  store i32 %.val1.i.i.i.i, ptr %i.k, align 4, !tbaa !58
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i

bb.f:                                             ; preds = %.lr.ph.i.i.i
  %.val2.i9.i.i.i.i = load i32, ptr %.pn20.i.i.i, align 4, !tbaa !26 ; 2 uses
  %i.l = icmp ult i32 %.val.i.i.i.i, %.val2.i9.i.i.i.i
  br i1 %i.l, label %.lr.ph.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.f, %.lr.ph.i.i.i.i
  %.val2.i12.i.i.i.i = phi i32 [ %.val2.i.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.val2.i9.i.i.i.i, %bb.f ]
  %.sroa.0.011.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.pn20.i.i.i, %bb.f ] ; 3 uses
  %.sroa.05.010.i.i.i.i = phi ptr [ %.sroa.0.011.i.i.i.i, %.lr.ph.i.i.i.i ], [ %.sroa.0.021.i.ptr.i.i, %bb.f ]
  store i32 %.val2.i12.i.i.i.i, ptr %.sroa.05.010.i.i.i.i, align 4, !tbaa !58
  %.sroa.0.0.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i.i.i, i64 -4 ; 2 uses
  %.val2.i.i.i.i.i = load i32, ptr %.sroa.0.0.i.i.i.i, align 4, !tbaa !26 ; 2 uses
  %i.m = icmp ult i32 %.val.i.i.i.i, %.val2.i.i.i.i.i
  br i1 %i.m, label %.lr.ph.i.i.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i, !llvm.loop !278

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i.i.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr.i.i, %bb.f ], [ %.sroa.0.011.i.i.i.i, %.lr.ph.i.i.i.i ]
  store i32 %.val.i.i.i.i, ptr %.sink.i.i.i, align 4, !tbaa !58
  %.sroa.0.021.i.add.i.i = add nuw nsw i64 %.sroa.0.021.i.idx.i.i, 4 ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.0.021.i.add.i.i, 64
  br i1 %.not.i.i.i, label %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit.i.i", label %.lr.ph.i.i.i, !llvm.loop !279

"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit.i.i": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i.i.i
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not6.i.i.i = icmp eq ptr %i.n, %1
  br i1 %.not6.i.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit", label %.lr.ph.i12.i.i

.lr.ph.i12.i.i:                                   ; preds = %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit.i.i", %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_.exit.i.i.i"
  %.sroa.0.07.i.i.i = phi ptr [ %i.r, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_.exit.i.i.i" ], [ %i.n, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit.i.i" ] ; 5 uses
  %i.o = load i32, ptr %.sroa.0.07.i.i.i, align 4, !tbaa !58 ; 3 uses
  %.sroa.0.08.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i, i64 -4 ; 2 uses
  %.val2.i9.i.i13.i.i = load i32, ptr %.sroa.0.08.i.i.i.i, align 4, !tbaa !26 ; 2 uses
  %i.p = icmp ult i32 %i.o, %.val2.i9.i.i13.i.i
  br i1 %i.p, label %.lr.ph.i.i15.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_.exit.i.i.i"

.lr.ph.i.i15.i.i:                                 ; preds = %.lr.ph.i12.i.i, %.lr.ph.i.i15.i.i
  %.val2.i12.i.i16.i.i = phi i32 [ %.val2.i.i.i20.i.i, %.lr.ph.i.i15.i.i ], [ %.val2.i9.i.i13.i.i, %.lr.ph.i12.i.i ]
  %.sroa.0.011.i.i17.i.i = phi ptr [ %.sroa.0.0.i.i19.i.i, %.lr.ph.i.i15.i.i ], [ %.sroa.0.08.i.i.i.i, %.lr.ph.i12.i.i ] ; 3 uses
  %.sroa.05.010.i.i18.i.i = phi ptr [ %.sroa.0.011.i.i17.i.i, %.lr.ph.i.i15.i.i ], [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ]
  store i32 %.val2.i12.i.i16.i.i, ptr %.sroa.05.010.i.i18.i.i, align 4, !tbaa !58
  %.sroa.0.0.i.i19.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i17.i.i, i64 -4 ; 2 uses
  %.val2.i.i.i20.i.i = load i32, ptr %.sroa.0.0.i.i19.i.i, align 4, !tbaa !26 ; 2 uses
  %i.q = icmp ult i32 %i.o, %.val2.i.i.i20.i.i
  br i1 %i.q, label %.lr.ph.i.i15.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_.exit.i.i.i", !llvm.loop !278

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_.exit.i.i.i": ; preds = %.lr.ph.i.i15.i.i, %.lr.ph.i12.i.i
  %.sroa.05.0.lcssa.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i, %.lr.ph.i12.i.i ], [ %.sroa.0.011.i.i17.i.i, %.lr.ph.i.i15.i.i ]
  store i32 %i.o, ptr %.sroa.05.0.lcssa.i.i.i.i, align 4, !tbaa !58
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i, i64 4 ; 2 uses
  %.not.i14.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i14.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit", label %.lr.ph.i12.i.i, !llvm.loop !280

bb.g:                                             ; preds = %bb.b
  %.not19.i23.i.i = icmp eq ptr %scevgep.i.i, %1
  br i1 %.not19.i23.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit", label %.lr.ph.i24.i.i

.lr.ph.i24.i.i:                                   ; preds = %bb.g, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i
  %.sroa.0.021.i25.i.i = phi ptr [ %.sroa.0.0.i32.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i ], [ %scevgep.i.i, %bb.g ] ; 6 uses
  %.pn20.i26.i.i = phi ptr [ %.sroa.0.021.i25.i.i, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i ], [ %0, %bb.g ] ; 4 uses
  %.val.i.i27.i.i = load i32, ptr %.sroa.0.021.i25.i.i, align 4, !tbaa !26 ; 4 uses
  %.val1.i.i28.i.i = load i32, ptr %0, align 4, !tbaa !26 ; 2 uses
  %i.s = icmp ult i32 %.val.i.i27.i.i, %.val1.i.i28.i.i
  br i1 %i.s, label %bb.h, label %bb.l

bb.h:                                             ; preds = %.lr.ph.i24.i.i
  %i.t = ptrtoint ptr %.sroa.0.021.i25.i.i to i64
  %i.u = sub i64 %i.t, %i.b                       ; 3 uses
  %i.v = ashr exact i64 %i.u, 2                   ; 2 uses
  %i.w = icmp sgt i64 %i.v, 1
  br i1 %i.w, label %bb.i, label %bb.j, !prof !205

bb.i:                                             ; preds = %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %.pn20.i26.i.i, i64 8
  %i.y = sub nsw i64 0, %i.v
  %i.z = getelementptr inbounds [4 x i8], ptr %i.x, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.z, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.u, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i

bb.j:                                             ; preds = %bb.h
  %i.aa = icmp eq i64 %i.u, 4
  br i1 %i.aa, label %bb.k, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr inbounds nuw i8, ptr %.pn20.i26.i.i, i64 4
  store i32 %.val1.i.i28.i.i, ptr %i.ab, align 4, !tbaa !58
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i

bb.l:                                             ; preds = %.lr.ph.i24.i.i
  %.val2.i9.i.i29.i.i = load i32, ptr %.pn20.i26.i.i, align 4, !tbaa !26 ; 2 uses
  %i.ac = icmp ult i32 %.val.i.i27.i.i, %.val2.i9.i.i29.i.i
  br i1 %i.ac, label %.lr.ph.i.i34.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i

.lr.ph.i.i34.i.i:                                 ; preds = %bb.l, %.lr.ph.i.i34.i.i
  %.val2.i12.i.i35.i.i = phi i32 [ %.val2.i.i.i39.i.i, %.lr.ph.i.i34.i.i ], [ %.val2.i9.i.i29.i.i, %bb.l ]
  %.sroa.0.011.i.i36.i.i = phi ptr [ %.sroa.0.0.i.i38.i.i, %.lr.ph.i.i34.i.i ], [ %.pn20.i26.i.i, %bb.l ] ; 3 uses
  %.sroa.05.010.i.i37.i.i = phi ptr [ %.sroa.0.011.i.i36.i.i, %.lr.ph.i.i34.i.i ], [ %.sroa.0.021.i25.i.i, %bb.l ]
  store i32 %.val2.i12.i.i35.i.i, ptr %.sroa.05.010.i.i37.i.i, align 4, !tbaa !58
  %.sroa.0.0.i.i38.i.i = getelementptr inbounds i8, ptr %.sroa.0.011.i.i36.i.i, i64 -4 ; 2 uses
  %.val2.i.i.i39.i.i = load i32, ptr %.sroa.0.0.i.i38.i.i, align 4, !tbaa !26 ; 2 uses
  %i.ad = icmp ult i32 %.val.i.i27.i.i, %.val2.i.i.i39.i.i
  br i1 %i.ad, label %.lr.ph.i.i34.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i, !llvm.loop !278

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i: ; preds = %.lr.ph.i.i34.i.i, %bb.l, %bb.k, %bb.j, %bb.i
  %.sink.i31.i.i = phi ptr [ %0, %bb.k ], [ %0, %bb.i ], [ %0, %bb.j ], [ %.sroa.0.021.i25.i.i, %bb.l ], [ %.sroa.0.011.i.i36.i.i, %.lr.ph.i.i34.i.i ]
  store i32 %.val.i.i27.i.i, ptr %.sink.i31.i.i, align 4, !tbaa !58
  %.sroa.0.0.i32.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i25.i.i, i64 4 ; 2 uses
  %.not.i33.i.i = icmp eq ptr %.sroa.0.0.i32.i.i, %1
  br i1 %.not.i33.i.i, label %"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit", label %.lr.ph.i24.i.i, !llvm.loop !279

"_ZSt6__sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit": ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEES7_ET0_T_S9_S8_.exit.i30.i.i, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops14_Val_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_T0_.exit.i.i.i", %bb.a, %"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIP9ZL_DataIDSt6vectorIS2_SaIS2_EEEENS0_5__ops15_Iter_comp_iterIZN6openzl10visualizer18CompressChunkTrace18printCodecMetadataEvE3$_0EEEvT_SF_T0_.exit.i.i", %bb.g
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6openzl10visualizer18CompressChunkTrace20on_codecEncode_startEP12ZL_Encoder_sPK15ZL_Compressor_s9ZL_NodeIDPPK10ZL_Input_sm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %1, ptr noundef %2, i32 %3, ptr nofree noundef readonly captures(none) %4, i64 noundef %5) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"struct.openzl::visualizer::Codec", align 8 ; 48 uses
  %7 = alloca %struct.ZL_DataID, align 4          ; 5 uses
  tail call void @_ZN6openzl10visualizer18CompressChunkTrace18recordStartStreamsEPPK10ZL_Input_sm(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef %4, i64 noundef %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.b = tail call ptr @ZL_Compressor_Node_getName(ptr noundef %2, i32 %3) ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 12 uses
  store ptr %i.c, ptr %6, align 8, !tbaa !147
  %i.d = icmp eq ptr %i.b, null
  br i1 %i.d, label %.noexc, label %bb.b

.noexc:                                           ; preds = %bb.a
  call void @_ZSt19__throw_logic_errorPKc(ptr noundef nonnull @.str.54) #29
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.b) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  store i64 %i.e, ptr %i.a, align 8, !tbaa !135
  %i.f = icmp ugt i64 %i.e, 15
  br i1 %i.f, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.b
  %i.g = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.g, ptr %6, align 8, !tbaa !98
  %i.h = load i64, ptr %i.a, align 8, !tbaa !135
  store i64 %i.h, ptr %i.c, align 8, !tbaa !99
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.b
  %i.i = phi ptr [ %i.g, %.noexc.i ], [ %i.c, %bb.b ] ; 2 uses
  switch i64 %i.e, label %bb.d [
    i64 1, label %bb.c
    i64 0, label %bb.e
  ]

bb.c:                                             ; preds = %._crit_edge.i.i
end_hunk_0
