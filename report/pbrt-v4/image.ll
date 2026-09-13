Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/image?download=true
inline.NumInlined: 6802
inline.NumDeleted: 1350
loop-unroll.NumCompletelyUnrolled: 53
loop-unroll.NumRuntimeUnrolled: 64
loop-unroll.NumUnrolled: 117
begin_hunk_0_@_ZN4pbrt5ImageC2ERKS0_:bb.a
  br i1 %exitcond.not.i.i36.7, label %._crit_edge.thread.i.i37, label %.lr.ph.i.i33, !llvm.loop !395

_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i: ; preds = %._crit_edge.thread.i.i37, %._crit_edge.i.i44
  %.pre11.i39.pr = load i64, ptr %i.gm, align 8, !tbaa !116 ; 2 uses
  store i64 %i.gn, ptr %i.gk, align 8, !tbaa !117
  store ptr %i.gt, ptr %i.gj, align 8, !tbaa !84
  %.not.i40 = icmp eq i64 %.pre11.i39.pr, 0
  br i1 %.not.i40, label %.loopexit, label %iter.check166

iter.check166:                                    ; preds = %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.thread, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i
  %.0.i.i.i.i21.i3860 = phi ptr [ null, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.thread ], [ %i.gt, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i ] ; 12 uses
  %.pre11.i3959 = phi i64 [ %i.gn, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.thread ], [ %.pre11.i39.pr, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i ] ; 14 uses
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.iu = load ptr, ptr %i.it, align 8, !tbaa !84 ; 12 uses
  %min.iters.check151 = icmp ult i64 %.pre11.i3959, 4
  %i.iv = ptrtoaddr ptr %i.iu to i64
  %.0.i.i.i.i21.i3860149 = ptrtoaddr ptr %.0.i.i.i.i21.i3860 to i64
  %i.iw = sub i64 %i.iv, %.0.i.i.i.i21.i3860149
  %diff.check150 = icmp ugt i64 %i.iw, -128
  %or.cond183 = select i1 %min.iters.check151, i1 true, i1 %diff.check150
  br i1 %or.cond183, label %vec.epilog.scalar.ph167.preheader, label %vector.main.loop.iter.check152

vector.main.loop.iter.check152:                   ; preds = %iter.check166
  %min.iters.check153 = icmp ult i64 %.pre11.i3959, 32
  br i1 %min.iters.check153, label %vec.epilog.ph170, label %vector.ph154

vector.ph154:                                     ; preds = %vector.main.loop.iter.check152
  %i.ix = and i64 %.pre11.i3959, 28
  %n.vec155 = and i64 %.pre11.i3959, -32          ; 4 uses
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next162, %vector.body156 ] ; 3 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %index157 ; 4 uses
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index157 ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 32
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iz, i64 64
  %i.jc = getelementptr inbounds nuw i8, ptr %i.iz, i64 96
  %wide.load158 = load <8 x float>, ptr %i.iz, align 4, !tbaa !79
  %wide.load159 = load <8 x float>, ptr %i.ja, align 4, !tbaa !79
  %wide.load160 = load <8 x float>, ptr %i.jb, align 4, !tbaa !79
  %wide.load161 = load <8 x float>, ptr %i.jc, align 4, !tbaa !79
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 32
  %i.je = getelementptr inbounds nuw i8, ptr %i.iy, i64 64
  %i.jf = getelementptr inbounds nuw i8, ptr %i.iy, i64 96
  store <8 x float> %wide.load158, ptr %i.iy, align 4, !tbaa !79
  store <8 x float> %wide.load159, ptr %i.jd, align 4, !tbaa !79
  store <8 x float> %wide.load160, ptr %i.je, align 4, !tbaa !79
  store <8 x float> %wide.load161, ptr %i.jf, align 4, !tbaa !79
  %index.next162 = add nuw i64 %index157, 32      ; 2 uses
  %i.jg = icmp eq i64 %index.next162, %n.vec155
  br i1 %i.jg, label %middle.block163, label %vector.body156, !llvm.loop !396

middle.block163:                                  ; preds = %vector.body156
  %cmp.n164 = icmp eq i64 %.pre11.i3959, %n.vec155
  br i1 %cmp.n164, label %.loopexit, label %vec.epilog.iter.check168

vec.epilog.iter.check168:                         ; preds = %middle.block163
  %min.epilog.iters.check169 = icmp eq i64 %i.ix, 0
  br i1 %min.epilog.iters.check169, label %vec.epilog.scalar.ph167.preheader, label %vec.epilog.ph170, !prof !156

vec.epilog.ph170:                                 ; preds = %vector.main.loop.iter.check152, %vec.epilog.iter.check168
  %vec.epilog.resume.val165 = phi i64 [ %n.vec155, %vec.epilog.iter.check168 ], [ 0, %vector.main.loop.iter.check152 ]
  %n.vec171 = and i64 %.pre11.i3959, -4           ; 3 uses
  br label %vec.epilog.vector.body172

vec.epilog.vector.body172:                        ; preds = %vec.epilog.vector.body172, %vec.epilog.ph170
  %index173 = phi i64 [ %vec.epilog.resume.val165, %vec.epilog.ph170 ], [ %index.next175, %vec.epilog.vector.body172 ] ; 3 uses
  %i.jh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %index173
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %index173
  %wide.load174 = load <4 x float>, ptr %i.ji, align 4, !tbaa !79
  store <4 x float> %wide.load174, ptr %i.jh, align 4, !tbaa !79
  %index.next175 = add nuw i64 %index173, 4       ; 2 uses
  %i.jj = icmp eq i64 %index.next175, %n.vec171
  br i1 %i.jj, label %vec.epilog.middle.block176, label %vec.epilog.vector.body172, !llvm.loop !397

vec.epilog.middle.block176:                       ; preds = %vec.epilog.vector.body172
  %cmp.n177 = icmp eq i64 %.pre11.i3959, %n.vec171
  br i1 %cmp.n177, label %.loopexit, label %vec.epilog.scalar.ph167.preheader

vec.epilog.scalar.ph167.preheader:                ; preds = %iter.check166, %vec.epilog.iter.check168, %vec.epilog.middle.block176
  %.09.i42.ph = phi i64 [ 0, %iter.check166 ], [ %n.vec155, %vec.epilog.iter.check168 ], [ %n.vec171, %vec.epilog.middle.block176 ] ; 4 uses
  %i.jk = sub i64 %.pre11.i3959, %.09.i42.ph
  %xtraiter191 = and i64 %i.jk, 7                 ; 2 uses
  %lcmp.mod192.not = icmp eq i64 %xtraiter191, 0
  br i1 %lcmp.mod192.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol

vec.epilog.scalar.ph167.prol:                     ; preds = %vec.epilog.scalar.ph167.preheader, %vec.epilog.scalar.ph167.prol
  %.09.i42.prol = phi i64 [ %i.jo, %vec.epilog.scalar.ph167.prol ], [ %.09.i42.ph, %vec.epilog.scalar.ph167.preheader ] ; 3 uses
  %prol.iter193 = phi i64 [ %prol.iter193.next, %vec.epilog.scalar.ph167.prol ], [ 0, %vec.epilog.scalar.ph167.preheader ]
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %.09.i42.prol
  %i.jm = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.09.i42.prol
  %i.jn = load float, ptr %i.jm, align 4, !tbaa !79
  store float %i.jn, ptr %i.jl, align 4, !tbaa !79
  %i.jo = add nuw i64 %.09.i42.prol, 1            ; 2 uses
  %prol.iter193.next = add i64 %prol.iter193, 1   ; 2 uses
  %prol.iter193.cmp.not = icmp eq i64 %prol.iter193.next, %xtraiter191
  br i1 %prol.iter193.cmp.not, label %vec.epilog.scalar.ph167.prol.loopexit, label %vec.epilog.scalar.ph167.prol, !llvm.loop !398

vec.epilog.scalar.ph167.prol.loopexit:            ; preds = %vec.epilog.scalar.ph167.prol, %vec.epilog.scalar.ph167.preheader
  %.09.i42.unr = phi i64 [ %.09.i42.ph, %vec.epilog.scalar.ph167.preheader ], [ %i.jo, %vec.epilog.scalar.ph167.prol ]
  %i.jp = sub i64 %.09.i42.ph, %.pre11.i3959
  %i.jq = icmp ugt i64 %i.jp, -8
  br i1 %i.jq, label %.loopexit, label %vec.epilog.scalar.ph167

vec.epilog.scalar.ph167:                          ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167
  %.09.i42 = phi i64 [ %i.kw, %vec.epilog.scalar.ph167 ], [ %.09.i42.unr, %vec.epilog.scalar.ph167.prol.loopexit ] ; 10 uses
  %i.jr = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %.09.i42
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %.09.i42
  %i.jt = load float, ptr %i.js, align 4, !tbaa !79
  store float %i.jt, ptr %i.jr, align 4, !tbaa !79
  %i.ju = add nuw i64 %.09.i42, 1                 ; 2 uses
  %i.jv = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.ju
  %i.jw = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ju
  %i.jx = load float, ptr %i.jw, align 4, !tbaa !79
  store float %i.jx, ptr %i.jv, align 4, !tbaa !79
  %i.jy = add nuw i64 %.09.i42, 2                 ; 2 uses
  %i.jz = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.jy
  %i.ka = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.jy
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !79
  store float %i.kb, ptr %i.jz, align 4, !tbaa !79
  %i.kc = add nuw i64 %.09.i42, 3                 ; 2 uses
  %i.kd = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.kc
  %i.ke = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.kc
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !79
  store float %i.kf, ptr %i.kd, align 4, !tbaa !79
  %i.kg = add nuw i64 %.09.i42, 4                 ; 2 uses
  %i.kh = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.kg
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.kg
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !79
  store float %i.kj, ptr %i.kh, align 4, !tbaa !79
  %i.kk = add nuw i64 %.09.i42, 5                 ; 2 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.kk
  %i.km = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.kk
  %i.kn = load float, ptr %i.km, align 4, !tbaa !79
  store float %i.kn, ptr %i.kl, align 4, !tbaa !79
  %i.ko = add nuw i64 %.09.i42, 6                 ; 2 uses
  %i.kp = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.ko
  %i.kq = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ko
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !79
  store float %i.kr, ptr %i.kp, align 4, !tbaa !79
  %i.ks = add nuw i64 %.09.i42, 7                 ; 2 uses
  %i.kt = getelementptr inbounds nuw [4 x i8], ptr %.0.i.i.i.i21.i3860, i64 %i.ks
  %i.ku = getelementptr inbounds nuw [4 x i8], ptr %i.iu, i64 %i.ks
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !79
  store float %i.kv, ptr %i.kt, align 4, !tbaa !79
  %i.kw = add nuw i64 %.09.i42, 8                 ; 2 uses
  %exitcond.not.i43.7 = icmp eq i64 %i.kw, %.pre11.i3959
  br i1 %exitcond.not.i43.7, label %.loopexit, label %vec.epilog.scalar.ph167, !llvm.loop !399

.loopexit:                                        ; preds = %vec.epilog.scalar.ph167.prol.loopexit, %vec.epilog.scalar.ph167, %middle.block163, %vec.epilog.middle.block176, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i, %.loopexit61
  %i.kx = phi i64 [ 0, %.loopexit61 ], [ 0, %_ZN4pstd6vectorIfNS_3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i ], [ %.pre11.i3959, %middle.block163 ], [ %.pre11.i3959, %vec.epilog.middle.block176 ], [ %.pre11.i3959, %vec.epilog.scalar.ph167 ], [ %.pre11.i3959, %vec.epilog.scalar.ph167.prol.loopexit ]
  store i64 %i.kx, ptr %i.gl, align 8, !tbaa !116
  ret void

bb.i:                                             ; preds = %bb.e, %_ZN4pstd3pmr21polymorphic_allocatorIhE15allocate_objectIhEEPT_m.exit.i.i
  %i.ky = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.j:                                             ; preds = %._crit_edge.thread.i.i, %_ZN4pstd3pmr21polymorphic_allocatorIN4pbrt4HalfEE15allocate_objectIS3_EEPT_m.exit.i.i
  %i.kz = landingpad { ptr, i32 }
          cleanup
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.thread.i.i37, %_ZN4pstd3pmr21polymorphic_allocatorIfE15allocate_objectIfEEPT_m.exit.i.i
  %i.la = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4pstd6vectorIN4pbrt4HalfENS_3pmr21polymorphic_allocatorIS2_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.bq) #32
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.pn = phi { ptr, i32 } [ %i.la, %bb.k ], [ %i.kz, %bb.j ]
  call void @_ZN4pstd6vectorIhNS_3pmr21polymorphic_allocatorIhEEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.ah) #32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.l ], [ %i.ky, %bb.i ]
  call void @_ZN4pstd6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEENS_3pmr21polymorphic_allocatorIS6_EEED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.b) #32
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image11GetChannelsENS_6Point2IiEENS_10WrapMode2DE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::ImageChannelValues") align 8 initializes((0, 16), (32, 40)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(152) %1, i64 %2, i64 %3) local_unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.pbrt::Point2", align 8      ; 3 uses
  store i64 %2, ptr %4, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %sext = shl i64 %i.b, 32                        ; 4 uses
  %i.c = ashr exact i64 %sext, 32                 ; 3 uses
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %0, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i.i.i = icmp ugt i64 %i.c, 4
  store i64 0, ptr %i.g, align 8
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.i = ashr exact i64 %sext, 30
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.i, i64 noundef 4), !inline_history !16 ; 2 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !161
  store ptr %i.m, ptr %i.f, align 8, !tbaa !160
  br label %.lr.ph.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, %._crit_edge.i.i.i
  %i.n = phi ptr [ %i.m, %._crit_edge.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 3 uses
  %.not.i9.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = select i1 %.not.i9.i.i, ptr %i.o, ptr %i.n
  %i.q = ashr exact i64 %sext, 30
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit

_ZN4pbrt18ImageChannelValuesC2Emf.exit:           ; preds = %.lr.ph.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %i.r = phi ptr [ %i.n, %.lr.ph.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 6 uses
  store i64 %i.c, ptr %i.h, align 8, !tbaa !162
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %.sroa.013.0.copyload = load i64, ptr %i.s, align 4
  %i.t = invoke noundef zeroext i1 @_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE(ptr noundef nonnull %4, i64 %.sroa.013.0.copyload, i64 %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  br i1 %i.t, label %bb.d, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

bb.c:                                             ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %.sroa.0.0.copyload = load i64, ptr %4, align 8 ; 2 uses
  %.sroa.0.0.extract.trunc.i = trunc i64 %.sroa.0.0.copyload to i32
  %.sroa.2.0.extract.shift.i = lshr i64 %.sroa.0.0.copyload, 32
  %.sroa.2.0.extract.trunc.i = trunc nuw i64 %.sroa.2.0.extract.shift.i to i32
  %i.v = load i64, ptr %i.a, align 8, !tbaa !75   ; 12 uses
  %i.w = trunc i64 %i.v to i32                    ; 3 uses
  %i.x = load i32, ptr %i.s, align 4, !tbaa !74
  %i.y = mul i32 %i.x, %.sroa.2.0.extract.trunc.i
  %i.z = add i32 %i.y, %.sroa.0.0.extract.trunc.i
  %i.aa = mul i32 %i.z, %i.w
  %i.ab = sext i32 %i.aa to i64                   ; 5 uses
  %i.ac = load i32, ptr %1, align 8, !tbaa !72
  switch i32 %i.ac, label %bb.m [
    i32 0, label %bb.f
    i32 1, label %.preheader
    i32 2, label %.preheader32
  ]

.preheader32:                                     ; preds = %bb.d
  %i.ad = icmp sgt i32 %i.w, 0
  br i1 %i.ad, label %iter.check, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

iter.check:                                       ; preds = %.preheader32
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !84 ; 2 uses
  %i.ag = getelementptr [4 x i8], ptr %i.af, i64 %i.ab ; 11 uses
  %.not.i.i27 = icmp eq ptr %i.r, null
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = select i1 %.not.i.i27, ptr %i.ah, ptr %i.r ; 12 uses
  %wide.trip.count = and i64 %i.v, 2147483647     ; 6 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count, 4
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.aj = ptrtoaddr ptr %i.ai to i64
  %i.ak = ptrtoaddr ptr %i.af to i64
  %i.al = shl nsw i64 %i.ab, 2
  %i.am = add i64 %i.al, %i.ak
  %i.an = sub i64 %i.am, %i.aj
  %diff.check = icmp ugt i64 %i.an, -128
  br i1 %diff.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check51 = icmp samesign ult i64 %wide.trip.count, 32
  br i1 %min.iters.check51, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ao = and i64 %i.v, 28
  %n.vec = and i64 %i.v, 2147483616               ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ap = getelementptr [4 x i8], ptr %i.ag, i64 %index ; 4 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 32
  %i.ar = getelementptr i8, ptr %i.ap, i64 64
  %i.as = getelementptr i8, ptr %i.ap, i64 96
  %wide.load = load <8 x float>, ptr %i.ap, align 4, !tbaa !79
  %wide.load52 = load <8 x float>, ptr %i.aq, align 4, !tbaa !79
  %wide.load53 = load <8 x float>, ptr %i.ar, align 4, !tbaa !79
  %wide.load54 = load <8 x float>, ptr %i.as, align 4, !tbaa !79
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 64
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  store <8 x float> %wide.load, ptr %i.at, align 4, !tbaa !79
  store <8 x float> %wide.load52, ptr %i.au, align 4, !tbaa !79
  store <8 x float> %wide.load53, ptr %i.av, align 4, !tbaa !79
  store <8 x float> %wide.load54, ptr %i.aw, align 4, !tbaa !79
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ax = icmp eq i64 %index.next, %n.vec
  br i1 %i.ax, label %middle.block, label %vector.body, !llvm.loop !400

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count, %n.vec
  br i1 %cmp.n, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ao, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !156

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec55 = and i64 %i.v, 2147483644             ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index56 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next58, %vec.epilog.vector.body ] ; 3 uses
  %i.ay = getelementptr [4 x i8], ptr %i.ag, i64 %index56
  %wide.load57 = load <4 x float>, ptr %i.ay, align 4, !tbaa !79
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index56
  store <4 x float> %wide.load57, ptr %i.az, align 4, !tbaa !79
  %index.next58 = add nuw i64 %index56, 4         ; 2 uses
  %i.ba = icmp eq i64 %index.next58, %n.vec55
  br i1 %i.ba, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !401

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n59 = icmp eq i64 %wide.trip.count, %n.vec55
  br i1 %cmp.n59, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %vector.memcheck, %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec55, %vec.epilog.middle.block ] ; 4 uses
  %i.bb = sub i64 %i.v, %indvars.iv.ph
  %xtraiter = and i64 %i.bb, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol

vec.epilog.scalar.ph.prol:                        ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ], [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %vec.epilog.scalar.ph.prol ], [ 0, %vec.epilog.scalar.ph.preheader ]
  %i.bc = getelementptr [4 x i8], ptr %i.ag, i64 %indvars.iv.prol
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !79
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.prol
  store float %i.bd, ptr %i.be, align 4, !tbaa !79
  %indvars.iv.next.prol = add nuw nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %vec.epilog.scalar.ph.prol.loopexit, label %vec.epilog.scalar.ph.prol, !llvm.loop !402

vec.epilog.scalar.ph.prol.loopexit:               ; preds = %vec.epilog.scalar.ph.prol, %vec.epilog.scalar.ph.preheader
  %indvars.iv.unr = phi i64 [ %indvars.iv.ph, %vec.epilog.scalar.ph.preheader ], [ %indvars.iv.next.prol, %vec.epilog.scalar.ph.prol ]
  %i.bf = sub nsw i64 %indvars.iv.ph, %wide.trip.count
  %i.bg = icmp ugt i64 %i.bf, -8
  br i1 %i.bg, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit, label %vec.epilog.scalar.ph

.preheader:                                       ; preds = %bb.d
  %i.bh = icmp sgt i32 %i.w, 0
  br i1 %i.bh, label %.lr.ph36, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit

.lr.ph36:                                         ; preds = %.preheader
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !80
  %i.bk = getelementptr [2 x i8], ptr %i.bj, i64 %i.ab ; 2 uses
  %.not.i.i26 = icmp eq ptr %i.r, null
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = select i1 %.not.i.i26, ptr %i.bl, ptr %i.r ; 2 uses
  %wide.trip.count43 = and i64 %i.v, 2147483647   ; 3 uses
  %min.iters.check60 = icmp samesign ult i64 %wide.trip.count43, 8
  br i1 %min.iters.check60, label %scalar.ph.preheader, label %vector.ph61

vector.ph61:                                      ; preds = %.lr.ph36
  %n.vec62 = and i64 %i.v, 2147483640             ; 3 uses
  br label %vector.body63

vector.body63:                                    ; preds = %vector.body63, %vector.ph61
  %index64 = phi i64 [ 0, %vector.ph61 ], [ %index.next67, %vector.body63 ] ; 3 uses
  %i.bn = getelementptr [2 x i8], ptr %i.bk, i64 %index64
  %wide.load65 = load <8 x i16>, ptr %i.bn, align 2, !tbaa !83 ; 2 uses
  %i.bo = zext <8 x i16> %wide.load65 to <8 x i32>
  %i.bp = shl nuw nsw <8 x i32> %i.bo, splat (i32 13) ; 4 uses
  %i.bq = and <8 x i32> %i.bp, splat (i32 260046848) ; 2 uses
  %.not = icmp eq <8 x i32> %i.bq, splat (i32 260046848)
  %i.br = and <8 x i32> %i.bp, splat (i32 268427264)
  %i.bs = add nuw nsw <8 x i32> %i.br, splat (i32 939524096)
  %i.bt = icmp eq <8 x i32> %i.bq, zeroinitializer
  %i.bu = or <8 x i32> %i.bp, splat (i32 947912704)
  %i.bv = bitcast <8 x i32> %i.bu to <8 x float>
  %i.bw = fadd <8 x float> %i.bv, splat (float f0xB8800000)
  %i.bx = bitcast <8 x float> %i.bw to <8 x i32>
  %i.by = or <8 x i32> %i.bp, splat (i32 1879048192)
  %predphi = select <8 x i1> %.not, <8 x i32> %i.by, <8 x i32> %i.bs
  %predphi66 = select <8 x i1> %i.bt, <8 x i32> %i.bx, <8 x i32> %predphi
  %i.bz = sext <8 x i16> %wide.load65 to <8 x i32>
  %i.ca = and <8 x i32> %i.bz, splat (i32 -2147483648)
  %i.cb = or <8 x i32> %predphi66, %i.ca
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.bm, i64 %index64
  store <8 x i32> %i.cb, ptr %i.cc, align 4, !tbaa !79
  %index.next67 = add nuw i64 %index64, 8         ; 2 uses
  %i.cd = icmp eq i64 %index.next67, %n.vec62
  br i1 %i.cd, label %middle.block68, label %vector.body63, !llvm.loop !403

middle.block68:                                   ; preds = %vector.body63
  %cmp.n69 = icmp eq i64 %wide.trip.count43, %n.vec62
  br i1 %cmp.n69, label %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph36, %middle.block68
  %indvars.iv40.ph = phi i64 [ 0, %.lr.ph36 ], [ %n.vec62, %middle.block68 ]
  br label %scalar.ph

bb.e:                                             ; preds = %bb.i, %bb.h, %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.f:                                             ; preds = %bb.d
end_hunk_0
begin_hunk_1_@_ZNK4pbrt5Image11CopyRectOutERKNS_7Bounds2IiEEN4pstd4spanIfEENS_10WrapMode2DE:bb.a
  %i.xr = getelementptr inbounds nuw i8, ptr %i.xk, i64 8
  store float %i.xq, ptr %i.xn, align 4, !tbaa !79
  %i.xs = getelementptr [4 x i8], ptr %.val50.val.us.us.us.us.i, i64 %indvars.iv124.i
  %i.xt = getelementptr i8, ptr %i.xs, i64 8
  %i.xu = load float, ptr %i.xt, align 4, !tbaa !79
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xk, i64 12
  store float %i.xu, ptr %i.xr, align 4, !tbaa !79
  %i.xw = getelementptr [4 x i8], ptr %.val50.val.us.us.us.us.i, i64 %indvars.iv124.i
  %i.xx = getelementptr i8, ptr %i.xw, i64 12
  %i.xy = load float, ptr %i.xx, align 4, !tbaa !79
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xk, i64 16
  store float %i.xy, ptr %i.xv, align 4, !tbaa !79
  %i.ya = getelementptr [4 x i8], ptr %.val50.val.us.us.us.us.i, i64 %indvars.iv124.i
  %i.yb = getelementptr i8, ptr %i.ya, i64 16
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !79
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xk, i64 20
  store float %i.yc, ptr %i.xz, align 4, !tbaa !79
  %i.ye = getelementptr [4 x i8], ptr %.val50.val.us.us.us.us.i, i64 %indvars.iv124.i
  %i.yf = getelementptr i8, ptr %i.ye, i64 20
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !79
  %i.yh = getelementptr inbounds nuw i8, ptr %i.xk, i64 24
  store float %i.yg, ptr %i.yd, align 4, !tbaa !79
  %i.yi = getelementptr [4 x i8], ptr %.val50.val.us.us.us.us.i, i64 %indvars.iv124.i
  %i.yj = getelementptr i8, ptr %i.yi, i64 24
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !79
  %i.yl = getelementptr inbounds nuw i8, ptr %i.xk, i64 28
  store float %i.yk, ptr %i.yh, align 4, !tbaa !79
  %indvars.iv.next125.i.7 = add nsw i64 %indvars.iv124.i, 8
  %i.ym = getelementptr [4 x i8], ptr %.val50.val.us.us.us.us.i, i64 %indvars.iv124.i
  %i.yn = getelementptr i8, ptr %i.ym, i64 28
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !79
  %i.yp = getelementptr inbounds nuw i8, ptr %i.xk, i64 32 ; 2 uses
  store float %i.yo, ptr %i.yl, align 4, !tbaa !79
  %i.yq = add nuw nsw i32 %.099.us.us.us.us.i, 8  ; 2 uses
  %exitcond127.not.i141.7 = icmp eq i32 %i.yq, %i.x
  br i1 %exitcond127.not.i141.7, label %._crit_edge.us.us.us.us.i, label %vec.epilog.scalar.ph359, !llvm.loop !552

._crit_edge.us.us.us.us.i:                        ; preds = %vec.epilog.scalar.ph359.prol.loopexit, %vec.epilog.scalar.ph359, %vec.epilog.middle.block369, %middle.block353
  %.lcssa317 = phi ptr [ %i.wy, %vec.epilog.middle.block369 ], [ %i.wo, %middle.block353 ], [ %.lcssa492.unr, %vec.epilog.scalar.ph359.prol.loopexit ], [ %i.yp, %vec.epilog.scalar.ph359 ] ; 2 uses
  %i.yr = add nuw nsw i32 %.045100.us.us.us.us.i, 1 ; 2 uses
  %exitcond128.not.i142 = icmp eq i32 %i.yr, %i.q
  br i1 %exitcond128.not.i142, label %._crit_edge102.split.us.us.split.us.us.i, label %bb.by, !llvm.loop !547

._crit_edge102.split.us.us.split.us.us.i:         ; preds = %._crit_edge.us.us.us.us.i
  %i.ys = add nsw i32 %.046103.us.us.i, 1         ; 2 uses
  %exitcond129.not.i = icmp eq i32 %i.ys, %i.rr
  br i1 %exitcond129.not.i, label %"_ZN4pbrt9ForExtentIZNKS_5Image11CopyRectOutERKNS_7Bounds2IiEEN4pstd4spanIfEENS_10WrapMode2DEE3$_0EEvS5_S9_RKS1_T_.exit", label %.preheader96.us.us.i, !llvm.loop !548

.preheader96.i:                                   ; preds = %.preheader96.i.preheader, %._crit_edge102.split.i.split
  %.046103.i = phi i32 [ %i.yz, %._crit_edge102.split.i.split ], [ %.sroa.2.0.extract.trunc.i.i, %.preheader96.i.preheader ] ; 3 uses
  %i.yt = icmp sgt i32 %.046103.i, -1
  %i.yu = icmp slt i32 %.046103.i, %.sroa.3.0.extract.trunc.i.i.i106
  %or.cond.1.i.i129 = select i1 %i.yt, i1 %i.yu, i1 false
  %or.cond.1.i.i129.fr = freeze i1 %or.cond.1.i.i129
  br i1 %or.cond.1.i.i129.fr, label %.preheader.preheader.i.i118.us188, label %.preheader.preheader.i.i118

.preheader.preheader.i.i118.us188:                ; preds = %.preheader96.i, %.preheader.1.i.i127.us191
  %.045100.i.us189 = phi i32 [ %i.yy, %.preheader.1.i.i127.us191 ], [ 0, %.preheader96.i ] ; 2 uses
  %i.yv = add nsw i32 %.045100.i.us189, %.sroa.0.0.extract.trunc.i.i ; 2 uses
  %i.yw = icmp sgt i32 %i.yv, -1
  %i.yx = icmp slt i32 %i.yv, %.sroa.0.0.extract.trunc.i.i.i104
  %or.cond.i.i123.us190 = and i1 %i.yw, %i.yx
  br i1 %or.cond.i.i123.us190, label %.preheader.1.i.i127.us191, label %bb.cf

bb.cf:                                            ; preds = %.preheader.preheader.i.i118.us188
  switch i32 %.sroa.0.0.extract.trunc90.i.i115, label %.split.us [
    i32 2, label %.preheader.1.i.i127.us191
    i32 1, label %.preheader.1.i.i127.us191
    i32 0, label %_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE.exit.i124
  ]

.preheader.1.i.i127.us191:                        ; preds = %bb.cf, %bb.cf, %.preheader.preheader.i.i118.us188
  %i.yy = add nuw nsw i32 %.045100.i.us189, 1     ; 2 uses
  %exitcond122.not.i.us193 = icmp eq i32 %i.yy, %i.q
  br i1 %exitcond122.not.i.us193, label %._crit_edge102.split.i.split, label %.preheader.preheader.i.i118.us188, !llvm.loop !547

._crit_edge102.split.i.split:                     ; preds = %._crit_edge.i133, %.preheader.1.i.i127.us191
  %i.yz = add i32 %.046103.i, 1                   ; 2 uses
  %exitcond123.not.i = icmp eq i32 %i.yz, %i.rr
  br i1 %exitcond123.not.i, label %"_ZN4pbrt9ForExtentIZNKS_5Image11CopyRectOutERKNS_7Bounds2IiEEN4pstd4spanIfEENS_10WrapMode2DEE3$_0EEvS5_S9_RKS1_T_.exit", label %.preheader96.i, !llvm.loop !548

.preheader.preheader.i.i118:                      ; preds = %.preheader96.i, %._crit_edge.i133
  %.045100.i = phi i32 [ %i.zd, %._crit_edge.i133 ], [ 0, %.preheader96.i ] ; 2 uses
  %i.za = add nsw i32 %.045100.i, %.sroa.0.0.extract.trunc.i.i ; 2 uses
  %i.zb = icmp sgt i32 %i.za, -1
  %i.zc = icmp slt i32 %i.za, %.sroa.0.0.extract.trunc.i.i.i104
  %or.cond.i.i123 = and i1 %i.zb, %i.zc
  br i1 %or.cond.i.i123, label %.preheader.1.i.i127, label %bb.cg

.split.us.i:                                      ; preds = %.preheader96.lr.ph.split.split.us.i
  tail call void @_ZN4pbrt8LogFatalIJRA47_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef 101, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(47) @.str.95) #34
  unreachable

bb.cg:                                            ; preds = %.preheader.preheader.i.i118
  switch i32 %.sroa.0.0.extract.trunc90.i.i115, label %.split.us [
    i32 2, label %.preheader.1.i.i127
    i32 1, label %.preheader.1.i.i127
    i32 0, label %_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE.exit.i124
  ]

.split.us:                                        ; preds = %.preheader.1.i.i127, %bb.cg, %bb.cf, %bb.bv, %bb.bs
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.94, i32 noundef 142, ptr noundef nonnull @.str.96) #34
  unreachable

.preheader.1.i.i127:                              ; preds = %bb.cg, %bb.cg, %.preheader.preheader.i.i118
  switch i32 %.sroa.3.0.extract.trunc.i.i117, label %.split.us [
    i32 2, label %._crit_edge.i133
    i32 1, label %._crit_edge.i133
    i32 0, label %_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE.exit.i124
  ]

_ZN4pbrt16RemapPixelCoordsEPNS_6Point2IiEES1_NS_10WrapMode2DE.exit.i124: ; preds = %.preheader.1.i.i127, %bb.cg, %bb.cf, %bb.bv, %bb.bs
  tail call void @_ZN4pbrt8LogFatalIJRA51_KcEEEvNS_8LogLevelEPS1_iS5_DpOT_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 125, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(51) @.str.152) #34
  unreachable

._crit_edge.i133:                                 ; preds = %.preheader.1.i.i127, %.preheader.1.i.i127
  %i.zd = add nuw nsw i32 %.045100.i, 1           ; 2 uses
  %exitcond122.not.i = icmp eq i32 %i.zd, %i.q
  br i1 %exitcond122.not.i, label %._crit_edge102.split.i.split, label %.preheader.preheader.i.i118, !llvm.loop !547

bb.ch:                                            ; preds = %bb.c
  tail call void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef 2, ptr noundef nonnull @.str.4, i32 noundef 706, ptr noundef nonnull @.str.22) #34
  unreachable

"_ZN4pbrt9ForExtentIZNKS_5Image11CopyRectOutERKNS_7Bounds2IiEEN4pstd4spanIfEENS_10WrapMode2DEE3$_0EEvS5_S9_RKS1_T_.exit": ; preds = %._crit_edge102.split.i.split, %._crit_edge102.split.i.split.us.us, %._crit_edge102.split.us.us.split.us.us.i, %._crit_edge113.i, %._crit_edge105.i, %._crit_edge115.i, %._crit_edge106.i, %._crit_edge114.i, %_ZNK4pbrt13ColorEncoding8ToLinearEN4pstd4spanIKhEENS2_IfEE.exit, %bb.e, %.preheader96.lr.ph.split.split.us.split.i, %.preheader96.lr.ph.i, %_ZNK4pbrt7Bounds2IiEeqERKS1_.exit.thread.i114, %.lr.ph115.i, %.preheader95.i, %.preheader99.lr.ph.i, %_ZNK4pbrt7Bounds2IiEeqERKS1_.exit.thread.i57, %.lr.ph119.i, %.preheader98.i, %.preheader100.lr.ph.i, %_ZNK4pbrt7Bounds2IiEeqERKS1_.exit.thread.i, %.lr.ph116.i, %.preheader99.i
  ret void
}

; Function Attrs: inlinehint mustprogress noreturn uwtable
define linkonce_odr dso_local void @_ZN4pbrt8LogFatalIJRA11_KcRA28_S1_S3_RmS5_RiEEEvNS_8LogLevelEPS1_iS9_DpOT_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(28) %5, ptr noundef nonnull align 1 dereferenceable(11) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(4) %9) local_unnamed_addr #10 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #32
  %i.a = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store ptr %i.a, ptr %10, align 8, !tbaa !43, !alias.scope !557
  %i.b = getelementptr inbounds nuw i8, ptr %10, i64 8
  store i64 0, ptr %i.b, align 8, !tbaa !46, !alias.scope !557
  store i8 0, ptr %i.a, align 8, !tbaa !37, !alias.scope !557
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRA11_KcJRA28_S2_S4_RmS6_RiEEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS2_OT_DpOT0_(ptr noundef nonnull align 8 %10, ptr noundef %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 1 dereferenceable(28) %5, ptr noundef nonnull align 1 dereferenceable(11) %6, ptr noundef nonnull align 8 dereferenceable(8) %7, ptr noundef nonnull align 1 dereferenceable(28) %8, ptr noundef nonnull align 4 dereferenceable(4) %9)
          to label %_ZN4pbrt12StringPrintfIJRA11_KcRA28_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.d = load ptr, ptr %10, align 8, !tbaa !48, !alias.scope !557 ; 2 uses
  %i.e = icmp eq ptr %i.d, %i.a
  br i1 %i.e, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 8, !tbaa !37, !alias.scope !557
  %i.g = add i64 %i.f, 1
  call void @_ZdlPvm(ptr noundef %i.d, i64 noundef %i.g) #35
  br label %common.resume

common.resume:                                    ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %common.resume.op = phi { ptr, i32 } [ %i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.c, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_ZN4pbrt12StringPrintfIJRA11_KcRA28_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit: ; preds = %bb.a
  %i.h = load ptr, ptr %10, align 8, !tbaa !48
  invoke void @_ZN4pbrt8LogFatalENS_8LogLevelEPKciS2_(i32 noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %i.h) #34
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcRA28_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  unreachable

bb.d:                                             ; preds = %_ZN4pbrt12StringPrintfIJRA11_KcRA28_S1_S3_RmS5_RiEEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS1_DpOT_.exit
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %10, align 8, !tbaa !48    ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.d
  %i.l = load i64, ptr %i.a, align 8, !tbaa !37
  %i.m = add i64 %i.l, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #35
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #32
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image13LookupNearestENS_6Point2IfEENS_10WrapMode2DE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::ImageChannelValues") align 8 initializes((0, 16), (32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, <2 x float> %2, i64 %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %sext = shl i64 %i.b, 32                        ; 4 uses
  %i.c = ashr exact i64 %sext, 32                 ; 3 uses
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %0, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i.i.i = icmp ugt i64 %i.c, 4
  store i64 0, ptr %i.g, align 8
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.i = ashr exact i64 %sext, 30
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.i, i64 noundef 4), !inline_history !16 ; 2 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !161
  store ptr %i.m, ptr %i.f, align 8, !tbaa !160
  br label %.lr.ph.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, %._crit_edge.i.i.i
  %i.n = phi ptr [ %i.m, %._crit_edge.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 3 uses
  %.not.i9.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = select i1 %.not.i9.i.i, ptr %i.o, ptr %i.n
  %i.q = ashr exact i64 %sext, 30
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit

_ZN4pbrt18ImageChannelValuesC2Emf.exit:           ; preds = %.lr.ph.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %i.r = phi ptr [ %i.n, %.lr.ph.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 2 uses
  store i64 %i.c, ptr %i.h, align 8, !tbaa !162
  %i.s = load i64, ptr %i.a, align 8, !tbaa !75
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i10 = icmp eq ptr %i.r, null
  %i.x = select i1 %.not.i.i10, ptr %i.w, ptr %i.r
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  resume { ptr, i32 } %i.y

bb.c:                                             ; preds = %.lr.ph, %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit ] ; 3 uses
  %i.z = load <2 x i32>, ptr %i.v, align 4, !tbaa !38
  %i.aa = sitofp <2 x i32> %i.z to <2 x float>
  %i.ab = fmul <2 x float> %2, %i.aa              ; 2 uses
  %i.ac = extractelement <2 x float> %i.ab, i64 0
  %i.ad = fptosi float %i.ac to i32
  %i.ae = extractelement <2 x float> %i.ab, i64 1
  %i.af = fptosi float %i.ae to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.af to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ad to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.ag = trunc nuw nsw i64 %indvars.iv to i32
  %i.ah = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.ag, i64 %3)
          to label %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit unwind label %bb.b

_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit: ; preds = %bb.c
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store float %i.ah, ptr %i.ai, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.aj = load i64, ptr %i.a, align 8, !tbaa !75
  %sext13 = shl i64 %i.aj, 32
  %i.ak = ashr exact i64 %sext13, 32
  %i.al = icmp slt i64 %indvars.iv.next, %i.ak
  br i1 %i.al, label %bb.c, label %._crit_edge, !llvm.loop !558

._crit_edge:                                      ; preds = %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit, %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image13LookupNearestENS_6Point2IfEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::ImageChannelValues") align 8 initializes((0, 16), (32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, <2 x float> %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, i64 %4) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.c = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i.i.i = icmp ugt i64 %i.b, 4
  store i64 0, ptr %i.f, align 8
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %i.b, 2                          ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.h, i64 noundef 4), !inline_history !16
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.0.i.i.i.i1418.i.i = phi ptr [ %i.m, %._crit_edge.i.i.i ], [ null, %bb.b ] ; 2 uses
  store i64 %i.b, ptr %i.f, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i, ptr %i.e, align 8, !tbaa !160
  br label %.lr.ph.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i
  %.pre = shl nuw nsw i64 %i.b, 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge ], [ %i.h, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ]
  %i.n = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge ], [ %.0.i.i.i.i1418.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 3 uses
  %.not.i9.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = select i1 %.not.i9.i.i, ptr %i.o, ptr %i.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %.pre-phi, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit

_ZN4pbrt18ImageChannelValuesC2Emf.exit:           ; preds = %.lr.ph.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i
  %i.q = phi ptr [ %i.n, %.lr.ph.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i ] ; 2 uses
  store i64 %i.b, ptr %i.g, align 8, !tbaa !162
  %i.r = load i64, ptr %i.a, align 8, !tbaa !101
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i15 = icmp eq ptr %i.q, null
  %i.w = select i1 %.not.i.i15, ptr %i.v, ptr %i.q
  br label %bb.d

bb.c:                                             ; preds = %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  resume { ptr, i32 } %i.x

bb.d:                                             ; preds = %.lr.ph, %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit ] ; 3 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !114  ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not.i.i14, ptr %i.t, ptr %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !38
  %i.ac = load <2 x i32>, ptr %i.u, align 4, !tbaa !38
  %i.ad = sitofp <2 x i32> %i.ac to <2 x float>
  %i.ae = fmul <2 x float> %2, %i.ad              ; 2 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = fptosi float %i.af to i32
  %i.ah = extractelement <2 x float> %i.ae, i64 1
  %i.ai = fptosi float %i.ah to i32
  %.sroa.4.0.insert.ext.i = zext i32 %i.ai to i64
  %.sroa.4.0.insert.shift.i = shl nuw i64 %.sroa.4.0.insert.ext.i, 32
  %.sroa.0.0.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.4.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.aj = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.ab, i64 %4)
          to label %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit unwind label %bb.c

_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit: ; preds = %bb.d
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  store float %i.aj, ptr %i.ak, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.al = load i64, ptr %i.a, align 8, !tbaa !101
  %i.am = icmp ugt i64 %i.al, %indvars.iv.next
  br i1 %i.am, label %bb.d, label %._crit_edge, !llvm.loop !559

._crit_edge:                                      ; preds = %_ZNK4pbrt5Image20LookupNearestChannelENS_6Point2IfEEiNS_10WrapMode2DE.exit, %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image6BilerpENS_6Point2IfEENS_10WrapMode2DE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::ImageChannelValues") align 8 initializes((0, 16), (32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, <2 x float> %2, i64 %3) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !75
  %sext = shl i64 %i.b, 32                        ; 4 uses
  %i.c = ashr exact i64 %sext, 32                 ; 3 uses
  %i.d = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.e = ptrtoint ptr %i.d to i64
  store i64 %i.e, ptr %0, align 8, !tbaa !139
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.f, align 8, !tbaa !160
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i.i.i = icmp ugt i64 %i.c, 4
  store i64 0, ptr %i.g, align 8
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i

._crit_edge.i.i.i:                                ; preds = %bb.a
  %i.i = ashr exact i64 %sext, 30
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef %i.i, i64 noundef 4), !inline_history !16 ; 2 uses
  store i64 %i.c, ptr %i.g, align 8, !tbaa !161
  store ptr %i.m, ptr %i.f, align 8, !tbaa !160
  br label %.lr.ph.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %sext, 0
  br i1 %.not.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, %._crit_edge.i.i.i
  %i.n = phi ptr [ %i.m, %._crit_edge.i.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 3 uses
  %.not.i9.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = select i1 %.not.i9.i.i, ptr %i.o, ptr %i.n
  %i.q = ashr exact i64 %sext, 30
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %i.q, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit

_ZN4pbrt18ImageChannelValuesC2Emf.exit:           ; preds = %.lr.ph.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %i.r = phi ptr [ %i.n, %.lr.ph.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 2 uses
  store i64 %i.c, ptr %i.h, align 8, !tbaa !162
  %i.s = load i64, ptr %i.a, align 8, !tbaa !75
  %i.t = trunc i64 %i.s to i32
  %i.u = icmp sgt i32 %i.t, 0
  br i1 %i.u, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i13 = icmp eq ptr %i.r, null
  %i.x = select i1 %.not.i.i13, ptr %i.w, ptr %i.r
  br label %bb.c

bb.b:                                             ; preds = %.noexc11, %.noexc10, %.noexc, %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  resume { ptr, i32 } %i.y

bb.c:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 3 uses
  %i.z = load <2 x i32>, ptr %i.v, align 4, !tbaa !38
  %i.aa = sitofp <2 x i32> %i.z to <2 x float>
  %i.ab = fmul <2 x float> %2, %i.aa
  %i.ac = fadd <2 x float> %i.ab, splat (float -5.000000e-01) ; 2 uses
  %i.ad = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.ac)
  %i.ae = fptosi <2 x float> %i.ad to <2 x i32>   ; 4 uses
  %i.af = extractelement <2 x i32> %i.ae, i64 1   ; 2 uses
  %i.ag = extractelement <2 x i32> %i.ae, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.ag to i64
  %.sroa.038.0.insert.insert.i = bitcast <2 x i32> %i.ae to i64
  %i.ah = trunc nuw nsw i64 %indvars.iv to i32    ; 4 uses
  %i.ai = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.038.0.insert.insert.i, i32 noundef %i.ah, i64 %3)
          to label %.noexc unwind label %bb.b

.noexc:                                           ; preds = %bb.c
  %.sroa.239.0.insert.ext.i = zext i32 %i.af to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32
  %i.aj = add nsw i32 %i.ag, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.aj to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.ak = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.036.0.insert.insert.i, i32 noundef %i.ah, i64 %3)
          to label %.noexc10 unwind label %bb.b

.noexc10:                                         ; preds = %.noexc
  %i.al = add nsw i32 %i.af, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.al to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.am = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.034.0.insert.insert.i, i32 noundef %i.ah, i64 %3)
          to label %.noexc11 unwind label %bb.b

.noexc11:                                         ; preds = %.noexc10
  %.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.an = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.0.0.insert.insert.i, i32 noundef %i.ah, i64 %3)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %.noexc11
  %i.ao = sitofp <2 x i32> %i.ae to <2 x float>
  %i.ap = fsub <2 x float> %i.ac, %i.ao           ; 4 uses
  %i.aq = extractelement <2 x float> %i.ap, i64 0
  %i.ar = fsub <2 x float> splat (float 1.000000e+00), %i.ap ; 3 uses
  %i.as = extractelement <2 x float> %i.ar, i64 0
  %i.at = extractelement <2 x float> %i.ar, i64 1 ; 2 uses
  %i.au = fmul float %i.as, %i.at
  %i.av = fmul float %i.ai, %i.au
  %i.aw = fmul float %i.aq, %i.at
  %i.ax = fmul float %i.aw, %i.ak
  %i.ay = fadd float %i.av, %i.ax
  %i.az = shufflevector <2 x float> %i.ap, <2 x float> %i.ar, <2 x i32> <i32 1, i32 2>
  %i.ba = fmul <2 x float> %i.ap, %i.az
  %i.bb = insertelement <2 x float> poison, float %i.an, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.am, i64 1
  %i.bd = fmul <2 x float> %i.ba, %i.bc           ; 2 uses
  %i.be = extractelement <2 x float> %i.bd, i64 1
  %i.bf = fadd float %i.ay, %i.be
  %i.bg = extractelement <2 x float> %i.bd, i64 0
  %i.bh = fadd float %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %indvars.iv
  store float %i.bh, ptr %i.bi, align 4, !tbaa !79
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bj = load i64, ptr %i.a, align 8, !tbaa !75
  %sext16 = shl i64 %i.bj, 32
  %i.bk = ashr exact i64 %sext16, 32
  %i.bl = icmp slt i64 %indvars.iv.next, %i.bk
  br i1 %i.bl, label %bb.c, label %._crit_edge, !llvm.loop !560

._crit_edge:                                      ; preds = %bb.d, %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZNK4pbrt5Image6BilerpENS_6Point2IfEERKNS_16ImageChannelDescENS_10WrapMode2DE(ptr dead_on_unwind noalias writable sret(%"struct.pbrt::ImageChannelValues") align 8 initializes((0, 16), (32, 40)) %0, ptr noundef nonnull align 8 dereferenceable(152) %1, <2 x float> %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %3, i64 %4) local_unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !101  ; 6 uses
  %i.c = tail call noundef ptr @_ZN4pstd3pmr19new_delete_resourceEv() #32 ; 3 uses
  %i.d = ptrtoint ptr %i.c to i64
  store i64 %i.d, ptr %0, align 8, !tbaa !139
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr null, ptr %i.e, align 8, !tbaa !160
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.not.i.i.i = icmp ugt i64 %i.b, 4
  store i64 0, ptr %i.f, align 8
  br i1 %.not.i.i.i, label %bb.b, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.h = shl i64 %i.b, 2                          ; 3 uses
  %i.i = icmp eq i64 %i.h, 0
  br i1 %i.i, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i, label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %bb.b
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !120
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef %i.h, i64 noundef 4), !inline_history !16
  br label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i: ; preds = %._crit_edge.i.i.i, %bb.b
  %.0.i.i.i.i1418.i.i = phi ptr [ %i.m, %._crit_edge.i.i.i ], [ null, %bb.b ] ; 2 uses
  store i64 %i.b, ptr %i.f, align 8, !tbaa !161
  store ptr %.0.i.i.i.i1418.i.i, ptr %i.e, align 8, !tbaa !160
  br label %.lr.ph.i.i

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i: ; preds = %bb.a
  %.not.i.i = icmp eq i64 %i.b, 0
  br i1 %.not.i.i, label %_ZN4pbrt18ImageChannelValuesC2Emf.exit, label %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge

_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge: ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i
  %.pre = shl nuw nsw i64 %i.b, 2
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i
  %.pre-phi = phi i64 [ %.pre, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge ], [ %i.h, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ]
  %i.n = phi ptr [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i..lr.ph.i.i_crit_edge ], [ %.0.i.i.i.i1418.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.thread.i.i ] ; 3 uses
  %.not.i9.i.i = icmp eq ptr %i.n, null
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = select i1 %.not.i9.i.i, ptr %i.o, ptr %i.n
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.p, i8 0, i64 %.pre-phi, i1 false), !tbaa !79
  br label %_ZN4pbrt18ImageChannelValuesC2Emf.exit

_ZN4pbrt18ImageChannelValuesC2Emf.exit:           ; preds = %.lr.ph.i.i, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i
  %i.q = phi ptr [ %i.n, %.lr.ph.i.i ], [ null, %_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEE7reserveEm.exit.i.i ] ; 2 uses
  store i64 %i.b, ptr %i.g, align 8, !tbaa !162
  %i.r = load i64, ptr %i.a, align 8, !tbaa !101
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4pbrt18ImageChannelValuesC2Emf.exit
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.not.i.i18 = icmp eq ptr %i.q, null
  %i.w = select i1 %.not.i.i18, ptr %i.v, ptr %i.q
  br label %bb.d

bb.c:                                             ; preds = %.noexc16, %.noexc15, %.noexc, %bb.d
  %i.x = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN4pbrt13InlinedVectorIfLi4EN4pstd3pmr21polymorphic_allocatorIfEEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #32
  resume { ptr, i32 } %i.x

bb.d:                                             ; preds = %.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.y = load ptr, ptr %i.s, align 8, !tbaa !114  ; 2 uses
  %.not.i.i14 = icmp eq ptr %i.y, null
  %i.z = select i1 %.not.i.i14, ptr %i.t, ptr %i.y
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !38 ; 4 uses
  %i.ac = load <2 x i32>, ptr %i.u, align 4, !tbaa !38
  %i.ad = sitofp <2 x i32> %i.ac to <2 x float>
  %i.ae = fmul <2 x float> %2, %i.ad
  %i.af = fadd <2 x float> %i.ae, splat (float -5.000000e-01) ; 2 uses
  %i.ag = tail call <2 x float> @llvm.floor.v2f32(<2 x float> %i.af)
  %i.ah = fptosi <2 x float> %i.ag to <2 x i32>   ; 4 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 1   ; 2 uses
  %i.aj = extractelement <2 x i32> %i.ah, i64 0   ; 2 uses
  %.sroa.038.0.insert.ext.i = zext i32 %i.aj to i64
  %.sroa.038.0.insert.insert.i = bitcast <2 x i32> %i.ah to i64
  %i.ak = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.038.0.insert.insert.i, i32 noundef %i.ab, i64 %4)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.d
  %.sroa.239.0.insert.ext.i = zext i32 %i.ai to i64
  %.sroa.239.0.insert.shift.i = shl nuw i64 %.sroa.239.0.insert.ext.i, 32
  %i.al = add nsw i32 %i.aj, 1
  %.sroa.036.0.insert.ext.i = zext i32 %i.al to i64 ; 2 uses
  %.sroa.036.0.insert.insert.i = or disjoint i64 %.sroa.239.0.insert.shift.i, %.sroa.036.0.insert.ext.i
  %i.am = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.036.0.insert.insert.i, i32 noundef %i.ab, i64 %4)
          to label %.noexc15 unwind label %bb.c

.noexc15:                                         ; preds = %.noexc
  %i.an = add nsw i32 %i.ai, 1
  %.sroa.235.0.insert.ext.i = zext i32 %i.an to i64
  %.sroa.235.0.insert.shift.i = shl nuw i64 %.sroa.235.0.insert.ext.i, 32 ; 2 uses
  %.sroa.034.0.insert.insert.i = or disjoint i64 %.sroa.235.0.insert.shift.i, %.sroa.038.0.insert.ext.i
  %i.ao = invoke noundef float @_ZNK4pbrt5Image10GetChannelENS_6Point2IiEEiNS_10WrapMode2DE(ptr noundef nonnull align 8 dereferenceable(152) %1, i64 %.sroa.034.0.insert.insert.i, i32 noundef %i.ab, i64 %4)
          to label %.noexc16 unwind label %bb.c
end_hunk_1
