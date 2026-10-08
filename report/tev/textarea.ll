Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/textarea?download=true
inline.NumInlined: 613
inline.NumDeleted: 302
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 14
begin_hunk_0_@nvgFontSize
declare void @nvgFontSize(ptr noundef, float noundef) local_unnamed_addr #1

declare noundef i32 @_ZNK7nanogui6Widget9font_sizeEv(ptr noundef nonnull align 8 dereferenceable(148)) local_unnamed_addr #1

declare void @nvgFontFace(ptr noundef, ptr noundef) local_unnamed_addr #1

declare float @nvgTextBounds(ptr noundef, float noundef, float noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare ptr @__dynamic_cast(ptr, ptr, ptr, i64) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN7nanogui8TextArea5clearEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(288) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !72   ; 2 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !75   ; 3 uses
  %.not6.i.i.i = icmp eq ptr %i.d, %i.c
  br i1 %.not6.i.i.i, label %_ZNSt3__16vectorIN7nanogui8TextArea5BlockENS_9allocatorIS3_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZNSt3__116allocator_traitsINS_9allocatorIN7nanogui8TextArea5BlockEEEE7destroyB8ne180100IS4_vEEvRS5_PT_.exit.i.i.i
  %.07.i.i.i = phi ptr [ %i.e, %_ZNSt3__116allocator_traitsINS_9allocatorIN7nanogui8TextArea5BlockEEEE7destroyB8ne180100IS4_vEEvRS5_PT_.exit.i.i.i ], [ %i.c, %bb.a ] ; 3 uses
  %i.e = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -56 ; 2 uses
  %i.f = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -40 ; 2 uses
  %i.g = load i8, ptr %i.f, align 8
  %i.h = trunc i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_ZNSt3__116allocator_traitsINS_9allocatorIN7nanogui8TextArea5BlockEEEE7destroyB8ne180100IS4_vEEvRS5_PT_.exit.i.i.i

bb.b:                                             ; preds = %.lr.ph.i.i.i
  %i.i = getelementptr inbounds i8, ptr %.07.i.i.i, i64 -24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !11
  %i.k = load i64, ptr %i.f, align 8
  %i.l = and i64 %i.k, -2
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.l) #21
  br label %_ZNSt3__116allocator_traitsINS_9allocatorIN7nanogui8TextArea5BlockEEEE7destroyB8ne180100IS4_vEEvRS5_PT_.exit.i.i.i

_ZNSt3__116allocator_traitsINS_9allocatorIN7nanogui8TextArea5BlockEEEE7destroyB8ne180100IS4_vEEvRS5_PT_.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %.not.i.i.i = icmp eq ptr %i.d, %i.e
  br i1 %.not.i.i.i, label %_ZNSt3__16vectorIN7nanogui8TextArea5BlockENS_9allocatorIS3_EEE5clearB8ne180100Ev.exit, label %.lr.ph.i.i.i

_ZNSt3__16vectorIN7nanogui8TextArea5BlockENS_9allocatorIS3_EEE5clearB8ne180100Ev.exit: ; preds = %_ZNSt3__116allocator_traitsINS_9allocatorIN7nanogui8TextArea5BlockEEEE7destroyB8ne180100IS4_vEEvRS5_PT_.exit.i.i.i, %bb.a
  store ptr %i.d, ptr %i.b, align 8, !tbaa !72
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.m, i8 0, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 -1, ptr %i.o, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, i8 -1, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN7nanogui8TextArea14keyboard_eventEiiii(ptr noundef nonnull align 8 dereferenceable(288) %0, i32 noundef %1, i32 %2, i32 noundef %3, i32 noundef %4) unnamed_addr #3 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.std::__1::basic_string", align 8 ; 17 uses
  %6 = alloca [1025 x %struct.NVGglyphPosition], align 16 ; 8 uses
  %7 = alloca %"class.std::__1::basic_string", align 8 ; 14 uses
  %8 = alloca %"class.std::__1::basic_string", align 8 ; 14 uses
  %9 = alloca %"class.std::__1::basic_string", align 8 ; 14 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 268
  %i.b = load i8, ptr %i.a, align 4, !tbaa !45, !range !77, !noundef !103
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.e = load i8, ptr %i.d, align 2, !range !77
  %i.f = trunc nuw i8 %i.e to i1
  %or.cond111 = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond111, label %bb.b, label %.critedge

bb.b:                                             ; preds = %bb.a
  %i.g = icmp eq i32 %1, 67
  %i.h = icmp eq i32 %4, 2
  %or.cond = and i1 %i.g, %i.h
  %i.i = icmp eq i32 %3, 1
  %or.cond3 = and i1 %i.i, %or.cond
  br i1 %or.cond3, label %bb.c, label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 272 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !74
  %.not.i.i = icmp ne i32 %i.k, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 276
  %i.m = load i32, ptr %i.l, align 4
  %.not.1.i.i = icmp ne i32 %i.m, -1
  %.not.lcssa.i.not.i = select i1 %.not.i.i, i1 true, i1 %.not.1.i.i
  br i1 %.not.lcssa.i.not.i, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !74
  %.not.i.i47 = icmp ne i32 %i.o, -1
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 284
  %i.q = load i32, ptr %i.p, align 4
  %.not.1.i.i48 = icmp ne i32 %i.q, -1
  %.not.lcssa.i.not.i49 = select i1 %.not.i.i47, i1 true, i1 %.not.1.i.i48
  br i1 %.not.lcssa.i.not.i49, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.r = load i64, ptr %i.j, align 8, !tbaa !11   ; 3 uses
  %.sroa.095.0.extract.trunc = trunc i64 %i.r to i32 ; 6 uses
  %i.s = load i64, ptr %i.n, align 8, !tbaa !11   ; 2 uses
  %.sroa.0.0.extract.trunc = trunc i64 %i.s to i32 ; 6 uses
  %i.t = icmp sgt i32 %.sroa.095.0.extract.trunc, %.sroa.0.0.extract.trunc
  %.pre140 = lshr i64 %i.s, 32                    ; 4 uses
  br i1 %i.t, label %._crit_edge139, label %bb.f

._crit_edge139:                                   ; preds = %bb.e
  %.pre142 = lshr i64 %i.r, 32
  br label %bb.h

bb.f:                                             ; preds = %bb.e
  %.sroa.11.0.extract.trunc = trunc nuw i64 %.pre140 to i32
  %.sroa.12.0.extract.shift = lshr i64 %i.r, 32   ; 3 uses
  %.sroa.12.0.extract.trunc = trunc nuw i64 %.sroa.12.0.extract.shift to i32
  %i.u = icmp eq i32 %.sroa.095.0.extract.trunc, %.sroa.0.0.extract.trunc
  %i.v = icmp sgt i32 %.sroa.12.0.extract.trunc, %.sroa.11.0.extract.trunc
  %or.cond112 = select i1 %i.u, i1 %i.v, i1 false
  br i1 %or.cond112, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge139, %bb.g, %bb.f
  %.sroa.12.0 = phi i64 [ %.sroa.12.0.extract.shift, %bb.f ], [ %.pre140, %._crit_edge139 ], [ %.pre140, %bb.g ]
  %.sroa.095.0 = phi i32 [ %.sroa.095.0.extract.trunc, %bb.f ], [ %.sroa.0.0.extract.trunc, %._crit_edge139 ], [ %.sroa.0.0.extract.trunc, %bb.g ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.pre140, %bb.f ], [ %.pre142, %._crit_edge139 ], [ %.sroa.12.0.extract.shift, %bb.g ]
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.extract.trunc, %bb.f ], [ %.sroa.095.0.extract.trunc, %._crit_edge139 ], [ %.sroa.095.0.extract.trunc, %bb.g ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #18
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #18
  %.not131 = icmp sgt i32 %.sroa.095.0, %.sroa.0.0
  br i1 %.not131, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %sext153 = shl nuw i64 %.sroa.11.0, 32
  %i.x = ashr exact i64 %sext153, 32
  %i.y = getelementptr inbounds [24 x i8], ptr %6, i64 %i.x ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %9, i64 1 ; 2 uses
  %sext154 = shl nuw i64 %.sroa.12.0, 32
  %i.ac = ashr exact i64 %sext154, 32
  %i.ad = getelementptr inbounds [24 x i8], ptr %6, i64 %i.ac ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 1 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %7, i64 1 ; 2 uses
  %i.ak = sext i32 %.sroa.095.0 to i64            ; 3 uses
  %sext = sext i32 %.sroa.0.0 to i64
  %i.al = add i32 %.sroa.0.0, 1
  %i.am = icmp eq i32 %.sroa.0.0.extract.trunc, %.sroa.095.0.extract.trunc
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit82, %bb.h
  %i.an = invoke noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
          to label %bb.au unwind label %bb.ax

bb.i:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %bb.ay

bb.j:                                             ; preds = %.lr.ph, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit82
  %indvars.iv = phi i64 [ %i.ak, %.lr.ph ], [ %indvars.iv.next, %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100ERKS5_.exit82 ] ; 7 uses
  %i.ap = icmp sgt i64 %indvars.iv, %i.ak
  %.pre138 = load ptr, ptr %i.w, align 8, !tbaa !75 ; 3 uses
  br i1 %i.ap, label %bb.k, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit

bb.k:                                             ; preds = %bb.j
  %i.aq = getelementptr [56 x i8], ptr %.pre138, i64 %indvars.iv ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !74
  %i.at = getelementptr i8, ptr %i.aq, i64 -52
  %i.au = load i32, ptr %i.at, align 4, !tbaa !74
  %.not37 = icmp eq i32 %i.as, %i.au
  br i1 %.not37, label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  invoke void @_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE9push_backEc(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 noundef signext 10)
          to label %._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit_crit_edge unwind label %bb.i

._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit_crit_edge: ; preds = %bb.l
  %.pre = load ptr, ptr %i.w, align 8, !tbaa !75
  br label %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit

_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit: ; preds = %._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit_crit_edge, %bb.k, %bb.j
  %i.av = phi ptr [ %.pre, %._ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit_crit_edge ], [ %.pre138, %bb.k ], [ %.pre138, %bb.j ]
  %i.aw = invoke noundef ptr @_ZN7nanogui6Widget6screenEv(ptr noundef nonnull align 8 dereferenceable(148) %0)
          to label %bb.m unwind label %bb.w

bb.m:                                             ; preds = %_ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEpLB8ne180100Ec.exit
  %i.ax = getelementptr inbounds nuw [56 x i8], ptr %i.av, i64 %indvars.iv ; 5 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 160
  %i.az = load ptr, ptr %i.ay, align 16, !tbaa !64
  %10 = load <2 x i32>, ptr %i.ax, align 4, !tbaa !74
  %11 = sitofp <2 x i32> %10 to <2 x float>       ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  %12 = load i8, ptr %i.ba, align 8
  %13 = trunc i8 %12 to i1
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 32 ; 2 uses
  %14 = load ptr, ptr %i.bb, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ax, i64 17 ; 2 uses
  %15 = select i1 %13, ptr %14, ptr %i.bc
  %16 = extractelement <2 x float> %11, i64 0
  %17 = extractelement <2 x float> %11, i64 1
  %i.bd = invoke i32 @nvgTextGlyphPositions(ptr noundef %i.az, float noundef %16, float noundef %17, ptr noundef %15, ptr noundef null, ptr noundef nonnull %6, i32 noundef 1024)
          to label %bb.n unwind label %bb.x

bb.n:                                             ; preds = %bb.m
  %i.be = load i8, ptr %i.ba, align 8             ; 2 uses
  %i.bf = trunc i8 %i.be to i1                    ; 2 uses
  %i.bg = load ptr, ptr %i.bb, align 8
  %i.bh = select i1 %i.bf, ptr %i.bg, ptr %i.bc   ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64              ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  %i.bk = load i64, ptr %i.bj, align 8
  %i.bl = lshr i8 %i.be, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = select i1 %i.bf, i64 %i.bk, i64 %i.bm   ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bn ; 4 uses
  %i.bp = sext i32 %i.bd to i64
  %i.bq = getelementptr inbounds [24 x i8], ptr %6, i64 %i.bp
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !104
  %i.br = icmp eq i64 %indvars.iv, %i.ak
  br i1 %i.br, label %bb.o, label %bb.aj

bb.o:                                             ; preds = %bb.n
  br i1 %i.am, label %bb.p, label %bb.aa

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #18
  %i.bs = load ptr, ptr %i.ad, align 8, !tbaa !104 ; 7 uses
  %i.bt = load ptr, ptr %i.y, align 8, !tbaa !104 ; 3 uses
  %i.bu = ptrtoint ptr %i.bt to i64               ; 3 uses
  %i.bv = ptrtoint ptr %i.bs to i64               ; 2 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 12 uses
  %i.bx = icmp ugt i64 %i.bw, -9
  br i1 %i.bx, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZNKSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE20__throw_length_errorB8ne180100Ev(ptr noundef nonnull align 8 dereferenceable(24) %7) #19
          to label %.noexc unwind label %.loopexit.split-lp122

.noexc:                                           ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.by = icmp ult i64 %i.bw, 23
  br i1 %i.by, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bz = trunc nuw nsw i64 %i.bw to i8
  %i.ca = shl nuw nsw i8 %i.bz, 1
  store i8 %i.ca, ptr %7, align 8
  br label %bb.u

bb.t:                                             ; preds = %bb.r
  %i.cb = or i64 %i.bw, 7                         ; 2 uses
  %i.cc = icmp eq i64 %i.cb, 23
  %i.cd = add nuw i64 %i.cb, 1
  %i.ce = select i1 %i.cc, i64 25, i64 %i.cd      ; 2 uses
  %i.cf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #20
          to label %.noexc50 unwind label %.loopexit121 ; 2 uses

.noexc50:                                         ; preds = %bb.t
  store ptr %i.cf, ptr %i.ah, align 8, !tbaa !11
  %i.cg = or i64 %i.ce, 1
  store i64 %i.cg, ptr %7, align 8
  store i64 %i.bw, ptr %i.ai, align 8, !tbaa !11
  br label %bb.u

bb.u:                                             ; preds = %.noexc50, %bb.s
  %.016.i.i.i = phi ptr [ %i.aj, %bb.s ], [ %i.cf, %.noexc50 ] ; 7 uses
  %.not18.i.i.i = icmp eq ptr %i.bs, %i.bt
  br i1 %.not18.i.i.i, label %.loopexit, label %iter.check

iter.check:                                       ; preds = %bb.u
  %.016.i.i.i159 = ptrtoaddr ptr %.016.i.i.i to i64
  %min.iters.check = icmp ult i64 %i.bw, 8
  %i.ch = sub i64 %i.bv, %.016.i.i.i159
  %diff.check = icmp ugt i64 %i.ch, -32
  %or.cond243 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond243, label %.lr.ph.i.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check160 = icmp ult i64 %i.bw, 32
  br i1 %min.iters.check160, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ci = and i64 %i.bw, 24
  %n.vec = and i64 %i.bw, -32                     ; 5 uses
  %i.cj = getelementptr i8, ptr %i.bs, i64 %n.vec
  %i.ck = getelementptr i8, ptr %.016.i.i.i, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %index ; 2 uses
  %next.gep161 = getelementptr i8, ptr %.016.i.i.i, i64 %index ; 2 uses
  %i.cl = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !11
  %wide.load162 = load <16 x i8>, ptr %i.cl, align 1, !tbaa !11
  %i.cm = getelementptr i8, ptr %next.gep161, i64 16
  store <16 x i8> %wide.load, ptr %next.gep161, align 1, !tbaa !11
  store <16 x i8> %wide.load162, ptr %i.cm, align 1, !tbaa !11
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !90

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bw, %n.vec
  br i1 %cmp.n, label %.loopexit, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ci, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !68

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec164 = and i64 %i.bw, -8                   ; 4 uses
  %i.co = getelementptr i8, ptr %i.bs, i64 %n.vec164
  %i.cp = getelementptr i8, ptr %.016.i.i.i, i64 %n.vec164 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index165 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next169, %vec.epilog.vector.body ] ; 3 uses
  %next.gep166 = getelementptr i8, ptr %i.bs, i64 %index165
  %next.gep167 = getelementptr i8, ptr %.016.i.i.i, i64 %index165
  %wide.load168 = load <8 x i8>, ptr %next.gep166, align 1, !tbaa !11
  store <8 x i8> %wide.load168, ptr %next.gep167, align 1, !tbaa !11
  %index.next169 = add nuw i64 %index165, 8       ; 2 uses
  %i.cq = icmp eq i64 %index.next169, %n.vec164
  br i1 %i.cq, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !91

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n170 = icmp eq i64 %i.bw, %n.vec164
  br i1 %cmp.n170, label %.loopexit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.020.i.i.i.ph = phi ptr [ %i.bs, %iter.check ], [ %i.cj, %vec.epilog.iter.check ], [ %i.co, %vec.epilog.middle.block ] ; 3 uses
  %.119.i.i.i.ph = phi ptr [ %.016.i.i.i, %iter.check ], [ %i.ck, %vec.epilog.iter.check ], [ %i.cp, %vec.epilog.middle.block ] ; 2 uses
  %.020.i.i.i.ph253 = ptrtoaddr ptr %.020.i.i.i.ph to i64 ; 2 uses
  %i.cr = sub i64 %i.bu, %.020.i.i.i.ph253
  %xtraiter254 = and i64 %i.cr, 7                 ; 2 uses
  %lcmp.mod255.not = icmp eq i64 %xtraiter254, 0
  br i1 %lcmp.mod255.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol

.lr.ph.i.i.i.prol:                                ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i.prol
  %.020.i.i.i.prol = phi ptr [ %i.ct, %.lr.ph.i.i.i.prol ], [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %.119.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.prol ], [ %.119.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  %prol.iter256 = phi i64 [ %prol.iter256.next, %.lr.ph.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.preheader ]
  %i.cs = load i8, ptr %.020.i.i.i.prol, align 1, !tbaa !11
  store i8 %i.cs, ptr %.119.i.i.i.prol, align 1, !tbaa !11
  %i.ct = getelementptr inbounds nuw i8, ptr %.020.i.i.i.prol, i64 1 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.119.i.i.i.prol, i64 1 ; 3 uses
  %prol.iter256.next = add i64 %prol.iter256, 1   ; 2 uses
  %prol.iter256.cmp.not = icmp eq i64 %prol.iter256.next, %xtraiter254
  br i1 %prol.iter256.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !92

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.lcssa247.unr = phi ptr [ poison, %.lr.ph.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.prol ]
  %.020.i.i.i.unr = phi ptr [ %.020.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.prol ]
  %.119.i.i.i.unr = phi ptr [ %.119.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.prol ]
  %i.cv = sub i64 %.020.i.i.i.ph253, %i.bu
  %i.cw = icmp ugt i64 %i.cv, -8
  br i1 %i.cw, label %.loopexit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.020.i.i.i = phi ptr [ %i.dt, %.lr.ph.i.i.i ], [ %.020.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %.119.i.i.i = phi ptr [ %i.du, %.lr.ph.i.i.i ], [ %.119.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 9 uses
  %i.cx = load i8, ptr %.020.i.i.i, align 1, !tbaa !11
  store i8 %i.cx, ptr %.119.i.i.i, align 1, !tbaa !11
  %i.cy = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 1
  %i.cz = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 1
  %i.da = load i8, ptr %i.cy, align 1, !tbaa !11
  store i8 %i.da, ptr %i.cz, align 1, !tbaa !11
  %i.db = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 2
  %i.dc = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 2
  %i.dd = load i8, ptr %i.db, align 1, !tbaa !11
  store i8 %i.dd, ptr %i.dc, align 1, !tbaa !11
  %i.de = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 3
  %i.df = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 3
  %i.dg = load i8, ptr %i.de, align 1, !tbaa !11
  store i8 %i.dg, ptr %i.df, align 1, !tbaa !11
  %i.dh = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 4
  %i.di = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 4
  %i.dj = load i8, ptr %i.dh, align 1, !tbaa !11
  store i8 %i.dj, ptr %i.di, align 1, !tbaa !11
  %i.dk = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 5
  %i.dl = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 5
  %i.dm = load i8, ptr %i.dk, align 1, !tbaa !11
  store i8 %i.dm, ptr %i.dl, align 1, !tbaa !11
  %i.dn = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 6
  %i.do = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 6
  %i.dp = load i8, ptr %i.dn, align 1, !tbaa !11
  store i8 %i.dp, ptr %i.do, align 1, !tbaa !11
  %i.dq = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 7
  %i.dr = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 7
  %i.ds = load i8, ptr %i.dq, align 1, !tbaa !11
  store i8 %i.ds, ptr %i.dr, align 1, !tbaa !11
  %i.dt = getelementptr inbounds nuw i8, ptr %.020.i.i.i, i64 8 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.119.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.7 = icmp eq ptr %i.dt, %i.bt
  br i1 %.not.i.i.i.7, label %.loopexit, label %.lr.ph.i.i.i, !llvm.loop !93

.loopexit:                                        ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %middle.block, %vec.epilog.middle.block, %bb.u
  %.1.lcssa.i.i.i = phi ptr [ %.016.i.i.i, %bb.u ], [ %i.cp, %vec.epilog.middle.block ], [ %i.ck, %middle.block ], [ %.lcssa247.unr, %.lr.ph.i.i.i.prol.loopexit ], [ %i.du, %.lr.ph.i.i.i ]
  store i8 0, ptr %.1.lcssa.i.i.i, align 1, !tbaa !11
  %i.dv = load i8, ptr %7, align 8                ; 2 uses
  %i.dw = trunc i8 %i.dv to i1                    ; 2 uses
  %i.dx = load ptr, ptr %i.ah, align 8
  %i.dy = select i1 %i.dw, ptr %i.dx, ptr %i.aj
  %i.dz = load i64, ptr %i.ai, align 8
end_hunk_0
