inline.NumInlined: 4473
inline.NumDeleted: 1473
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput15write_exif_dataEv:bb.a
  %i.gg = icmp eq i8 %.sroa.5187.0.extract.trunc, 1
  br i1 %i.gg, label %bb.bb, label %.critedge21

bb.bb:                                            ; preds = %bb.ba
  %i.gh = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.gi = icmp eq i64 %.sroa.7190.0.extract.shift, 0
  %or.cond314 = and i1 %i.gi, %i.gh
  br i1 %or.cond314, label %bb.bh, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread

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
  %i.hd = add nuw i64 %.080332, 1                 ; 2 uses
  %exitcond337.not = icmp eq i64 %i.hd, %i.ap
  br i1 %exitcond337.not, label %._crit_edge, label %bb.k, !llvm.loop !246

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
  %.2 = phi i1 [ true, %bb.a ], [ false, %bb.i ], [ %.not86, %bb.bm ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.f ]
  ret i1 %.2
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
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !247
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !247
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !247
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !125
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !126
  %i.f = zext i8 %i.e to i64
  %i.g = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.a) #34
  %i.h = mul i64 %i.g, %i.f
  %i.i = trunc i64 %i.h to i32
  %i.j = mul i32 %narrow.i.i, %i.i                ; 4 uses
  %i.k = icmp sgt i32 %1, 0
  br i1 %i.k, label %.preheader26.lr.ph, label %._crit_edge32.split

.preheader26.lr.ph:                               ; preds = %bb.a
  %5 = icmp slt i32 %2, 1
  %6 = icmp slt i32 %i.j, 1
  %brmerge = select i1 %5, i1 true, i1 %6
  br i1 %brmerge, label %._crit_edge32.split, label %.preheader26.us.us.preheader

.preheader26.us.us.preheader:                     ; preds = %.preheader26.lr.ph
  %i.l = zext nneg i32 %i.j to i64                ; 13 uses
  %i.m = zext nneg i32 %1 to i64                  ; 3 uses
  %i.n = zext nneg i32 %2 to i64                  ; 4 uses
  %i.o = add nsw i64 %i.n, -1
  %i.p = mul nsw i64 %i.o, %i.m
  %i.q = add i64 %i.p, 1
  %i.r = mul nuw nsw i64 %i.n, %i.l               ; 2 uses
  %i.s = getelementptr i8, ptr %3, i64 %i.r
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check58 = icmp ult i32 %i.j, 32
  %n.mod.vf = and i64 %i.l, 28
  %n.vec = and i64 %i.l, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.l
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec61 = and i64 %i.l, 2147483644             ; 3 uses
  %cmp.n65 = icmp eq i64 %n.vec61, %i.l
  %xtraiter = and i64 %i.l, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.us.us

.preheader26.us.us:                               ; preds = %.preheader26.us.us.preheader, %._crit_edge29
  %indvars.iv45 = phi i64 [ 0, %.preheader26.us.us.preheader ], [ %indvars.iv.next43, %._crit_edge29 ] ; 6 uses
  %i.t = mul i64 %indvars.iv45, %i.l
  %scevgep = getelementptr i8, ptr %4, i64 %i.t
  %i.u = add i64 %i.q, %indvars.iv45
  %i.v = mul i64 %i.u, %i.l
  %scevgep55 = getelementptr i8, ptr %4, i64 %i.v
  %i.w = mul i64 %i.r, %indvars.iv45              ; 2 uses
  %scevgep56 = getelementptr i8, ptr %3, i64 %i.w
  %scevgep57 = getelementptr i8, ptr %i.s, i64 %i.w
  %i.x = mul nuw nsw i64 %indvars.iv45, %i.n
  %bound0 = icmp ult ptr %scevgep, %scevgep57
  %bound1 = icmp ult ptr %scevgep56, %scevgep55
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge29, %.preheader26.lr.ph, %bb.a
  ret void

iter.check:                                       ; preds = %.preheader26.us.us, %._crit_edge
  %indvars.iv40 = phi i64 [ 0, %.preheader26.us.us ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %i.y = add nuw nsw i64 %indvars.iv40, %i.x
  %i.z = mul nuw nsw i64 %i.y, %i.l
  %i.aa = mul nuw nsw i64 %indvars.iv40, %i.m
  %i.ab = add nuw nsw i64 %i.aa, %indvars.iv45
  %i.ac = mul nuw nsw i64 %i.ab, %i.l
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %i.z ; 7 uses
  %invariant.gep52 = getelementptr inbounds nuw i8, ptr %4, i64 %i.ac ; 7 uses
  %brmerge.a = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge.a, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check58, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %wide.load = load <16 x i8>, ptr %i.ad, align 1, !tbaa !15, !alias.scope !250
  %wide.load59.a = load <16 x i8>, ptr %i.ae, align 1, !tbaa !15, !alias.scope !250
  %i.af = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %index ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  store <16 x i8> %wide.load, ptr %i.af, align 1, !tbaa !15, !alias.scope !253, !noalias !250
  store <16 x i8> %wide.load59.a, ptr %i.ag, align 1, !tbaa !15, !alias.scope !253, !noalias !250
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !255

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index62 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next64, %vec.epilog.vector.body ] ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index62
  %wide.load63 = load <4 x i8>, ptr %i.ai, align 1, !tbaa !15, !alias.scope !250
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %index62
  store <4 x i8> %wide.load63, ptr %i.aj, align 1, !tbaa !15, !alias.scope !253, !noalias !250
  %index.next64 = add nuw i64 %index62, 4         ; 2 uses
  %i.ak = icmp eq i64 %index.next64, %n.vec61
  br i1 %i.ak, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !257

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n65, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec61, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.al = load i8, ptr %gep.prol, align 1, !tbaa !15
  %gep53.prol = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %indvars.iv.prol
  store i8 %i.al, ptr %gep53.prol, align 1, !tbaa !15
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !258

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.am = sub nsw i64 %indvars.iv.ph, %i.l
  %i.an = icmp ugt i64 %i.am, -4
  br i1 %i.an, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge29:                                    ; preds = %._crit_edge
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv45, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %i.m
  br i1 %exitcond46.not, label %._crit_edge32.split, label %.preheader26.us.us, !llvm.loop !260

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv40, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %i.n
  br i1 %exitcond41.not, label %._crit_edge29, label %iter.check, !llvm.loop !261

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ao = load i8, ptr %gep, align 1, !tbaa !15
  %gep53 = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %indvars.iv
  store i8 %i.ao, ptr %gep53, align 1, !tbaa !15
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.ap = load i8, ptr %gep.1, align 1, !tbaa !15
  %gep53.1 = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %indvars.iv.next
  store i8 %i.ap, ptr %gep53.1, align 1, !tbaa !15
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.aq = load i8, ptr %gep.2, align 1, !tbaa !15
  %gep53.2 = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %indvars.iv.next.1
  store i8 %i.aq, ptr %gep53.2, align 1, !tbaa !15
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.ar = load i8, ptr %gep.3, align 1, !tbaa !15
  %gep53.3 = getelementptr inbounds nuw i8, ptr %invariant.gep52, i64 %indvars.iv.next.2
  store i8 %i.ar, ptr %gep53.3, align 1, !tbaa !15
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.l
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !262
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !73
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !125
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !126
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
  %i.t = load i32, ptr %i.e, align 4
  %.not.i = icmp eq i32 %i.t, 0                   ; 2 uses
  %or.cond = select i1 %or.cond.i, i1 %.not.i, i1 false
  br i1 %or.cond, label %bb.b, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

bb.b:                                             ; preds = %bb.a
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
  %i.bc = select <4 x i1> %i.bb, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.bd = fadd <4 x float> %i.ba, %i.bc           ; 2 uses
  %i.be = fcmp oge <4 x float> %i.bd, zeroinitializer
  %i.bf = select <4 x i1> %i.be, <4 x float> %i.bd, <4 x float> zeroinitializer ; 2 uses
  %i.bg = fcmp ogt <4 x float> %i.bf, splat (float 2.550000e+02)
  %i.bh = select <4 x i1> %i.bg, <4 x float> splat (float 2.550000e+02), <4 x float> %i.bf
  %i.bi = fptoui <4 x float> %i.bh to <4 x i8>
  store <4 x i8> %i.bi, ptr %.02244.i, align 1, !tbaa !15
  %i.bj = add nsw i32 %.046.i, -1                 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02244.i, i64 %i.y
  %i.bl = getelementptr inbounds nuw i8, ptr %.02145.i, i64 %i.w
  %.not.i9 = icmp eq i32 %i.bj, 0
  br i1 %.not.i9, label %_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit, label %.lr.ph.i, !llvm.loop !263

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %bb.a
  %i.bm = icmp eq i8 %i.p, 4
  %or.cond.i10 = select i1 %i.bm, i1 %i.s, i1 false
  %or.cond32 = select i1 %or.cond.i10, i1 %.not.i, i1 false
  br i1 %or.cond32, label %bb.c, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit12.thread

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !96
  %i.bp = sext i32 %i.bo to i64
  %i.bq = load i32, ptr %i.a, align 4, !tbaa !73
  %i.br = sext i32 %i.bq to i64
  %.not43.i13 = icmp eq i32 %1, 0
  br i1 %.not43.i13, label %_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit, label %.lr.ph.i14.preheader

.lr.ph.i14.preheader:                             ; preds = %bb.c
  %i.bs = load ptr, ptr %3, align 8, !tbaa !76
  br label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %.lr.ph.i14.preheader, %.lr.ph.i14
  %.046.i15 = phi i32 [ %i.dc, %.lr.ph.i14 ], [ %1, %.lr.ph.i14.preheader ]
  %.02145.i16 = phi ptr [ %i.de, %.lr.ph.i14 ], [ %2, %.lr.ph.i14.preheader ] ; 3 uses
  %.02244.i17 = phi ptr [ %i.dd, %.lr.ph.i14 ], [ %i.bs, %.lr.ph.i14.preheader ] ; 2 uses
  %i.bt = load i16, ptr %.02145.i16, align 2, !tbaa !115
  %i.bu = uitofp i16 %i.bt to float
  %i.bv = fmul nnan float %i.bu, f0x37800080      ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.02145.i16, i64 2
  %i.bx = load <2 x i16>, ptr %i.bw, align 2, !tbaa !115
  %i.by = uitofp <2 x i16> %i.bx to <2 x float>
  %i.bz = fmul nnan <2 x float> %i.by, splat (float f0x37800080) ; 3 uses
  %i.ca = extractelement <2 x float> %i.bz, i64 0 ; 2 uses
  %i.cb = extractelement <2 x float> %i.bz, i64 1 ; 2 uses
  %i.cc = fcmp olt float %i.ca, %i.cb
  %i.cd = select i1 %i.cc, float %i.cb, float %i.ca ; 2 uses
  %i.ce = fcmp olt float %i.bv, %i.cd
  %.sroa.speculated.i18 = select i1 %i.ce, float %i.cd, float %i.bv ; 4 uses
  %i.cf = fpext float %.sroa.speculated.i18 to double
  %i.cg = fcmp ole double %i.cf, f0x3EB0C6F7A0B5ED8D
  %i.ch = fdiv float 1.000000e+00, %.sroa.speculated.i18
  %i.ci = select i1 %i.cg, float 0.000000e+00, float %i.ch
  %i.cj = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %.sroa.speculated.i18, i64 0
  %i.ck = shufflevector <4 x float> %i.cj, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cl = insertelement <4 x float> poison, float %i.bv, i64 0
  %i.cm = shufflevector <2 x float> %i.bz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cl, <4 x float> %i.cm, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.co = insertelement <4 x float> %i.cn, float %.sroa.speculated.i18, i64 3
  %i.cp = fsub nnan <4 x float> %i.ck, %i.co
  %i.cq = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ci, i64 0
  %i.cr = shufflevector <4 x float> %i.cq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cs = fmul <4 x float> %i.cp, %i.cr
  %i.ct = fmul <4 x float> %i.cs, splat (float 6.553500e+04) ; 2 uses
  %i.cu = fcmp olt <4 x float> %i.ct, zeroinitializer
  %i.cv = select <4 x i1> %i.cu, <4 x float> splat (float -5.000000e-01), <4 x float> splat (float 5.000000e-01)
  %i.cw = fadd <4 x float> %i.ct, %i.cv           ; 2 uses
  %i.cx = fcmp oge <4 x float> %i.cw, zeroinitializer
  %i.cy = select <4 x i1> %i.cx, <4 x float> %i.cw, <4 x float> zeroinitializer ; 2 uses
  %i.cz = fcmp ogt <4 x float> %i.cy, splat (float 6.553500e+04)
  %i.da = select <4 x i1> %i.cz, <4 x float> splat (float 6.553500e+04), <4 x float> %i.cy
  %i.db = fptoui <4 x float> %i.da to <4 x i16>
  store <4 x i16> %i.db, ptr %.02244.i17, align 2, !tbaa !115
  %i.dc = add nsw i32 %.046.i15, -1               ; 2 uses
  %i.dd = getelementptr inbounds nuw [2 x i8], ptr %.02244.i17, i64 %i.br
  %i.de = getelementptr inbounds nuw [2 x i8], ptr %.02145.i16, i64 %i.bp
  %.not.i31 = icmp eq i32 %i.dc, 0
  br i1 %.not.i31, label %_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit, label %.lr.ph.i14, !llvm.loop !264

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit12.thread: ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.df = load ptr, ptr @stderr, align 8, !tbaa !85
  %i.dg = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.df, ptr noundef nonnull @.str.82, ptr noundef nonnull @.str.83, i32 noundef 1305, ptr noundef nonnull @__FUNCTION__._ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE, ptr noundef nonnull @.str.84) #39 ; 0 uses
  br label %_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit

_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit: ; preds = %.lr.ph.i14, %.lr.ph.i, %bb.c, %bb.b, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit12.thread
  %i.dh = load ptr, ptr %3, align 8, !tbaa !76
  ret ptr %i.dh
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIhSaIhEE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !265  ; 6 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !76     ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = icmp ugt i64 %1, %i.f
  br i1 %i.g, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.h = sub nuw i64 %1, %i.f                     ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !77
  %i.k = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.l = sub i64 %i.k, %i.d                       ; 2 uses
  %i.m = icmp sgt i64 %i.f, -1
  tail call void @llvm.assume(i1 %i.m)
  %i.n = xor i64 %i.f, 9223372036854775807        ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28.i = icmp ult i64 %i.l, %i.h
  br i1 %.not28.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i8 0, ptr %i.b, align 1, !tbaa !15
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %i.q = add nsw i64 %i.h, -1                     ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIhSaIhEE6resizeEm:bb.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @fprintf(ptr noundef captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #10

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN11OpenImageIO4v3_110TIFFOutput14write_scanlineEiiNS0_8TypeDescEPKvl(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, i32 noundef %2, i64 %3, ptr noundef %4, i64 noundef %5) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %struct.timespec, align 8           ; 5 uses
  %7 = alloca %struct.timespec, align 8           ; 5 uses
  %8 = alloca %"struct.OpenImageIO::v3_1::TypeDesc", align 8 ; 4 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  %9 = alloca %"class.std::vector.12", align 8    ; 9 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.c = alloca ptr, align 8                      ; 5 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %i.d = alloca ptr, align 8                      ; 5 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !3
  store i32 %2, ptr %i.b, align 4, !tbaa !3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !162
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
  %.pre111.a = load i32, ptr %i.b, align 4, !tbaa !3
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit: ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %.pre111.a, %bb.b ], [ %2, %bb.a ]
  %i.r = phi i32 [ %.pre, %bb.b ], [ %1, %bb.a ]
  %.0 = phi i64 [ %i.p, %bb.b ], [ %5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.u = load i32, ptr %i.t, align 4, !tbaa !145
  %i.v = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %3, ptr noundef %4, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.u, i32 noundef %i.r, i32 noundef %i.q) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.x = load i32, ptr %i.w, align 4, !tbaa !99
  %i.y = icmp eq i32 %i.x, 5
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load i8, ptr %i.z, align 8, !range !79
  %i.ab = trunc nuw i8 %i.aa to i1
  %or.cond = select i1 %i.y, i1 %i.ab, i1 false
  br i1 %or.cond, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !266
  %i.ae = invoke noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.ad, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit78

bb.e:                                             ; preds = %bb.c, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %.033 = phi ptr [ %i.v, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit ], [ %i.ae, %bb.c ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !266
  %i.ai = sext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.ak = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.al = sext i32 %i.ak to i64
  %i.am = mul nsw i64 %i.al, %i.ai                ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !125
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ap, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 5 uses
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !126
  %i.as = zext i8 %i.ar to i64
  %i.at = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.au = shl nuw nsw i64 %i.as, 3
  %i.av = mul i64 %i.au, %i.at
  %i.aw = mul i64 %i.av, %spec.select.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ay = load i32, ptr %i.ax, align 8, !tbaa !97
  %i.az = zext i32 %i.ay to i64
  %.not = icmp eq i64 %i.aw, %i.az
  br i1 %.not, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ba = load i32, ptr %i.ao, align 4, !tbaa !125
  %i.bb = load i8, ptr %i.aq, align 1, !tbaa !126
  %i.bc = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.bd = load ptr, ptr %i.s, align 8, !tbaa !100 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !100
  %i.bg = icmp ne ptr %i.bd, %i.bf
  %.not.i = icmp eq ptr %.033, %i.bd
  %or.cond.i = and i1 %.not.i, %i.bg
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bh = zext i8 %i.bb to i64
  %narrow.i67 = call i32 @llvm.smax.i32(i32 %i.ba, i32 1)
  %spec.select.i68 = zext nneg i32 %narrow.i67 to i64
  %i.bi = mul i64 %i.am, %i.bh
  %i.bj = mul i64 %i.bi, %i.bc
  %i.bk = mul i64 %i.bj, %spec.select.i68
  %i.bl = getelementptr inbounds nuw i8, ptr %.033, i64 %i.bk
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %.033, ptr noundef %i.bl)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !76
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit: ; preds = %.noexc, %bb.f
  %i.bm = phi ptr [ %i.bd, %bb.f ], [ %.pre.i, %.noexc ] ; 2 uses
  %i.bn = trunc i64 %i.am to i32
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput12fix_bitdepthEPvi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bm, i32 noundef %i.bn)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.y, %bb.g, %bb.ah, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit85, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit78

bb.i:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.e
  %.134 = phi ptr [ %i.bm, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit ], [ %.033, %bb.e ] ; 6 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !267
  %i.br = load i32, ptr %i.a, align 4, !tbaa !3
  %i.bs = sub nsw i32 %i.br, %i.bq
  store i32 %i.bs, ptr %i.a, align 4, !tbaa !3
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bu = load i32, ptr %i.bt, align 8, !tbaa !121
  %i.bv = icmp eq i32 %i.bu, 2
  %i.bw = load i32, ptr %i.e, align 4
  %i.bx = icmp sgt i32 %i.bw, 1
  %or.cond61 = select i1 %i.bv, i1 %i.bx, i1 false
  br i1 %or.cond61, label %bb.j, label %bb.x

bb.j:                                             ; preds = %bb.i
  %i.by = load i32, ptr %i.ag, align 4, !tbaa !89
  %i.bz = load i32, ptr %i.ao, align 4, !tbaa !125
  %narrow.i69 = call i32 @llvm.smax.i32(i32 %i.bz, i32 1)
  %i.ca = load i8, ptr %i.aq, align 1, !tbaa !126
  %i.cb = zext i8 %i.ca to i64
  %i.cc = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.cd = mul i64 %i.cc, %i.cb
  %i.ce = trunc i64 %i.cd to i32
  %i.cf = mul i32 %narrow.i69, %i.by
  %i.cg = mul i32 %i.cf, %i.ce                    ; 2 uses
  %i.ch = load i32, ptr %i.aj, align 4, !tbaa !73 ; 3 uses
  %i.ci = mul nsw i32 %i.cg, %i.ch                ; 3 uses
  %i.cj = sext i32 %i.ci to i64                   ; 2 uses
  %i.ck = icmp ult i32 %i.ci, 65537
  br i1 %i.ck, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not47 = icmp eq i32 %i.ci, 0
  br i1 %.not47, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cl = alloca i8, i64 %i.cj, align 16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

bb.m:                                             ; preds = %bb.j
  %i.cm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cj) #38
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit unwind label %.thread ; 2 uses

.thread:                                          ; preds = %bb.m
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit78

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.m, %bb.l, %bb.k
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ null, %bb.l ], [ %i.cm, %bb.m ] ; 6 uses
  %.032 = phi ptr [ null, %bb.k ], [ %i.cl, %bb.l ], [ %i.cm, %bb.m ] ; 4 uses
  %i.co = load i32, ptr %i.ag, align 4, !tbaa !89 ; 2 uses
  %i.cp = load i32, ptr %i.ao, align 4, !tbaa !125
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.cp, i32 1)
  %i.cq = load i8, ptr %i.aq, align 1, !tbaa !126
  %i.cr = zext i8 %i.cq to i64
  %i.cs = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.ct = mul i64 %i.cs, %i.cr
  %i.cu = trunc i64 %i.ct to i32
  %i.cv = mul i32 %narrow.i.i.i, %i.cu            ; 4 uses
  %i.cw = icmp sgt i32 %i.co, 0
  br i1 %i.cw, label %.preheader26.lr.ph.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit

.preheader26.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %12 = icmp slt i32 %i.ch, 1
  %13 = icmp slt i32 %i.cv, 1
  %brmerge.i = select i1 %12, i1 true, i1 %13
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.us.us.preheader.i

.preheader26.us.us.preheader.i:                   ; preds = %.preheader26.lr.ph.i
  %i.cx = zext nneg i32 %i.cv to i64              ; 13 uses
  %i.cy = zext nneg i32 %i.co to i64              ; 3 uses
  %i.cz = zext nneg i32 %i.ch to i64              ; 4 uses
  %i.da = add nsw i64 %i.cz, -1
  %i.db = mul nsw i64 %i.da, %i.cy
  %i.dc = add i64 %i.db, 1
  %i.dd = mul nuw nsw i64 %i.cz, %i.cx            ; 2 uses
  %i.de = getelementptr i8, ptr %.134, i64 %i.dd
  %min.iters.check = icmp ult i32 %i.cv, 4
  %min.iters.check133 = icmp ult i32 %i.cv, 32
  %n.mod.vf = and i64 %i.cx, 28
  %n.vec = and i64 %i.cx, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec136 = and i64 %i.cx, 2147483644           ; 3 uses
  %cmp.n140 = icmp eq i64 %n.vec136, %i.cx
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.us.us.i

.preheader26.us.us.i:                             ; preds = %._crit_edge29.i, %.preheader26.us.us.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.preheader26.us.us.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge29.i ] ; 6 uses
  %i.df = mul i64 %indvars.iv45.i, %i.cx
  %scevgep = getelementptr i8, ptr %.032, i64 %i.df
  %i.dg = add i64 %i.dc, %indvars.iv45.i
  %i.dh = mul i64 %i.dg, %i.cx
  %scevgep130.a = getelementptr i8, ptr %.032, i64 %i.dh
  %i.di = mul i64 %i.dd, %indvars.iv45.i          ; 2 uses
  %scevgep131.a = getelementptr i8, ptr %.134, i64 %i.di
  %scevgep132 = getelementptr i8, ptr %i.de, i64 %i.di
  %i.dj = mul nuw nsw i64 %indvars.iv45.i, %i.cz
  %bound0 = icmp ult ptr %scevgep, %scevgep132
  %bound1 = icmp ult ptr %scevgep131.a, %scevgep130.a
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader26.us.us.i
  %indvars.iv40.i = phi i64 [ 0, %.preheader26.us.us.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %i.dk = add nuw nsw i64 %indvars.iv40.i, %i.dj
  %i.dl = mul nuw nsw i64 %i.dk, %i.cx
  %i.dm = mul nuw nsw i64 %indvars.iv40.i, %i.cy
  %i.dn = add nuw nsw i64 %i.dm, %indvars.iv45.i
  %i.do = mul nuw nsw i64 %i.dn, %i.cx
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.134, i64 %i.dl ; 7 uses
  %invariant.gep52.i = getelementptr inbounds nuw i8, ptr %.032, i64 %i.do ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check133, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load = load <16 x i8>, ptr %i.dp, align 1, !tbaa !15, !alias.scope !268
  %wide.load134 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !15, !alias.scope !268
  %i.dr = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <16 x i8> %wide.load, ptr %i.dr, align 1, !tbaa !15, !alias.scope !271, !noalias !268
  store <16 x i8> %wide.load134, ptr %i.ds, align 1, !tbaa !15, !alias.scope !271, !noalias !268
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dt = icmp eq i64 %index.next, %n.vec
  br i1 %i.dt, label %middle.block, label %vector.body, !llvm.loop !273

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index137 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next139, %vec.epilog.vector.body ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index137
  %wide.load138 = load <4 x i8>, ptr %i.du, align 1, !tbaa !15, !alias.scope !268
  %i.dv = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %index137
  store <4 x i8> %wide.load138, ptr %i.dv, align 1, !tbaa !15, !alias.scope !271, !noalias !268
  %index.next139 = add nuw i64 %index137, 4       ; 2 uses
  %i.dw = icmp eq i64 %index.next139, %n.vec136
  br i1 %i.dw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !274

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n140, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec136, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.dx = load i8, ptr %gep.i.prol, align 1, !tbaa !15
  %gep53.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.i.prol
  store i8 %i.dx, ptr %gep53.i.prol, align 1, !tbaa !15
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !275

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.dy = sub nsw i64 %indvars.iv.i.ph, %i.cx
  %i.dz = icmp ugt i64 %i.dy, -4
  br i1 %i.dz, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge29.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.cy
  br i1 %exitcond46.not.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.us.us.i, !llvm.loop !260

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.cz
  br i1 %exitcond41.not.i, label %._crit_edge29.i, label %iter.check, !llvm.loop !261

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.ea = load i8, ptr %gep.i, align 1, !tbaa !15
  %gep53.i = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.i
  store i8 %i.ea, ptr %gep53.i, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.eb = load i8, ptr %gep.i.1, align 1, !tbaa !15
  %gep53.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.next.i
  store i8 %i.eb, ptr %gep53.i.1, align 1, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.ec = load i8, ptr %gep.i.2, align 1, !tbaa !15
  %gep53.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.next.i.1
  store i8 %i.ec, ptr %gep53.i.2, align 1, !tbaa !15
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.ed = load i8, ptr %gep.i.3, align 1, !tbaa !15
  %gep53.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.next.i.2
  store i8 %i.ed, ptr %gep53.i.3, align 1, !tbaa !15
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.cx
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !276

_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit: ; preds = %._crit_edge29.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %.preheader26.lr.ph.i
  %i.ee = load i32, ptr %i.aj, align 4, !tbaa !73
  %.not53107 = icmp sgt i32 %i.ee, 0
  br i1 %.not53107, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.eg = sext i32 %i.cg to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eh = load i32, ptr %i.aj, align 4, !tbaa !73
  %i.ei = sext i32 %i.eh to i64
  %.not53 = icmp slt i64 %indvars.iv.next, %i.ei
  br i1 %.not53, label %bb.o, label %.critedge, !llvm.loop !277

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.ej = load ptr, ptr %i.ef, align 8, !tbaa !34
  %i.ek = mul nsw i64 %indvars.iv, %i.eg
  %i.el = getelementptr inbounds i8, ptr %.032, i64 %i.ek
  %i.em = load i32, ptr %i.a, align 4, !tbaa !3
  %i.en = trunc i64 %indvars.iv to i16
  %i.eo = invoke i32 @TIFFWriteScanline(ptr noundef %i.ej, ptr noundef %i.el, i32 noundef %i.em, i16 noundef zeroext %i.en)
          to label %bb.p unwind label %bb.t

bb.p:                                             ; preds = %bb.o
  %i.ep = icmp slt i32 %i.eo, 0
  br i1 %i.ep, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.r unwind label %bb.u

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.eq = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.er = load i64, ptr %i.eq, align 8, !tbaa !16
  %.not48 = icmp eq i64 %i.er, 0
  %i.es = load ptr, ptr %10, align 8
  %spec.select = select i1 %.not48, ptr @.str.86, ptr %i.es
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.s unwind label %bb.v

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.et = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.ev = icmp eq ptr %i.et, %i.eu
  br i1 %i.ev, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ew = load i64, ptr %i.eu, align 8, !tbaa !15
  %i.ex = add i64 %i.ew, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ex) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %.not.i72 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i72, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.t:                                             ; preds = %bb.o
  %i.ey = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.u:                                             ; preds = %bb.q
  %i.ez = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

bb.v:                                             ; preds = %bb.r
  %i.fa = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.fb = load ptr, ptr %10, align 8, !tbaa !13   ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fd = icmp eq ptr %i.fb, %i.fc
  br i1 %i.fd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73: ; preds = %bb.v
  %i.fe = load i64, ptr %i.fc, align 8, !tbaa !15
  %i.ff = add i64 %i.fe, 1
  call void @_ZdlPvm(ptr noundef %i.fb, i64 noundef %i.ff) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73, %bb.u
  %.pn49 = phi { ptr, i32 } [ %i.ez, %bb.u ], [ %i.fa, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i73 ], [ %i.fa, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75
  %.pn49.pn.pn = phi { ptr, i32 } [ %i.ey, %bb.t ], [ %.pn49, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit75 ] ; 2 uses
  %.not.i76 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i76, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit78, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i77

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i77: ; preds = %bb.w
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit78

bb.x:                                             ; preds = %bb.i
  %i.fg = load i32, ptr %i.ao, align 4, !tbaa !125
  %i.fh = load i8, ptr %i.aq, align 1, !tbaa !126
  %i.fi = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.an) #34
  %i.fj = load ptr, ptr %i.s, align 8, !tbaa !100 ; 3 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !100
  %i.fm = icmp ne ptr %i.fj, %i.fl
  %.not.i81 = icmp eq ptr %.134, %i.fj
  %or.cond.i82 = and i1 %.not.i81, %i.fm
  br i1 %or.cond.i82, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit85, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fn = zext i8 %i.fh to i64
  %narrow.i79 = call i32 @llvm.smax.i32(i32 %i.fg, i32 1)
  %spec.select.i80 = zext nneg i32 %narrow.i79 to i64
  %i.fo = mul i64 %i.am, %i.fn
  %i.fp = mul i64 %i.fo, %i.fi
  %i.fq = mul i64 %i.fp, %spec.select.i80
  %i.fr = getelementptr inbounds nuw i8, ptr %.134, i64 %i.fq
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %.134, ptr noundef %i.fr)
          to label %.noexc84 unwind label %bb.h

.noexc84:                                         ; preds = %bb.y
  %.pre.i83 = load ptr, ptr %i.s, align 8, !tbaa !76
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit85

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit85: ; preds = %.noexc84, %bb.x
  %i.fs = phi ptr [ %i.fj, %bb.x ], [ %.pre.i83, %.noexc84 ]
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !34
  %i.fv = load i32, ptr %i.a, align 4, !tbaa !3
  %i.fw = invoke i32 @TIFFWriteScanline(ptr noundef %i.fu, ptr noundef %i.fs, i32 noundef %i.fv, i16 noundef zeroext 0)
          to label %bb.z unwind label %bb.h

bb.z:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit85
  %i.fx = icmp slt i32 %i.fw, 0
  br i1 %i.fx, label %bb.aa, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit94

bb.aa:                                            ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %11, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.ab unwind label %bb.ad

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.fy = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.fz = load i64, ptr %i.fy, align 8, !tbaa !16
  %.not45 = icmp eq i64 %i.fz, 0
  %i.ga = load ptr, ptr %11, align 8
  %spec.select106 = select i1 %.not45, ptr @.str.86, ptr %i.ga
  store ptr %spec.select106, ptr %i.d, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.ac unwind label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.gb = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gd = icmp eq ptr %i.gb, %i.gc
  br i1 %i.gd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86: ; preds = %bb.ac
  %i.ge = load i64, ptr %i.gc, align 8, !tbaa !15
  %i.gf = add i64 %i.ge, 1
  call void @_ZdlPvm(ptr noundef %i.gb, i64 noundef %i.gf) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit88: ; preds = %bb.ac, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i86
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #34
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.ad:                                            ; preds = %bb.aa
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

bb.ae:                                            ; preds = %bb.ab
  %i.gh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.gi = load ptr, ptr %11, align 8, !tbaa !13   ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.gk = icmp eq ptr %i.gi, %i.gj
  br i1 %i.gk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89: ; preds = %bb.ae
  %i.gl = load i64, ptr %i.gj, align 8, !tbaa !15
  %i.gm = add i64 %i.gl, 1
  call void @_ZdlPvm(ptr noundef %i.gi, i64 noundef %i.gm) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit91: ; preds = %bb.ae, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i89, %bb.ad
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_110TIFFOutput10write_tileEiiiNS0_8TypeDescEPKvlll:bb.a

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.q = load i32, ptr %i.p, align 4, !tbaa !385
  %i.r = sub nsw i32 %2, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.t = load i32, ptr %i.s, align 4, !tbaa !386  ; 2 uses
  %i.u = srem i32 %i.r, %i.t
  %i.v = icmp eq i32 %i.u, 0
  br i1 %i.v, label %bb.d, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !387
  %i.y = sub nsw i32 %3, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !388
  %i.ab = srem i32 %i.y, %i.aa
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !162
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
  %.0134 = phi i64 [ %i.ao, %bb.f ], [ %6, %bb.e ] ; 2 uses
  %i.ap = icmp eq i64 %7, -9223372036854775808
  %i.aq = sext i32 %i.k to i64
  %i.ar = mul nsw i64 %.0134, %i.aq
  %.0133 = select i1 %i.ap, i64 %i.ar, i64 %7     ; 2 uses
  %i.as = icmp eq i64 %8, -9223372036854775808
  %i.at = sext i32 %i.t to i64
  %i.au = mul nsw i64 %.0133, %i.at
  %.0 = select i1 %i.as, i64 %i.au, i64 %8
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.av = load i32, ptr %i.i, align 8, !tbaa !139
  %i.aw = sub nsw i32 %1, %i.av                   ; 5 uses
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !267
  %i.ay = sub nsw i32 %2, %i.ax                   ; 5 uses
  %i.az = load i32, ptr %i.w, align 8, !tbaa !322
  %i.ba = sub nsw i32 %3, %i.az                   ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !145
  %i.be = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput14to_native_tileENS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %4, ptr noundef %5, i64 noundef %.0134, i64 noundef %.0133, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i32 noundef %i.bd, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba) ; 2 uses
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
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = load i8, ptr %i.bn, align 8, !range !79
  %i.bp = trunc nuw i8 %i.bo to i1
  %or.cond = select i1 %i.bm, i1 %i.bp, i1 false
  br i1 %or.cond, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.bq = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34
  %i.br = trunc i64 %i.bq to i32
  %i.bs = invoke noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.br, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.ab, %bb.k, %bb.ak, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit112, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105

bb.i:                                             ; preds = %bb.g, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.067 = phi ptr [ %i.be, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit ], [ %i.bs, %bb.g ] ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.bw = load i32, ptr %i.bv, align 4, !tbaa !125
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.bw, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 5 uses
  %i.by = load i8, ptr %i.bx, align 1, !tbaa !126
  %i.bz = zext i8 %i.by to i64
  %i.ca = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.cb = shl nuw nsw i64 %i.bz, 3
  %i.cc = mul i64 %i.cb, %i.ca
  %i.cd = mul i64 %i.cc, %spec.select.i
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.cf = load i32, ptr %i.ce, align 8, !tbaa !97
  %i.cg = zext i32 %i.cf to i64
  %.not = icmp eq i64 %i.cd, %i.cg
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ch = load i32, ptr %i.bv, align 4, !tbaa !125
  %i.ci = load i8, ptr %i.bx, align 1, !tbaa !126
  %i.cj = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.ck = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 3 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !100
  %i.cn = icmp ne ptr %i.ck, %i.cm
  %.not.i94 = icmp eq ptr %.067, %i.ck
  %or.cond.i95 = and i1 %.not.i94, %i.cn
  br i1 %or.cond.i95, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.co = zext i8 %i.ci to i64
  %narrow.i92 = call i32 @llvm.smax.i32(i32 %i.ch, i32 1)
  %spec.select.i93 = zext nneg i32 %narrow.i92 to i64
  %i.cp = mul i64 %i.bj, %i.co
  %i.cq = mul i64 %i.cp, %i.cj
  %i.cr = mul i64 %i.cq, %spec.select.i93
  %i.cs = getelementptr inbounds nuw i8, ptr %.067, i64 %i.cr
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef %.067, ptr noundef %i.cs)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !76
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit: ; preds = %.noexc, %bb.j
  %i.ct = phi ptr [ %i.ck, %bb.j ], [ %.pre.i, %.noexc ] ; 2 uses
  %i.cu = trunc i64 %i.bj to i32
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput12fix_bitdepthEPvi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.ct, i32 noundef %i.cu)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.i
  %.168 = phi ptr [ %i.ct, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit ], [ %.067, %bb.i ] ; 6 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cw = load i32, ptr %i.cv, align 8, !tbaa !121
  %i.cx = icmp eq i32 %i.cw, 2
  %i.cy = load i32, ptr %i.ad, align 4
  %i.cz = icmp sgt i32 %i.cy, 1
  %or.cond86 = select i1 %i.cx, i1 %i.cz, i1 false
  br i1 %or.cond86, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.da = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34 ; 3 uses
  %i.db = load i32, ptr %i.bv, align 4, !tbaa !125
  %narrow.i96 = call i32 @llvm.smax.i32(i32 %i.db, i32 1)
  %spec.select.i97 = zext nneg i32 %narrow.i96 to i64
  %i.dc = load i8, ptr %i.bx, align 1, !tbaa !126
  %i.dd = zext i8 %i.dc to i64
  %i.de = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.df = mul i64 %i.da, %i.dd
  %i.dg = mul i64 %i.df, %i.de
  %i.dh = mul i64 %i.dg, %spec.select.i97         ; 2 uses
  %i.di = load i32, ptr %i.bg, align 4, !tbaa !73 ; 3 uses
  %i.dj = sext i32 %i.di to i64
  %i.dk = mul i64 %i.dh, %i.dj                    ; 4 uses
  %i.dl = icmp ult i64 %i.dk, 65537
  br i1 %i.dl, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %.not73 = icmp eq i64 %i.dk, 0
  br i1 %.not73, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.dm = alloca i8, i64 %i.dk, align 16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

bb.p:                                             ; preds = %bb.m
  %i.dn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dk) #38
          to label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit unwind label %.thread ; 2 uses

.thread:                                          ; preds = %bb.p
  %i.do = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %bb.p, %bb.o, %bb.n
  %.sroa.0.0 = phi ptr [ null, %bb.n ], [ null, %bb.o ], [ %i.dn, %bb.p ] ; 6 uses
  %.058 = phi ptr [ null, %bb.n ], [ %i.dm, %bb.o ], [ %i.dn, %bb.p ] ; 4 uses
  %i.dp = trunc i64 %i.da to i32
  %i.dq = load i32, ptr %i.bv, align 4, !tbaa !125
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.dq, i32 1)
  %i.dr = load i8, ptr %i.bx, align 1, !tbaa !126
  %i.ds = zext i8 %i.dr to i64
  %i.dt = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.du = mul i64 %i.dt, %i.ds
  %i.dv = trunc i64 %i.du to i32
  %i.dw = mul i32 %narrow.i.i.i, %i.dv            ; 4 uses
  %i.dx = icmp sgt i32 %i.dp, 0
  br i1 %i.dx, label %.preheader26.lr.ph.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit

.preheader26.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %15 = icmp slt i32 %i.di, 1
  %16 = icmp slt i32 %i.dw, 1
  %brmerge.i = select i1 %15, i1 true, i1 %16
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.us.us.preheader.i

.preheader26.us.us.preheader.i:                   ; preds = %.preheader26.lr.ph.i
  %i.dy = zext nneg i32 %i.dw to i64              ; 13 uses
  %i.dz = and i64 %i.da, 2147483647               ; 3 uses
  %i.ea = zext nneg i32 %i.di to i64              ; 4 uses
  %i.eb = add nsw i64 %i.ea, -1
  %i.ec = mul nsw i64 %i.eb, %i.dz
  %i.ed = add nsw i64 %i.ec, 1
  %i.ee = mul nuw nsw i64 %i.ea, %i.dy            ; 2 uses
  %i.ef = getelementptr i8, ptr %.168, i64 %i.ee
  %min.iters.check = icmp ult i32 %i.dw, 4
  %min.iters.check165 = icmp ult i32 %i.dw, 32
  %n.mod.vf = and i64 %i.dy, 28
  %n.vec = and i64 %i.dy, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dy
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  %n.vec168 = and i64 %i.dy, 2147483644           ; 3 uses
  %cmp.n172 = icmp eq i64 %n.vec168, %i.dy
  %xtraiter = and i64 %i.dy, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.us.us.i

.preheader26.us.us.i:                             ; preds = %._crit_edge29.i, %.preheader26.us.us.preheader.i
  %indvars.iv45.i = phi i64 [ 0, %.preheader26.us.us.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge29.i ] ; 6 uses
  %i.eg = mul i64 %indvars.iv45.i, %i.dy
  %scevgep = getelementptr i8, ptr %.058, i64 %i.eg
  %i.eh = add i64 %i.ed, %indvars.iv45.i
  %i.ei = mul i64 %i.eh, %i.dy
  %scevgep162.a = getelementptr i8, ptr %.058, i64 %i.ei
  %i.ej = mul i64 %i.ee, %indvars.iv45.i          ; 2 uses
  %scevgep163.a = getelementptr i8, ptr %.168, i64 %i.ej
  %scevgep164 = getelementptr i8, ptr %i.ef, i64 %i.ej
  %i.ek = mul nuw nsw i64 %indvars.iv45.i, %i.ea
  %bound0 = icmp ult ptr %scevgep, %scevgep164
  %bound1 = icmp ult ptr %scevgep163.a, %scevgep162.a
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader26.us.us.i
  %indvars.iv40.i = phi i64 [ 0, %.preheader26.us.us.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %i.el = add nuw nsw i64 %indvars.iv40.i, %i.ek
  %i.em = mul nuw nsw i64 %i.el, %i.dy
  %i.en = mul nuw nsw i64 %indvars.iv40.i, %i.dz
  %i.eo = add nuw nsw i64 %i.en, %indvars.iv45.i
  %i.ep = mul nuw nsw i64 %i.eo, %i.dy
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.168, i64 %i.em ; 7 uses
  %invariant.gep52.i = getelementptr inbounds nuw i8, ptr %.058, i64 %i.ep ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check165, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load = load <16 x i8>, ptr %i.eq, align 1, !tbaa !15, !alias.scope !389
  %wide.load166 = load <16 x i8>, ptr %i.er, align 1, !tbaa !15, !alias.scope !389
  %i.es = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <16 x i8> %wide.load, ptr %i.es, align 1, !tbaa !15, !alias.scope !392, !noalias !389
  store <16 x i8> %wide.load166, ptr %i.et, align 1, !tbaa !15, !alias.scope !392, !noalias !389
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !394

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index169 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next171, %vec.epilog.vector.body ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index169
  %wide.load170 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !15, !alias.scope !389
  %i.ew = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %index169
  store <4 x i8> %wide.load170, ptr %i.ew, align 1, !tbaa !15, !alias.scope !392, !noalias !389
  %index.next171 = add nuw i64 %index169, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next171, %n.vec168
  br i1 %i.ex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !395

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n172, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec168, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.ey = load i8, ptr %gep.i.prol, align 1, !tbaa !15
  %gep53.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.i.prol
  store i8 %i.ey, ptr %gep53.i.prol, align 1, !tbaa !15
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !396

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ez = sub nsw i64 %indvars.iv.i.ph, %i.dy
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge29.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv45.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.dz
  br i1 %exitcond46.not.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.us.us.i, !llvm.loop !260

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv40.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.ea
  br i1 %exitcond41.not.i, label %._crit_edge29.i, label %iter.check, !llvm.loop !261

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.fb = load i8, ptr %gep.i, align 1, !tbaa !15
  %gep53.i = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.i
  store i8 %i.fb, ptr %gep53.i, align 1, !tbaa !15
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.fc = load i8, ptr %gep.i.1, align 1, !tbaa !15
  %gep53.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.next.i
  store i8 %i.fc, ptr %gep53.i.1, align 1, !tbaa !15
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fd = load i8, ptr %gep.i.2, align 1, !tbaa !15
  %gep53.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.next.i.1
  store i8 %i.fd, ptr %gep53.i.2, align 1, !tbaa !15
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fe = load i8, ptr %gep.i.3, align 1, !tbaa !15
  %gep53.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep52.i, i64 %indvars.iv.next.i.2
  store i8 %i.fe, ptr %gep53.i.3, align 1, !tbaa !15
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.dy
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !397

_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit: ; preds = %._crit_edge29.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %.preheader26.lr.ph.i
  %i.ff = load i32, ptr %i.bg, align 4, !tbaa !73
  %.not79140 = icmp sgt i32 %i.ff, 0
  br i1 %.not79140, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.r

bb.q:                                             ; preds = %bb.s
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fh = load i32, ptr %i.bg, align 4, !tbaa !73
  %i.fi = sext i32 %i.fh to i64
  %.not79 = icmp slt i64 %indvars.iv.next, %i.fi
  br i1 %.not79, label %bb.r, label %.critedge, !llvm.loop !398

bb.r:                                             ; preds = %.lr.ph, %bb.q
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.q ] ; 3 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !34
  %i.fk = mul i64 %i.dh, %indvars.iv
  %i.fl = getelementptr inbounds nuw i8, ptr %.058, i64 %i.fk
  %i.fm = trunc i64 %indvars.iv to i16
  %i.fn = invoke i64 @TIFFWriteTile(ptr noundef %i.fj, ptr noundef %i.fl, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i16 noundef zeroext %i.fm)
          to label %bb.s unwind label %bb.w

bb.s:                                             ; preds = %bb.r
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.t, label %bb.q

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.u unwind label %bb.x

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.fp = load i32, ptr %i.i, align 8, !tbaa !139
  %i.fq = add nsw i32 %i.fp, %i.aw
  store i32 %i.fq, ptr %i.a, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.fr = load i32, ptr %i.p, align 4, !tbaa !267
  %i.fs = add nsw i32 %i.fr, %i.ay
  store i32 %i.fs, ptr %i.b, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ft = load i32, ptr %i.w, align 8, !tbaa !322
  %i.fu = add nsw i32 %i.ft, %i.ba
  store i32 %i.fu, ptr %i.c, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !16
  %.not74 = icmp eq i64 %i.fw, 0
  %i.fx = load ptr, ptr %13, align 8
  %spec.select = select i1 %.not74, ptr @.str.86, ptr %i.fx
  store ptr %spec.select, ptr %i.d, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.91, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.v unwind label %bb.y

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.fy = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.v
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !15
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %.not.i99 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i99, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

bb.w:                                             ; preds = %bb.r
  %i.gd = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.x:                                             ; preds = %bb.t
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

bb.y:                                             ; preds = %bb.u
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.gg = load ptr, ptr %13, align 8, !tbaa !13   ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100: ; preds = %bb.y
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !15
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100, %bb.x
  %.pn75 = phi { ptr, i32 } [ %i.ge, %bb.x ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i100 ], [ %i.gf, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  br label %bb.z

bb.z:                                             ; preds = %bb.w, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn75.pn.pn = phi { ptr, i32 } [ %i.gd, %bb.w ], [ %.pn75, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ] ; 2 uses
  %.not.i103 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i103, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i104

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i104: ; preds = %bb.z
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit105

bb.aa:                                            ; preds = %bb.l
  %i.gl = load i32, ptr %i.bv, align 4, !tbaa !125
  %i.gm = load i8, ptr %i.bx, align 1, !tbaa !126
  %i.gn = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bu) #34
  %i.go = load ptr, ptr %i.bb, align 8, !tbaa !100 ; 3 uses
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !100
  %i.gr = icmp ne ptr %i.go, %i.gq
  %.not.i108 = icmp eq ptr %.168, %i.go
  %or.cond.i109 = and i1 %.not.i108, %i.gr
  br i1 %or.cond.i109, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit112, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.gs = zext i8 %i.gm to i64
  %narrow.i106 = call i32 @llvm.smax.i32(i32 %i.gl, i32 1)
  %spec.select.i107 = zext nneg i32 %narrow.i106 to i64
  %i.gt = mul i64 %i.bj, %i.gs
  %i.gu = mul i64 %i.gt, %i.gn
  %i.gv = mul i64 %i.gu, %spec.select.i107
  %i.gw = getelementptr inbounds nuw i8, ptr %.168, i64 %i.gv
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef %.168, ptr noundef %i.gw)
          to label %.noexc111 unwind label %bb.h

.noexc111:                                        ; preds = %bb.ab
  %.pre.i110 = load ptr, ptr %i.bb, align 8, !tbaa !76
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit112

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit112: ; preds = %.noexc111, %bb.aa
  %i.gx = phi ptr [ %i.go, %bb.aa ], [ %.pre.i110, %.noexc111 ]
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !34
  %i.ha = invoke i64 @TIFFWriteTile(ptr noundef %i.gz, ptr noundef %i.gx, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i16 noundef zeroext 0)
          to label %bb.ac unwind label %bb.h

bb.ac:                                            ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit112
  %i.hb = icmp slt i64 %i.ha, 0
  br i1 %i.hb, label %bb.ad, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit121

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %14, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #34
  %i.hc = load i32, ptr %i.i, align 8, !tbaa !139
  %i.hd = add nsw i32 %i.hc, %i.aw
  store i32 %i.hd, ptr %i.e, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #34
  %i.he = load i32, ptr %i.p, align 4, !tbaa !267
  %i.hf = add nsw i32 %i.he, %i.ay
  store i32 %i.hf, ptr %i.f, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #34
  %i.hg = load i32, ptr %i.w, align 8, !tbaa !322
  %i.hh = add nsw i32 %i.hg, %i.ba
  store i32 %i.hh, ptr %i.g, align 4, !tbaa !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #34
  %i.hi = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.hj = load i64, ptr %i.hi, align 8, !tbaa !16
  %.not71 = icmp eq i64 %i.hj, 0
  %i.hk = load ptr, ptr %14, align 8
  %spec.select139 = select i1 %.not71, ptr @.str.86, ptr %i.hk
  store ptr %spec.select139, ptr %i.h, align 8, !tbaa !100
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.91, ptr noundef nonnull align 4 dereferenceable(4) %i.e, ptr noundef nonnull align 4 dereferenceable(4) %i.f, ptr noundef nonnull align 4 dereferenceable(4) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  %i.hl = load ptr, ptr %14, align 8, !tbaa !13   ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.hn = icmp eq ptr %i.hl, %i.hm
  br i1 %i.hn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i113: ; preds = %bb.af
end_hunk_2
begin_hunk_3_@_ZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #34
  br label %bb.ce

bb.ce:                                            ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit124, %bb.ab
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit124 ], [ %i.fm, %bb.ab ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #34
  call void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %19) #34
  br label %bb.cf

bb.cf:                                            ; preds = %bb.ce, %bb.aa
  %.pn84.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn84.pn.pn.pn.pn, %bb.ce ], [ %i.fl, %bb.aa ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #34
  br label %bb.cg

bb.cg:                                            ; preds = %bb.u, %bb.cf, %bb.t
  %.pn84.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.es, %bb.t ], [ %.pn84.pn.pn.pn.pn.pn, %bb.cf ], [ %i.et, %bb.u ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn.pn.pn.pn

_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread: ; preds = %bb.g, %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, %.critedge
  %.9 = phi i1 [ false, %bb.g ], [ %.7, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit ], [ %i.er, %.critedge ], [ false, %bb.f ], [ false, %bb.e ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  call void @_ZN11OpenImageIO4v3_13pvt11LoggedTimerD2Ev(ptr noundef nonnull align 8 dead_on_return(68) dereferenceable(68) %16) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #34
  ret i1 %.9
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nounwind
declare noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec10tile_bytesEb(ptr noundef nonnull align 8 dereferenceable(160), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EEC2EmRKS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr noundef nonnull align 1 dereferenceable(1) %2) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp ugt i64 %1, 384307168202282325
  br i1 %i.a, label %bb.b, label %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.163) #35
  unreachable

_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit: ; preds = %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i = icmp eq i64 %1, 0
  br i1 %.not.i.i.i, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EEC2EmRKS3_.exit.thread, label %.lr.ph.preheader.i.i.i.i

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EEC2EmRKS3_.exit.thread: ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  br label %bb.c

.lr.ph.preheader.i.i.i.i:                         ; preds = %_ZNSt6vectorIS_IhSaIhEESaIS1_EE17_S_check_init_lenEmRKS2_.exit
  %i.b = mul nuw nsw i64 %1, 24                   ; 3 uses
  %i.c = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.b) #38 ; 4 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !444
  %i.d = getelementptr inbounds nuw [24 x i8], ptr %i.c, i64 %1
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.c, i8 0, i64 %i.b, i1 false)
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.b
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph.preheader.i.i.i.i, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EEC2EmRKS3_.exit.thread
  %.sink = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EEC2EmRKS3_.exit.thread ], [ %i.d, %.lr.ph.preheader.i.i.i.i ]
  %.0.lcssa.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EEC2EmRKS3_.exit.thread ], [ %scevgep.i.i.i.i, %.lr.ph.preheader.i.i.i.i ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sink, ptr %i.f, align 8, !tbaa !447
  store ptr %.0.lcssa.i.i.i.i, ptr %i.e, align 8, !tbaa !448
  ret void
}

declare i64 @TIFFWriteRawTile(ptr noundef, i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5, ptr noundef nonnull align 8 dereferenceable(8) %6) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.243", align 16 ; 8 uses
  %8 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !449
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #34, !noalias !449
  tail call void @llvm.experimental.noalias.scope.decl(metadata !452)
  %i.b = load i32, ptr %2, align 4, !tbaa !3, !noalias !455
  store i32 %i.b, ptr %7, align 16, !tbaa !15, !alias.scope !452, !noalias !449
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !455
  store i32 %i.d, ptr %i.c, align 16, !tbaa !15, !alias.scope !452, !noalias !449
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.f = load i32, ptr %4, align 4, !tbaa !3, !noalias !455
  store i32 %i.f, ptr %i.e, align 16, !tbaa !15, !alias.scope !452, !noalias !449
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.h = load i32, ptr %5, align 4, !tbaa !3, !noalias !455
  store i32 %i.h, ptr %i.g, align 16, !tbaa !15, !alias.scope !452, !noalias !449
  %i.i = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.j = load ptr, ptr %6, align 8, !tbaa !100, !noalias !455
  store ptr %i.j, ptr %i.i, align 16, !tbaa !15, !alias.scope !452, !noalias !449
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr nonnull %1, i64 %i.a, i64 790801, ptr nonnull %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #34, !noalias !449
  %i.k = load ptr, ptr %9, align 8, !tbaa !13
  store ptr %i.k, ptr %8, align 8, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.n = load i64, ptr %i.m, align 8, !tbaa !16
  store i64 %i.n, ptr %i.l, align 8, !tbaa !22
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %8)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %9, align 8, !tbaa !13     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.r = load i64, ptr %i.p, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.t = landingpad { ptr, i32 }
          cleanup
  %i.u = load ptr, ptr %9, align 8, !tbaa !13     ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7: ; preds = %bb.c
  %i.x = load i64, ptr %i.v, align 8, !tbaa !15
  %i.y = add i64 %i.x, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #34
  resume { ptr, i32 } %i.t
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZNSt6vectorIS_IhSaIhEESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !444    ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !448  ; 2 uses
  %.not4.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.05.i.i = phi ptr [ %i.j, %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.d = load ptr, ptr %.05.i.i, align 8, !tbaa !76 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !77
  %i.g = ptrtoint ptr %i.f to i64
  %i.h = ptrtoint ptr %i.d to i64
  %i.i = sub i64 %i.g, %i.h
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.i) #36
  br label %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i

_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i:    ; preds = %bb.b, %.lr.ph.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 24 ; 2 uses
  %.not.i.i = icmp eq ptr %i.j, %i.c
  br i1 %.not.i.i, label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, label %.lr.ph.i.i, !llvm.loop !456

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split: ; preds = %_ZSt8_DestroyISt6vectorIhSaIhEEEvPT_.exit.i.i
  %.pr = load ptr, ptr %0, align 8, !tbaa !444
  br label %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit

_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split, %bb.a
  %i.k = phi ptr [ %.pr, %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exitthread-pre-split ], [ %i.a, %bb.a ] ; 3 uses
  %.not.i.i1 = icmp eq ptr %i.k, null
  br i1 %.not.i.i1, label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !447
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #36
  br label %_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit

_ZNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPSt6vectorIhSaIhEES2_EvT_S4_RSaIT0_E.exit, %bb.c
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18bit_packIhEEvNS0_4spanIKT_Lm18446744073709551615EEEPvi(ptr %0, i64 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not = icmp ne i64 %1, 0
  %i.a = icmp sgt i32 %3, 0
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %.lr.ph.i.preheader.us, label %._crit_edge.split

._crit_edge.split:                                ; preds = %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us, %bb.a
  ret void

.lr.ph.i.preheader.us:                            ; preds = %bb.a, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us
  %.014.us = phi i64 [ %i.u, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us ], [ 0, %bb.a ] ; 2 uses
  %.0713.us = phi i32 [ %.2.us, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us ], [ 0, %bb.a ]
  %.0812.us = phi ptr [ %.210.us, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us ], [ %2, %bb.a ]
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 %.014.us
  %i.c = load i8, ptr %i.b, align 1, !tbaa !15
  %i.d = zext i8 %i.c to i32
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %bb.b
  %.19.us = phi ptr [ %.210.us, %bb.b ], [ %.0812.us, %.lr.ph.i.preheader.us ] ; 3 uses
  %.1.us = phi i32 [ %.2.us, %bb.b ], [ %.0713.us, %.lr.ph.i.preheader.us ] ; 3 uses
  %.02529.i.us = phi i32 [ %i.g, %bb.b ], [ %i.d, %.lr.ph.i.preheader.us ]
  %.02628.i.us = phi i32 [ %i.r, %bb.b ], [ %3, %.lr.ph.i.preheader.us ] ; 6 uses
  %i.e = shl nsw i32 -1, %.02628.i.us
  %i.f = xor i32 %i.e, -1
  %i.g = and i32 %.02529.i.us, %i.f               ; 3 uses
  %i.h = icmp eq i32 %.1.us, 0
  br i1 %i.h, label %bb.b, label %.lr.ph.i.us._crit_edge

.lr.ph.i.us._crit_edge:                           ; preds = %.lr.ph.i.us
  %.pre = load i8, ptr %.19.us, align 1, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us, %.lr.ph.i.us._crit_edge
  %i.i = phi i8 [ %.pre, %.lr.ph.i.us._crit_edge ], [ 0, %.lr.ph.i.us ]
  %i.j = sub nsw i32 8, %.1.us                    ; 4 uses
  %.not.i.us = icmp sgt i32 %.02628.i.us, %i.j
  %i.k = sub nsw i32 %i.j, %.02628.i.us
  %i.l = shl i32 %i.g, %i.k
  %i.m = sub nsw i32 %.02628.i.us, %i.j
  %i.n = lshr i32 %i.g, %i.m
  %.024.i.us = select i1 %.not.i.us, i32 %i.n, i32 %i.l
  %.0.i.us = tail call i32 @llvm.smin.i32(i32 %.02628.i.us, i32 %i.j) ; 2 uses
  %i.o = trunc i32 %.024.i.us to i8
  %i.p = or i8 %i.i, %i.o
  store i8 %i.p, ptr %.19.us, align 1, !tbaa !15
  %i.q = add nsw i32 %.0.i.us, %.1.us             ; 2 uses
  %i.r = sub nsw i32 %.02628.i.us, %.0.i.us       ; 2 uses
  %i.s = icmp eq i32 %i.q, 8                      ; 2 uses
  %.210.idx.us = zext i1 %i.s to i64
  %.210.us = getelementptr inbounds nuw i8, ptr %.19.us, i64 %.210.idx.us ; 2 uses
  %.2.us = select i1 %i.s, i32 0, i32 %i.q        ; 2 uses
  %i.t = icmp sgt i32 %i.r, 0
  br i1 %i.t, label %.lr.ph.i.us, label %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us, !llvm.loop !281

_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us: ; preds = %bb.b
  %i.u = add nuw i64 %.014.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.u, %1
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i.preheader.us, !llvm.loop !292
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN11OpenImageIO4v3_18bit_packIjEEvNS0_4spanIKT_Lm18446744073709551615EEEPvi(ptr %0, i64 %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 {
bb.a:
  %.not = icmp ne i64 %1, 0
  %i.a = icmp sgt i32 %3, 0
  %or.cond = and i1 %.not, %i.a
  br i1 %or.cond, label %.lr.ph.i.preheader.us, label %._crit_edge.split

._crit_edge.split:                                ; preds = %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us, %bb.a
  ret void

.lr.ph.i.preheader.us:                            ; preds = %bb.a, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us
  %.014.us = phi i64 [ %i.t, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us ], [ 0, %bb.a ] ; 2 uses
  %.0713.us = phi i32 [ %.2.us, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us ], [ 0, %bb.a ]
  %.0812.us = phi ptr [ %.210.us, %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us ], [ %2, %bb.a ]
  %i.b = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.014.us
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  br label %.lr.ph.i.us

.lr.ph.i.us:                                      ; preds = %.lr.ph.i.preheader.us, %bb.b
  %.19.us = phi ptr [ %.210.us, %bb.b ], [ %.0812.us, %.lr.ph.i.preheader.us ] ; 3 uses
  %.1.us = phi i32 [ %.2.us, %bb.b ], [ %.0713.us, %.lr.ph.i.preheader.us ] ; 3 uses
  %.02529.i.us = phi i32 [ %i.f, %bb.b ], [ %i.c, %.lr.ph.i.preheader.us ]
  %.02628.i.us = phi i32 [ %i.q, %bb.b ], [ %3, %.lr.ph.i.preheader.us ] ; 6 uses
  %i.d = shl nsw i32 -1, %.02628.i.us
  %i.e = xor i32 %i.d, -1
  %i.f = and i32 %.02529.i.us, %i.e               ; 3 uses
  %i.g = icmp eq i32 %.1.us, 0
  br i1 %i.g, label %bb.b, label %.lr.ph.i.us._crit_edge

.lr.ph.i.us._crit_edge:                           ; preds = %.lr.ph.i.us
  %.pre = load i8, ptr %.19.us, align 1, !tbaa !15
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.us, %.lr.ph.i.us._crit_edge
  %i.h = phi i8 [ %.pre, %.lr.ph.i.us._crit_edge ], [ 0, %.lr.ph.i.us ]
  %i.i = sub nsw i32 8, %.1.us                    ; 4 uses
  %.not.i.us = icmp sgt i32 %.02628.i.us, %i.i
  %i.j = sub nsw i32 %i.i, %.02628.i.us
  %i.k = shl i32 %i.f, %i.j
  %i.l = sub nsw i32 %.02628.i.us, %i.i
  %i.m = lshr i32 %i.f, %i.l
  %.024.i.us = select i1 %.not.i.us, i32 %i.m, i32 %i.k
  %.0.i.us = tail call i32 @llvm.smin.i32(i32 %.02628.i.us, i32 %i.i) ; 2 uses
  %i.n = trunc i32 %.024.i.us to i8
  %i.o = or i8 %i.h, %i.n
  store i8 %i.o, ptr %.19.us, align 1, !tbaa !15
  %i.p = add nsw i32 %.0.i.us, %.1.us             ; 2 uses
  %i.q = sub nsw i32 %.02628.i.us, %.0.i.us       ; 2 uses
  %i.r = icmp eq i32 %i.p, 8                      ; 2 uses
  %.210.idx.us = zext i1 %i.r to i64
  %.210.us = getelementptr inbounds nuw i8, ptr %.19.us, i64 %.210.idx.us ; 2 uses
  %.2.us = select i1 %i.r, i32 0, i32 %i.p        ; 2 uses
  %i.s = icmp sgt i32 %i.q, 0
  br i1 %i.s, label %.lr.ph.i.us, label %_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us, !llvm.loop !281

_ZN11OpenImageIO4v3_120bitstring_add_n_bitsIhEEvRPT_Riji.exit.loopexit.us: ; preds = %bb.b
  %i.t = add nuw i64 %.014.us, 1                  ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %1
  br i1 %exitcond.not, label %._crit_edge.split, label %.lr.ph.i.preheader.us, !llvm.loop !457
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJNS0_8TypeDescEjEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(8) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.fmt::v12::detail::format_arg_store.244", align 16 ; 6 uses
  %5 = alloca %"class.OpenImageIO::v3_1::basic_string_view", align 8 ; 3 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #34
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !458
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34, !noalias !458
  tail call void @llvm.experimental.noalias.scope.decl(metadata !461)
  store ptr %2, ptr %4, align 16, !tbaa !15, !noalias !458
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr @_ZN3fmt3v126detail5valueINS0_7contextEE13format_customIN11OpenImageIO4v3_18TypeDescEEEvPvRNS0_13parse_contextIcEERS3_, ptr %i.b, align 8, !tbaa !15, !noalias !458
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.d = load i32, ptr %3, align 4, !tbaa !3, !noalias !464
  store i32 %i.d, ptr %i.c, align 16, !tbaa !15, !alias.scope !461, !noalias !458
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %6, ptr nonnull %1, i64 %i.a, i64 47, ptr nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34, !noalias !458
  %i.e = load ptr, ptr %6, align 8, !tbaa !13
  store ptr %i.e, ptr %5, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16
  store i64 %i.h, ptr %i.f, align 8, !tbaa !22
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.j, align 8, !tbaa !15
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.i, i64 noundef %i.m) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %6, align 8, !tbaa !13     ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4: ; preds = %bb.c
  %i.r = load i64, ptr %i.p, align 8, !tbaa !15
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit6: ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #34
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef ptr @_ZNK11OpenImageIO4v3_110TIFFOutput11format_nameEv(ptr noundef nonnull align 8 dereferenceable(336) %0) unnamed_addr #4 align 2 {
bb.a:
  ret ptr @.str.3
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput4openERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEiPKNS0_9ImageSpecE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !23
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(160) %3, i32 noundef 0)
  ret i1 %i.d
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput14write_scanlineEiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_scanlinesEiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10write_tileEiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_tilesEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescERKNS0_10image_spanIKSt4byteLm4EEE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef nonnull align 8 dereferenceable(60)) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput20write_deep_scanlinesEiiiRKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_tilesEiiiiiiRKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef nonnull align 1) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput16write_deep_imageERKNS0_8DeepDataE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef nonnull align 1) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput13set_thumbnailERKNS0_8ImageBufE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 1 %1) unnamed_addr #4 align 2 {
bb.a:
  ret i1 false
}

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput15write_rectangleEiiiiiiNS0_8TypeDescEPKvlll(ptr noundef nonnull align 8 dereferenceable(184), i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11write_imageENS0_8TypeDescEPKvlllPFbPvfES5_(ptr noundef nonnull align 8 dereferenceable(184), i64, ptr noundef, i64 noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput10copy_imageEPNS0_10ImageInputE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i32 @_ZN11OpenImageIO4v3_111ImageOutput14send_to_outputEPKcz(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef, ...) unnamed_addr #1

declare noundef zeroext i1 @_ZN11OpenImageIO4v3_111ImageOutput11set_ioproxyEPNS0_10Filesystem7IOProxyE(ptr noundef nonnull align 8 dereferenceable(184), ptr noundef) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput8heapsizeEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

declare noundef i64 @_ZNK11OpenImageIO4v3_111ImageOutput9footprintEv(ptr noundef nonnull align 8 dereferenceable(184)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @__cxx_global_var_init() #13 section ".text.startup" {
bb.a:
  %i.a = load i8, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr @_ZGVN3fmt3v1212format_facetISt6localeE2idE, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #14

declare noundef ptr @_ZN11OpenImageIO4v3_17ustring11make_uniqueENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef dead_on_return) local_unnamed_addr #1

declare void @_ZN11OpenImageIO4v3_111ImageOutput13ioproxy_clearEv(ptr noundef nonnull align 8 dereferenceable(184)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN3fmt3v126vprintEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef %0, ptr %1, i64 %2, i64 %3, ptr %4) local_unnamed_addr #9 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.fmt::v12::detail::file_print_buffer", align 8 ; 10 uses
  %i.a = load i32, ptr %0, align 8, !tbaa !465
  %i.b = and i32 %i.a, 2
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %.critedge

.critedge:                                        ; preds = %bb.a
  tail call void @_ZN3fmt3v1215vprint_bufferedEP8_IO_FILENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr noundef nonnull %0, ptr %1, i64 %2, i64 %3, ptr %4)
  br label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #34
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 0, ptr %i.d, align 8
  store ptr @_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvE4growERNS1_6bufferIcEEm, ptr %i.e, align 8, !tbaa !470
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 3 uses
  store ptr %0, ptr %i.f, align 8, !tbaa !472
  tail call void @flockfile(ptr noundef nonnull %0) #34
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !474  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !475
  %i.k = icmp ult ptr %i.h, %i.j
  br i1 %i.k, label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit, label %putc_unlocked.exit.i.i

putc_unlocked.exit.i.i:                           ; preds = %bb.b
  %i.l = tail call i32 @__overflow(ptr noundef nonnull %0, i32 noundef 0), !inline_history !476 ; 0 uses
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !474
  %i.n = getelementptr inbounds i8, ptr %i.m, i64 -1 ; 2 uses
  store ptr %i.n, ptr %i.g, align 8, !tbaa !474
  br label %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit

_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit: ; preds = %bb.b, %putc_unlocked.exit.i.i
  %i.o = phi ptr [ %i.h, %bb.b ], [ %i.n, %putc_unlocked.exit.i.i ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !477
  %i.s = ptrtoint ptr %i.r to i64
  %i.t = ptrtoint ptr %i.o to i64
  %i.u = sub i64 %i.s, %i.t
  store ptr %i.o, ptr %5, align 8, !tbaa !478
  store i64 %i.u, ptr %i.p, align 8, !tbaa !479
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(32) %5, ptr %1, i64 %2, i64 %3, ptr %4, ptr null)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %_ZN3fmt3v126detail17file_print_bufferI8_IO_FILEvEC2EPS3_.exit
  %i.v = load i64, ptr %i.d, align 8, !tbaa !480
  %i.w = load ptr, ptr %i.f, align 8, !tbaa !472  ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 40 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !474
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.v ; 2 uses
  store ptr %i.z, ptr %i.x, align 8, !tbaa !474
  %i.aa = load i32, ptr %i.w, align 8, !tbaa !465
  %i.ab = and i32 %i.aa, 512
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.thread.i, label %_ZNK3fmt3v126detail10glibc_fileI8_IO_FILEE11needs_flushEv.exit.i
end_hunk_3
begin_hunk_4_@_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE:bb.a
  %i.l = add i64 %i.k, 1                          ; 3 uses
  %i.m = load i64, ptr %i.i, align 8, !tbaa !479
  %i.n = icmp ugt i64 %i.l, %i.m
  br i1 %i.n, label %bb.d, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !tbaa !470
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.l), !inline_history !615
  %.pre.i.i.i = load i64, ptr %i.h, align 8, !tbaa !480 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.d, %bb.c
  %.pre-phi.i.i.i = phi i64 [ %i.l, %bb.c ], [ %.pre2.i.i.i, %bb.d ]
  %i.p = phi i64 [ %i.k, %bb.c ], [ %.pre.i.i.i, %bb.d ]
  %i.q = load ptr, ptr %0, align 8, !tbaa !478
  store i64 %.pre-phi.i.i.i, ptr %i.h, align 8, !tbaa !480
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !15
  %i.s = add nuw i64 %.04.i, 1                    ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.s, %1
  br i1 %exitcond.not.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %bb.c, !llvm.loop !616

bb.e:                                             ; preds = %bb.a
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.d ; 2 uses
  %.not31.i.i = icmp eq i32 %i.c, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = ptrtoint ptr %i.t to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 24
  br i1 %.not31.i.i, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i.preheader

.lr.ph34.i.i.preheader:                           ; preds = %.lr.ph
  %.pre.i.i.pre = load i64, ptr %i.u, align 8, !tbaa !480
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %.lr.ph34.i.i.preheader, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit
  %.pre.i.i = phi i64 [ %i.be, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ %.pre.i.i.pre, %.lr.ph34.i.i.preheader ]
  %.018 = phi i64 [ %i.bw, %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit ], [ 0, %.lr.ph34.i.i.preheader ]
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.y = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.be, %._crit_edge.i.i ] ; 3 uses
  %.02532.i.i = phi ptr [ %i.f, %.lr.ph34.i.i ], [ %i.bf, %._crit_edge.i.i ] ; 9 uses
  %i.z = load i64, ptr %i.v, align 8, !tbaa !479
  %i.aa = sub i64 %i.z, %i.y
  %i.ab = ptrtoint ptr %.02532.i.i to i64         ; 2 uses
  %i.ac = sub i64 %i.w, %i.ab                     ; 4 uses
  %i.ad = icmp ult i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ae = load ptr, ptr %i.x, align 8, !tbaa !470
  %i.af = add i64 %i.ac, %i.y
  tail call void %i.ae(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.af), !inline_history !570
  %i.ag = load i64, ptr %i.u, align 8, !tbaa !480 ; 2 uses
  %i.ah = load i64, ptr %i.v, align 8, !tbaa !479
  %i.ai = sub i64 %i.ah, %i.ag
  %i.aj = tail call i64 @llvm.umin.i64(i64 %i.ac, i64 %i.ai)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.027.i.i = phi i64 [ %i.ag, %bb.g ], [ %i.y, %bb.f ] ; 3 uses
  %.026.i.i = phi i64 [ %i.aj, %bb.g ], [ %i.ac, %bb.f ] ; 13 uses
  %i.ak = load ptr, ptr %0, align 8, !tbaa !478   ; 2 uses
  %i.al = ptrtoaddr ptr %i.ak to i64
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.027.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.026.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.h
  %min.iters.check = icmp ult i64 %.026.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.an = add i64 %.027.i.i, %i.al
  %i.ao = sub i64 %i.an, %i.ab
  %diff.check = icmp ult i64 %i.ao, 32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check32 = icmp ult i64 %.026.i.i, 32
  br i1 %min.iters.check32, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %.026.i.i, 28
  %n.vec = and i64 %.026.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %wide.load = load <16 x i8>, ptr %i.ap, align 1, !tbaa !15
  %wide.load33 = load <16 x i8>, ptr %i.aq, align 1, !tbaa !15
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 %index ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  store <16 x i8> %wide.load, ptr %i.ar, align 1, !tbaa !15
  store <16 x i8> %wide.load33, ptr %i.as, align 1, !tbaa !15
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.at = icmp eq i64 %index.next, %n.vec
  br i1 %i.at, label %middle.block, label %vector.body, !llvm.loop !617

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.026.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !256

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec35 = and i64 %.026.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index36 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next38, %vec.epilog.vector.body ] ; 3 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %index36
  %wide.load37 = load <4 x i8>, ptr %i.au, align 1, !tbaa !15
  %i.av = getelementptr inbounds nuw i8, ptr %i.am, i64 %index36
  store <4 x i8> %wide.load37, ptr %i.av, align 1, !tbaa !15
  %index.next38 = add nuw i64 %index36, 4         ; 2 uses
  %i.aw = icmp eq i64 %index.next38, %n.vec35
  br i1 %i.aw, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !618

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n39 = icmp eq i64 %.026.i.i, %n.vec35
  br i1 %cmp.n39, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec35, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.026.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ba, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i.prol
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !15
  %i.az = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i.prol
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !15
  %i.ba = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !619

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ba, %.lr.ph.i.i.prol ]
  %i.bb = sub i64 %.030.i.i.ph, %.026.i.i
  %i.bc = icmp ugt i64 %i.bb, -4
  br i1 %i.bc, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.u, align 8, !tbaa !480
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.h
  %i.bd = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.027.i.i, %bb.h ]
  %i.be = add i64 %i.bd, %.026.i.i                ; 3 uses
  store i64 %i.be, ptr %i.u, align 8, !tbaa !480
  %i.bf = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.026.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, %i.t
  br i1 %.not.i.i, label %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, label %bb.f, !llvm.loop !549

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bv, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %.030.i.i
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !15
  %i.bi = getelementptr inbounds nuw i8, ptr %i.am, i64 %.030.i.i
  store i8 %i.bh, ptr %i.bi, align 1, !tbaa !15
  %i.bj = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1, !tbaa !15
  %i.bm = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bj
  store i8 %i.bl, ptr %i.bm, align 1, !tbaa !15
  %i.bn = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.bn
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !15
  %i.bq = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.bn
  store i8 %i.bp, ptr %i.bq, align 1, !tbaa !15
  %i.br = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.02532.i.i, i64 %i.br
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !15
  %i.bu = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.br
  store i8 %i.bt, ptr %i.bu, align 1, !tbaa !15
  %i.bv = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bv, %.026.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !620

_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit: ; preds = %._crit_edge.i.i
  %i.bw = add nuw i64 %.018, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.bw, %1
  br i1 %exitcond.not, label %_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit, label %.lr.ph34.i.i, !llvm.loop !621

_ZN3fmt3v126detail6fill_nINS0_14basic_appenderIcEEmcEET_S5_T0_RKT1_.exit: ; preds = %_ZN3fmt3v126detail4copyIcPKcNS0_14basic_appenderIcEETnNSt9enable_ifIXaasr23is_back_insert_iteratorIT1_EE5valuesr41has_back_insert_iterator_container_appendIS8_T0_EE5valueEiE4typeELi0EEES8_S9_S9_S8_.exit.loopexit, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.e, %.lr.ph, %bb.b
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail18write_escaped_charIcNS0_14basic_appenderIcEEEET0_S5_T_(ptr %0, i8 noundef signext %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1 x i8], align 1                 ; 5 uses
  %2 = alloca %"struct.fmt::v12::detail::find_escape_result", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i8 %1, ptr %i.a, align 1, !tbaa !15
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !480  ; 2 uses
  %i.d = add i64 %i.c, 1                          ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !479
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.b, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !470
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.d), !inline_history !544
  %.pre.i.i = load i64, ptr %i.b, align 8, !tbaa !480 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.a, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.d, %bb.a ], [ %.pre2.i.i, %bb.b ]
  %i.j = phi i64 [ %i.c, %bb.a ], [ %.pre.i.i, %bb.b ]
  %i.k = load ptr, ptr %0, align 8, !tbaa !478
  store i64 %.pre-phi.i.i, ptr %i.b, align 8, !tbaa !480
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.j
  store i8 39, ptr %i.l, align 1, !tbaa !15
  %i.m = sext i8 %1 to i32                        ; 2 uses
  %i.n = icmp ult i8 %1, 32
  br i1 %i.n, label %_ZN3fmt3v126detail12needs_escapeEj.exit, label %switch.early.test.i

switch.early.test.i:                              ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit
  switch i8 %1, label %bb.c [
    i8 127, label %_ZN3fmt3v126detail12needs_escapeEj.exit
    i8 92, label %_ZN3fmt3v126detail12needs_escapeEj.exit
    i8 34, label %_ZN3fmt3v126detail12needs_escapeEj.exit
  ]

bb.c:                                             ; preds = %switch.early.test.i
  %i.o = tail call noundef zeroext i1 @_ZN3fmt3v126detail12is_printableEj(i32 noundef %i.m)
  %i.p = xor i1 %i.o, true
  br label %_ZN3fmt3v126detail12needs_escapeEj.exit

_ZN3fmt3v126detail12needs_escapeEj.exit:          ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %switch.early.test.i, %switch.early.test.i, %switch.early.test.i, %bb.c
  %.0.i = phi i1 [ %i.p, %bb.c ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %switch.early.test.i ], [ true, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit ]
  %i.q = icmp ne i8 %1, 34
  %or.cond = and i1 %i.q, %.0.i
  %i.r = icmp eq i8 %1, 39
  %or.cond5 = or i1 %i.r, %or.cond
  br i1 %or.cond5, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  store ptr %i.a, ptr %2, align 8, !tbaa !622
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store ptr %i.t, ptr %i.s, align 8, !tbaa !624
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.m, ptr %i.u, align 8, !tbaa !625
  %i.v = call ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr nonnull %0, ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34
  br label %bb.g

bb.e:                                             ; preds = %_ZN3fmt3v126detail12needs_escapeEj.exit
  %i.w = load i64, ptr %i.b, align 8, !tbaa !480  ; 2 uses
  %i.x = add i64 %i.w, 1                          ; 3 uses
  %i.y = load i64, ptr %i.e, align 8, !tbaa !479
  %i.z = icmp ugt i64 %i.x, %i.y
  br i1 %i.z, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !470
  tail call void %i.ab(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.x), !inline_history !544
  %.pre.i.i15 = load i64, ptr %i.b, align 8, !tbaa !480 ; 2 uses
  %.pre2.i.i16 = add i64 %.pre.i.i15, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17

_ZN3fmt3v1214basic_appenderIcEaSEc.exit17:        ; preds = %bb.e, %bb.f
  %.pre-phi.i.i14 = phi i64 [ %i.x, %bb.e ], [ %.pre2.i.i16, %bb.f ]
  %i.ac = phi i64 [ %i.w, %bb.e ], [ %.pre.i.i15, %bb.f ]
  %i.ad = load ptr, ptr %0, align 8, !tbaa !478
  store i64 %.pre-phi.i.i14, ptr %i.b, align 8, !tbaa !480
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ac
  store i8 %1, ptr %i.ae, align 1, !tbaa !15
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17, %bb.d
  %.sroa.025.0 = phi ptr [ %i.v, %bb.d ], [ %0, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit17 ] ; 6 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 8 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !480 ; 2 uses
  %i.ah = add i64 %i.ag, 1                        ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !479
  %i.ak = icmp ugt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.h, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit22

bb.h:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.025.0, i64 24
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !470
  call void %i.am(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.025.0, i64 noundef %i.ah), !inline_history !544
  %.pre.i.i20 = load i64, ptr %i.af, align 8, !tbaa !480 ; 2 uses
  %.pre2.i.i21 = add i64 %.pre.i.i20, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit22

_ZN3fmt3v1214basic_appenderIcEaSEc.exit22:        ; preds = %bb.g, %bb.h
  %.pre-phi.i.i19 = phi i64 [ %i.ah, %bb.g ], [ %.pre2.i.i21, %bb.h ]
  %i.an = phi i64 [ %i.ag, %bb.g ], [ %.pre.i.i20, %bb.h ]
  %i.ao = load ptr, ptr %.sroa.025.0, align 8, !tbaa !478
  store i64 %.pre-phi.i.i19, ptr %i.af, align 8, !tbaa !480
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.an
  store i8 39, ptr %i.ap, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret ptr %.sroa.025.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail16write_escaped_cpINS0_14basic_appenderIcEEcEET_S5_RKNS1_18find_escape_resultIT0_EE(ptr %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !tbaa !625  ; 8 uses
  switch i32 %i.b, label %bb.j [
    i32 10, label %bb.b
    i32 13, label %bb.d
    i32 9, label %bb.f
    i32 34, label %bb.h
    i32 39, label %bb.h
    i32 92, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !480  ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !479
  %i.h = icmp ugt i64 %i.e, %i.g
  br i1 %i.h, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !470
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.e), !inline_history !544
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !480 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.e, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.k = phi i64 [ %i.d, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.l = load ptr, ptr %0, align 8, !tbaa !478
  store i64 %.pre-phi.i.i, ptr %i.c, align 8, !tbaa !480
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.k
  store i8 92, ptr %i.m, align 1, !tbaa !15
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !480  ; 2 uses
  %i.p = add i64 %i.o, 1                          ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !tbaa !479
  %i.s = icmp ugt i64 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !470
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.p), !inline_history !544
  %.pre.i.i28 = load i64, ptr %i.n, align 8, !tbaa !480 ; 2 uses
  %.pre2.i.i29 = add i64 %.pre.i.i28, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit30

_ZN3fmt3v1214basic_appenderIcEaSEc.exit30:        ; preds = %bb.d, %bb.e
  %.pre-phi.i.i27 = phi i64 [ %i.p, %bb.d ], [ %.pre2.i.i29, %bb.e ]
  %i.v = phi i64 [ %i.o, %bb.d ], [ %.pre.i.i28, %bb.e ]
  %i.w = load ptr, ptr %0, align 8, !tbaa !478
  store i64 %.pre-phi.i.i27, ptr %i.n, align 8, !tbaa !480
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.v
  store i8 92, ptr %i.x, align 1, !tbaa !15
  br label %bb.q

bb.f:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !tbaa !480  ; 2 uses
  %i.aa = add i64 %i.z, 1                         ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !479
  %i.ad = icmp ugt i64 %i.aa, %i.ac
  br i1 %i.ad, label %bb.g, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit35

bb.g:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !470
end_hunk_4
begin_hunk_5_@llvm.umin.i32
!60 = !{!"_ZTSSt11_Tuple_implILm1EJPFvPN11OpenImageIO4v3_111ImageOutput4ImplEEEE", !61, i64 0}
!61 = !{!"_ZTSSt10_Head_baseILm1EPFvPN11OpenImageIO4v3_111ImageOutput4ImplEELb0EE", !10, i64 0}
!62 = !{!"_ZTSSt10_Head_baseILm0EPN11OpenImageIO4v3_111ImageOutput4ImplELb0EE", !63, i64 0}
!63 = !{!"p1 _ZTSN11OpenImageIO4v3_111ImageOutput4ImplE", !10, i64 0}
!64 = !{!"p1 _ZTS4tiff", !10, i64 0}
!65 = !{!"_ZTSSt6vectorIhSaIhEE", !66, i64 0}
!66 = !{!"_ZTSSt12_Vector_baseIhSaIhEE", !67, i64 0}
!67 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE12_Vector_implE", !68, i64 0}
!68 = !{!"_ZTSNSt12_Vector_baseIhSaIhEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!69 = !{!"_ZTSN11OpenImageIO4v3_110spin_mutexE", !70, i64 0}
!70 = !{!"_ZTSSt11atomic_flag", !33, i64 0}
!71 = !{!35, !4, i64 248}
!72 = !{!35, !4, i64 276}
!73 = !{!35, !4, i64 284}
!74 = !{!35, !30, i64 288}
!75 = !{!35, !30, i64 289}
!76 = !{!68, !9, i64 0}
!77 = !{!68, !9, i64 16}
!78 = !{!29, !30, i64 1}
!79 = !{i8 0, i8 2}
!80 = !{}
!81 = !{!29, !9, i64 24}
!82 = !{!29, !12, i64 16}
!83 = !{!84, !84, i64 0}
!84 = !{!"double", !5, i64 0}
!85 = !{!86, !86, i64 0}
!86 = !{!"p1 _ZTS8_IO_FILE", !10, i64 0}
!87 = !{!36, !4, i64 56}
!88 = !{!36, !4, i64 60}
!89 = !{!36, !4, i64 20}
!90 = !{!36, !4, i64 24}
!91 = !{!36, !4, i64 44}
!92 = !{!36, !4, i64 32}
!93 = !{!36, !4, i64 48}
!94 = !{!36, !4, i64 36}
!95 = !{!35, !4, i64 272}
!96 = !{!36, !4, i64 68}
!97 = !{!35, !4, i64 280}
!98 = !{!36, !5, i64 72}
!99 = !{!35, !4, i64 268}
!100 = !{!9, !9, i64 0}
!101 = !{!35, !4, i64 260}
!102 = !{!35, !4, i64 264}
!103 = !{!104, !4, i64 0}
!104 = !{!"_ZTSSt4pairIiPKcE", !4, i64 0, !9, i64 8}
!105 = !{!38, !5, i64 0}
!106 = !{!47, !48, i64 0}
!107 = !{!47, !48, i64 8}
!108 = !{!109}
!109 = distinct !{!109, !110, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!110 = distinct !{!110, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJRiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!111 = distinct !{!111, !112, !113}
!112 = !{!"llvm.loop.mustprogress"}
!113 = !{!"llvm.loop.peeled.count", i32 1}
!114 = !{!36, !4, i64 128}
!115 = !{!116, !116, i64 0}
!116 = !{!"short", !5, i64 0}
!117 = distinct !{!117, !112, !118, !119}
!118 = !{!"llvm.loop.isvectorized", i32 1}
!119 = !{!"llvm.loop.unroll.runtime.disable"}
!120 = distinct !{!120, !112, !119, !118}
!121 = !{!35, !4, i64 256}
!122 = !{!123, !30, i64 38}
!123 = !{!"_ZTSN11OpenImageIO4v3_110ParamValueE", !124, i64 0, !38, i64 8, !5, i64 16, !4, i64 32, !5, i64 36, !30, i64 37, !30, i64 38}
!124 = !{!"_ZTSN11OpenImageIO4v3_17ustringE", !9, i64 0}
!125 = !{!38, !4, i64 4}
!126 = !{!38, !5, i64 1}
!127 = !{!128, !4, i64 20}
!128 = !{!"_ZTS2tm", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !4, i64 16, !4, i64 20, !4, i64 24, !4, i64 28, !4, i64 32, !12, i64 40, !9, i64 48}
!129 = !{!128, !4, i64 16}
!130 = !{!131}
!131 = distinct !{!131, !132, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA41_cJiiRiS5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!132 = distinct !{!132, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA41_cJiiRiS5_S5_S5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!133 = !{!134}
!134 = distinct !{!134, !135, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJiiiiiiELi6ELi0ELy1118481EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!135 = distinct !{!135, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJiiiiiiELi6ELi0ELy1118481EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!136 = !{!134, !131}
!137 = !{!138, !138, i64 0}
!138 = !{!"float", !5, i64 0}
!139 = !{!36, !4, i64 8}
!140 = !{!54, !54, i64 0}
!141 = !{!142, !9, i64 8}
!142 = !{!"_ZTSNSt12_Vector_baseIcSaIcEE17_Vector_impl_dataE", !9, i64 0, !9, i64 8, !9, i64 16}
!143 = !{!142, !9, i64 0}
!144 = !{!142, !9, i64 16}
!145 = !{!35, !4, i64 252}
!146 = !{!147}
!147 = distinct !{!147, !148, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!148 = distinct !{!148, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!149 = !{!150}
!150 = distinct !{!150, !151, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!151 = distinct !{!151, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_ELi2ELi0ELy17EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!152 = !{!150, !147}
!153 = !{i64 12930030}
!154 = distinct !{!154, !112}
!155 = !{!30, !30, i64 0}
!156 = distinct !{!156, !112}
!157 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!158 = distinct !{null}
!159 = !{!160}
!160 = distinct !{!160, !161, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_: argument 0"}
!161 = distinct !{!161, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEESB_RKT_DpOT0_"}
!162 = !{!37, !4, i64 60}
!163 = !{!164}
!164 = distinct !{!164, !165, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!165 = distinct !{!165, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!166 = !{!167, !12, i64 40}
!167 = !{!"_ZTSN11OpenImageIO4v3_17ustring8TableRepE", !12, i64 0, !14, i64 8, !12, i64 40, !12, i64 48, !4, i64 56}
!168 = !{!169}
!169 = distinct !{!169, !170, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!170 = distinct !{!170, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!171 = !{!172}
!172 = distinct !{!172, !173, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!173 = distinct !{!173, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!174 = !{!175}
!175 = distinct !{!175, !176, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!176 = distinct !{!176, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!177 = !{!178}
!178 = distinct !{!178, !179, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!179 = distinct !{!179, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!180 = !{!181}
!181 = distinct !{!181, !182, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!182 = distinct !{!182, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!183 = !{!184}
!184 = distinct !{!184, !185, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!185 = distinct !{!185, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!186 = !{!187}
!187 = distinct !{!187, !188, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!188 = distinct !{!188, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!189 = !{!190}
!190 = distinct !{!190, !191, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!191 = distinct !{!191, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!192 = !{!193}
!193 = distinct !{!193, !194, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!194 = distinct !{!194, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!195 = !{!196}
!196 = distinct !{!196, !197, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!197 = distinct !{!197, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!198 = !{!199}
!199 = distinct !{!199, !200, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!200 = distinct !{!200, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!201 = !{!202}
!202 = distinct !{!202, !203, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!203 = distinct !{!203, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!204 = !{!205}
!205 = distinct !{!205, !206, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!206 = distinct !{!206, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!207 = !{!208}
!208 = distinct !{!208, !209, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!209 = distinct !{!209, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!210 = !{!211}
!211 = distinct !{!211, !212, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!212 = distinct !{!212, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!213 = !{!214}
!214 = distinct !{!214, !215, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!215 = distinct !{!215, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!216 = !{!217}
!217 = distinct !{!217, !218, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!218 = distinct !{!218, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!219 = !{!220}
!220 = distinct !{!220, !221, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!221 = distinct !{!221, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!222 = !{!223}
!223 = distinct !{!223, !224, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!224 = distinct !{!224, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!225 = !{!226}
!226 = distinct !{!226, !227, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!227 = distinct !{!227, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!228 = !{!229}
!229 = distinct !{!229, !230, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!230 = distinct !{!230, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!231 = !{!232}
!232 = distinct !{!232, !233, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!233 = distinct !{!233, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!234 = !{!53, !54, i64 8}
!235 = !{!53, !54, i64 0}
!236 = !{!237}
!237 = distinct !{!237, !238, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!238 = distinct !{!238, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!239 = distinct !{!239, !112}
!240 = !{!241}
!241 = distinct !{!241, !242, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv: argument 0"}
!242 = distinct !{!242, !"_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv"}
!243 = !{!244}
!244 = distinct !{!244, !245, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!245 = distinct !{!245, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIA6_cJiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!246 = distinct !{!246, !112}
!247 = !{!248}
!248 = distinct !{!248, !249, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!249 = distinct !{!249, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!250 = !{!251}
!251 = distinct !{!251, !252}
!252 = distinct !{!252, !"LVerDomain"}
!253 = !{!254}
!254 = distinct !{!254, !252}
!255 = distinct !{!255, !112, !118, !119}
!256 = !{!"branch_weights", i32 4, i32 28}
!257 = distinct !{!257, !112, !118, !119}
!258 = distinct !{!258, !259}
!259 = !{!"llvm.loop.unroll.disable"}
!260 = distinct !{!260, !112}
!261 = distinct !{!261, !112}
!262 = distinct !{!262, !112, !118}
!263 = distinct !{!263, !112}
!264 = distinct !{!264, !112}
!265 = !{!68, !9, i64 8}
!266 = !{!37, !4, i64 12}
!267 = !{!36, !4, i64 12}
!268 = !{!269}
!269 = distinct !{!269, !270}
!270 = distinct !{!270, !"LVerDomain"}
!271 = !{!272}
!272 = distinct !{!272, !270}
!273 = distinct !{!273, !112, !118, !119}
!274 = distinct !{!274, !112, !118, !119}
!275 = distinct !{!275, !259}
!276 = distinct !{!276, !112, !118}
!277 = distinct !{!277, !112}
!278 = distinct !{!278, !112, !118, !119}
!279 = !{!"branch_weights", i32 4, i32 12}
!280 = distinct !{!280, !112, !118, !119}
!281 = distinct !{!281, !112}
!282 = distinct !{!282, !112}
!283 = distinct !{!283, !112, !119, !118}
!284 = distinct !{!284, !112, !118, !119}
!285 = distinct !{!285, !112, !118, !119}
!286 = distinct !{!286, !112, !119, !118}
!287 = distinct !{!287, !112, !118, !119}
!288 = distinct !{!288, !112, !118, !119}
!289 = distinct !{!289, !112, !119, !118}
!290 = distinct !{!290, !112, !118, !119}
!291 = distinct !{!291, !112, !118, !119}
!292 = distinct !{!292, !112}
!293 = distinct !{!293, !112, !119, !118}
!294 = distinct !{!294, !112, !118, !119}
!295 = distinct !{!295, !112, !118, !119}
!296 = distinct !{!296, !112, !119, !118}
!297 = distinct !{!297, !112, !118, !119}
!298 = distinct !{!298, !112, !118, !119}
!299 = distinct !{!299, !112, !119, !118}
!300 = distinct !{!300, !112, !118, !119}
!301 = distinct !{!301, !112, !118, !119}
!302 = distinct !{!302, !112, !119, !118}
!303 = distinct !{!303, !112, !118, !119}
!304 = distinct !{!304, !112, !119, !118}
!305 = !{!306}
!306 = distinct !{!306, !307, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!307 = distinct !{!307, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!308 = !{!309}
!309 = distinct !{!309, !310, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_KPKcELi3ELi0ELy3089EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!310 = distinct !{!310, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_KPKcELi3ELi0ELy3089EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!311 = !{!309, !306}
!312 = distinct !{!312, !112, !118, !119}
!313 = distinct !{!313, !112, !118, !119}
!314 = distinct !{!314, !112, !118}
!315 = distinct !{!315, !112}
!316 = distinct !{!316, !112}
!317 = distinct !{!317, !112, !118, !119}
!318 = distinct !{!318, !112, !118, !119}
!319 = distinct !{!319, !112, !118}
!320 = distinct !{!320, !112}
!321 = distinct !{!321, !112}
!322 = !{!36, !4, i64 16}
!323 = !{!324, !325, i64 0}
!324 = !{!"_ZTSN11OpenImageIO4v3_18task_setE", !325, i64 0, !326, i64 8, !327, i64 16}
!325 = !{!"p1 _ZTSN11OpenImageIO4v3_111thread_poolE", !10, i64 0}
!326 = !{!"_ZTSNSt6thread2idE", !12, i64 0}
!327 = !{!"_ZTSSt6vectorISt6futureIvESaIS1_EE", !328, i64 0}
!328 = !{!"_ZTSSt12_Vector_baseISt6futureIvESaIS1_EE", !329, i64 0}
!329 = !{!"_ZTSNSt12_Vector_baseISt6futureIvESaIS1_EE12_Vector_implE", !330, i64 0}
!330 = !{!"_ZTSNSt12_Vector_baseISt6futureIvESaIS1_EE17_Vector_impl_dataE", !331, i64 0, !331, i64 8, !331, i64 16}
!331 = !{!"p1 _ZTSSt6futureIvE", !10, i64 0}
!332 = !{!333, !333, i64 0}
!333 = !{!"p1 bool", !10, i64 0}
!334 = !{!335, !10, i64 8}
!335 = !{!"_ZTSZN11OpenImageIO4v3_110TIFFOutput15write_scanlinesEiiiNS0_8TypeDescEPKvllE3$_0", !333, i64 0, !10, i64 8, !10, i64 16, !12, i64 24, !336, i64 32, !9, i64 40, !12, i64 48, !337, i64 56, !12, i64 64}
!336 = !{!"p1 _ZTSN11OpenImageIO4v3_110TIFFOutputE", !10, i64 0}
!337 = !{!"p1 long", !10, i64 0}
!338 = !{!335, !10, i64 16}
!339 = !{!335, !12, i64 24}
!340 = !{!335, !336, i64 32}
!341 = !{!335, !9, i64 40}
!342 = !{!335, !12, i64 48}
!343 = !{!335, !337, i64 56}
!344 = !{!335, !12, i64 64}
!345 = !{!346}
!346 = distinct !{!346, !347, !"_ZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput15write_scanlinesEiiiNS0_8TypeDescEPKvllE3$_0EESt6futureIDTclfp_Li0EEEEOT_: argument 0"}
!347 = distinct !{!347, !"_ZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput15write_scanlinesEiiiNS0_8TypeDescEPKvllE3$_0EESt6futureIDTclfp_Li0EEEEOT_"}
!348 = !{!349}
!349 = distinct !{!349, !350, !"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput15write_scanlinesEiiiNS4_8TypeDescEPKvllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!350 = distinct !{!350, !"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput15write_scanlinesEiiiNS4_8TypeDescEPKvllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!351 = !{!352, !4, i64 8}
!352 = !{!"_ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !4, i64 8, !4, i64 12}
!353 = !{!349, !346}
!354 = !{!352, !4, i64 12}
!355 = !{!356, !357, i64 0}
!356 = !{!"_ZTSSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE", !357, i64 0}
!357 = !{!"p1 _ZTSSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE", !10, i64 0}
!358 = !{!359, !359, i64 0}
!359 = !{!"p1 _ZTSSt13packaged_taskIFviEE", !10, i64 0}
!360 = !{!361, !362, i64 0}
!361 = !{!"_ZTSSt12__shared_ptrINSt13__future_base16_Task_state_baseIFviEEELN9__gnu_cxx12_Lock_policyE2EE", !362, i64 0, !356, i64 8}
!362 = !{!"p1 _ZTSNSt13__future_base16_Task_state_baseIFviEEE", !10, i64 0}
!363 = distinct !{null}
!364 = !{!365, !359, i64 0}
!365 = !{!"_ZTSSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EE", !359, i64 0, !356, i64 8}
!366 = !{!10, !10, i64 0}
!367 = distinct !{null, ptr @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!368 = !{!330, !331, i64 8}
!369 = !{!330, !331, i64 16}
!370 = !{!371, !372, i64 0}
!371 = !{!"_ZTSSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EE", !372, i64 0, !356, i64 8}
!372 = !{!"p1 _ZTSNSt13__future_base13_State_baseV2E", !10, i64 0}
!373 = distinct !{ptr @_ZNSt14__basic_futureIvED2Ev, ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!374 = distinct !{!374, !112}
!375 = distinct !{!375, !112}
!376 = distinct !{!376, !112}
!377 = !{!378, !4, i64 64}
!378 = !{!"_ZTSN11OpenImageIO4v3_13pvt11LoggedTimerE", !29, i64 0, !14, i64 32, !4, i64 64}
!379 = distinct !{ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!380 = !{!330, !331, i64 0}
!381 = distinct !{null, null, null, null, ptr @_ZNSt14__basic_futureIvED2Ev, ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!382 = distinct !{!382, !112}
!383 = !{!37, !4, i64 48}
!384 = !{!37, !4, i64 0}
!385 = !{!37, !4, i64 4}
!386 = !{!37, !4, i64 52}
!387 = !{!37, !4, i64 8}
!388 = !{!37, !4, i64 56}
!389 = !{!390}
!390 = distinct !{!390, !391}
!391 = distinct !{!391, !"LVerDomain"}
!392 = !{!393}
!393 = distinct !{!393, !391}
!394 = distinct !{!394, !112, !118, !119}
!395 = distinct !{!395, !112, !118, !119}
!396 = distinct !{!396, !259}
!397 = distinct !{!397, !112, !118}
!398 = distinct !{!398, !112}
!399 = !{!400}
!400 = distinct !{!400, !401, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!401 = distinct !{!401, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!402 = !{!403}
!403 = distinct !{!403, !404, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KPKcELi4ELi0ELy49425EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!404 = distinct !{!404, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_KPKcELi4ELi0ELy49425EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!405 = !{!403, !400}
!406 = !{!36, !4, i64 64}
!407 = !{!337, !337, i64 0}
!408 = distinct !{!408, !112, !409}
!409 = !{!"llvm.loop.unswitch.partial.disable"}
!410 = distinct !{!410, !112}
!411 = !{!412, !4, i64 0}
!412 = !{!"_ZTSZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0", !4, i64 0, !4, i64 4, !4, i64 8, !4, i64 12, !413, i64 16, !414, i64 24, !337, i64 32, !414, i64 40, !337, i64 48, !414, i64 56, !337, i64 64, !414, i64 72, !336, i64 80, !414, i64 88, !414, i64 96, !43, i64 104, !415, i64 112, !416, i64 120, !337, i64 128, !337, i64 136, !417, i64 144, !333, i64 152}
!413 = !{!"any p2 pointer", !10, i64 0}
!414 = !{!"p1 int", !10, i64 0}
!415 = !{!"p1 _ZTSSt6vectorIS_IhSaIhEESaIS1_EE", !10, i64 0}
!416 = !{!"p1 _ZTSSt10unique_ptrIA_cSt14default_deleteIS0_EE", !10, i64 0}
!417 = !{!"p2 long", !413, i64 0}
!418 = !{!412, !4, i64 4}
!419 = !{!412, !4, i64 8}
!420 = !{!412, !4, i64 12}
!421 = !{!413, !413, i64 0}
!422 = !{!414, !414, i64 0}
!423 = !{!412, !336, i64 80}
!424 = !{!43, !43, i64 0}
!425 = !{!415, !415, i64 0}
!426 = !{!416, !416, i64 0}
!427 = !{!417, !417, i64 0}
!428 = !{!429}
!429 = distinct !{!429, !430, !"_ZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfp_Li0EEEEOT_: argument 0"}
!430 = distinct !{!430, !"_ZN11OpenImageIO4v3_111thread_pool4pushIZNS0_10TIFFOutput11write_tilesEiiiiiiNS0_8TypeDescEPKvlllE3$_0EESt6futureIDTclfp_Li0EEEEOT_"}
!431 = !{!432}
!432 = distinct !{!432, !433, !"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS4_8TypeDescEPKvlllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_: argument 0"}
!433 = distinct !{!433, !"_ZSt11make_sharedISt13packaged_taskIFviEEJZN11OpenImageIO4v3_110TIFFOutput11write_tilesEiiiiiiNS4_8TypeDescEPKvlllE3$_0EESt10shared_ptrINSt9enable_ifIXntsr8is_arrayIT_EE5valueESC_E4typeEEDpOT0_"}
!434 = !{!432, !429}
!435 = !{!436}
!436 = distinct !{!436, !437, !"_ZNSt13packaged_taskIFviEE10get_futureEv: argument 0"}
!437 = distinct !{!437, !"_ZNSt13packaged_taskIFviEE10get_futureEv"}
!438 = distinct !{ptr @_ZNSt13packaged_taskIFviEE10get_futureEv, ptr @_ZNSt12__shared_ptrINSt13__future_base13_State_baseV2ELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!439 = distinct !{null, ptr @_ZNSt12__shared_ptrISt13packaged_taskIFviEELN9__gnu_cxx12_Lock_policyE2EED2Ev, null, null}
!440 = distinct !{!440, !112}
!441 = distinct !{!441, !112, !409}
!442 = distinct !{!442, !112}
!443 = distinct !{!443, !112}
!444 = !{!445, !446, i64 0}
!445 = !{!"_ZTSNSt12_Vector_baseISt6vectorIhSaIhEESaIS2_EE17_Vector_impl_dataE", !446, i64 0, !446, i64 8, !446, i64 16}
!446 = !{!"p1 _ZTSSt6vectorIhSaIhEE", !10, i64 0}
!447 = !{!445, !446, i64 16}
!448 = !{!445, !446, i64 8}
!449 = !{!450}
!450 = distinct !{!450, !451, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_S7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!451 = distinct !{!451, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKiS7_S7_S7_RKS5_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!452 = !{!453}
!453 = distinct !{!453, !454, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_S3_KPKcELi5ELi0ELy790801EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
!454 = distinct !{!454, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKiS3_S3_S3_KPKcELi5ELi0ELy790801EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_"}
!455 = !{!453, !450}
!456 = distinct !{!456, !112}
!457 = distinct !{!457, !112}
!458 = !{!459}
!459 = distinct !{!459, !460, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_8TypeDescERKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_: argument 0"}
!460 = distinct !{!460, !"_ZN11OpenImageIO4v3_17Strutil3fmt6formatIPKcJRKNS0_8TypeDescERKjEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKT_DpOT0_"}
!461 = !{!462}
!462 = distinct !{!462, !463, !"_ZN3fmt3v1216make_format_argsINS0_7contextEJKN11OpenImageIO4v3_18TypeDescEKjELi2ELi0ELy47EEENS0_6detail16format_arg_storeIT_XT1_EXT2_EXT3_EEEDpRT0_: argument 0"}
end_hunk_5
