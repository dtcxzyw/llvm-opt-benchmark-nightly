Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/oiio/original/tiffoutput?download=true
inline.NumInlined: 4471
inline.NumDeleted: 1472
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 50
begin_hunk_0_@_ZN11OpenImageIO4v3_110TIFFOutput15write_exif_dataEv:bb.a
_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread: ; preds = %bb.ax, %bb.az
  %i.gk = and i64 %.sroa.0.0.copyload.i141, 255
  %i.gl = icmp eq i64 %i.gk, 12
  %i.gm = icmp eq i8 %.sroa.5187.0.extract.trunc, 1 ; 5 uses
  %.not.i = icmp eq i64 %.sroa.7190.0.extract.shift, 0 ; 7 uses
  %i.gn = and i1 %i.gl, %.not.i
  %or.cond315 = and i1 %i.gn, %i.gm
  br i1 %or.cond315, label %bb.bf, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread: ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread
  switch i8 %.sroa.0186.0.extract.trunc, label %.critedge21 [
    i8 4, label %bb.ba
    i8 6, label %bb.bb
    i8 5, label %bb.bc
    i8 7, label %bb.bd
  ]

bb.ba:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.go = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.gp = and i1 %.not.i, %i.go
  %or.cond317 = and i1 %i.gm, %i.gp
  br i1 %or.cond317, label %bb.bf, label %.critedge21

bb.bb:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gq = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %or.cond318 = and i1 %i.gm, %i.gq
  br i1 %or.cond318, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147, label %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147:  ; preds = %bb.bb
  br i1 %.not.i, label %bb.bf, label %.critedge21

bb.bc:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  %i.gr = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %i.gs = and i1 %.not.i, %i.gr
  %or.cond320 = and i1 %i.gm, %i.gs
  br i1 %or.cond320, label %bb.bf, label %.critedge21

bb.bd:                                            ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread
  br i1 %i.gm, label %bb.be, label %.thread275

bb.be:                                            ; preds = %bb.bd
  %i.gt = icmp eq i8 %.sroa.6188.0.extract.trunc, 0
  %or.cond321 = and i1 %.not.i, %i.gt
  br i1 %or.cond321, label %bb.bf, label %.critedge21

.thread275:                                       ; preds = %bb.bd
  %i.gu = icmp eq i8 %.sroa.5187.0.extract.trunc, 2
  %i.gv = icmp eq i8 %.sroa.6188.0.extract.trunc, 7
  %or.cond322 = and i1 %i.gu, %i.gv
  %or.cond323 = and i1 %.not.i, %or.cond322
  br i1 %or.cond323, label %bb.bf, label %.critedge21

_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296: ; preds = %bb.bb
  %i.gw = icmp eq i8 %.sroa.5187.0.extract.trunc, 2
  %i.gx = icmp eq i8 %.sroa.6188.0.extract.trunc, 7
  %or.cond324 = and i1 %i.gw, %i.gx
  %or.cond325 = and i1 %.not.i, %or.cond324
  br i1 %or.cond325, label %bb.bf, label %.critedge21

bb.bf:                                            ; preds = %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296, %.thread275, %bb.be, %bb.bc, %bb.ba, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit142.thread, %bb.az, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147
  %i.gy = load i32, ptr %i.f, align 4, !tbaa !56
  %i.gz = icmp eq i32 %i.gy, 1
  br i1 %i.gz, label %bb.bg, label %.critedge21

bb.bg:                                            ; preds = %bb.bf
  %i.ha = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.hb = call noundef float @_ZNK11OpenImageIO4v3_110ParamValue9get_floatEf(ptr noundef nonnull align 8 dereferenceable(39) %i.bq, float noundef 0.000000e+00)
  %i.hc = fpext float %i.hb to double
  %i.hd = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.ha, i32 noundef %i.bx, double noundef %i.hc) ; 0 uses
  br label %.critedge21

bb.bh:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102
  %.pn88 = phi { ptr, i32 } [ %i.cm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit102 ], [ %i.db, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit107 ], [ %i.du, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit115 ], [ %i.ek, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit124 ], [ %i.fw, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit137 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  resume { ptr, i32 } %.pn88

.critedge21:                                      ; preds = %.critedge.thread, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit147, %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread, %bb.aj, %bb.v, %bb.m, %bb.m, %bb.m, %bb.be, %bb.bc, %.thread275, %bb.ba, %bb.ay, %bb.ak, %bb.al, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit153.thread.thread296, %bb.am, %bb.an, %bb.ao, %bb.aq, %bb.w, %bb.ab, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.t, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit118, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit110, %_ZNK11OpenImageIO4v3_18TypeDesceqERKS1_.exit134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit140, %bb.ap, %bb.bg, %bb.bf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %_ZNK11OpenImageIO4v3_17ustringcvNS0_17basic_string_viewIcSt11char_traitsIcEEEEv.exit95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  %i.he = add nuw i64 %.071330, 1                 ; 2 uses
  %exitcond335.not = icmp eq i64 %i.he, %i.aq
  br i1 %exitcond335.not, label %._crit_edge, label %bb.k, !llvm.loop !579

bb.bi:                                            ; preds = %._crit_edge
  call void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJEEEvPKcDpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.81)
  br label %bb.bk

bb.bj:                                            ; preds = %._crit_edge
  %i.hf = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.hg = call i32 @TIFFSetDirectory(ptr noundef %i.hf, i32 noundef 0) ; 0 uses
  %i.hh = load ptr, ptr %i.af, align 8, !tbaa !117
  %i.hi = load i64, ptr %i.g, align 8, !tbaa !62
  %i.hj = call i32 (ptr, i32, ...) @TIFFSetField(ptr noundef %i.hh, i32 noundef 34665, i64 noundef %i.hi) ; 0 uses
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #34
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.b, %bb.g, %bb.i, %bb.bk, %bb.a
  %.280 = phi i1 [ true, %bb.a ], [ false, %bb.i ], [ %.not86, %bb.bk ], [ false, %bb.g ], [ true, %bb.b ], [ true, %bb.f ]
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
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #34, !noalias !587
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34, !noalias !587
  call void @_ZN3fmt3v127vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr nonnull %1, i64 %i.a, i64 0, ptr nonnull %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #34, !noalias !587
  %i.b = load ptr, ptr %4, align 8, !tbaa !64
  store ptr %i.b, ptr %3, align 8, !tbaa !68
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !66
  store i64 %i.e, ptr %i.c, align 8, !tbaa !69
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput12append_errorENS0_17basic_string_viewIcSt11char_traitsIcEEE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull dead_on_return %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.i = load i64, ptr %i.g, align 8, !tbaa !65
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  ret void

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %4, align 8, !tbaa !64     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i2: ; preds = %bb.c
  %i.o = load i64, ptr %i.m, align 8, !tbaa !65
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
  %i.c = load i32, ptr %i.b, align 4, !tbaa !146
  %narrow.i.i = tail call i32 @llvm.smax.i32(i32 %i.c, i32 1)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 73
  %i.e = load i8, ptr %i.d, align 1, !tbaa !161
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
  %5 = mul nuw nsw i64 %i.p, %i.n
  %i.q = mul nuw nsw i64 %i.p, %i.n
  %i.r = add nsw i64 %i.p, -1
  %i.s = mul nsw i64 %i.r, %i.o
  %6 = add i64 %i.s, 1
  %i.t = getelementptr i8, ptr %3, i64 %5
  %min.iters.check = icmp ult i32 %i.j, 4
  %min.iters.check54 = icmp ult i32 %i.j, 32
  %i.u = and i64 %i.n, 28
  %n.vec = and i64 %i.n, 2147483616               ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.n
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  %n.vec56 = and i64 %i.n, 2147483644             ; 3 uses
  %cmp.n60 = icmp eq i64 %n.vec56, %i.n
  %xtraiter = and i64 %i.n, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26

.preheader26:                                     ; preds = %.preheader26.preheader, %._crit_edge29
  %indvars.iv42 = phi i64 [ 0, %.preheader26.preheader ], [ %indvars.iv.next43, %._crit_edge29 ] ; 6 uses
  %i.v = mul i64 %i.q, %indvars.iv42              ; 2 uses
  %scevgep = getelementptr i8, ptr %i.t, i64 %i.v
  %scevgep54 = getelementptr i8, ptr %3, i64 %i.v
  %i.w = mul i64 %indvars.iv42, %i.n
  %7 = add i64 %6, %indvars.iv42
  %i.x = mul i64 %7, %i.n
  %scevgep52 = getelementptr i8, ptr %4, i64 %i.x
  %scevgep53 = getelementptr i8, ptr %4, i64 %i.w
  %i.y = mul nuw nsw i64 %indvars.iv42, %i.p
  %bound0 = icmp ult ptr %scevgep53, %scevgep
  %bound1 = icmp ult ptr %scevgep54, %scevgep52
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

._crit_edge32.split:                              ; preds = %._crit_edge29, %.preheader26.lr.ph, %bb.a
  ret void

iter.check:                                       ; preds = %.preheader26, %._crit_edge
  %indvars.iv37 = phi i64 [ 0, %.preheader26 ], [ %indvars.iv.next38, %._crit_edge ] ; 3 uses
  %i.z = add nuw nsw i64 %indvars.iv37, %i.y
  %i.aa = mul nuw nsw i64 %i.z, %i.n
  %i.ab = mul nuw nsw i64 %indvars.iv37, %i.o
  %i.ac = add nuw nsw i64 %i.ab, %indvars.iv42
  %i.ad = mul nuw nsw i64 %i.ac, %i.n
  %invariant.gep = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa ; 7 uses
  %invariant.gep49 = getelementptr inbounds nuw i8, ptr %4, i64 %i.ad ; 7 uses
  %brmerge61 = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge61, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check54, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load = load <16 x i8>, ptr %i.ae, align 1, !tbaa !65, !alias.scope !595
  %wide.load55 = load <16 x i8>, ptr %i.af, align 1, !tbaa !65, !alias.scope !595
  %i.ag = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %index ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store <16 x i8> %wide.load, ptr %i.ag, align 1, !tbaa !65, !alias.scope !596, !noalias !595
  store <16 x i8> %wide.load55, ptr %i.ah, align 1, !tbaa !65, !alias.scope !596, !noalias !595
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !591

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index57 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next59, %vec.epilog.vector.body ] ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %index57
  %wide.load58 = load <4 x i8>, ptr %i.aj, align 1, !tbaa !65, !alias.scope !595
  %i.ak = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %index57
  store <4 x i8> %wide.load58, ptr %i.ak, align 1, !tbaa !65, !alias.scope !596, !noalias !595
  %index.next59 = add nuw i64 %index57, 4         ; 2 uses
  %i.al = icmp eq i64 %index.next59, %n.vec56
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !592

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n60, label %._crit_edge, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ %n.vec56, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.prol = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.prol
  %i.am = load i8, ptr %gep.prol, align 1, !tbaa !65
  %gep50.prol = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.prol
  store i8 %i.am, ptr %gep50.prol, align 1, !tbaa !65
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !593

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.an = sub nsw i64 %indvars.iv.ph, %i.n
  %i.ao = icmp ugt i64 %i.an, -4
  br i1 %i.ao, label %._crit_edge, label %vec.epilog.scalar.ph

._crit_edge29:                                    ; preds = %._crit_edge
  %indvars.iv.next43 = add nuw nsw i64 %indvars.iv42, 1 ; 2 uses
  %exitcond46.not = icmp eq i64 %indvars.iv.next43, %i.o
  br i1 %exitcond46.not, label %._crit_edge32.split, label %.preheader26, !llvm.loop !2

._crit_edge:                                      ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38 = add nuw nsw i64 %indvars.iv37, 1 ; 2 uses
  %exitcond41.not = icmp eq i64 %indvars.iv.next38, %i.p
  br i1 %exitcond41.not, label %._crit_edge29, label %iter.check, !llvm.loop !3

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %vec.epilog.scalar.ph ], [ %indvars.iv.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv
  %i.ap = load i8, ptr %gep, align 1, !tbaa !65
  %gep50 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv
  store i8 %i.ap, ptr %gep50, align 1, !tbaa !65
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next
  %i.aq = load i8, ptr %gep.1, align 1, !tbaa !65
  %gep50.1 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.next
  store i8 %i.aq, ptr %gep50.1, align 1, !tbaa !65
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %gep.2 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.1
  %i.ar = load i8, ptr %gep.2, align 1, !tbaa !65
  %gep50.2 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.next.1
  store i8 %i.ar, ptr %gep50.2, align 1, !tbaa !65
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv, 3 ; 2 uses
  %gep.3 = getelementptr inbounds nuw i8, ptr %invariant.gep, i64 %indvars.iv.next.2
  %i.as = load i8, ptr %gep.3, align 1, !tbaa !65
  %gep50.3 = getelementptr inbounds nuw i8, ptr %invariant.gep49, i64 %indvars.iv.next.2
  store i8 %i.as, ptr %gep50.3, align 1, !tbaa !65
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %i.n
  br i1 %exitcond.not.3, label %._crit_edge, label %vec.epilog.scalar.ph, !llvm.loop !594
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr noundef nonnull align 8 dereferenceable(24) %3) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !120
  %i.c = sext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !146
  %narrow.i = tail call i32 @llvm.smax.i32(i32 %i.f, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !tbaa !161
  %i.i = zext i8 %i.h to i64
  %i.j = tail call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.d) #34
  %i.k = sext i32 %1 to i64
  %i.l = mul nsw i64 %i.c, %i.k
  %i.m = mul i64 %i.l, %i.i
  %i.n = mul i64 %i.m, %i.j
  %i.o = mul i64 %i.n, %spec.select.i             ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !171  ; 2 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !123    ; 2 uses
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t                       ; 3 uses
  %i.v = icmp ugt i64 %i.o, %i.u
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = sub nuw i64 %i.o, %i.u
  tail call void @_ZNSt6vectorIhSaIhEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %i.w)
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.c:                                             ; preds = %bb.a
  %i.x = icmp ult i64 %i.o, %i.u
  br i1 %i.x, label %bb.d, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

bb.d:                                             ; preds = %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.o ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, %i.y
  br i1 %.not.i.i, label %_ZNSt6vectorIhSaIhEE6resizeEm.exit, label %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.d
  store ptr %i.y, ptr %i.p, align 8, !tbaa !171
  br label %_ZNSt6vectorIhSaIhEE6resizeEm.exit

_ZNSt6vectorIhSaIhEE6resizeEm.exit:               ; preds = %bb.b, %bb.c, %bb.d, %_ZSt8_DestroyIPhhEvT_S1_RSaIT0_E.exit.i.i
  %i.z = load i8, ptr %i.d, align 8, !tbaa !145   ; 2 uses
  %i.aa = icmp eq i8 %i.z, 2
  %i.ab = load i8, ptr %i.g, align 1
  %i.ac = icmp eq i8 %i.ab, 1                     ; 2 uses
  %or.cond.i = select i1 %i.aa, i1 %i.ac, i1 false
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit.thread

_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit: ; preds = %_ZNSt6vectorIhSaIhEE6resizeEm.exit
  %i.ad = load i32, ptr %i.e, align 4, !tbaa !146
  %.not.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i, label %bb.e, label %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit12.thread

bb.e:                                             ; preds = %_ZN11OpenImageIO4v3_1eqERKNS0_8TypeDescENS1_8BASETYPEE.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !139
  %i.ag = sext i32 %i.af to i64
  %i.ah = load i32, ptr %i.a, align 4, !tbaa !120
  %i.ai = sext i32 %i.ah to i64
  %.not43.i = icmp eq i32 %1, 0
  br i1 %.not43.i, label %_ZN11OpenImageIO4v3_1L11rgb_to_cmykIhEEviPKT_mPS2_m.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.e
  %i.aj = load ptr, ptr %3, align 8, !tbaa !123
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %.lr.ph.i
  %.046.i = phi i32 [ %i.bt, %.lr.ph.i ], [ %1, %.lr.ph.i.preheader ]
  %.02145.i = phi ptr [ %i.bv, %.lr.ph.i ], [ %2, %.lr.ph.i.preheader ] ; 3 uses
  %.02244.i = phi ptr [ %i.bu, %.lr.ph.i ], [ %i.aj, %.lr.ph.i.preheader ] ; 2 uses
  %i.ak = load i8, ptr %.02145.i, align 1, !tbaa !65
  %i.al = uitofp i8 %i.ak to float
  %i.am = fmul nnan float %i.al, f0x3B808081      ; 3 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02145.i, i64 1
  %i.ao = load <2 x i8>, ptr %i.an, align 1, !tbaa !65
  %i.ap = uitofp <2 x i8> %i.ao to <2 x float>
  %i.aq = fmul nnan <2 x float> %i.ap, splat (float f0x3B808081) ; 3 uses
end_hunk_0
begin_hunk_1_@fprintf

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
  store i32 %1, ptr %i.a, align 4, !tbaa !56
  store i32 %2, ptr %i.b, align 4, !tbaa !56
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !166
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
  %.pre = load i32, ptr %i.a, align 4, !tbaa !56
  %.pre95 = load i32, ptr %i.b, align 4, !tbaa !56
  br label %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit

_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit: ; preds = %bb.a, %bb.b
  %i.q = phi i32 [ %.pre95, %bb.b ], [ %2, %bb.a ]
  %i.r = phi i32 [ %.pre, %bb.b ], [ %1, %bb.a ]
  %.0 = phi i64 [ %i.p, %bb.b ], [ %5, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.u = load i32, ptr %i.t, align 4, !tbaa !162
  %i.v = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput18to_native_scanlineENS0_8TypeDescEPKvlRSt6vectorIhSaIhEEjii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %3, ptr noundef %4, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i32 noundef %i.u, i32 noundef %i.r, i32 noundef %i.q) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 24, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.x = load i32, ptr %i.w, align 4, !tbaa !141
  %i.y = icmp eq i32 %i.x, 5
  br i1 %i.y, label %bb.c, label %bb.e

bb.c:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.aa = load i8, ptr %i.z, align 8, !tbaa !121, !range !126, !noundef !127
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !607
  %i.ae = invoke noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.ad, ptr noundef %i.v, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.e unwind label %.thread

bb.e:                                             ; preds = %bb.d, %bb.c, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit
  %.041 = phi ptr [ %i.v, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlNS0_8TypeDescEi.exit ], [ %i.v, %bb.c ], [ %i.ae, %bb.d ] ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !607
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !120
  %i.ak = sext i32 %i.aj to i64
  %i.al = mul nsw i64 %i.ak, %i.ah                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !146
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.ao, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 5 uses
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !161
  %i.ar = zext i8 %i.aq to i64
  %i.as = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.am) #34
  %i.at = shl nuw nsw i64 %i.ar, 3
  %i.au = mul i64 %i.at, %i.as
  %i.av = mul i64 %i.au, %spec.select.i
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ax = load i32, ptr %i.aw, align 8, !tbaa !140
  %i.ay = zext i32 %i.ax to i64
  %.not = icmp eq i64 %i.av, %i.ay
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.az = load i32, ptr %i.an, align 4, !tbaa !146
  %i.ba = load i8, ptr %i.ap, align 1, !tbaa !161
  %i.bb = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.am) #34
  %i.bc = load ptr, ptr %i.s, align 8, !tbaa !142 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !142
  %i.bf = icmp ne ptr %i.bc, %i.be
  %.not.i = icmp eq ptr %.041, %i.bc
  %or.cond.i = and i1 %.not.i, %i.bf
  br i1 %or.cond.i, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bg = zext i8 %i.ba to i64
  %narrow.i57 = call i32 @llvm.smax.i32(i32 %i.az, i32 1)
  %spec.select.i58 = zext nneg i32 %narrow.i57 to i64
  %i.bh = mul i64 %i.al, %i.bg
  %i.bi = mul i64 %i.bh, %i.bb
  %i.bj = mul i64 %i.bi, %spec.select.i58
  %i.bk = getelementptr inbounds nuw i8, ptr %.041, i64 %i.bj
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef %.041, ptr noundef %i.bk)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.g
  %.pre.i = load ptr, ptr %i.s, align 8, !tbaa !123
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit: ; preds = %.noexc, %bb.f
  %i.bl = phi ptr [ %i.bc, %bb.f ], [ %.pre.i, %.noexc ] ; 2 uses
  %i.bm = trunc i64 %i.al to i32
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput12fix_bitdepthEPvi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.bl, i32 noundef %i.bm)
          to label %bb.h unwind label %.thread

bb.h:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.e
  %.142 = phi ptr [ %i.bl, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit ], [ %.041, %bb.e ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !172
  %i.bp = load i32, ptr %i.a, align 4, !tbaa !56
  %i.bq = sub nsw i32 %i.bp, %i.bo
  store i32 %i.bq, ptr %i.a, align 4, !tbaa !56
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.bs = load i32, ptr %i.br, align 8, !tbaa !157
  %i.bt = icmp eq i32 %i.bs, 2
  br i1 %i.bt, label %bb.i, label %bb.w

bb.i:                                             ; preds = %bb.h
  %i.bu = load i32, ptr %i.e, align 4, !tbaa !139
  %i.bv = icmp sgt i32 %i.bu, 1
  br i1 %i.bv, label %bb.j, label %bb.w

bb.j:                                             ; preds = %bb.i
  %i.bw = load i32, ptr %i.af, align 4, !tbaa !136
  %i.bx = load i32, ptr %i.an, align 4, !tbaa !146
  %narrow.i59 = call i32 @llvm.smax.i32(i32 %i.bx, i32 1)
  %i.by = load i8, ptr %i.ap, align 1, !tbaa !161
  %i.bz = zext i8 %i.by to i64
  %i.ca = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.am) #34
  %i.cb = mul i64 %i.ca, %i.bz
  %i.cc = trunc i64 %i.cb to i32
  %i.cd = mul i32 %narrow.i59, %i.bw
  %i.ce = mul i32 %i.cd, %i.cc                    ; 2 uses
  %i.cf = load i32, ptr %i.ai, align 4, !tbaa !120 ; 3 uses
  %i.cg = mul nsw i32 %i.ce, %i.cf                ; 3 uses
  %i.ch = sext i32 %i.cg to i64                   ; 2 uses
  %i.ci = icmp ult i32 %i.cg, 65537
  br i1 %i.ci, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.not47 = icmp eq i32 %i.cg, 0
  br i1 %.not47, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.cj = alloca i8, i64 %i.ch, align 16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

bb.m:                                             ; preds = %bb.j
  %i.ck = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ch) #38
          to label %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge unwind label %.thread ; 2 uses

._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge: ; preds = %bb.m
  %.pre96 = load i32, ptr %i.ai, align 4, !tbaa !120
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge, %bb.l, %bb.k
  %i.cl = phi i32 [ %i.cf, %bb.k ], [ %i.cf, %bb.l ], [ %.pre96, %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.k ], [ null, %bb.l ], [ %i.ck, %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge ] ; 6 uses
  %.031 = phi ptr [ null, %bb.k ], [ %i.cj, %bb.l ], [ %i.ck, %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge ] ; 4 uses
  %i.cm = load i32, ptr %i.af, align 4, !tbaa !136 ; 2 uses
  %i.cn = load i32, ptr %i.an, align 4, !tbaa !146
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.cn, i32 1)
  %i.co = load i8, ptr %i.ap, align 1, !tbaa !161
  %i.cp = zext i8 %i.co to i64
  %i.cq = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.am) #34
  %i.cr = mul i64 %i.cq, %i.cp
  %i.cs = trunc i64 %i.cr to i32
  %i.ct = mul i32 %narrow.i.i.i, %i.cs            ; 4 uses
  %i.cu = icmp sgt i32 %i.cm, 0
  br i1 %i.cu, label %.preheader26.lr.ph.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit

.preheader26.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.cv = icmp slt i32 %i.cl, 1
  %i.cw = icmp slt i32 %i.ct, 1
  %brmerge.i = select i1 %i.cv, i1 true, i1 %i.cw
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.preheader.i

.preheader26.preheader.i:                         ; preds = %.preheader26.lr.ph.i
  %i.cx = zext nneg i32 %i.ct to i64              ; 14 uses
  %i.cy = zext nneg i32 %i.cm to i64              ; 3 uses
  %i.cz = zext nneg i32 %i.cl to i64              ; 5 uses
  %12 = mul nuw nsw i64 %i.cz, %i.cx
  %i.da = mul nuw nsw i64 %i.cz, %i.cx
  %i.db = add nsw i64 %i.cz, -1
  %i.dc = mul nsw i64 %i.db, %i.cy
  %13 = add i64 %i.dc, 1
  %i.dd = getelementptr i8, ptr %.142, i64 %12
  %min.iters.check = icmp ult i32 %i.ct, 4
  %min.iters.check120 = icmp ult i32 %i.ct, 32
  %i.de = and i64 %i.cx, 28
  %n.vec = and i64 %i.cx, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.cx
  %min.epilog.iters.check = icmp eq i64 %i.de, 0
  %n.vec122 = and i64 %i.cx, 2147483644           ; 3 uses
  %cmp.n126 = icmp eq i64 %n.vec122, %i.cx
  %xtraiter = and i64 %i.cx, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %._crit_edge29.i, %.preheader26.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader26.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge29.i ] ; 6 uses
  %i.df = mul i64 %i.da, %indvars.iv42.i          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.dd, i64 %i.df
  %scevgep120 = getelementptr i8, ptr %.142, i64 %i.df
  %i.dg = mul i64 %indvars.iv42.i, %i.cx
  %14 = add i64 %13, %indvars.iv42.i
  %i.dh = mul i64 %14, %i.cx
  %scevgep118 = getelementptr i8, ptr %.031, i64 %i.dh
  %scevgep119 = getelementptr i8, ptr %.031, i64 %i.dg
  %i.di = mul nuw nsw i64 %indvars.iv42.i, %i.cz
  %bound0 = icmp ult ptr %scevgep119, %scevgep
  %bound1 = icmp ult ptr %scevgep120, %scevgep118
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader26.i
  %indvars.iv37.i = phi i64 [ 0, %.preheader26.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %i.dj = add nuw nsw i64 %indvars.iv37.i, %i.di
  %i.dk = mul nuw nsw i64 %i.dj, %i.cx
  %i.dl = mul nuw nsw i64 %indvars.iv37.i, %i.cy
  %i.dm = add nuw nsw i64 %i.dl, %indvars.iv42.i
  %i.dn = mul nuw nsw i64 %i.dm, %i.cx
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.142, i64 %i.dk ; 7 uses
  %invariant.gep49.i = getelementptr inbounds nuw i8, ptr %.031, i64 %i.dn ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check120, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.do = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 16
  %wide.load = load <16 x i8>, ptr %i.do, align 1, !tbaa !65, !alias.scope !608
  %wide.load121 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !65, !alias.scope !608
  %i.dq = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  store <16 x i8> %wide.load, ptr %i.dq, align 1, !tbaa !65, !alias.scope !609, !noalias !608
  store <16 x i8> %wide.load121, ptr %i.dr, align 1, !tbaa !65, !alias.scope !609, !noalias !608
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ds = icmp eq i64 %index.next, %n.vec
  br i1 %i.ds, label %middle.block, label %vector.body, !llvm.loop !602

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index123 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next125, %vec.epilog.vector.body ] ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index123
  %wide.load124 = load <4 x i8>, ptr %i.dt, align 1, !tbaa !65, !alias.scope !608
  %i.du = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index123
  store <4 x i8> %wide.load124, ptr %i.du, align 1, !tbaa !65, !alias.scope !609, !noalias !608
  %index.next125 = add nuw i64 %index123, 4       ; 2 uses
  %i.dv = icmp eq i64 %index.next125, %n.vec122
  br i1 %i.dv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !603

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n126, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec122, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.dw = load i8, ptr %gep.i.prol, align 1, !tbaa !65
  %gep50.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i.prol
  store i8 %i.dw, ptr %gep50.i.prol, align 1, !tbaa !65
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !604

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.dx = sub nsw i64 %indvars.iv.i.ph, %i.cx
  %i.dy = icmp ugt i64 %i.dx, -4
  br i1 %i.dy, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge29.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.cy
  br i1 %exitcond46.not.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.cz
  br i1 %exitcond41.not.i, label %._crit_edge29.i, label %iter.check, !llvm.loop !3

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.dz = load i8, ptr %gep.i, align 1, !tbaa !65
  %gep50.i = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i
  store i8 %i.dz, ptr %gep50.i, align 1, !tbaa !65
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.ea = load i8, ptr %gep.i.1, align 1, !tbaa !65
  %gep50.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i
  store i8 %i.ea, ptr %gep50.i.1, align 1, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.eb = load i8, ptr %gep.i.2, align 1, !tbaa !65
  %gep50.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.1
  store i8 %i.eb, ptr %gep50.i.2, align 1, !tbaa !65
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.ec = load i8, ptr %gep.i.3, align 1, !tbaa !65
  %gep50.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.2
  store i8 %i.ec, ptr %gep50.i.3, align 1, !tbaa !65
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.cx
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !605

_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit: ; preds = %._crit_edge29.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %.preheader26.lr.ph.i
  %i.ed = load i32, ptr %i.ai, align 4, !tbaa !120
  %.not5392 = icmp sgt i32 %i.ed, 0
  br i1 %.not5392, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.ef = sext i32 %i.ce to i64
  br label %bb.o

bb.n:                                             ; preds = %bb.p
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.eg = load i32, ptr %i.ai, align 4, !tbaa !120
  %i.eh = sext i32 %i.eg to i64
  %.not53 = icmp slt i64 %indvars.iv.next, %i.eh
  br i1 %.not53, label %bb.o, label %.critedge, !llvm.loop !606

bb.o:                                             ; preds = %.lr.ph, %bb.n
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.n ] ; 3 uses
  %i.ei = load ptr, ptr %i.ee, align 8, !tbaa !117
  %i.ej = mul nsw i64 %indvars.iv, %i.ef
  %i.ek = getelementptr inbounds i8, ptr %.031, i64 %i.ej
  %i.el = load i32, ptr %i.a, align 4, !tbaa !56
  %i.em = trunc i64 %indvars.iv to i16
  %i.en = invoke i32 @TIFFWriteScanline(ptr noundef %i.ei, ptr noundef %i.ek, i32 noundef %i.el, i16 noundef zeroext %i.em)
          to label %bb.p unwind label %.loopexit

bb.p:                                             ; preds = %bb.o
  %i.eo = icmp slt i32 %i.en, 0
  br i1 %i.eo, label %bb.q, label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ep = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.eq = load i64, ptr %i.ep, align 8, !tbaa !66
  %.not48 = icmp eq i64 %i.eq, 0
  %i.er = load ptr, ptr %10, align 8
  %spec.select = select i1 %.not48, ptr @.str.86, ptr %i.er
  store ptr %spec.select, ptr %i.c, align 8, !tbaa !142
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.85, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.s unwind label %bb.u

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  %i.es = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.eu = icmp eq ptr %i.es, %i.et
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.s
  %i.ev = load i64, ptr %i.et, align 8, !tbaa !65
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.es, i64 noundef %i.ew) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.s, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #34
  %.not.i61 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i61, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

.loopexit:                                        ; preds = %bb.o
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

.thread:                                          ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit74, %bb.ai, %bb.d, %bb.g, %bb.x, %bb.m
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit67

bb.t:                                             ; preds = %bb.q
  %i.ex = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit64

bb.u:                                             ; preds = %bb.r
  %i.ey = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
end_hunk_1
begin_hunk_2_@_ZN11OpenImageIO4v3_110TIFFOutput10write_tileEiiiNS0_8TypeDescEPKvlll:bb.a
  br i1 %i.v, label %bb.d, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.x = load i32, ptr %i.w, align 8, !tbaa !228
  %i.y = sub nsw i32 %3, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load i32, ptr %i.z, align 8, !tbaa !229
  %i.ab = srem i32 %i.y, %i.aa
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %bb.e, label %_ZN11OpenImageIO4v3_19ImageSpec16valid_tile_rangeEiiiiii.exit.thread

bb.e:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 68 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4, !tbaa !166
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
  %i.av = load i32, ptr %i.i, align 8, !tbaa !176
  %i.aw = sub nsw i32 %1, %i.av                   ; 5 uses
  %i.ax = load i32, ptr %i.p, align 4, !tbaa !172
  %i.ay = sub nsw i32 %2, %i.ax                   ; 5 uses
  %i.az = load i32, ptr %i.w, align 8, !tbaa !177
  %i.ba = sub nsw i32 %3, %i.az                   ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 7 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !162
  %i.be = call noundef ptr @_ZN11OpenImageIO4v3_111ImageOutput14to_native_tileENS0_8TypeDescEPKvlllRSt6vectorIhSaIhEEjiii(ptr noundef nonnull align 8 dereferenceable(184) %0, i64 %4, ptr noundef %5, i64 noundef %.0123, i64 noundef %.0122, i64 noundef %.0, ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i32 noundef %i.bd, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba) ; 3 uses
  %i.bf = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 5 uses
  %i.bh = load i32, ptr %i.bg, align 4, !tbaa !120
  %i.bi = sext i32 %i.bh to i64
  %i.bj = mul i64 %i.bf, %i.bi                    ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #34
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !141
  %i.bm = icmp eq i32 %i.bl, 5
  br i1 %i.bm, label %bb.g, label %bb.i

bb.g:                                             ; preds = %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.bo = load i8, ptr %i.bn, align 8, !tbaa !121, !range !126, !noundef !127
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bq = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34
  %i.br = trunc i64 %i.bq to i32
  %i.bs = invoke noundef ptr @_ZN11OpenImageIO4v3_110TIFFOutput15convert_to_cmykEiPKvRSt6vectorIhSaIhEE(ptr noundef nonnull align 8 dereferenceable(336) %0, i32 noundef %i.br, ptr noundef %i.be, ptr noundef nonnull align 8 dereferenceable(24) %12)
          to label %bb.i unwind label %.thread

bb.i:                                             ; preds = %bb.h, %bb.g, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit
  %.067 = phi ptr [ %i.be, %_ZN11OpenImageIO4v3_19ImageSpec11auto_strideERlS2_S2_NS0_8TypeDescEiii.exit ], [ %i.be, %bb.g ], [ %i.bs, %bb.h ] ; 4 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 5 uses
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !146
  %narrow.i = call i32 @llvm.smax.i32(i32 %i.bv, i32 1)
  %spec.select.i = zext nneg i32 %narrow.i to i64
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 73 ; 5 uses
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !161
  %i.by = zext i8 %i.bx to i64
  %i.bz = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bt) #34
  %i.ca = shl nuw nsw i64 %i.by, 3
  %i.cb = mul i64 %i.ca, %i.bz
  %i.cc = mul i64 %i.cb, %spec.select.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ce = load i32, ptr %i.cd, align 8, !tbaa !140
  %i.cf = zext i32 %i.ce to i64
  %.not = icmp eq i64 %i.cc, %i.cf
  br i1 %.not, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.cg = load i32, ptr %i.bu, align 4, !tbaa !146
  %i.ch = load i8, ptr %i.bw, align 1, !tbaa !161
  %i.ci = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bt) #34
  %i.cj = load ptr, ptr %i.bb, align 8, !tbaa !142 ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !142
  %i.cm = icmp ne ptr %i.cj, %i.cl
  %.not.i84 = icmp eq ptr %.067, %i.cj
  %or.cond.i85 = and i1 %.not.i84, %i.cm
  br i1 %or.cond.i85, label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cn = zext i8 %i.ch to i64
  %narrow.i82 = call i32 @llvm.smax.i32(i32 %i.cg, i32 1)
  %spec.select.i83 = zext nneg i32 %narrow.i82 to i64
  %i.co = mul i64 %i.bj, %i.cn
  %i.cp = mul i64 %i.co, %i.ci
  %i.cq = mul i64 %i.cp, %spec.select.i83
  %i.cr = getelementptr inbounds nuw i8, ptr %.067, i64 %i.cq
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPKhEEvT_S5_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, ptr noundef %.067, ptr noundef %i.cr)
          to label %.noexc unwind label %.thread

.noexc:                                           ; preds = %bb.k
  %.pre.i = load ptr, ptr %i.bb, align 8, !tbaa !123
  br label %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit

_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit: ; preds = %.noexc, %bb.j
  %i.cs = phi ptr [ %i.cj, %bb.j ], [ %.pre.i, %.noexc ] ; 2 uses
  %i.ct = trunc i64 %i.bj to i32
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput12fix_bitdepthEPvi(ptr noundef nonnull align 8 dereferenceable(336) %0, ptr noundef %i.cs, i32 noundef %i.ct)
          to label %bb.l unwind label %.thread

bb.l:                                             ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %bb.i
  %.168 = phi ptr [ %i.cs, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit ], [ %.067, %bb.i ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !157
  %i.cw = icmp eq i32 %i.cv, 2
  br i1 %i.cw, label %bb.m, label %bb.aa

bb.m:                                             ; preds = %bb.l
  %i.cx = load i32, ptr %i.ad, align 4, !tbaa !139
  %i.cy = icmp sgt i32 %i.cx, 1
  br i1 %i.cy, label %bb.n, label %bb.aa

bb.n:                                             ; preds = %bb.m
  %i.cz = call noundef i64 @_ZNK11OpenImageIO4v3_19ImageSpec11tile_pixelsEv(ptr noundef nonnull align 8 dereferenceable(160) %i.i) #34 ; 3 uses
  %i.da = load i32, ptr %i.bu, align 4, !tbaa !146
  %narrow.i86 = call i32 @llvm.smax.i32(i32 %i.da, i32 1)
  %spec.select.i87 = zext nneg i32 %narrow.i86 to i64
  %i.db = load i8, ptr %i.bw, align 1, !tbaa !161
  %i.dc = zext i8 %i.db to i64
  %i.dd = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bt) #34
  %i.de = mul i64 %i.cz, %i.dc
  %i.df = mul i64 %i.de, %i.dd
  %i.dg = mul i64 %i.df, %spec.select.i87         ; 2 uses
  %i.dh = load i32, ptr %i.bg, align 4, !tbaa !120 ; 3 uses
  %i.di = sext i32 %i.dh to i64
  %i.dj = mul i64 %i.dg, %i.di                    ; 4 uses
  %i.dk = icmp ult i64 %i.dj, 65537
  br i1 %i.dk, label %bb.o, label %bb.q

bb.o:                                             ; preds = %bb.n
  %.not73 = icmp eq i64 %i.dj, 0
  br i1 %.not73, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dl = alloca i8, i64 %i.dj, align 16
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

bb.q:                                             ; preds = %bb.n
  %i.dm = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.dj) #38
          to label %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge unwind label %.thread ; 2 uses

._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge: ; preds = %bb.q
  %.pre = load i32, ptr %i.bg, align 4, !tbaa !120
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit

_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit: ; preds = %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge, %bb.p, %bb.o
  %i.dn = phi i32 [ %i.dh, %bb.o ], [ %i.dh, %bb.p ], [ %.pre, %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge ] ; 2 uses
  %.sroa.0.0 = phi ptr [ null, %bb.o ], [ null, %bb.p ], [ %i.dm, %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge ] ; 6 uses
  %.057 = phi ptr [ null, %bb.o ], [ %i.dl, %bb.p ], [ %i.dm, %._ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit_crit_edge ] ; 4 uses
  %i.do = trunc i64 %i.cz to i32
  %i.dp = load i32, ptr %i.bu, align 4, !tbaa !146
  %narrow.i.i.i = call i32 @llvm.smax.i32(i32 %i.dp, i32 1)
  %i.dq = load i8, ptr %i.bw, align 1, !tbaa !161
  %i.dr = zext i8 %i.dq to i64
  %i.ds = call noundef i64 @_ZNK11OpenImageIO4v3_18TypeDesc8basesizeEv(ptr noundef nonnull align 4 dereferenceable(8) %i.bt) #34
  %i.dt = mul i64 %i.ds, %i.dr
  %i.du = trunc i64 %i.dt to i32
  %i.dv = mul i32 %narrow.i.i.i, %i.du            ; 4 uses
  %i.dw = icmp sgt i32 %i.do, 0
  br i1 %i.dw, label %.preheader26.lr.ph.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit

.preheader26.lr.ph.i:                             ; preds = %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit
  %i.dx = icmp slt i32 %i.dn, 1
  %i.dy = icmp slt i32 %i.dv, 1
  %brmerge.i = select i1 %i.dx, i1 true, i1 %i.dy
  br i1 %brmerge.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.preheader.i

.preheader26.preheader.i:                         ; preds = %.preheader26.lr.ph.i
  %i.dz = zext nneg i32 %i.dv to i64              ; 14 uses
  %i.ea = and i64 %i.cz, 2147483647               ; 3 uses
  %i.eb = zext nneg i32 %i.dn to i64              ; 5 uses
  %15 = mul nuw nsw i64 %i.eb, %i.dz
  %i.ec = mul nuw nsw i64 %i.eb, %i.dz
  %i.ed = add nsw i64 %i.eb, -1
  %i.ee = mul nsw i64 %i.ed, %i.ea
  %16 = add nsw i64 %i.ee, 1
  %i.ef = getelementptr i8, ptr %.168, i64 %15
  %min.iters.check = icmp ult i32 %i.dv, 4
  %min.iters.check151 = icmp ult i32 %i.dv, 32
  %i.eg = and i64 %i.dz, 28
  %n.vec = and i64 %i.dz, 2147483616              ; 4 uses
  %cmp.n = icmp eq i64 %n.vec, %i.dz
  %min.epilog.iters.check = icmp eq i64 %i.eg, 0
  %n.vec153 = and i64 %i.dz, 2147483644           ; 3 uses
  %cmp.n157 = icmp eq i64 %n.vec153, %i.dz
  %xtraiter = and i64 %i.dz, 3                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader26.i

.preheader26.i:                                   ; preds = %._crit_edge29.i, %.preheader26.preheader.i
  %indvars.iv42.i = phi i64 [ 0, %.preheader26.preheader.i ], [ %indvars.iv.next43.i, %._crit_edge29.i ] ; 6 uses
  %i.eh = mul i64 %i.ec, %indvars.iv42.i          ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ef, i64 %i.eh
  %scevgep151 = getelementptr i8, ptr %.168, i64 %i.eh
  %i.ei = mul i64 %indvars.iv42.i, %i.dz
  %17 = add i64 %16, %indvars.iv42.i
  %i.ej = mul i64 %17, %i.dz
  %scevgep149 = getelementptr i8, ptr %.057, i64 %i.ej
  %scevgep150 = getelementptr i8, ptr %.057, i64 %i.ei
  %i.ek = mul nuw nsw i64 %indvars.iv42.i, %i.eb
  %bound0 = icmp ult ptr %scevgep150, %scevgep
  %bound1 = icmp ult ptr %scevgep151, %scevgep149
  %found.conflict = and i1 %bound0, %bound1
  br label %iter.check

iter.check:                                       ; preds = %._crit_edge.i, %.preheader26.i
  %indvars.iv37.i = phi i64 [ 0, %.preheader26.i ], [ %indvars.iv.next38.i, %._crit_edge.i ] ; 3 uses
  %i.el = add nuw nsw i64 %indvars.iv37.i, %i.ek
  %i.em = mul nuw nsw i64 %i.el, %i.dz
  %i.en = mul nuw nsw i64 %indvars.iv37.i, %i.ea
  %i.eo = add nuw nsw i64 %i.en, %indvars.iv42.i
  %i.ep = mul nuw nsw i64 %i.eo, %i.dz
  %invariant.gep.i = getelementptr inbounds nuw i8, ptr %.168, i64 %i.em ; 7 uses
  %invariant.gep49.i = getelementptr inbounds nuw i8, ptr %.057, i64 %i.ep ; 7 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %found.conflict
  br i1 %brmerge, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  br i1 %min.iters.check151, label %vec.epilog.ph, label %vector.body

vector.body:                                      ; preds = %vector.main.loop.iter.check, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.main.loop.iter.check ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load = load <16 x i8>, ptr %i.eq, align 1, !tbaa !65, !alias.scope !672
  %wide.load152 = load <16 x i8>, ptr %i.er, align 1, !tbaa !65, !alias.scope !672
  %i.es = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <16 x i8> %wide.load, ptr %i.es, align 1, !tbaa !65, !alias.scope !673, !noalias !672
  store <16 x i8> %wide.load152, ptr %i.et, align 1, !tbaa !65, !alias.scope !673, !noalias !672
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eu = icmp eq i64 %index.next, %n.vec
  br i1 %i.eu, label %middle.block, label %vector.body, !llvm.loop !667

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index154 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next156, %vec.epilog.vector.body ] ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %index154
  %wide.load155 = load <4 x i8>, ptr %i.ev, align 1, !tbaa !65, !alias.scope !672
  %i.ew = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %index154
  store <4 x i8> %wide.load155, ptr %i.ew, align 1, !tbaa !65, !alias.scope !673, !noalias !672
  %index.next156 = add nuw i64 %index154, 4       ; 2 uses
  %i.ex = icmp eq i64 %index.next156, %n.vec153
  br i1 %i.ex, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !668

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  br i1 %cmp.n157, label %._crit_edge.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %iter.check ], [ %n.vec153, %vec.epilog.middle.block ], [ %n.vec, %vec.epilog.iter.check ] ; 3 uses
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.i.prol = phi i64 [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %gep.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i.prol
  %i.ey = load i8, ptr %gep.i.prol, align 1, !tbaa !65
  %gep50.i.prol = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i.prol
  store i8 %i.ey, ptr %gep50.i.prol, align 1, !tbaa !65
  %indvars.iv.next.i.prol = add nuw nsw i64 %indvars.iv.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !669

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.i.unr = phi i64 [ %indvars.iv.i.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.i.prol, %vec.epilog.scalar.ph.prol ]
  %i.ez = sub nsw i64 %indvars.iv.i.ph, %i.dz
  %i.fa = icmp ugt i64 %i.ez, -4
  br i1 %i.fa, label %._crit_edge.i, label %vec.epilog.scalar.ph

._crit_edge29.i:                                  ; preds = %._crit_edge.i
  %indvars.iv.next43.i = add nuw nsw i64 %indvars.iv42.i, 1 ; 2 uses
  %exitcond46.not.i = icmp eq i64 %indvars.iv.next43.i, %i.ea
  br i1 %exitcond46.not.i, label %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit, label %.preheader26.i, !llvm.loop !2

._crit_edge.i:                                    ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph, %vec.epilog.middle.block, %middle.block
  %indvars.iv.next38.i = add nuw nsw i64 %indvars.iv37.i, 1 ; 2 uses
  %exitcond41.not.i = icmp eq i64 %indvars.iv.next38.i, %i.eb
  br i1 %exitcond41.not.i, label %._crit_edge29.i, label %iter.check, !llvm.loop !3

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.prol.loopexit, %vec.epilog.scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i.3, %vec.epilog.scalar.ph ], [ %indvars.iv.i.unr, %vec.epilog.scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.i
  %i.fb = load i8, ptr %gep.i, align 1, !tbaa !65
  %gep50.i = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.i
  store i8 %i.fb, ptr %gep50.i, align 1, !tbaa !65
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %gep.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i
  %i.fc = load i8, ptr %gep.i.1, align 1, !tbaa !65
  %gep50.i.1 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i
  store i8 %i.fc, ptr %gep50.i.1, align 1, !tbaa !65
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %gep.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.1
  %i.fd = load i8, ptr %gep.i.2, align 1, !tbaa !65
  %gep50.i.2 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.1
  store i8 %i.fd, ptr %gep50.i.2, align 1, !tbaa !65
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i, 3 ; 2 uses
  %gep.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep.i, i64 %indvars.iv.next.i.2
  %i.fe = load i8, ptr %gep.i.3, align 1, !tbaa !65
  %gep50.i.3 = getelementptr inbounds nuw i8, ptr %invariant.gep49.i, i64 %indvars.iv.next.i.2
  store i8 %i.fe, ptr %gep50.i.3, align 1, !tbaa !65
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i, 4 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, %i.dz
  br i1 %exitcond.not.i.3, label %._crit_edge.i, label %vec.epilog.scalar.ph, !llvm.loop !670

_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit: ; preds = %._crit_edge29.i, %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EE5resetIPcvEEvT_.exit, %.preheader26.lr.ph.i
  %i.ff = load i32, ptr %i.bg, align 4, !tbaa !120
  %.not79125 = icmp sgt i32 %i.ff, 0
  br i1 %.not79125, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %_ZN11OpenImageIO4v3_110TIFFOutput18contig_to_separateEiiPKcPc.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 184
  br label %bb.s

bb.r:                                             ; preds = %bb.t
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.fh = load i32, ptr %i.bg, align 4, !tbaa !120
  %i.fi = sext i32 %i.fh to i64
  %.not79 = icmp slt i64 %indvars.iv.next, %i.fi
  br i1 %.not79, label %bb.s, label %.critedge, !llvm.loop !671

bb.s:                                             ; preds = %.lr.ph, %bb.r
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.r ] ; 3 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !117
  %i.fk = mul i64 %i.dg, %indvars.iv
  %i.fl = getelementptr inbounds nuw i8, ptr %.057, i64 %i.fk
  %i.fm = trunc i64 %indvars.iv to i16
  %i.fn = invoke i64 @TIFFWriteTile(ptr noundef %i.fj, ptr noundef %i.fl, i32 noundef %i.aw, i32 noundef %i.ay, i32 noundef %i.ba, i16 noundef zeroext %i.fm)
          to label %bb.t unwind label %.loopexit

bb.t:                                             ; preds = %bb.s
  %i.fo = icmp slt i64 %i.fn, 0
  br i1 %i.fo, label %bb.u, label %bb.r

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #34
  invoke void @_ZN11OpenImageIO4v3_110TIFFOutput20oiio_tiff_last_errorB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(336) %0)
          to label %bb.v unwind label %bb.x

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  %i.fp = load i32, ptr %i.i, align 8, !tbaa !176
  %i.fq = add nsw i32 %i.fp, %i.aw
  store i32 %i.fq, ptr %i.a, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #34
  %i.fr = load i32, ptr %i.p, align 4, !tbaa !172
  %i.fs = add nsw i32 %i.fr, %i.ay
  store i32 %i.fs, ptr %i.b, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #34
  %i.ft = load i32, ptr %i.w, align 8, !tbaa !177
  %i.fu = add nsw i32 %i.ft, %i.ba
  store i32 %i.fu, ptr %i.c, align 4, !tbaa !56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #34
  %i.fv = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.fw = load i64, ptr %i.fv, align 8, !tbaa !66
  %.not74 = icmp eq i64 %i.fw, 0
  %i.fx = load ptr, ptr %13, align 8
  %spec.select = select i1 %.not74, ptr @.str.86, ptr %i.fx
  store ptr %spec.select, ptr %i.d, align 8, !tbaa !142
  invoke void @_ZNK11OpenImageIO4v3_111ImageOutput8errorfmtIJiiiPKcEEEvS4_DpRKT_(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull @.str.91, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b, ptr noundef nonnull align 4 dereferenceable(4) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.w unwind label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  %i.fy = load ptr, ptr %13, align 8, !tbaa !64   ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.ga = icmp eq ptr %i.fy, %i.fz
  br i1 %i.ga, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.w
  %i.gb = load i64, ptr %i.fz, align 8, !tbaa !65
  %i.gc = add i64 %i.gb, 1
  call void @_ZdlPvm(ptr noundef %i.fy, i64 noundef %i.gc) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #34
  %.not.i88 = icmp eq ptr %.sroa.0.0, null
  br i1 %.not.i88, label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit, label %_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i

_ZNKSt14default_deleteIA_cEclIcEENSt9enable_ifIXsr14is_convertibleIPA_T_PS0_EE5valueEvE4typeEPS4_.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  call void @_ZdaPv(ptr noundef nonnull %.sroa.0.0) #36
  br label %_ZNSt10unique_ptrIA_cSt14default_deleteIS0_EED2Ev.exit

.loopexit:                                        ; preds = %bb.s
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

.thread:                                          ; preds = %bb.h, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit, %_ZN11OpenImageIO4v3_110TIFFOutput15move_to_scratchEPKvm.exit101, %bb.am, %bb.k, %bb.ab, %bb.q
end_hunk_2
begin_hunk_3_@_ZN3fmt3v126detail14write_exponentIcNS0_14basic_appenderIcEEEET0_iS5_:bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !267
  %i.as = icmp ugt i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.k, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !260
  tail call void %i.au(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ap), !inline_history !13
  %.pre.i.i27 = load i64, ptr %i.an, align 8, !tbaa !268 ; 2 uses
  %.pre2.i.i28 = add i64 %.pre.i.i27, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29

_ZN3fmt3v1214basic_appenderIcEaSEc.exit29:        ; preds = %bb.j, %bb.k
  %.pre-phi.i.i26 = phi i64 [ %i.ap, %bb.j ], [ %.pre2.i.i28, %bb.k ]
  %i.av = phi i64 [ %i.ao, %bb.j ], [ %.pre.i.i27, %bb.k ]
  %i.aw = load ptr, ptr %1, align 8, !tbaa !266
  store i64 %.pre-phi.i.i26, ptr %i.an, align 8, !tbaa !268
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 %i.av
  store i8 %i.am, ptr %i.ax, align 1, !tbaa !65
  br label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29, %bb.f
  %.013 = phi i32 [ %i.u, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit29 ], [ %.0, %bb.f ]
  %i.ay = shl nuw nsw i32 %.013, 1
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw i8, ptr @_ZZN3fmt3v126detail7digits2EmE4data, i64 %i.az ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 2, !tbaa !65
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.bd = load i64, ptr %i.bc, align 8, !tbaa !268 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !267
  %i.bh = icmp ugt i64 %i.be, %i.bg
  br i1 %i.bh, label %bb.m, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

bb.m:                                             ; preds = %bb.l
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !260
  tail call void %i.bj(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.be), !inline_history !13
  %.pre.i.i32 = load i64, ptr %i.bc, align 8, !tbaa !268 ; 2 uses
  %.pre2.i.i33 = add i64 %.pre.i.i32, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34

_ZN3fmt3v1214basic_appenderIcEaSEc.exit34:        ; preds = %bb.l, %bb.m
  %.pre-phi.i.i31 = phi i64 [ %i.be, %bb.l ], [ %.pre2.i.i33, %bb.m ]
  %i.bk = phi i64 [ %i.bd, %bb.l ], [ %.pre.i.i32, %bb.m ]
  %i.bl = load ptr, ptr %1, align 8, !tbaa !266
  store i64 %.pre-phi.i.i31, ptr %i.bc, align 8, !tbaa !268
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 %i.bk
  store i8 %i.bb, ptr %i.bm, align 1, !tbaa !65
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ba, i64 1
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !65
  %i.bp = load i64, ptr %i.bc, align 8, !tbaa !268 ; 2 uses
  %i.bq = add i64 %i.bp, 1                        ; 3 uses
  %i.br = load i64, ptr %i.bf, align 8, !tbaa !267
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.n, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

bb.n:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !260
  tail call void %i.bu(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bq), !inline_history !13
  %.pre.i.i37 = load i64, ptr %i.bc, align 8, !tbaa !268 ; 2 uses
  %.pre2.i.i38 = add i64 %.pre.i.i37, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit39

_ZN3fmt3v1214basic_appenderIcEaSEc.exit39:        ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34, %bb.n
  %.pre-phi.i.i36 = phi i64 [ %i.bq, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre2.i.i38, %bb.n ]
  %i.bv = phi i64 [ %i.bp, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit34 ], [ %.pre.i.i37, %bb.n ]
  %i.bw = load ptr, ptr %1, align 8, !tbaa !266
  store i64 %.pre-phi.i.i36, ptr %i.bc, align 8, !tbaa !268
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bv
  store i8 %i.bo, ptr %i.bx, align 1, !tbaa !65
  ret ptr %1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !304
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !282    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.123, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !65
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !268
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !267
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !260
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !19
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !331   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !268 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !267
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !260
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai), !inline_history !817
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !268 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !266
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !268
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !65
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !332 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !268
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.cd, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.02732.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.02732.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02732.i.i.idx.i ; 7 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !267
  %i.az = sub i64 %i.ay, %i.ax
  %gepdiff.i = sub nsw i64 3, %.02732.i.i.idx.i   ; 4 uses
  %i.ba = icmp ult i64 %i.az, %gepdiff.i
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !260
  %i.bc = add i64 %gepdiff.i, %i.ax
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !818
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !268 ; 2 uses
  %i.be = load i64, ptr %i.av, align 8, !tbaa !267
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %gepdiff.i, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !266 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.02732.i.i.idx.i, %i.at
  %i.bl = add i64 %.026.i.i.i, %i.bi
  %i.bm = sub i64 %i.bk, %i.bl
  %diff.check = icmp ugt i64 %i.bm, -32
  br i1 %diff.check, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check35 = icmp ult i64 %.025.i.i.i, 32
  br i1 %min.iters.check35, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bn = and i64 %.025.i.i.i, 28
  %n.vec = and i64 %.025.i.i.i, -32               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !65
  %wide.load36 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !65
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !65
  store <16 x i8> %wide.load36, ptr %i.br, align 1, !tbaa !65
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !819

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !169

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !65
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bu, align 1, !tbaa !65
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !820

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n41 = icmp eq i64 %.025.i.i.i, %n.vec37
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec37, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i.i, 3              ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.030.i.i.i.prol = phi i64 [ %i.bz, %.lr.ph.i.i.i.prol ], [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.bw = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i.prol
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !65
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !65
  %i.bz = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !821

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !268
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cc = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.j ]
  %i.cd = add i64 %i.cc, %.025.i.i.i              ; 2 uses
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !268
  %.02732.i.i.add.i = add nuw nsw i64 %.025.i.i.i, %.02732.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !65
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !65
  %i.ch = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !65
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !65
  %i.cl = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !65
  %i.cp = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !65
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !65
  %i.ct = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ct, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !822

_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit: ; preds = %._crit_edge.i.i.i
  %.not31 = icmp eq i64 %i.d, %i.m
  br i1 %.not31, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %i.cu = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %.sroa.09.0, i64 noundef %i.n, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit
  %.sroa.09.1 = phi ptr [ %i.cu, %bb.k ], [ %.sroa.09.0, %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit ]
  ret ptr %.sroa.09.1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden ptr @_ZZN3fmt3v126detail11write_fixedIcNS1_23fallback_digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refEENKUlS6_E_clES6_(ptr noundef nonnull align 8 dereferenceable(56) %0, ptr %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !825, !nonnull !127, !align !313
  %i.b = load i32, ptr %i.a, align 4, !tbaa !333  ; 2 uses
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nsw i32 %i.b, 3
  %i.d = lshr i32 539700480, %i.c
  %i.e = trunc i32 %i.d to i8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !268  ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !267
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !260
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.h), !inline_history !13
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !268 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit

_ZN3fmt3v1214basic_appenderIcEaSEc.exit:          ; preds = %bb.b, %bb.c
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %1, align 8, !tbaa !266
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !268
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !65
  br label %bb.d

bb.d:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit, %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !826, !nonnull !127, !align !313 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4, !tbaa !340
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !827, !nonnull !127, !align !313
  %i.v = load i32, ptr %i.u, align 4, !tbaa !56
  %i.w = getelementptr inbounds nuw i8, ptr %i.r, i64 4
  %i.x = load i32, ptr %i.w, align 4, !tbaa !335  ; 2 uses
  %i.y = tail call ptr @_ZN3fmt3v126detail14format_decimalIcjNS0_14basic_appenderIcEETnNSt9enable_ifIXntsr3std10is_pointerINSt9remove_cvINSt16remove_referenceIT1_E4typeEE4typeEEE5valueEiE4typeELi0EEES8_S8_T0_i(ptr %1, i32 noundef %i.s, i32 noundef %i.v) ; 14 uses
  %i.z = icmp sgt i32 %i.x, 0
  br i1 %i.z, label %.lr.ph.i.i, label %_ZN3fmt3v126detail17write_significandIcNS0_14basic_appenderIcEEjNS1_23fallback_digit_groupingIcEEEET0_S7_T1_iiRKT2_.exit

.lr.ph.i.i:                                       ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  br label %bb.e

bb.e:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i, %.lr.ph.i.i
  %.04.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.al, %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i ]
  %i.ad = load i64, ptr %i.aa, align 8, !tbaa !268 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = load i64, ptr %i.ab, align 8, !tbaa !267
  %i.ag = icmp ugt i64 %i.ae, %i.af
  br i1 %i.ag, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.ac, align 8, !tbaa !260
  tail call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %i.y, i64 noundef %i.ae), !inline_history !823
  %.pre.i.i.i.i = load i64, ptr %i.aa, align 8, !tbaa !268 ; 2 uses
  %.pre2.i.i.i.i = add i64 %.pre.i.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i.i:      ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i.i = phi i64 [ %i.ae, %bb.e ], [ %.pre2.i.i.i.i, %bb.f ]
end_hunk_3
