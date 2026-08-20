inline.NumInlined: 4471
inline.NumDeleted: 1472
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 40
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput15write_exif_dataEv:bb.a
_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread: ; preds = %bb.az, %bb.bb
  %i.gj = and i64 %.sroa.0.0.copyload.i141, 255
  %i.gk = icmp eq i64 %i.gj, 12
  %i.gl = icmp eq i8 %.sroa.5187.0.extract.trunc, 1 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.7190.0.extract.shift, 0 ; 7 uses
  %i.gm = and i1 %i.gk, %.not.i
  %or.cond315 = and i1 %i.gm, %i.gl
  br i1 %or.cond315, label %bb.bh, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread
  switch i8 %.sroa.0186.0.extract.trunc, label %.critedge21 [
    i8 4, label %bb.bc
    i8 6, label %bb.bd
    i8 5, label %bb.be
    i8 7, label %bb.bf
  ]

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gn = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.go = and i1 %.not.i, %i.gn
  %or.cond317 = and i1 %i.gl, %i.go
  br i1 %or.cond317, label %bb.bh, label %.critedge21

bb.bd:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gp = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %or.cond318 = and i1 %i.gl, %i.gp
  br i1 %or.cond318, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147:  ; preds = %bb.bd
  br i1 %.not.i, label %bb.bh, label %.critedge21

bb.be:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gq = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.gr = and i1 %.not.i, %i.gq
  %or.cond320 = and i1 %i.gl, %i.gr
  br i1 %or.cond320, label %bb.bh, label %.critedge21

bb.bf:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  br i1 %i.gl, label %bb.bg, label %.thread275

bb.bg:                                            ; preds = %bb.bf
  %i.gs = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %or.cond321 = and i1 %.not.i, %i.gs
  br i1 %or.cond321, label %bb.bh, label %.critedge21

.thread275:                                       ; preds = %bb.bf
  %i.gt = icmp eq i8 %.sroa.5187.0.extract.trunc, 2
  %i.gu = icmp eq i8 %.sroa.6188.0.extract.trunc, 7
  %or.cond322 = and i1 %i.gt, %i.gu
  %or.cond323 = and i1 %.not.i, %or.cond322
  br i1 %or.cond323, label %bb.bh, label %.critedge21

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296: ; preds = %bb.bd
  %i.gv = icmp eq i8 %.sroa.5187.0.extract.trunc, 2
  %i.gw = icmp eq i8 %.sroa.6188.0.extract.trunc, 7
  %or.cond324 = and i1 %i.gv, %i.gw
  %or.cond325 = and i1 %.not.i, %or.cond324
  br i1 %or.cond325, label %bb.bh, label %.critedge21

bb.bh:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296, %.thread275, %bb.bg, %bb.be, %bb.bc, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread, %bb.bb, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147
  %i.gx = load i32, ptr %i.f, align 4, !tbaa !3
  %i.gy = icmp eq i32 %i.gx, 1
  br i1 %i.gy, label %bb.bi, label %.critedge21

bb.bi:                                            ; preds = %bb.bh
  %i.gz = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.ha = call noundef float @_ZNK11OpenImageIO4v3_110ParamValue9get_floatEf(ptr noundef nonnull align 8 dereferenceable(39) %i.bo, float noundef 0.000000e+00)
  %i.hb = fpext float %i.ha to double
  %i.hc = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.gz, i32 noundef %i.bv, double noundef %i.hb) ; 0 uses
  br label %.critedge21

bb.bj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn88 = phi { ptr, i32 } [ %i.ck, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.cz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.ds, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.ei, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %.pn88

.critedge21:                                      ; preds = %.critedge.thread, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.aj, %bb.v, %bb.m, %bb.m, %bb.m, %bb.bg, %bb.be, %.thread275, %bb.bc, %bb.ba, %bb.ak, %bb.al, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.w, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %bb.ap, %bb.bi, %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.hd = add nuw i64 %.071332, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.hd, %i.ap
  br i1 %exitcond337.not, label %._crit_edge, label %bb.k, !llvm.loop !250

bb.bk:                                            ; preds = %._crit_edge
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.81)
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge
  %i.he = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.hf = call i32 @TIFFSetDirectory(ptr noundef %i.he, i32 noundef 0) ; 0 uses
  %i.hg = load ptr, ptr %i.ae, align 8, !tbaa !34
  %i.hh = load i64, ptr %i.g, align 8, !tbaa !11
  %i.hi = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.hg, i32 noundef 34665, i64 noundef %i.hh) ; 0 uses
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.g, %bb.i, %bb.bm, %bb.a
  %.280 = phi i1 [ true, %bb.a ], [ false, %bb.i ], [ %.not86, %bb.bm ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.f ]
  ret i1 %.280
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_115exif_tag_lookupENS0_17basic_string_viewIcSt11char_traitsIcEEERiS5_S5_(ptr noundef dead_on_return, ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4)) local_unnamed_addr #1

declare i32 @TIFFWriteDirectory(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.fmt::v12::detail::format_arg_store.75", align 16 ; 3 uses
  %3 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !251
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !251
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !251
  %i.b = load ptr, ptr %4, align 8, !tbaa !13
  store ptr %i.b, ptr %3, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !16
  store i64 %i.e, ptr %i.c, align 8, !tbaa !22
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !15
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !13     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !15
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  resume { ptr, i32 } %i.k
}

declare i32 @TIFFCreateEXIFDirectory(ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_17Strutil13string_is_intENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_17Strutil4stoiENS0_17basic_string_viewIcSt11char_traitsIcEEEPmi(ptr noundef dead_on_return, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @TIFFWriteCustomDirectory(ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @TIFFSetDirectory(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i32 noundef %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.c = load i32, ptr %i.b, align 4, !tbaa !106
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !130
  %i.f = zext i8 %i.e to i64
  %i.g = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.a) #34
  %i.h = mul i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = mul i32 %narrow.i.i, %i.i                ; 4 uses
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.preheader26.lr.ph, label %._crit_edge32.split

.preheader26.lr.ph:                               ; preds = %bb.a
  %i.l = icmp slt i32 %2, 1
  %i.m = icmp slt i32 %i.j, 1
  %brmerge = select i1 %i.l, i1 true, i1 %i.m
  br i1 %brmerge, label %._crit_edge32.split, label %.preheader26.preheader

.preheader26.preheader:                           ; preds = %.preheader26.lr.ph
  %i.n = zext nneg i32 %i.j to i64                ; 14 uses
  %i.o = zext nneg i32 %1 to i64                  ; 3 uses
  %i.p = zext nneg i32 %2 to i64                  ; 5 uses
  %i.q = add nsw i64 %i.p, -1
  %i.r = mul nsw i64 %i.q, %i.o
  %i.s = add i64 %i.r, 1
  %5 = mul nuw nsw i64 %i.p, %i.n
  %i.t = mul nuw nsw i64 %i.p, %i.n
  %i.u = getelementptr i8, ptr %3, i64 %i.t
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check54 = icmp ult i32 %i.j, 32
  %i.v = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  %min.epilog.iters.check = icmp eq i64 %i.v, 0
  %n.vec56 = and i64 %i.n, 2147483644             ; 3 uses
  %cmp.n60 = icmp eq i64 %n.vec56, %i.n
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.preheader, %._crit_edge29
  %indvars.iv42 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next43, %._crit_edge29 ] ; 6 uses
  %i.w = mul nuw nsw i64 %indvars.iv42, %i.n
  %scevgep = getelementptr nuw i8, ptr %4, i64 %i.w
  %i.x = add i64 %i.s, %indvars.iv42
  %i.y = mul i64 %i.x, %i.n
  %scevgep51 = getelementptr i8, ptr %4, i64 %i.y
  %i.z = mul i64 %5, %indvars.iv42                ; 2 uses
  %scevgep52 = getelementptr i8, ptr %3, i64 %i.z
  %scevgep53 = getelementptr i8, ptr %i.u, i64 %i.z
  %i.aa = mul nuw nsw i64 %indvars.iv42, %i.p
  %bound0 = icmp ult ptr %scevgep, %scevgep53
  %bound1 = icmp ult ptr %scevgep52, %scevgep51
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge29, %.preheader26.lr.ph, %bb.a
  ret void

iter.check:                                       ; preds = %.preheader26, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.preheader26 ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %i.ab = add nuw nsw i64 %indvars.iv37, %i.aa
  %i.ac = mul nuw nsw i64 %i.ab, %i.n
  %i.ad = mul nuw nsw i64 %indvars.iv37, %i.o
  %i.ae = add nuw nsw i64 %i.ad, %indvars.iv42
  %i.af = mul nuw nsw i64 %i.ae, %i.n
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %i.ac ; 7 uses
  %invariant.gep49 = getelementptr inbounds nuw i8, ptr %4, i64 %i.af ; 7 uses
  %brmerge61 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge61, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %wide.load = load <16 x i8>, ptr %i.ag, align 1, !tbaa !15, !alias.scope !254
  %wide.load55 = load <16 x i8>, ptr %i.ah, align 1, !tbaa !15, !alias.scope !254
  %i.ai = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %index ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store <16 x i8> %wide.load, ptr %i.ai, align 1, !tbaa !15, !alias.scope !257, !noalias !254
  store <16 x i8> %wide.load55, ptr %i.aj, align 1, !tbaa !15, !alias.scope !257, !noalias !254
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ak = icmp eq i64 %index.next, %n.vec
  br i1 %i.ak, label %middle.block, label %vector.body, !llvm.loop !259

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !260

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index57
  %wide.load58 = load <4 x i8>, ptr %i.al, align 1, !tbaa !15, !alias.scope !254
  %i.am = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %index57
  store <4 x i8> %wide.load58, ptr %i.am, align 1, !tbaa !15, !alias.scope !257, !noalias !254
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next59, %n.vec56
  br i1 %i.an, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !261

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n60, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec56, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.ao = load i8, ptr %gep.prol, align 1, !tbaa !15
  %gep50.prol = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.prol
  store i8 %i.ao, ptr %gep50.prol, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !262

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.ap = sub nsw i64 %indvars.iv.ph, %i.n
  %i.aq = icmp ugt i64 %i.ap, -4
  br i1 %i.aq, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge29:                                    ; preds = %._crit_edge
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %i.o
  br i1 %exitcond46.not, label %._crit_edge32.split, label %.preheader26, !llvm.loop !264

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %i.p
  br i1 %exitcond41.not, label %._crit_edge29, label %iter.check, !llvm.loop !265

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ar = load i8, ptr %gep, align 1, !tbaa !15
  %gep50 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv
  store i8 %i.ar, ptr %gep50, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.as = load i8, ptr %gep.1, align 1, !tbaa !15
  %gep50.1 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.next
  store i8 %i.as, ptr %gep50.1, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.at = load i8, ptr %gep.2, align 1, !tbaa !15
  %gep50.2 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.next.1
  store i8 %i.at, ptr %gep50.2, align 1, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.au = load i8, ptr %gep.3, align 1, !tbaa !15
  %gep50.3 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.next.2
  store i8 %i.au, ptr %gep50.3, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.n
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !266
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !106
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !130
  %i.i = zext i8 %i.h to i64
  %i.j = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.d) #34
  %i.k = sext i32 %1 to i64
  %i.l = mul nsw i64 %i.c, %i.k
  %i.m = mul i64 %i.l, %i.i
  %i.n = mul i64 %i.m, %i.j
  %i.o = mul i64 %i.n, %spec.select.i
  tail call void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.o)
  %i.p = load i8, ptr %i.d, align 8, !tbaa !105   ; 2 uses
  %i.q = icmp eq i8 %i.p, 2
  %i.r = load i8, ptr %i.g, align 1
  %i.s = icmp eq i8 %i.r, 1                       ; 2 uses
  %or.cond.i = select i1 %i.q, i1 %i.s, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %bb.a
  %i.t = load i32, ptr %i.e, align 4, !tbaa !106
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %bb.b, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit12.thread

bb.b:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.v = load i32, ptr %i.u, align 4, !tbaa !96
  %i.w = sext i32 %i.v to i64
  %i.x = load i32, ptr %i.a, align 4, !tbaa !73
  %i.y = sext i32 %i.x to i64
  %.not43.i = icmp eq i32 %1, 0
  br i1 %.not43.i, label %_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %i.z = load ptr, ptr %3, align 8, !tbaa !76
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.046.i = phi i32 [ %i.bj, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ]
  %.02145.i = phi ptr [ %i.bl, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ] ; 3 uses
  %.02244.i = phi ptr [ %i.bk, %.lr.ph.i ], [ %i.z, %.lr.ph.i.preheader ] ; 2 uses
  %i.aa = load i8, ptr %.02145.i, align 1, !tbaa !15
  %i.ab = uitofp i8 %i.aa to float
  %i.ac = fmul nnan float %i.ab, f0x3B808081      ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02145.i, i64 1
  %i.ae = load <2 x i8>, ptr %i.ad, align 1, !tbaa !15
  %i.af = uitofp <2 x i8> %i.ae to <2 x float>
  %i.ag = fmul nnan <2 x float> %i.af, splat (float f0x3B808081) ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 0 ; 2 uses
  %i.ai = extractelement <2 x float> %i.ag, i64 1 ; 2 uses
  %i.aj = fcmp olt float %i.ah, %i.ai
  %i.ak = select i1 %i.aj, float %i.ai, float %i.ah ; 2 uses
  %i.al = fcmp olt float %i.ac, %i.ak
  %.sroa.speculated.i = select i1 %i.al, float %i.ak, float %i.ac ; 4 uses
  %i.am = fpext float %.sroa.speculated.i to double
  %i.an = fcmp ole double %i.am, f0x3EB0C6F7A0B5ED8D
  %i.ao = fdiv float 1.000000e+00, %.sroa.speculated.i
  %i.ap = select i1 %i.an, float 0.000000e+00, float %i.ao
  %i.aq = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.speculated.i, i64 0
  %i.ar = shufflevector <4 x float> %i.aq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.as = insertelement <4 x float> poison, float %i.ac, i64 0
  %i.at = shufflevector <2 x float> %i.ag, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.au = shufflevector <4 x float> %i.as, <4 x float> %i.at, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.av = insertelement <4 x float> %i.au, float %.sroa.speculated.i, i64 3
  %i.aw = fsub nnan <4 x float> %i.ar, %i.av
  %i.ax = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ap, i64 0
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.az = fmul <4 x float> %i.aw, %i.ay
  %i.ba = fmul <4 x float> %i.az, splat (float 2.550000e+02) ; 2 uses
  %i.bb = fcmp olt <4 x float> %i.ba, zeroinitializer
end_hunk_0
begin_hunk_1_@_ZN11OpenImageIO4v3_110TIFFOutput14write_scanlineEiiNS0_8TypeDescEPKvl:bb.a
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %8)
  store i64 %3, ptr %8, align 8
  %i.g = icmp eq i64 %5, -9223372036854775808
  br i1 %i.g, label %bb.b, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr i64 %3, 8
  %i.i = lshr i64 %3, 32
  %i.j = trunc nuw i64 %i.i to i32
  %i.k = sext i32 %i.f to i64
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.j, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.l = and i64 %i.h, 255
  %i.m = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %8) #34
  %i.n = mul nuw nsw i64 %i.l, %spec.select.i.i
  %i.o = mul i64 %i.n, %i.k
  %i.p = mul i64 %i.o, %i.m
  %.pre = load i32, ptr %i.a, align 4, !tbaa !3
  %.pre100 = load i32, ptr %i.b, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit: ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %.pre100, %bb.b ], [ %2, %bb.a ]
  %i.r = phi i32 [ %.pre, %bb.b ], [ %1, %bb.a ]
  %.0 = phi i64 [ %i.p, %bb.b ], [ %5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.u = load i32, ptr %i.t, align 4, !tbaa !148
  %i.v = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %3, ptr noundef %4, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.u, i32 noundef %i.r, i32 noundef %i.q) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !74, !range !79, !noundef !80
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !270
  %i.ae = invoke noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.ad, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

bb.f:                                             ; preds = %bb.d, %bb.c, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %.041 = phi ptr [ %i.v, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit ], [ %i.v, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !270
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !106
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !130
  %i.as = zext i8 %i.ar to i64
  %i.at = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.au = shl nuw nsw i64 %i.as, 3
  %i.av = mul i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, %spec.select.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !97
  %i.az = zext i32 %i.ay to i64
  %.not = icmp eq i64 %i.aw, %i.az
  br i1 %.not, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !106
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !130
  %i.bc = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !100 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !100
  %i.bg = icmp ne ptr %i.bd, %i.bf
  %.not.i = icmp eq ptr %.041, %i.bd
  %or.cond.i = and i1 %.not.i, %i.bg
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = zext i8 %i.bb to i64
  %narrow.i57 = call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %spec.select.i58 = zext nneg i32 %narrow.i57 to i64
  %i.bi = mul i64 %i.am, %i.bh
  %i.bj = mul i64 %i.bi, %i.bc
  %i.bk = mul i64 %i.bj, %spec.select.i58
  %i.bl = getelementptr inbounds nuw i8, ptr %.041, i64 %i.bk
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %.041, ptr noundef %i.bl)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.h
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !76
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit: ; preds = %.noexc, %bb.g
  %i.bm = phi ptr [ %i.bd, %bb.g ], [ %.pre.i, %.noexc ] ; 2 uses
  %i.bn = trunc i64 %i.am to i32
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput12fix_bitdepthEPvi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bm, i32 noundef %i.bn)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.aa, %bb.h, %bb.al, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit74, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

bb.j:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.f
  %.142 = phi ptr [ %i.bm, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit ], [ %.041, %bb.f ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !271
  %i.br = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bs = sub nsw i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !126
  %i.bv = icmp eq i32 %i.bu, 2
  br i1 %i.bv, label %bb.k, label %bb.z

bb.k:                                             ; preds = %bb.j
  %i.bw = load i32, ptr %i.e, align 4, !tbaa !96
  %i.bx = icmp sgt i32 %i.bw, 1
  br i1 %i.bx, label %bb.l, label %bb.z

bb.l:                                             ; preds = %bb.k
  %i.by = load i32, ptr %i.ag, align 4, !tbaa !89
  %i.bz = load i32, ptr %i.ao, align 4, !tbaa !106
  %narrow.i59 = call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %i.ca = load i8, ptr %i.aq, align 1, !tbaa !130
  %i.cb = zext i8 %i.ca to i64
  %i.cc = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.cd = mul i64 %i.cc, %i.cb
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = mul i32 %narrow.i59, %i.by
  %i.cg = mul i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = load i32, ptr %i.aj, align 4, !tbaa !73 ; 3 uses
  %i.ci = mul nsw i32 %i.cg, %i.ch                ; 3 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = icmp ult i32 %i.ci, 65537
  br i1 %i.ck, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %.not47 = icmp eq i32 %i.ci, 0
  br i1 %.not47, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.cl = alloca i8, i64 %i.cj, align 16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

bb.o:                                             ; preds = %bb.l
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #38
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit unwind label %.thread ; 2 uses

.thread:                                          ; preds = %bb.o
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.o, %bb.n, %bb.m
  %.sroa.0.0 = phi ptr [ null, %bb.m ], [ null, %bb.n ], [ %i.cm, %bb.o ] ; 6 uses
  %.031 = phi ptr [ null, %bb.m ], [ %i.cl, %bb.n ], [ %i.cm, %bb.o ] ; 4 uses
  %i.co = load i32, ptr %i.ag, align 4, !tbaa !89 ; 2 uses
  %i.cp = load i32, ptr %i.ao, align 4, !tbaa !106
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.cp, i32 1)
  %i.cq = load i8, ptr %i.aq, align 1, !tbaa !130
  %i.cr = zext i8 %i.cq to i64
  %i.cs = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.ct = mul i64 %i.cs, %i.cr
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = mul i32 %narrow.i.i.i, %i.cu            ; 4 uses
  %i.cw = icmp sgt i32 %i.co, 0
  br i1 %i.cw, label %.preheader26.lr.ph.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit

.preheader26.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.cx = icmp slt i32 %i.ch, 1
  %i.cy = icmp slt i32 %i.cv, 1
  %brmerge.i = select i1 %i.cx, i1 true, i1 %i.cy
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.preheader.i

.preheader26.preheader.i:                         ; preds = %.preheader26.lr.ph.i
  %i.cz = zext nneg i32 %i.cv to i64              ; 14 uses
  %i.da = zext nneg i32 %i.co to i64              ; 3 uses
  %i.db = zext nneg i32 %i.ch to i64              ; 5 uses
  %i.dc = add nsw i64 %i.db, -1
  %i.dd = mul nsw i64 %i.dc, %i.da
  %i.de = add i64 %i.dd, 1
  %12 = mul nuw nsw i64 %i.db, %i.cz
  %i.df = mul nuw nsw i64 %i.db, %i.cz
  %i.dg = getelementptr i8, ptr %.142, i64 %i.df
  %min.iters.check = icmp ult i32 %i.cv, 4
  %min.iters.check121 = icmp ult i32 %i.cv, 32
  %i.dh = and i64 %i.cz, 28
  %n.vec = and i64 %i.cz, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cz
  %min.epilog.iters.check = icmp eq i64 %i.dh, 0
  %n.vec123 = and i64 %i.cz, 2147483644           ; 3 uses
  %cmp.n127 = icmp eq i64 %n.vec123, %i.cz
  %xtraiter = and i64 %i.cz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %._crit_edge29.i, %.preheader26.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader26.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge29.i ] ; 6 uses
  %i.di = mul nuw nsw i64 %indvars.iv42.i, %i.cz
  %scevgep = getelementptr nuw i8, ptr %.031, i64 %i.di
  %i.dj = add i64 %i.de, %indvars.iv42.i
  %i.dk = mul i64 %i.dj, %i.cz
  %scevgep118 = getelementptr i8, ptr %.031, i64 %i.dk
  %i.dl = mul i64 %12, %indvars.iv42.i            ; 2 uses
  %scevgep119 = getelementptr i8, ptr %.142, i64 %i.dl
  %scevgep120 = getelementptr i8, ptr %i.dg, i64 %i.dl
  %i.dm = mul nuw nsw i64 %indvars.iv42.i, %i.db
  %bound0 = icmp ult ptr %scevgep, %scevgep120
  %bound1 = icmp ult ptr %scevgep119, %scevgep118
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader26.i
  %indvars.iv37.i = phi i64 [ 0, %.preheader26.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %i.dn = add nuw nsw i64 %indvars.iv37.i, %i.dm
  %i.do = mul nuw nsw i64 %i.dn, %i.cz
  %i.dp = mul nuw nsw i64 %indvars.iv37.i, %i.da
  %i.dq = add nuw nsw i64 %i.dp, %indvars.iv42.i
  %i.dr = mul nuw nsw i64 %i.dq, %i.cz
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.142, i64 %i.do ; 7 uses
  %invariant.gep49.i = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dr ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check121, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <16 x i8>, ptr %i.ds, align 1, !tbaa !15, !alias.scope !272
  %wide.load122 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !15, !alias.scope !272
  %i.du = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %wide.load, ptr %i.du, align 1, !tbaa !15, !alias.scope !275, !noalias !272
  store <16 x i8> %wide.load122, ptr %i.dv, align 1, !tbaa !15, !alias.scope !275, !noalias !272
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !260

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index124 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next126, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index124
  %wide.load125 = load <4 x i8>, ptr %i.dx, align 1, !tbaa !15, !alias.scope !272
  %i.dy = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index124
  store <4 x i8> %wide.load125, ptr %i.dy, align 1, !tbaa !15, !alias.scope !275, !noalias !272
  %index.next126 = add nuw i64 %index124, 4       ; 2 uses
  %i.dz = icmp eq i64 %index.next126, %n.vec123
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !278

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n127, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec123, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.ea = load i8, ptr %gep.i.prol, align 1, !tbaa !15
  %gep50.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i.prol
  store i8 %i.ea, ptr %gep50.i.prol, align 1, !tbaa !15
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !279

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.eb = sub nsw i64 %indvars.iv.i.ph, %i.cz
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge29.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.da
  br i1 %exitcond46.not.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.i, !llvm.loop !264

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.db
  br i1 %exitcond41.not.i, label %._crit_edge29.i, label %iter.check, !llvm.loop !265

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ed = load i8, ptr %gep.i, align 1, !tbaa !15
  %gep50.i = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i
  store i8 %i.ed, ptr %gep50.i, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ee = load i8, ptr %gep.i.1, align 1, !tbaa !15
  %gep50.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i
  store i8 %i.ee, ptr %gep50.i.1, align 1, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.ef = load i8, ptr %gep.i.2, align 1, !tbaa !15
  %gep50.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.1
  store i8 %i.ef, ptr %gep50.i.2, align 1, !tbaa !15
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.eg = load i8, ptr %gep.i.3, align 1, !tbaa !15
  %gep50.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.2
  store i8 %i.eg, ptr %gep50.i.3, align 1, !tbaa !15
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.cz
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !280

_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit: ; preds = %._crit_edge29.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %.preheader26.lr.ph.i
  %i.eh = load i32, ptr %i.aj, align 4, !tbaa !73
  %.not5396 = icmp sgt i32 %i.eh, 0
  br i1 %.not5396, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ej = sext i32 %i.cg to i64
  br label %bb.q

bb.p:                                             ; preds = %bb.r
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ek = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.el = sext i32 %i.ek to i64
  %.not53 = icmp slt i64 %indvars.iv.next, %i.el
  br i1 %.not53, label %bb.q, label %.critedge, !llvm.loop !281

bb.q:                                             ; preds = %.lr.ph, %bb.p
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.p ] ; 3 uses
  %i.em = load ptr, ptr %i.ei, align 8, !tbaa !34
  %i.en = mul nsw i64 %indvars.iv, %i.ej
  %i.eo = getelementptr inbounds i8, ptr %.031, i64 %i.en
  %i.ep = load i32, ptr %i.a, align 4, !tbaa !3
  %i.eq = trunc i64 %indvars.iv to i16
  %i.er = invoke i32 @TIFFWriteScanline(ptr noundef %i.em, ptr noundef %i.eo, i32 noundef %i.ep, i16 noundef zeroext %i.eq)
          to label %bb.r unwind label %bb.v

bb.r:                                             ; preds = %bb.q
  %i.es = icmp slt i32 %i.er, 0
  br i1 %i.es, label %bb.s, label %bb.p

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.t unwind label %bb.w

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eu = load i64, ptr %i.et, align 8, !tbaa !16
  %.not48 = icmp eq i64 %i.eu, 0
  %i.ev = load ptr, ptr %10, align 8
  %spec.select = select i1 %.not48, ptr @.str.86, ptr %i.ev
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.ew = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ey = icmp eq ptr %i.ew, %i.ex
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.u
  %i.ez = load i64, ptr %i.ex, align 8, !tbaa !15
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ew, i64 noundef %i.fa) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %.not.i61 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.v:                                             ; preds = %bb.q
  %i.fb = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.w:                                             ; preds = %bb.s
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.x:                                             ; preds = %bb.t
  %i.fd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_110TIFFOutput10write_tileEiiiNS0_8TypeDescEPKvlll:bb.a
  %i.y = sub nsw i32 %3, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !395
  %i.ab = srem i32 %i.y, %i.aa
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !165
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  store i64 %4, ptr %11, align 8
  %i.af = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %11) #34
  %i.ag = icmp eq i64 %6, -9223372036854775808
  br i1 %i.ag, label %bb.f, label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

bb.f:                                             ; preds = %bb.e
  %i.ah = lshr i64 %4, 8
  %i.ai = lshr i64 %4, 32
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = and i64 %i.ah, 255
  %narrow.i.i = call i32 @llvm.smax.i32(i32 %i.aj, i32 1)
  %spec.select.i.i = zext nneg i32 %narrow.i.i to i64
  %i.al = sext i32 %i.ae to i64
  %i.am = mul nuw nsw i64 %i.ak, %spec.select.i.i
  %i.an = mul i64 %i.am, %i.al
  %i.ao = mul i64 %i.an, %i.af
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit: ; preds = %bb.f, %bb.e
  %.0123 = phi i64 [ %i.ao, %bb.f ], [ %6, %bb.e ] ; 2 uses
  %i.ap = icmp eq i64 %7, -9223372036854775808
  %i.aq = sext i32 %i.k to i64
  %i.ar = mul nsw i64 %.0123, %i.aq
  %.0122 = select i1 %i.ap, i64 %i.ar, i64 %7     ; 2 uses
  %i.as = icmp eq i64 %8, -9223372036854775808
  %i.at = sext i32 %i.t to i64
  %i.au = mul nsw i64 %.0122, %i.at
  %.0 = select i1 %i.as, i64 %i.au, i64 %8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.av = load i32, ptr %i.i, align 8, !tbaa !329
  %i.aw = sub nsw i32 %1, %i.av                   ; 5 uses
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !271
  %i.ay = sub nsw i32 %2, %i.ax                   ; 5 uses
  %i.az = load i32, ptr %i.w, align 8, !tbaa !330
  %i.ba = sub nsw i32 %3, %i.az                   ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !148
  %i.be = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput14to_native_tileENS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %4, ptr noundef %5, i64 noundef %.0123, i64 noundef %.0122, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i32 noundef %i.bd, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba) ; 3 uses
  %i.bf = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !73
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bf, %i.bi                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !99
  %i.bm = icmp eq i32 %i.bl, 5
  br i1 %i.bm, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !74, !range !79, !noundef !80
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bq = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34
  %i.br = trunc i64 %i.bq to i32
  %i.bs = invoke noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.br, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.ad, %bb.l, %bb.ao, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit101, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.h
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit94

bb.j:                                             ; preds = %bb.h, %bb.g, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.067 = phi ptr [ %i.be, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit ], [ %i.be, %bb.g ], [ %i.bs, %bb.h ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !106
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 5 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !130
  %i.bz = zext i8 %i.by to i64
  %i.ca = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.cb = shl nuw nsw i64 %i.bz, 3
  %i.cc = mul i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, %spec.select.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !97
  %i.cg = zext i32 %i.cf to i64
  %.not = icmp eq i64 %i.cd, %i.cg
  br i1 %.not, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !106
  %i.ci = load i8, ptr %i.bx, align 1, !tbaa !130
  %i.cj = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.cn = icmp ne ptr %i.ck, %i.cm
  %.not.i84 = icmp eq ptr %.067, %i.ck
  %or.cond.i85 = and i1 %.not.i84, %i.cn
  br i1 %or.cond.i85, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.co = zext i8 %i.ci to i64
  %narrow.i82 = call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %spec.select.i83 = zext nneg i32 %narrow.i82 to i64
  %i.cp = mul i64 %i.bj, %i.co
  %i.cq = mul i64 %i.cp, %i.cj
  %i.cr = mul i64 %i.cq, %spec.select.i83
  %i.cs = getelementptr inbounds nuw i8, ptr %.067, i64 %i.cr
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef %.067, ptr noundef %i.cs)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.l
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !76
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit: ; preds = %.noexc, %bb.k
  %i.ct = phi ptr [ %i.ck, %bb.k ], [ %.pre.i, %.noexc ] ; 2 uses
  %i.cu = trunc i64 %i.bj to i32
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput12fix_bitdepthEPvi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ct, i32 noundef %i.cu)
          to label %bb.m unwind label %bb.i

bb.m:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.j
  %.168 = phi ptr [ %i.ct, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit ], [ %.067, %bb.j ] ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !126
  %i.cx = icmp eq i32 %i.cw, 2
  br i1 %i.cx, label %bb.n, label %bb.ac

bb.n:                                             ; preds = %bb.m
  %i.cy = load i32, ptr %i.ad, align 4, !tbaa !96
  %i.cz = icmp sgt i32 %i.cy, 1
  br i1 %i.cz, label %bb.o, label %bb.ac

bb.o:                                             ; preds = %bb.n
  %i.da = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34 ; 3 uses
  %i.db = load i32, ptr %i.bv, align 4, !tbaa !106
  %narrow.i86 = call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  %spec.select.i87 = zext nneg i32 %narrow.i86 to i64
  %i.dc = load i8, ptr %i.bx, align 1, !tbaa !130
  %i.dd = zext i8 %i.dc to i64
  %i.de = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.df = mul i64 %i.da, %i.dd
  %i.dg = mul i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, %spec.select.i87         ; 2 uses
  %i.di = load i32, ptr %i.bg, align 4, !tbaa !73 ; 3 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul i64 %i.dh, %i.dj                    ; 4 uses
  %i.dl = icmp ult i64 %i.dk, 65537
  br i1 %i.dl, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %.not73 = icmp eq i64 %i.dk, 0
  br i1 %.not73, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dm = alloca i8, i64 %i.dk, align 16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

bb.r:                                             ; preds = %bb.o
  %i.dn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #38
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit unwind label %.thread ; 2 uses

.thread:                                          ; preds = %bb.r
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit94

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.r, %bb.q, %bb.p
  %.sroa.0.0 = phi ptr [ null, %bb.p ], [ null, %bb.q ], [ %i.dn, %bb.r ] ; 6 uses
  %.057 = phi ptr [ null, %bb.p ], [ %i.dm, %bb.q ], [ %i.dn, %bb.r ] ; 4 uses
  %i.dp = trunc i64 %i.da to i32
  %i.dq = load i32, ptr %i.bv, align 4, !tbaa !106
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.dq, i32 1)
  %i.dr = load i8, ptr %i.bx, align 1, !tbaa !130
  %i.ds = zext i8 %i.dr to i64
  %i.dt = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.du = mul i64 %i.dt, %i.ds
  %i.dv = trunc i64 %i.du to i32
  %i.dw = mul i32 %narrow.i.i.i, %i.dv            ; 4 uses
  %i.dx = icmp sgt i32 %i.dp, 0
  br i1 %i.dx, label %.preheader26.lr.ph.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit

.preheader26.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.dy = icmp slt i32 %i.di, 1
  %i.dz = icmp slt i32 %i.dw, 1
  %brmerge.i = select i1 %i.dy, i1 true, i1 %i.dz
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.preheader.i

.preheader26.preheader.i:                         ; preds = %.preheader26.lr.ph.i
  %i.ea = zext nneg i32 %i.dw to i64              ; 14 uses
  %i.eb = and i64 %i.da, 2147483647               ; 3 uses
  %i.ec = zext nneg i32 %i.di to i64              ; 5 uses
  %i.ed = add nsw i64 %i.ec, -1
  %i.ee = mul nsw i64 %i.ed, %i.eb
  %i.ef = add nsw i64 %i.ee, 1
  %15 = mul nuw nsw i64 %i.ec, %i.ea
  %i.eg = mul nuw nsw i64 %i.ec, %i.ea
  %i.eh = getelementptr i8, ptr %.168, i64 %i.eg
  %min.iters.check = icmp ult i32 %i.dw, 4
  %min.iters.check153 = icmp ult i32 %i.dw, 32
  %i.ei = and i64 %i.ea, 28
  %n.vec = and i64 %i.ea, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.ea
  %min.epilog.iters.check = icmp eq i64 %i.ei, 0
  %n.vec155 = and i64 %i.ea, 2147483644           ; 3 uses
  %cmp.n159 = icmp eq i64 %n.vec155, %i.ea
  %xtraiter = and i64 %i.ea, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %._crit_edge29.i, %.preheader26.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader26.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge29.i ] ; 6 uses
  %i.ej = mul i64 %indvars.iv42.i, %i.ea
  %scevgep = getelementptr i8, ptr %.057, i64 %i.ej
  %i.ek = add i64 %i.ef, %indvars.iv42.i
  %i.el = mul i64 %i.ek, %i.ea
  %scevgep150 = getelementptr i8, ptr %.057, i64 %i.el
  %i.em = mul i64 %15, %indvars.iv42.i            ; 2 uses
  %scevgep151 = getelementptr i8, ptr %.168, i64 %i.em
  %scevgep152 = getelementptr i8, ptr %i.eh, i64 %i.em
  %i.en = mul nuw nsw i64 %indvars.iv42.i, %i.ec
  %bound0 = icmp ult ptr %scevgep, %scevgep152
  %bound1 = icmp ult ptr %scevgep151, %scevgep150
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader26.i
  %indvars.iv37.i = phi i64 [ 0, %.preheader26.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %i.eo = add nuw nsw i64 %indvars.iv37.i, %i.en
  %i.ep = mul nuw nsw i64 %i.eo, %i.ea
  %i.eq = mul nuw nsw i64 %indvars.iv37.i, %i.eb
  %i.er = add nuw nsw i64 %i.eq, %indvars.iv42.i
  %i.es = mul nuw nsw i64 %i.er, %i.ea
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.168, i64 %i.ep ; 7 uses
  %invariant.gep49.i = getelementptr inbounds nuw i8, ptr %.057, i64 %i.es ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check153, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.et = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 16
  %wide.load = load <16 x i8>, ptr %i.et, align 1, !tbaa !15, !alias.scope !396
  %wide.load154 = load <16 x i8>, ptr %i.eu, align 1, !tbaa !15, !alias.scope !396
  %i.ev = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  store <16 x i8> %wide.load, ptr %i.ev, align 1, !tbaa !15, !alias.scope !399, !noalias !396
  store <16 x i8> %wide.load154, ptr %i.ew, align 1, !tbaa !15, !alias.scope !399, !noalias !396
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ex = icmp eq i64 %index.next, %n.vec
  br i1 %i.ex, label %middle.block, label %vector.body, !llvm.loop !401

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !260

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index156 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next158, %vec.epilog.vector.body ] ; 3 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index156
  %wide.load157 = load <4 x i8>, ptr %i.ey, align 1, !tbaa !15, !alias.scope !396
  %i.ez = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index156
  store <4 x i8> %wide.load157, ptr %i.ez, align 1, !tbaa !15, !alias.scope !399, !noalias !396
  %index.next158 = add nuw i64 %index156, 4       ; 2 uses
  %i.fa = icmp eq i64 %index.next158, %n.vec155
  br i1 %i.fa, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !402

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n159, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec155, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.fb = load i8, ptr %gep.i.prol, align 1, !tbaa !15
  %gep50.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i.prol
  store i8 %i.fb, ptr %gep50.i.prol, align 1, !tbaa !15
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !403

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.fc = sub nsw i64 %indvars.iv.i.ph, %i.ea
  %i.fd = icmp ugt i64 %i.fc, -4
  br i1 %i.fd, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge29.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.eb
  br i1 %exitcond46.not.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.i, !llvm.loop !264

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.ec
  br i1 %exitcond41.not.i, label %._crit_edge29.i, label %iter.check, !llvm.loop !265

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.fe = load i8, ptr %gep.i, align 1, !tbaa !15
  %gep50.i = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i
  store i8 %i.fe, ptr %gep50.i, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ff = load i8, ptr %gep.i.1, align 1, !tbaa !15
  %gep50.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i
  store i8 %i.ff, ptr %gep50.i.1, align 1, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fg = load i8, ptr %gep.i.2, align 1, !tbaa !15
  %gep50.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.1
  store i8 %i.fg, ptr %gep50.i.2, align 1, !tbaa !15
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fh = load i8, ptr %gep.i.3, align 1, !tbaa !15
  %gep50.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.2
  store i8 %i.fh, ptr %gep50.i.3, align 1, !tbaa !15
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.ea
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !404

_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit: ; preds = %._crit_edge29.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %.preheader26.lr.ph.i
  %i.fi = load i32, ptr %i.bg, align 4, !tbaa !73
  %.not79129 = icmp sgt i32 %i.fi, 0
  br i1 %.not79129, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.t

bb.s:                                             ; preds = %bb.u
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fk = load i32, ptr %i.bg, align 4, !tbaa !73
  %i.fl = sext i32 %i.fk to i64
  %.not79 = icmp slt i64 %indvars.iv.next, %i.fl
  br i1 %.not79, label %bb.t, label %.critedge, !llvm.loop !405

bb.t:                                             ; preds = %.lr.ph, %bb.s
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.s ] ; 3 uses
  %i.fm = load ptr, ptr %i.fj, align 8, !tbaa !34
  %i.fn = mul i64 %i.dh, %indvars.iv
  %i.fo = getelementptr inbounds nuw i8, ptr %.057, i64 %i.fn
  %i.fp = trunc i64 %indvars.iv to i16
  %i.fq = invoke i64 @TIFFWriteTile(ptr noundef %i.fm, ptr noundef %i.fo, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i16 noundef zeroext %i.fp)
          to label %bb.u unwind label %bb.y

bb.u:                                             ; preds = %bb.t
  %i.fr = icmp slt i64 %i.fq, 0
  br i1 %i.fr, label %bb.v, label %bb.s

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.w unwind label %bb.z

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.fs = load i32, ptr %i.i, align 8, !tbaa !329
  %i.ft = add nsw i32 %i.fs, %i.aw
  store i32 %i.ft, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.fu = load i32, ptr %i.p, align 4, !tbaa !271
  %i.fv = add nsw i32 %i.fu, %i.ay
  store i32 %i.fv, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.fw = load i32, ptr %i.w, align 8, !tbaa !330
  %i.fx = add nsw i32 %i.fw, %i.ba
  store i32 %i.fx, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.fy = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !16
  %.not74 = icmp eq i64 %i.fz, 0
  %i.ga = load ptr, ptr %13, align 8
  %spec.select = select i1 %.not74, ptr @.str.86, ptr %i.ga
  store ptr %spec.select, ptr %i.d, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.91, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.x unwind label %bb.aa

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.gb = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.x
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !15
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %.not.i88 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i88, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.y:                                             ; preds = %bb.t
end_hunk_2
