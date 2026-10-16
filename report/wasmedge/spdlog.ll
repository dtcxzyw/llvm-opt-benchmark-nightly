Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/spdlog?download=true
inline.NumInlined: 6509
inline.NumDeleted: 3747
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 124
loop-unroll.NumUnrolled: 125
begin_hunk_0_@_ZN6spdlog7details11E_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a

iter.check43:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check30 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check30, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck28

vector.memcheck28:                                ; preds = %iter.check43
  %i.dc = add i64 %i.cw, %i.da
  %i.dd = sub i64 %i.cq, %i.dc
  %diff.check29 = icmp ugt i64 %i.dd, -32
  br i1 %diff.check29, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check31

vector.main.loop.iter.check31:                    ; preds = %vector.memcheck28
  %min.iters.check32 = icmp ult i64 %spec.select.i.i.i.i, 32
  br i1 %min.iters.check32, label %vec.epilog.ph47, label %vector.ph33

vector.ph33:                                      ; preds = %vector.main.loop.iter.check31
  %i.de = and i64 %spec.select.i.i.i.i, 28
  %n.vec34 = and i64 %spec.select.i.i.i.i, -32    ; 4 uses
  br label %vector.body35

vector.body35:                                    ; preds = %vector.ph33, %vector.body35
  %index36 = phi i64 [ 0, %vector.ph33 ], [ %index.next39, %vector.body35 ] ; 3 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index36 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %wide.load37 = load <16 x i8>, ptr %i.df, align 1, !tbaa !62
  %wide.load38 = load <16 x i8>, ptr %i.dg, align 1, !tbaa !62
  %i.dh = getelementptr inbounds nuw i8, ptr %i.db, i64 %index36 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store <16 x i8> %wide.load37, ptr %i.dh, align 1, !tbaa !62
  store <16 x i8> %wide.load38, ptr %i.di, align 1, !tbaa !62
  %index.next39 = add nuw i64 %index36, 32        ; 2 uses
  %i.dj = icmp eq i64 %index.next39, %n.vec34
  br i1 %i.dj, label %middle.block40, label %vector.body35, !llvm.loop !977

middle.block40:                                   ; preds = %vector.body35
  %cmp.n41 = icmp eq i64 %spec.select.i.i.i.i, %n.vec34
  br i1 %cmp.n41, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check45

vec.epilog.iter.check45:                          ; preds = %middle.block40
  %min.epilog.iters.check46 = icmp eq i64 %i.de, 0
  br i1 %min.epilog.iters.check46, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph47, !prof !107

vec.epilog.ph47:                                  ; preds = %vector.main.loop.iter.check31, %vec.epilog.iter.check45
  %vec.epilog.resume.val42 = phi i64 [ %n.vec34, %vec.epilog.iter.check45 ], [ 0, %vector.main.loop.iter.check31 ]
  %n.vec48 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body49

vec.epilog.vector.body49:                         ; preds = %vec.epilog.vector.body49, %vec.epilog.ph47
  %index50 = phi i64 [ %vec.epilog.resume.val42, %vec.epilog.ph47 ], [ %index.next52, %vec.epilog.vector.body49 ] ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index50
  %wide.load51 = load <4 x i8>, ptr %i.dk, align 1, !tbaa !62
  %i.dl = getelementptr inbounds nuw i8, ptr %i.db, i64 %index50
  store <4 x i8> %wide.load51, ptr %i.dl, align 1, !tbaa !62
  %index.next52 = add nuw i64 %index50, 4         ; 2 uses
  %i.dm = icmp eq i64 %index.next52, %n.vec48
  br i1 %i.dm, label %vec.epilog.middle.block53, label %vec.epilog.vector.body49, !llvm.loop !978

vec.epilog.middle.block53:                        ; preds = %vec.epilog.vector.body49
  %cmp.n54 = icmp eq i64 %spec.select.i.i.i.i, %n.vec48
  br i1 %cmp.n54, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check43, %vector.memcheck28, %vec.epilog.iter.check45, %vec.epilog.middle.block53
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check43 ], [ 0, %vector.memcheck28 ], [ %n.vec34, %vec.epilog.iter.check45 ], [ %n.vec48, %vec.epilog.middle.block53 ] ; 3 uses
  %xtraiter57 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod58.not = icmp eq i64 %xtraiter57, 0
  br i1 %lcmp.mod58.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.dq, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter59 = phi i64 [ %prol.iter59.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dn = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.do = load i8, ptr %i.dn, align 1, !tbaa !62
  %i.dp = getelementptr inbounds nuw i8, ptr %i.db, i64 %.023.i.i.i.i.prol
  store i8 %i.do, ptr %i.dp, align 1, !tbaa !62
  %i.dq = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter59.next = add i64 %prol.iter59, 1     ; 2 uses
  %prol.iter59.cmp.not = icmp eq i64 %prol.iter59.next, %xtraiter57
  br i1 %prol.iter59.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !979

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.dq, %.lr.ph.i.i.i.i.prol ]
  %i.dr = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.ds = icmp ugt i64 %i.dr, -4
  br i1 %i.ds, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block53, %middle.block40
  %.pre32.i.i.i.i = load i64, ptr %i.cm, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.dt = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.cw, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.du = add i64 %i.dt, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.du, ptr %i.cm, align 8, !tbaa !67
  %i.dv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.dv, %i.ck
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.h, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.el, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.dx = load i8, ptr %i.dw, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.db, i64 %.023.i.i.i.i
  store i8 %i.dx, ptr %i.dy, align 1, !tbaa !62
  %i.dz = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.dz
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.dz
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !62
  %i.ed = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.ed
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !62
  %i.eg = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.ed
  store i8 %i.ef, ptr %i.eg, align 1, !tbaa !62
  %i.eh = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.eh
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !62
  %i.ek = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.eh
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !62
  %i.el = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.el, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !980

bb.j:                                             ; preds = %.loopexit
  %i.em = load ptr, ptr %5, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 12
  %i.eo = load i8, ptr %i.en, align 4, !tbaa !252, !range !69, !noundef !70
  %i.ep = trunc nuw i8 %i.eo to i1
  br i1 %i.ep, label %bb.k, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.k:                                             ; preds = %bb.j
  %i.eq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 8 ; 2 uses
  %i.et = load i64, ptr %i.es, align 8, !tbaa !67
  %i.eu = add nsw i64 %i.et, %i.ce                ; 3 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.er, i64 16 ; 2 uses
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !66 ; 2 uses
  %i.ex = icmp ugt i64 %i.eu, %i.ew
  br i1 %i.ex, label %bb.l, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ey = getelementptr inbounds nuw i8, ptr %i.er, i64 24
  %i.ez = load ptr, ptr %i.ey, align 8, !tbaa !64
  invoke void %i.ez(ptr noundef nonnull align 8 dereferenceable(283) %i.er, i64 noundef %i.eu)
          to label %.noexc1.i unwind label %.loopexit.split-lp.i, !inline_history !35

.noexc1.i:                                        ; preds = %bb.l
  %.pre.i.i.i = load i64, ptr %i.ev, align 8, !tbaa !66
  br label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i: ; preds = %.noexc1.i, %bb.k
  %i.fa = phi i64 [ %i.ew, %bb.k ], [ %.pre.i.i.i, %.noexc1.i ]
  %..i.i.i = call i64 @llvm.umin.i64(i64 %i.eu, i64 %i.fa)
  store i64 %..i.i.i, ptr %i.es, align 8, !tbaa !67
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

.loopexit.split-lp.i:                             ; preds = %bb.l
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.m

bb.m:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fb = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fb) #37
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.g, %bb.j, %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  ret void

bb.n:                                             ; preds = %bb.f
  %i.fc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #38
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  resume { ptr, i32 } %i.fc
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph27.i.i:
  %4 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.b, align 8, !tbaa !282
  %i.c = icmp sgt i32 %.val, 11                   ; 2 uses
  %5 = select i1 %i.c, ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.97, i64 2) ; 2 uses
  %.str.96..str.97.i = select i1 %i.c, ptr @.str.96, ptr @.str.97
  %6 = ptrtoint ptr %5 to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !67
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.g = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.ak, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.str.96..str.97.i, %.lr.ph27.i.i ], [ %8, %._crit_edge.i.i ] ; 9 uses
  %7 = ptrtoint ptr %.01925.i.i to i64            ; 2 uses
  %i.h = sub i64 %6, %7                           ; 2 uses
  %i.i = add i64 %i.h, %i.g                       ; 2 uses
  %i.j = load i64, ptr %i.e, align 8, !tbaa !66   ; 2 uses
  %i.k = icmp ugt i64 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !64
  invoke void %i.l(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.i)
          to label %.noexc unwind label %bb.j, !inline_history !33

.noexc:                                           ; preds = %bb.b
  %.pre30.i.i = load i64, ptr %i.e, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.d, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc, %bb.a
  %i.m = phi i64 [ %i.g, %bb.a ], [ %.pre31.i.i, %.noexc ] ; 4 uses
  %i.n = phi i64 [ %i.j, %bb.a ], [ %.pre30.i.i, %.noexc ]
  %i.o = sub i64 %i.n, %i.m
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.o, i64 %i.h) ; 13 uses
  %i.p = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.q = ptrtoaddr ptr %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.s = add i64 %i.m, %i.q
  %i.t = sub i64 %7, %i.s
  %diff.check = icmp ugt i64 %i.t, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check13 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check13, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.u = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %wide.load = load <16 x i8>, ptr %i.v, align 1, !tbaa !62
  %wide.load14 = load <16 x i8>, ptr %i.w, align 1, !tbaa !62
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  store <16 x i8> %wide.load, ptr %i.x, align 1, !tbaa !62
  store <16 x i8> %wide.load14, ptr %i.y, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.z = icmp eq i64 %index.next, %n.vec
  br i1 %i.z, label %middle.block, label %vector.body, !llvm.loop !981

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.u, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec15 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index16 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next18, %vec.epilog.vector.body ] ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index16
  %wide.load17 = load <4 x i8>, ptr %i.aa, align 1, !tbaa !62
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 %index16
  store <4 x i8> %wide.load17, ptr %i.ab, align 1, !tbaa !62
  %index.next18 = add nuw i64 %index16, 4         ; 2 uses
  %i.ac = icmp eq i64 %index.next18, %n.vec15
  br i1 %i.ac, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !982

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n19 = icmp eq i64 %spec.select.i.i, %n.vec15
  br i1 %cmp.n19, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec15, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ag, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !62
  %i.af = getelementptr inbounds nuw i8, ptr %i.r, i64 %.023.i.i.prol
  store i8 %i.ae, ptr %i.af, align 1, !tbaa !62
  %i.ag = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !983

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ag, %.lr.ph.i.i.prol ]
  %i.ah = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ai = icmp ugt i64 %i.ah, -4
  br i1 %i.ai, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.d, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.aj = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.m, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.ak = add i64 %i.aj, %spec.select.i.i         ; 2 uses
  store i64 %i.ak, ptr %i.d, align 8, !tbaa !67
  %8 = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %8, %5
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.a, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ba, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.am = load i8, ptr %i.al, align 1, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %i.r, i64 %.023.i.i
  store i8 %i.am, ptr %i.an, align 1, !tbaa !62
  %i.ao = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !tbaa !62
  %i.ar = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.ao
  store i8 %i.aq, ptr %i.ar, align 1, !tbaa !62
  %i.as = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.as
  %i.au = load i8, ptr %i.at, align 1, !tbaa !62
  %i.av = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.as
  store i8 %i.au, ptr %i.av, align 1, !tbaa !62
  %i.aw = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.aw
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !62
  %i.az = getelementptr inbounds nuw i8, ptr %i.r, i64 %i.aw
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !62
  %i.ba = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ba, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !984

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.bb = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !292 ; 4 uses
  %i.bd = icmp sgt i64 %i.bc, -1
  br i1 %i.bd, label %bb.c, label %bb.f

bb.c:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !106 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.bc ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.bc, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.c
  %i.bj = ptrtoint ptr %i.bi to i64
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8 ; 4 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.bn = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.cs, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.bf, %.lr.ph27.i.i.i.i ], [ %i.ct, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.bo = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.bp = sub i64 %i.bj, %i.bo                    ; 2 uses
  %i.bq = add i64 %i.bp, %i.bn                    ; 2 uses
  %i.br = load i64, ptr %i.bl, align 8, !tbaa !66 ; 2 uses
  %i.bs = icmp ugt i64 %i.bq, %i.br
  br i1 %i.bs, label %bb.e, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  %i.bt = load ptr, ptr %i.bm, align 8, !tbaa !64
  invoke void %i.bt(ptr noundef nonnull align 8 dereferenceable(283) %i.bh, i64 noundef %i.bq)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.e
  %.pre30.i.i.i.i = load i64, ptr %i.bl, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.d
  %i.bu = phi i64 [ %i.bn, %bb.d ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.bv = phi i64 [ %i.br, %bb.d ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.bw = sub i64 %i.bv, %i.bu
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bw, i64 %i.bp) ; 13 uses
  %i.bx = load ptr, ptr %i.bh, align 8, !tbaa !65 ; 2 uses
  %i.by = ptrtoaddr ptr %i.bx to i64
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 %i.bu ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check35

iter.check35:                                     ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check22 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check22, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck20

vector.memcheck20:                                ; preds = %iter.check35
  %i.ca = add i64 %i.bu, %i.by
  %i.cb = sub i64 %i.bo, %i.ca
  %diff.check21 = icmp ugt i64 %i.cb, -32
  br i1 %diff.check21, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check23

vector.main.loop.iter.check23:                    ; preds = %vector.memcheck20
  %min.iters.check24 = icmp ult i64 %spec.select.i.i.i.i, 32
  br i1 %min.iters.check24, label %vec.epilog.ph39, label %vector.ph25

vector.ph25:                                      ; preds = %vector.main.loop.iter.check23
  %i.cc = and i64 %spec.select.i.i.i.i, 28
  %n.vec26 = and i64 %spec.select.i.i.i.i, -32    ; 4 uses
  br label %vector.body27

vector.body27:                                    ; preds = %vector.ph25, %vector.body27
  %index28 = phi i64 [ 0, %vector.ph25 ], [ %index.next31, %vector.body27 ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index28 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 16
  %wide.load29 = load <16 x i8>, ptr %i.cd, align 1, !tbaa !62
  %wide.load30 = load <16 x i8>, ptr %i.ce, align 1, !tbaa !62
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index28 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store <16 x i8> %wide.load29, ptr %i.cf, align 1, !tbaa !62
  store <16 x i8> %wide.load30, ptr %i.cg, align 1, !tbaa !62
  %index.next31 = add nuw i64 %index28, 32        ; 2 uses
  %i.ch = icmp eq i64 %index.next31, %n.vec26
  br i1 %i.ch, label %middle.block32, label %vector.body27, !llvm.loop !985

middle.block32:                                   ; preds = %vector.body27
  %cmp.n33 = icmp eq i64 %spec.select.i.i.i.i, %n.vec26
  br i1 %cmp.n33, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check37

vec.epilog.iter.check37:                          ; preds = %middle.block32
  %min.epilog.iters.check38 = icmp eq i64 %i.cc, 0
  br i1 %min.epilog.iters.check38, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph39, !prof !107

vec.epilog.ph39:                                  ; preds = %vector.main.loop.iter.check23, %vec.epilog.iter.check37
  %vec.epilog.resume.val34 = phi i64 [ %n.vec26, %vec.epilog.iter.check37 ], [ 0, %vector.main.loop.iter.check23 ]
  %n.vec40 = and i64 %spec.select.i.i.i.i, -4     ; 3 uses
  br label %vec.epilog.vector.body41

vec.epilog.vector.body41:                         ; preds = %vec.epilog.vector.body41, %vec.epilog.ph39
  %index42 = phi i64 [ %vec.epilog.resume.val34, %vec.epilog.ph39 ], [ %index.next44, %vec.epilog.vector.body41 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index42
  %wide.load43 = load <4 x i8>, ptr %i.ci, align 1, !tbaa !62
  %i.cj = getelementptr inbounds nuw i8, ptr %i.bz, i64 %index42
  store <4 x i8> %wide.load43, ptr %i.cj, align 1, !tbaa !62
  %index.next44 = add nuw i64 %index42, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next44, %n.vec40
  br i1 %i.ck, label %vec.epilog.middle.block45, label %vec.epilog.vector.body41, !llvm.loop !986

vec.epilog.middle.block45:                        ; preds = %vec.epilog.vector.body41
  %cmp.n46 = icmp eq i64 %spec.select.i.i.i.i, %n.vec40
  br i1 %cmp.n46, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check35, %vector.memcheck20, %vec.epilog.iter.check37, %vec.epilog.middle.block45
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check35 ], [ 0, %vector.memcheck20 ], [ %n.vec26, %vec.epilog.iter.check37 ], [ %n.vec40, %vec.epilog.middle.block45 ] ; 3 uses
  %xtraiter48 = and i64 %spec.select.i.i.i.i, 3   ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.co, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.cm = load i8, ptr %i.cl, align 1, !tbaa !62
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.023.i.i.i.i.prol
  store i8 %i.cm, ptr %i.cn, align 1, !tbaa !62
  %i.co = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !987

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.co, %.lr.ph.i.i.i.i.prol ]
  %i.cp = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.cq = icmp ugt i64 %i.cp, -4
  br i1 %i.cq, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block45, %middle.block32
  %.pre32.i.i.i.i = load i64, ptr %i.bk, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.cr = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.bu, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.cs = add i64 %i.cr, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.cs, ptr %i.bk, align 8, !tbaa !67
  %i.ct = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ct, %i.bi
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.d, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.dj, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.cv = load i8, ptr %i.cu, align 1, !tbaa !62
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bz, i64 %.023.i.i.i.i
  store i8 %i.cv, ptr %i.cw, align 1, !tbaa !62
  %i.cx = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.cx
  %i.cz = load i8, ptr %i.cy, align 1, !tbaa !62
  %i.da = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.cx
  store i8 %i.cz, ptr %i.da, align 1, !tbaa !62
  %i.db = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.db
  %i.dd = load i8, ptr %i.dc, align 1, !tbaa !62
  %i.de = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.db
  store i8 %i.dd, ptr %i.de, align 1, !tbaa !62
  %i.df = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !62
  %i.di = getelementptr inbounds nuw i8, ptr %i.bz, i64 %i.df
  store i8 %i.dh, ptr %i.di, align 1, !tbaa !62
  %i.dj = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.dj, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !988

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.dk = load ptr, ptr %4, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 12
  %i.dm = load i8, ptr %i.dl, align 4, !tbaa !252, !range !69, !noundef !70
  %i.dn = trunc nuw i8 %i.dm to i1
  br i1 %i.dn, label %bb.g, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 8 ; 2 uses
  %i.dr = load i64, ptr %i.dq, align 8, !tbaa !67
  %i.ds = add nsw i64 %i.dr, %i.bc                ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 16 ; 2 uses
  %i.du = load i64, ptr %i.dt, align 8, !tbaa !66 ; 2 uses
  %i.dv = icmp ugt i64 %i.ds, %i.du
  br i1 %i.dv, label %bb.h, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

end_hunk_0
begin_hunk_1_@_ZN6spdlog7details11r_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %.pre-phi.i = phi i64 [ %i.af, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i, %.noexc19 ]
  %i.al = phi i64 [ %i.ae, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i, %.noexc19 ]
  %i.am = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.ad, align 8, !tbaa !67
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 %i.al
  store i8 58, ptr %i.an, align 1, !tbaa !62
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !283 ; 3 uses
  %or.cond.i20 = icmp ult i32 %i.ap, 100
  br i1 %or.cond.i20, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %.lhs.trunc.i22 = trunc nuw nsw i32 %i.ap to i8 ; 2 uses
  %i.aq = udiv i8 %.lhs.trunc.i22, 10
  %i.ar = urem i8 %.lhs.trunc.i22, 10
  %i.as = or disjoint i8 %i.aq, 48
  %i.at = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.au = add i64 %i.at, 1                        ; 3 uses
  %i.av = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.aw = icmp ugt i64 %i.au, %i.av
  br i1 %i.aw, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23

bb.i:                                             ; preds = %bb.h
  %i.ax = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !64
  invoke void %i.ay(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.au)
          to label %.noexc31 unwind label %.loopexit.split-lp, !inline_history !40

.noexc31:                                         ; preds = %bb.i
  %.pre.i.i29 = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i30 = add i64 %.pre.i.i29, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23: ; preds = %.noexc31, %bb.h
  %.pre-phi.i.i24 = phi i64 [ %i.au, %bb.h ], [ %.pre2.i.i30, %.noexc31 ]
  %i.az = phi i64 [ %i.at, %bb.h ], [ %.pre.i.i29, %.noexc31 ]
  %i.ba = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i24, ptr %i.ad, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 %i.az
  store i8 %i.as, ptr %i.bb, align 1, !tbaa !62
  %i.bc = or disjoint i8 %i.ar, 48
  %i.bd = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.be = add i64 %i.bd, 1                        ; 3 uses
  %i.bf = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.bg = icmp ugt i64 %i.be, %i.bf
  br i1 %i.bg, label %bb.j, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i25

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23
  %i.bh = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !64
  invoke void %i.bi(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.be)
          to label %.noexc32 unwind label %.loopexit.split-lp, !inline_history !40

.noexc32:                                         ; preds = %bb.j
  %.pre.i5.i27 = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i28 = add i64 %.pre.i5.i27, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i25

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i25: ; preds = %.noexc32, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23
  %.pre-phi.i4.i26 = phi i64 [ %i.be, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23 ], [ %.pre2.i6.i28, %.noexc32 ]
  %i.bj = phi i64 [ %i.bd, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i23 ], [ %.pre.i5.i27, %.noexc32 ]
  %i.bk = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i26, ptr %i.ad, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bj
  store i8 %i.bc, ptr %i.bl, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %.sroa.01.0.insert.ext.i.i21 = zext i32 %i.ap to i128
  store i128 %.sroa.01.0.insert.ext.i.i21, ptr %5, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %5, ptr null)
          to label %.noexc33 unwind label %.loopexit.split-lp

.noexc33:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34: ; preds = %.noexc33, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i25
  %i.bm = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.bn = add i64 %i.bm, 1                        ; 3 uses
  %i.bo = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.bp = icmp ugt i64 %i.bn, %i.bo
  br i1 %i.bp, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34
  %i.bq = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !64
  invoke void %i.br(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bn)
          to label %.noexc38 unwind label %bb.ac, !inline_history !38

.noexc38:                                         ; preds = %bb.l
  %.pre.i36 = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre2.i37 = add i64 %.pre.i36, 1
  br label %bb.m

bb.m:                                             ; preds = %.noexc38, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34
  %.pre-phi.i35 = phi i64 [ %i.bn, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34 ], [ %.pre2.i37, %.noexc38 ]
  %i.bs = phi i64 [ %i.bm, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit34 ], [ %.pre.i36, %.noexc38 ]
  %i.bt = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i35, ptr %i.ad, align 8, !tbaa !67
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 %i.bs
  store i8 58, ptr %i.bu, align 1, !tbaa !62
  %i.bv = load i32, ptr %2, align 8, !tbaa !284   ; 3 uses
  %or.cond.i40 = icmp ult i32 %i.bv, 100
  br i1 %or.cond.i40, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.lhs.trunc.i42 = trunc nuw nsw i32 %i.bv to i8 ; 2 uses
  %i.bw = udiv i8 %.lhs.trunc.i42, 10
  %i.bx = urem i8 %.lhs.trunc.i42, 10
  %i.by = or disjoint i8 %i.bw, 48
  %i.bz = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.ca = add i64 %i.bz, 1                        ; 3 uses
  %i.cb = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.cc = icmp ugt i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.o, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !64
  invoke void %i.ce(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ca)
          to label %.noexc51 unwind label %.loopexit.split-lp, !inline_history !40

.noexc51:                                         ; preds = %bb.o
  %.pre.i.i49 = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i50 = add i64 %.pre.i.i49, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43: ; preds = %.noexc51, %bb.n
  %.pre-phi.i.i44 = phi i64 [ %i.ca, %bb.n ], [ %.pre2.i.i50, %.noexc51 ]
  %i.cf = phi i64 [ %i.bz, %bb.n ], [ %.pre.i.i49, %.noexc51 ]
  %i.cg = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i44, ptr %i.ad, align 8, !tbaa !67
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %i.cf
  store i8 %i.by, ptr %i.ch, align 1, !tbaa !62
  %i.ci = or disjoint i8 %i.bx, 48
  %i.cj = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.ck = add i64 %i.cj, 1                        ; 3 uses
  %i.cl = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.cm = icmp ugt i64 %i.ck, %i.cl
  br i1 %i.cm, label %bb.p, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i45

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43
  %i.cn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !64
  invoke void %i.co(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ck)
          to label %.noexc52 unwind label %.loopexit.split-lp, !inline_history !40

.noexc52:                                         ; preds = %bb.p
  %.pre.i5.i47 = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i48 = add i64 %.pre.i5.i47, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i45

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i45: ; preds = %.noexc52, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43
  %.pre-phi.i4.i46 = phi i64 [ %i.ck, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43 ], [ %.pre2.i6.i48, %.noexc52 ]
  %i.cp = phi i64 [ %i.cj, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i43 ], [ %.pre.i5.i47, %.noexc52 ]
  %i.cq = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i46, ptr %i.ad, align 8, !tbaa !67
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 %i.cp
  store i8 %i.ci, ptr %i.cr, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.sroa.01.0.insert.ext.i.i41 = zext i32 %i.bv to i128
  store i128 %.sroa.01.0.insert.ext.i.i41, ptr %4, align 16
  invoke void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %4, ptr null)
          to label %.noexc53 unwind label %.loopexit.split-lp

.noexc53:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54: ; preds = %.noexc53, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i45
  %i.cs = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %i.ct = add i64 %i.cs, 1                        ; 3 uses
  %i.cu = load i64, ptr %i.ag, align 8, !tbaa !66
  %i.cv = icmp ugt i64 %i.ct, %i.cu
  br i1 %i.cv, label %bb.r, label %.lr.ph27.i.i

bb.r:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !64
  invoke void %i.cx(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ct)
          to label %.noexc58 unwind label %bb.ad, !inline_history !38

.noexc58:                                         ; preds = %bb.r
  %.pre.i56 = load i64, ptr %i.ad, align 8, !tbaa !67 ; 2 uses
  %.pre2.i57 = add i64 %.pre.i56, 1
  br label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %.noexc58, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54
  %.pre-phi.i55 = phi i64 [ %i.ct, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54 ], [ %.pre2.i57, %.noexc58 ]
  %i.cy = phi i64 [ %i.cs, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit54 ], [ %.pre.i56, %.noexc58 ]
  %i.cz = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i55, ptr %i.ad, align 8, !tbaa !67
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 %i.cy
  store i8 32, ptr %i.da, align 1, !tbaa !62
  %.val16 = load i32, ptr %i.b, align 8, !tbaa !282
  %i.db = icmp sgt i32 %.val16, 11                ; 2 uses
  %8 = select i1 %i.db, ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.97, i64 2) ; 2 uses
  %.str.96..str.97.i = select i1 %i.db, ptr @.str.96, ptr @.str.97
  %9 = ptrtoint ptr %8 to i64
  %i.dc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i60 = load i64, ptr %i.ad, align 8, !tbaa !67
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.dd = phi i64 [ %.pre.i.i60, %.lr.ph27.i.i ], [ %i.eh, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.str.96..str.97.i, %.lr.ph27.i.i ], [ %11, %._crit_edge.i.i ] ; 9 uses
  %10 = ptrtoint ptr %.01925.i.i to i64           ; 2 uses
  %i.de = sub i64 %9, %10                         ; 2 uses
  %i.df = add i64 %i.de, %i.dd                    ; 2 uses
  %i.dg = load i64, ptr %i.ag, align 8, !tbaa !66 ; 2 uses
  %i.dh = icmp ugt i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.t, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.t:                                             ; preds = %bb.s
  %i.di = load ptr, ptr %i.dc, align 8, !tbaa !64
  invoke void %i.di(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.df)
          to label %.noexc61 unwind label %.loopexit, !inline_history !33

.noexc61:                                         ; preds = %bb.t
  %.pre30.i.i = load i64, ptr %i.ag, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ad, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %.noexc61, %bb.s
  %i.dj = phi i64 [ %i.dd, %bb.s ], [ %.pre31.i.i, %.noexc61 ] ; 4 uses
  %i.dk = phi i64 [ %i.dg, %bb.s ], [ %.pre30.i.i, %.noexc61 ]
  %i.dl = sub i64 %i.dk, %i.dj
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.dl, i64 %i.de) ; 13 uses
  %i.dm = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.dn = ptrtoaddr ptr %i.dm to i64
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 %i.dj ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.dp = add i64 %i.dj, %i.dn
  %i.dq = sub i64 %10, %i.dp
  %diff.check = icmp ugt i64 %i.dq, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check96 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check96, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dr = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %wide.load = load <16 x i8>, ptr %i.ds, align 1, !tbaa !62
  %wide.load97 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !62
  %i.du = getelementptr inbounds nuw i8, ptr %i.do, i64 %index ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 16
  store <16 x i8> %wide.load, ptr %i.du, align 1, !tbaa !62
  store <16 x i8> %wide.load97, ptr %i.dv, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dw = icmp eq i64 %index.next, %n.vec
  br i1 %i.dw, label %middle.block, label %vector.body, !llvm.loop !989

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dr, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec98 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index99 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next101, %vec.epilog.vector.body ] ; 3 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index99
  %wide.load100 = load <4 x i8>, ptr %i.dx, align 1, !tbaa !62
  %i.dy = getelementptr inbounds nuw i8, ptr %i.do, i64 %index99
  store <4 x i8> %wide.load100, ptr %i.dy, align 1, !tbaa !62
  %index.next101 = add nuw i64 %index99, 4        ; 2 uses
  %i.dz = icmp eq i64 %index.next101, %n.vec98
  br i1 %i.dz, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !990

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n102 = icmp eq i64 %spec.select.i.i, %n.vec98
  br i1 %cmp.n102, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec98, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ed, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !62
  %i.ec = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i.prol
  store i8 %i.eb, ptr %i.ec, align 1, !tbaa !62
  %i.ed = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !991

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ed, %.lr.ph.i.i.prol ]
  %i.ee = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ef = icmp ugt i64 %i.ee, -4
  br i1 %i.ef, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ad, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.eg = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.dj, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.eh = add i64 %i.eg, %spec.select.i.i         ; 2 uses
  store i64 %i.eh, ptr %i.ad, align 8, !tbaa !67
  %11 = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %11, %8
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.s, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ex, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ej = load i8, ptr %i.ei, align 1, !tbaa !62
  %i.ek = getelementptr inbounds nuw i8, ptr %i.do, i64 %.023.i.i
  store i8 %i.ej, ptr %i.ek, align 1, !tbaa !62
  %i.el = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.el
  %i.en = load i8, ptr %i.em, align 1, !tbaa !62
  %i.eo = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.el
  store i8 %i.en, ptr %i.eo, align 1, !tbaa !62
  %i.ep = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !tbaa !62
  %i.es = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.ep
  store i8 %i.er, ptr %i.es, align 1, !tbaa !62
  %i.et = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.et
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !62
  %i.ew = getelementptr inbounds nuw i8, ptr %i.do, i64 %i.et
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !62
  %i.ex = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ex, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !992

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i
  %i.ey = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ez = load i64, ptr %i.ey, align 8, !tbaa !292 ; 4 uses
  %i.fa = icmp sgt i64 %i.ez, -1
  br i1 %i.fa, label %bb.u, label %bb.x

bb.u:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.fb = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !106 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !293, !nonnull !70, !align !294 ; 5 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fc, i64 %i.ez ; 2 uses
  %.not24.i.i.i.i = icmp samesign eq i64 %i.ez, 0
  br i1 %.not24.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph27.i.i.i.i

.lr.ph27.i.i.i.i:                                 ; preds = %bb.u
  %i.fg = ptrtoint ptr %i.ff to i64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 8 ; 4 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fe, i64 16 ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.fh, align 8, !tbaa !67
  br label %bb.v

bb.v:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph27.i.i.i.i
  %i.fk = phi i64 [ %.pre.i.i.i.i, %.lr.ph27.i.i.i.i ], [ %i.gp, %._crit_edge.i.i.i.i ] ; 2 uses
  %.01925.i.i.i.i = phi ptr [ %i.fc, %.lr.ph27.i.i.i.i ], [ %i.gq, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.fl = ptrtoint ptr %.01925.i.i.i.i to i64     ; 2 uses
  %i.fm = sub i64 %i.fg, %i.fl                    ; 2 uses
  %i.fn = add i64 %i.fm, %i.fk                    ; 2 uses
  %i.fo = load i64, ptr %i.fi, align 8, !tbaa !66 ; 2 uses
  %i.fp = icmp ugt i64 %i.fn, %i.fo
  br i1 %i.fp, label %bb.w, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

bb.w:                                             ; preds = %bb.v
  %i.fq = load ptr, ptr %i.fj, align 8, !tbaa !64
  invoke void %i.fq(ptr noundef nonnull align 8 dereferenceable(283) %i.fe, i64 noundef %i.fn)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !34

.noexc.i:                                         ; preds = %bb.w
  %.pre30.i.i.i.i = load i64, ptr %i.fi, align 8, !tbaa !66
  %.pre31.i.i.i.i = load i64, ptr %i.fh, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i: ; preds = %.noexc.i, %bb.v
  %i.fr = phi i64 [ %i.fk, %bb.v ], [ %.pre31.i.i.i.i, %.noexc.i ] ; 4 uses
  %i.fs = phi i64 [ %i.fo, %bb.v ], [ %.pre30.i.i.i.i, %.noexc.i ]
  %i.ft = sub i64 %i.fs, %i.fr
  %spec.select.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ft, i64 %i.fm) ; 13 uses
  %i.fu = load ptr, ptr %i.fe, align 8, !tbaa !65 ; 2 uses
  %i.fv = ptrtoaddr ptr %i.fu to i64
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fr ; 7 uses
  %.not29.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i, 0
  br i1 %.not29.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check118

iter.check118:                                    ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %min.iters.check105 = icmp ult i64 %spec.select.i.i.i.i, 4
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck103

vector.memcheck103:                               ; preds = %iter.check118
  %i.fx = add i64 %i.fr, %i.fv
  %i.fy = sub i64 %i.fl, %i.fx
  %diff.check104 = icmp ugt i64 %i.fy, -32
  br i1 %diff.check104, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check106

vector.main.loop.iter.check106:                   ; preds = %vector.memcheck103
  %min.iters.check107 = icmp ult i64 %spec.select.i.i.i.i, 32
  br i1 %min.iters.check107, label %vec.epilog.ph122, label %vector.ph108

vector.ph108:                                     ; preds = %vector.main.loop.iter.check106
  %i.fz = and i64 %spec.select.i.i.i.i, 28
  %n.vec109 = and i64 %spec.select.i.i.i.i, -32   ; 4 uses
  br label %vector.body110

vector.body110:                                   ; preds = %vector.ph108, %vector.body110
  %index111 = phi i64 [ 0, %vector.ph108 ], [ %index.next114, %vector.body110 ] ; 3 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index111 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 16
  %wide.load112 = load <16 x i8>, ptr %i.ga, align 1, !tbaa !62
  %wide.load113 = load <16 x i8>, ptr %i.gb, align 1, !tbaa !62
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fw, i64 %index111 ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.gc, i64 16
  store <16 x i8> %wide.load112, ptr %i.gc, align 1, !tbaa !62
  store <16 x i8> %wide.load113, ptr %i.gd, align 1, !tbaa !62
  %index.next114 = add nuw i64 %index111, 32      ; 2 uses
  %i.ge = icmp eq i64 %index.next114, %n.vec109
  br i1 %i.ge, label %middle.block115, label %vector.body110, !llvm.loop !993

middle.block115:                                  ; preds = %vector.body110
  %cmp.n116 = icmp eq i64 %spec.select.i.i.i.i, %n.vec109
  br i1 %cmp.n116, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check120

vec.epilog.iter.check120:                         ; preds = %middle.block115
  %min.epilog.iters.check121 = icmp eq i64 %i.fz, 0
  br i1 %min.epilog.iters.check121, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph122, !prof !107

vec.epilog.ph122:                                 ; preds = %vector.main.loop.iter.check106, %vec.epilog.iter.check120
  %vec.epilog.resume.val117 = phi i64 [ %n.vec109, %vec.epilog.iter.check120 ], [ 0, %vector.main.loop.iter.check106 ]
  %n.vec123 = and i64 %spec.select.i.i.i.i, -4    ; 3 uses
  br label %vec.epilog.vector.body124

vec.epilog.vector.body124:                        ; preds = %vec.epilog.vector.body124, %vec.epilog.ph122
  %index125 = phi i64 [ %vec.epilog.resume.val117, %vec.epilog.ph122 ], [ %index.next127, %vec.epilog.vector.body124 ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %index125
  %wide.load126 = load <4 x i8>, ptr %i.gf, align 1, !tbaa !62
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 %index125
  store <4 x i8> %wide.load126, ptr %i.gg, align 1, !tbaa !62
  %index.next127 = add nuw i64 %index125, 4       ; 2 uses
  %i.gh = icmp eq i64 %index.next127, %n.vec123
  br i1 %i.gh, label %vec.epilog.middle.block128, label %vec.epilog.vector.body124, !llvm.loop !994

vec.epilog.middle.block128:                       ; preds = %vec.epilog.vector.body124
  %cmp.n129 = icmp eq i64 %spec.select.i.i.i.i, %n.vec123
  br i1 %cmp.n129, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check118, %vector.memcheck103, %vec.epilog.iter.check120, %vec.epilog.middle.block128
  %.023.i.i.i.i.ph = phi i64 [ 0, %iter.check118 ], [ 0, %vector.memcheck103 ], [ %n.vec109, %vec.epilog.iter.check120 ], [ %n.vec123, %vec.epilog.middle.block128 ] ; 3 uses
  %xtraiter131 = and i64 %spec.select.i.i.i.i, 3  ; 2 uses
  %lcmp.mod132.not = icmp eq i64 %xtraiter131, 0
  br i1 %lcmp.mod132.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.023.i.i.i.i.prol = phi i64 [ %i.gl, %.lr.ph.i.i.i.i.prol ], [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter133 = phi i64 [ %prol.iter133.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.gi = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i.prol
  %i.gj = load i8, ptr %i.gi, align 1, !tbaa !62
  %i.gk = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.023.i.i.i.i.prol
  store i8 %i.gj, ptr %i.gk, align 1, !tbaa !62
  %i.gl = add nuw i64 %.023.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter133.next = add i64 %prol.iter133, 1   ; 2 uses
  %prol.iter133.cmp.not = icmp eq i64 %prol.iter133.next, %xtraiter131
  br i1 %prol.iter133.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !995

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.023.i.i.i.i.unr = phi i64 [ %.023.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.gl, %.lr.ph.i.i.i.i.prol ]
  %i.gm = sub i64 %.023.i.i.i.i.ph, %spec.select.i.i.i.i
  %i.gn = icmp ugt i64 %i.gm, -4
  br i1 %i.gn, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block128, %middle.block115
  %.pre32.i.i.i.i = load i64, ptr %i.fh, align 8, !tbaa !67
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i
  %i.go = phi i64 [ %.pre32.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.fr, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i.i.i ]
  %i.gp = add i64 %i.go, %spec.select.i.i.i.i     ; 2 uses
  store i64 %i.gp, ptr %i.fh, align 8, !tbaa !67
  %i.gq = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %spec.select.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.gq, %i.ff
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.v, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.023.i.i.i.i = phi i64 [ %i.hg, %.lr.ph.i.i.i.i ], [ %.023.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %.023.i.i.i.i
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !62
  %i.gt = getelementptr inbounds nuw i8, ptr %i.fw, i64 %.023.i.i.i.i
  store i8 %i.gs, ptr %i.gt, align 1, !tbaa !62
  %i.gu = add nuw i64 %.023.i.i.i.i, 1            ; 2 uses
  %i.gv = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.gu
  %i.gw = load i8, ptr %i.gv, align 1, !tbaa !62
  %i.gx = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gu
  store i8 %i.gw, ptr %i.gx, align 1, !tbaa !62
  %i.gy = add nuw i64 %.023.i.i.i.i, 2            ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.gy
  %i.ha = load i8, ptr %i.gz, align 1, !tbaa !62
  %i.hb = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.gy
  store i8 %i.ha, ptr %i.hb, align 1, !tbaa !62
  %i.hc = add nuw i64 %.023.i.i.i.i, 3            ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.01925.i.i.i.i, i64 %i.hc
  %i.he = load i8, ptr %i.hd, align 1, !tbaa !62
  %i.hf = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.hc
  store i8 %i.he, ptr %i.hf, align 1, !tbaa !62
  %i.hg = add nuw i64 %.023.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.hg, %spec.select.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !996

bb.x:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.hh = load ptr, ptr %7, align 8, !tbaa !295, !nonnull !70, !align !294
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 12
  %i.hj = load i8, ptr %i.hi, align 4, !tbaa !252, !range !69, !noundef !70
  %i.hk = trunc nuw i8 %i.hj to i1
  br i1 %i.hk, label %bb.y, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.y:                                             ; preds = %bb.x
  %i.hl = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !293, !nonnull !70, !align !294 ; 4 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hm, i64 8 ; 2 uses
  %i.ho = load i64, ptr %i.hn, align 8, !tbaa !67
  %i.hp = add nsw i64 %i.ho, %i.ez                ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hm, i64 16 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !66 ; 2 uses
  %i.hs = icmp ugt i64 %i.hp, %i.hr
  br i1 %i.hs, label %bb.z, label %_ZN3fmt3v1119basic_memory_bufferIcLm250ESaIcEE6resizeEm.exit.i

end_hunk_1
begin_hunk_2_@_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE:bb.a
  %i.s = getelementptr inbounds nuw i8, ptr @.str.55, i64 %i.r
  %i.t = load i16, ptr %i.s, align 1
  store i16 %i.t, ptr %i.q, align 1
  br label %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.p, %bb.b ], [ %i.q, %bb.c ] ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN3fmt3v1110format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.u = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i.i.i, i64 -1 ; 2 uses
  store i8 45, ptr %i.u, align 1, !tbaa !62
  br label %_ZN3fmt3v1110format_intC2El.exit.i

_ZN3fmt3v1110format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.u, %bb.d ], [ %.sroa.0.0.i.i.i.i.i, %_ZN3fmt3v1110format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.v, align 8, !tbaa !279
  %i.w = ptrtoint ptr %4 to i64
  %i.x = ptrtoint ptr %.0.i.i.i to i64            ; 2 uses
  %i.y = add i64 %i.w, 21                         ; 2 uses
  %i.z = sub i64 %i.y, %i.x
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.z ; 2 uses
  %.not24.i.i = icmp eq i64 %i.y, %i.x
  br i1 %.not24.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %.lr.ph27.i.i

.lr.ph27.i.i:                                     ; preds = %_ZN3fmt3v1110format_intC2El.exit.i
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.af = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.bk, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.0.i.i.i, %.lr.ph27.i.i ], [ %i.bl, %._crit_edge.i.i ] ; 9 uses
  %i.ag = ptrtoint ptr %.01925.i.i to i64         ; 2 uses
  %i.ah = sub i64 %i.ab, %i.ag                    ; 2 uses
  %i.ai = add i64 %i.ah, %i.af                    ; 2 uses
  %i.aj = load i64, ptr %i.ad, align 8, !tbaa !66 ; 2 uses
  %i.ak = icmp ugt i64 %i.ai, %i.aj
  br i1 %i.ak, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = load ptr, ptr %i.ae, align 8, !tbaa !64
  call void %i.al(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ai), !inline_history !1170
  %.pre30.i.i = load i64, ptr %i.ad, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.f, %bb.e
  %i.am = phi i64 [ %i.af, %bb.e ], [ %.pre31.i.i, %bb.f ] ; 4 uses
  %i.an = phi i64 [ %i.aj, %bb.e ], [ %.pre30.i.i, %bb.f ]
  %i.ao = sub i64 %i.an, %i.am
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.ao, i64 %i.ah) ; 13 uses
  %i.ap = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.aq = ptrtoaddr ptr %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.am ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.as = add i64 %i.am, %i.aq
  %i.at = sub i64 %i.ag, %i.as
  %diff.check = icmp ugt i64 %i.at, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.au = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %wide.load = load <16 x i8>, ptr %i.av, align 1, !tbaa !62
  %wide.load13 = load <16 x i8>, ptr %i.aw, align 1, !tbaa !62
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store <16 x i8> %wide.load, ptr %i.ax, align 1, !tbaa !62
  store <16 x i8> %wide.load13, ptr %i.ay, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1171

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.au, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.ba, align 1, !tbaa !62
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ar, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.bb, align 1, !tbaa !62
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.bc = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.bc, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1172

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %spec.select.i.i, %n.vec14
  br i1 %cmp.n18, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.bg, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.be = load i8, ptr %i.bd, align 1, !tbaa !62
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.023.i.i.prol
  store i8 %i.be, ptr %i.bf, align 1, !tbaa !62
  %i.bg = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1173

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bg, %.lr.ph.i.i.prol ]
  %i.bh = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.bi = icmp ugt i64 %i.bh, -4
  br i1 %i.bi, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.bj = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.am, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.bk = add i64 %i.bj, %spec.select.i.i         ; 2 uses
  store i64 %i.bk, ptr %i.ac, align 8, !tbaa !67
  %i.bl = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bl, %i.aa
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.cb, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !62
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.023.i.i
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !62
  %i.bp = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bp
  %i.br = load i8, ptr %i.bq, align 1, !tbaa !62
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bp
  store i8 %i.br, ptr %i.bs, align 1, !tbaa !62
  %i.bt = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !62
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bt
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !62
  %i.bx = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !62
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !62
  %i.cb = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cb, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1174

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1110format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
.lr.ph27.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !282
  %i.b = icmp sgt i32 %.val, 11                   ; 2 uses
  %4 = select i1 %i.b, ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.97, i64 2) ; 2 uses
  %.str.96..str.97.i = select i1 %i.b, ptr @.str.96, ptr @.str.97
  %5 = ptrtoint ptr %4 to i64
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.c, align 8, !tbaa !67
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph27.i.i
  %i.f = phi i64 [ %.pre.i.i, %.lr.ph27.i.i ], [ %i.aj, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.str.96..str.97.i, %.lr.ph27.i.i ], [ %7, %._crit_edge.i.i ] ; 9 uses
  %6 = ptrtoint ptr %.01925.i.i to i64            ; 2 uses
  %i.g = sub i64 %5, %6                           ; 2 uses
  %i.h = add i64 %i.g, %i.f                       ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !tbaa !66   ; 2 uses
  %i.j = icmp ugt i64 %i.h, %i.i
  br i1 %i.j, label %bb.b, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.b:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !64
  tail call void %i.k(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.h), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.d, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.c, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.b, %bb.a
  %i.l = phi i64 [ %i.f, %bb.a ], [ %.pre31.i.i, %bb.b ] ; 4 uses
  %i.m = phi i64 [ %i.i, %bb.a ], [ %.pre30.i.i, %bb.b ]
  %i.n = sub i64 %i.m, %i.l
  %spec.select.i.i = tail call i64 @llvm.umin.i64(i64 %i.n, i64 %i.g) ; 13 uses
  %i.o = load ptr, ptr %3, align 8, !tbaa !65     ; 2 uses
  %i.p = ptrtoaddr ptr %i.o to i64
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.r = add i64 %i.l, %i.p
  %i.s = sub i64 %6, %i.r
  %diff.check = icmp ugt i64 %i.s, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check7 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check7, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.t = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %wide.load = load <16 x i8>, ptr %i.u, align 1, !tbaa !62
  %wide.load8 = load <16 x i8>, ptr %i.v, align 1, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <16 x i8> %wide.load, ptr %i.w, align 1, !tbaa !62
  store <16 x i8> %wide.load8, ptr %i.x, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.y = icmp eq i64 %index.next, %n.vec
  br i1 %i.y, label %middle.block, label %vector.body, !llvm.loop !1175

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.t, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec9 = and i64 %spec.select.i.i, -4          ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index10 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next12, %vec.epilog.vector.body ] ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index10
  %wide.load11 = load <4 x i8>, ptr %i.z, align 1, !tbaa !62
  %i.aa = getelementptr inbounds nuw i8, ptr %i.q, i64 %index10
  store <4 x i8> %wide.load11, ptr %i.aa, align 1, !tbaa !62
  %index.next12 = add nuw i64 %index10, 4         ; 2 uses
  %i.ab = icmp eq i64 %index.next12, %n.vec9
  br i1 %i.ab, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1176

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n13 = icmp eq i64 %spec.select.i.i, %n.vec9
  br i1 %cmp.n13, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec9, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.af, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ac = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ad = load i8, ptr %i.ac, align 1, !tbaa !62
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023.i.i.prol
  store i8 %i.ad, ptr %i.ae, align 1, !tbaa !62
  %i.af = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1177

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.af, %.lr.ph.i.i.prol ]
  %i.ag = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.c, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ai = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.l, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.aj = add i64 %i.ai, %spec.select.i.i         ; 2 uses
  store i64 %i.aj, ptr %i.c, align 8, !tbaa !67
  %7 = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %7, %4
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.a, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.az, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !62
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 %.023.i.i
  store i8 %i.al, ptr %i.am, align 1, !tbaa !62
  %i.an = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !62
  %i.aq = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.an
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !62
  %i.ar = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !62
  %i.au = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !62
  %i.av = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !62
  %i.ay = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !62
  %i.az = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.az, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1178

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !282 ; 3 uses
  %i.b = icmp sgt i32 %.val, 12
  %i.c = add nsw i32 %.val, -12
  %i.d = select i1 %i.b, i32 %i.c, i32 %.val      ; 3 uses
  %or.cond.i = icmp ult i32 %i.d, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.d to i8    ; 2 uses
  %i.e = udiv i8 %.lhs.trunc.i, 10
  %i.f = urem i8 %.lhs.trunc.i, 10
  %i.g = or disjoint i8 %i.e, 48
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !66
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !64
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.j), !inline_history !31
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.j, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.p = phi i64 [ %i.i, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.h, align 8, !tbaa !67
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !62
  %i.s = or disjoint i8 %i.f, 48
  %i.t = load i64, ptr %i.h, align 8, !tbaa !67   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.k, align 8, !tbaa !66
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !64
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.u), !inline_history !31
  %.pre.i5.i = load i64, ptr %i.h, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.u, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.aa = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i, ptr %i.h, align 8, !tbaa !67
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #38
  %.sroa.01.0.insert.ext.i.i = zext i32 %i.d to i128
  store i128 %.sroa.01.0.insert.ext.i.i, ptr %6, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %6, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  %i.ad = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.ae = add i64 %i.ad, 1                        ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !66
  %i.ah = icmp ugt i64 %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !64
  call void %i.aj(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ae), !inline_history !28
  %.pre.i = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, %bb.f
  %.pre-phi.i = phi i64 [ %i.ae, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i, %bb.f ]
  %i.ak = phi i64 [ %i.ad, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i, %bb.f ]
  %i.al = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.ac, align 8, !tbaa !67
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 %i.ak
  store i8 58, ptr %i.am, align 1, !tbaa !62
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !283 ; 3 uses
  %or.cond.i14 = icmp ult i32 %i.ao, 100
  br i1 %or.cond.i14, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.lhs.trunc.i16 = trunc nuw nsw i32 %i.ao to i8 ; 2 uses
  %i.ap = udiv i8 %.lhs.trunc.i16, 10
  %i.aq = urem i8 %.lhs.trunc.i16, 10
  %i.ar = or disjoint i8 %i.ap, 48
  %i.as = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.at = add i64 %i.as, 1                        ; 3 uses
  %i.au = load i64, ptr %i.af, align 8, !tbaa !66
  %i.av = icmp ugt i64 %i.at, %i.au
  br i1 %i.av, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17

bb.h:                                             ; preds = %bb.g
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !64
  call void %i.ax(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.at), !inline_history !31
  %.pre.i.i23 = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i24 = add i64 %.pre.i.i23, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i18 = phi i64 [ %i.at, %bb.g ], [ %.pre2.i.i24, %bb.h ]
  %i.ay = phi i64 [ %i.as, %bb.g ], [ %.pre.i.i23, %bb.h ]
  %i.az = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i18, ptr %i.ac, align 8, !tbaa !67
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.ay
  store i8 %i.ar, ptr %i.ba, align 1, !tbaa !62
  %i.bb = or disjoint i8 %i.aq, 48
  %i.bc = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.bd = add i64 %i.bc, 1                        ; 3 uses
  %i.be = load i64, ptr %i.af, align 8, !tbaa !66
  %i.bf = icmp ugt i64 %i.bd, %i.be
  br i1 %i.bf, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i19

bb.i:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !64
  call void %i.bh(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bd), !inline_history !31
  %.pre.i5.i21 = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i22 = add i64 %.pre.i5.i21, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i19

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i19: ; preds = %bb.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17
  %.pre-phi.i4.i20 = phi i64 [ %i.bd, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17 ], [ %.pre2.i6.i22, %bb.i ]
  %i.bi = phi i64 [ %i.bc, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i17 ], [ %.pre.i5.i21, %bb.i ]
  %i.bj = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i20, ptr %i.ac, align 8, !tbaa !67
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bi
  store i8 %i.bb, ptr %i.bk, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %.sroa.01.0.insert.ext.i.i15 = zext i32 %i.ao to i128
  store i128 %.sroa.01.0.insert.ext.i.i15, ptr %5, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i19, %bb.j
  %i.bl = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.bm = add i64 %i.bl, 1                        ; 3 uses
  %i.bn = load i64, ptr %i.af, align 8, !tbaa !66
  %i.bo = icmp ugt i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.k, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit29

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25
  %i.bp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !64
  call void %i.bq(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bm), !inline_history !28
  %.pre.i27 = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i28 = add i64 %.pre.i27, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit29

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit29: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25, %bb.k
  %.pre-phi.i26 = phi i64 [ %i.bm, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25 ], [ %.pre2.i28, %bb.k ]
  %i.br = phi i64 [ %i.bl, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit25 ], [ %.pre.i27, %bb.k ]
  %i.bs = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i26, ptr %i.ac, align 8, !tbaa !67
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 58, ptr %i.bt, align 1, !tbaa !62
  %i.bu = load i32, ptr %2, align 8, !tbaa !284   ; 3 uses
  %or.cond.i30 = icmp ult i32 %i.bu, 100
  br i1 %or.cond.i30, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit29
  %.lhs.trunc.i32 = trunc nuw nsw i32 %i.bu to i8 ; 2 uses
  %i.bv = udiv i8 %.lhs.trunc.i32, 10
  %i.bw = urem i8 %.lhs.trunc.i32, 10
  %i.bx = or disjoint i8 %i.bv, 48
  %i.by = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = load i64, ptr %i.af, align 8, !tbaa !66
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.m, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !64
  call void %i.cd(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bz), !inline_history !31
  %.pre.i.i39 = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i40 = add i64 %.pre.i.i39, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33: ; preds = %bb.m, %bb.l
  %.pre-phi.i.i34 = phi i64 [ %i.bz, %bb.l ], [ %.pre2.i.i40, %bb.m ]
  %i.ce = phi i64 [ %i.by, %bb.l ], [ %.pre.i.i39, %bb.m ]
  %i.cf = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i34, ptr %i.ac, align 8, !tbaa !67
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 %i.bx, ptr %i.cg, align 1, !tbaa !62
  %i.ch = or disjoint i8 %i.bw, 48
  %i.ci = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.cj = add i64 %i.ci, 1                        ; 3 uses
  %i.ck = load i64, ptr %i.af, align 8, !tbaa !66
  %i.cl = icmp ugt i64 %i.cj, %i.ck
  br i1 %i.cl, label %bb.n, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i35

bb.n:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !64
  call void %i.cn(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cj), !inline_history !31
  %.pre.i5.i37 = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i38 = add i64 %.pre.i5.i37, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i35

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i35: ; preds = %bb.n, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33
  %.pre-phi.i4.i36 = phi i64 [ %i.cj, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33 ], [ %.pre2.i6.i38, %bb.n ]
  %i.co = phi i64 [ %i.ci, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i33 ], [ %.pre.i5.i37, %bb.n ]
  %i.cp = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i36, ptr %i.ac, align 8, !tbaa !67
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.co
  store i8 %i.ch, ptr %i.cq, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41

bb.o:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit29
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.sroa.01.0.insert.ext.i.i31 = zext i32 %i.bu to i128
  store i128 %.sroa.01.0.insert.ext.i.i31, ptr %4, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %4, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i35, %bb.o
  %i.cr = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %i.cs = add i64 %i.cr, 1                        ; 3 uses
  %i.ct = load i64, ptr %i.af, align 8, !tbaa !66
  %i.cu = icmp ugt i64 %i.cs, %i.ct
  br i1 %i.cu, label %bb.p, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit45

bb.p:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41
  %i.cv = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !64
  call void %i.cw(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.cs), !inline_history !28
  %.pre.i43 = load i64, ptr %i.ac, align 8, !tbaa !67 ; 2 uses
  %.pre2.i44 = add i64 %.pre.i43, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit45

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit45: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41, %bb.p
  %.pre-phi.i42 = phi i64 [ %i.cs, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41 ], [ %.pre2.i44, %bb.p ]
  %i.cx = phi i64 [ %i.cr, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit41 ], [ %.pre.i43, %bb.p ]
  %i.cy = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i42, ptr %i.ac, align 8, !tbaa !67
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 %i.cx
  store i8 32, ptr %i.cz, align 1, !tbaa !62
  %.val13 = load i32, ptr %i.a, align 8, !tbaa !282
  %i.da = icmp sgt i32 %.val13, 11                ; 2 uses
  %7 = select i1 %i.da, ptr getelementptr inbounds nuw (i8, ptr @.str.96, i64 2), ptr getelementptr inbounds nuw (i8, ptr @.str.97, i64 2) ; 2 uses
  %.str.96..str.97.i = select i1 %i.da, ptr @.str.96, ptr @.str.97
  %8 = ptrtoint ptr %7 to i64
  %i.db = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i46 = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit45
  %i.dc = phi i64 [ %.pre.i.i46, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit45 ], [ %i.eg, %._crit_edge.i.i ] ; 2 uses
  %.01925.i.i = phi ptr [ %.str.96..str.97.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit45 ], [ %10, %._crit_edge.i.i ] ; 9 uses
  %9 = ptrtoint ptr %.01925.i.i to i64            ; 2 uses
  %i.dd = sub i64 %8, %9                          ; 2 uses
  %i.de = add i64 %i.dd, %i.dc                    ; 2 uses
  %i.df = load i64, ptr %i.af, align 8, !tbaa !66 ; 2 uses
  %i.dg = icmp ugt i64 %i.de, %i.df
  br i1 %i.dg, label %bb.r, label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

bb.r:                                             ; preds = %bb.q
  %i.dh = load ptr, ptr %i.db, align 8, !tbaa !64
  call void %i.dh(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.de), !inline_history !23
  %.pre30.i.i = load i64, ptr %i.af, align 8, !tbaa !66
  %.pre31.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i

_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i: ; preds = %bb.r, %bb.q
  %i.di = phi i64 [ %i.dc, %bb.q ], [ %.pre31.i.i, %bb.r ] ; 4 uses
  %i.dj = phi i64 [ %i.df, %bb.q ], [ %.pre30.i.i, %bb.r ]
  %i.dk = sub i64 %i.dj, %i.di
  %spec.select.i.i = call i64 @llvm.umin.i64(i64 %i.dk, i64 %i.dd) ; 13 uses
  %i.dl = load ptr, ptr %3, align 8, !tbaa !65    ; 2 uses
  %i.dm = ptrtoaddr ptr %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.di ; 7 uses
  %.not29.i.i = icmp eq i64 %spec.select.i.i, 0
  br i1 %.not29.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %min.iters.check = icmp ult i64 %spec.select.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.do = add i64 %i.di, %i.dm
  %i.dp = sub i64 %9, %i.do
  %diff.check = icmp ugt i64 %i.dp, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check75 = icmp ult i64 %spec.select.i.i, 32
  br i1 %min.iters.check75, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dq = and i64 %spec.select.i.i, 28
  %n.vec = and i64 %spec.select.i.i, -32          ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  %wide.load = load <16 x i8>, ptr %i.dr, align 1, !tbaa !62
  %wide.load76 = load <16 x i8>, ptr %i.ds, align 1, !tbaa !62
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 16
  store <16 x i8> %wide.load, ptr %i.dt, align 1, !tbaa !62
  store <16 x i8> %wide.load76, ptr %i.du, align 1, !tbaa !62
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.dv = icmp eq i64 %index.next, %n.vec
  br i1 %i.dv, label %middle.block, label %vector.body, !llvm.loop !1179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %spec.select.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dq, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !107

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec77 = and i64 %spec.select.i.i, -4         ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index78 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next80, %vec.epilog.vector.body ] ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %index78
  %wide.load79 = load <4 x i8>, ptr %i.dw, align 1, !tbaa !62
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dn, i64 %index78
  store <4 x i8> %wide.load79, ptr %i.dx, align 1, !tbaa !62
  %index.next80 = add nuw i64 %index78, 4         ; 2 uses
  %i.dy = icmp eq i64 %index.next80, %n.vec77
  br i1 %i.dy, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1180

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n81 = icmp eq i64 %spec.select.i.i, %n.vec77
  br i1 %cmp.n81, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.023.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec77, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %spec.select.i.i, 3         ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.023.i.i.prol = phi i64 [ %i.ec, %.lr.ph.i.i.prol ], [ %.023.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.dz = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i.prol
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !62
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.023.i.i.prol
  store i8 %i.ea, ptr %i.eb, align 1, !tbaa !62
  %i.ec = add nuw i64 %.023.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1181

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.023.i.i.unr = phi i64 [ %.023.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ec, %.lr.ph.i.i.prol ]
  %i.ed = sub i64 %.023.i.i.ph, %spec.select.i.i
  %i.ee = icmp ugt i64 %i.ed, -4
  br i1 %i.ee, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre32.i.i = load i64, ptr %i.ac, align 8, !tbaa !67
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i
  %i.ef = phi i64 [ %.pre32.i.i, %._crit_edge.loopexit.i.i ], [ %i.di, %_ZN3fmt3v116detail6bufferIcE11try_reserveEm.exit.i.i ]
  %i.eg = add i64 %i.ef, %spec.select.i.i         ; 2 uses
  store i64 %i.eg, ptr %i.ac, align 8, !tbaa !67
  %10 = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %spec.select.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %10, %7
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit, label %bb.q, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.023.i.i = phi i64 [ %i.ew, %.lr.ph.i.i ], [ %.023.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %.023.i.i
  %i.ei = load i8, ptr %i.eh, align 1, !tbaa !62
  %i.ej = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.023.i.i
  store i8 %i.ei, ptr %i.ej, align 1, !tbaa !62
  %i.ek = add nuw i64 %.023.i.i, 1                ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.ek
  %i.em = load i8, ptr %i.el, align 1, !tbaa !62
  %i.en = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.ek
  store i8 %i.em, ptr %i.en, align 1, !tbaa !62
  %i.eo = add nuw i64 %.023.i.i, 2                ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.eo
  %i.eq = load i8, ptr %i.ep, align 1, !tbaa !62
  %i.er = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.eo
  store i8 %i.eq, ptr %i.er, align 1, !tbaa !62
  %i.es = add nuw i64 %.023.i.i, 3                ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %.01925.i.i, i64 %i.es
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !62
  %i.ev = getelementptr inbounds nuw i8, ptr %i.dn, i64 %i.es
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !62
  %i.ew = add nuw i64 %.023.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ew, %spec.select.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1182

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1117basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11R_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11R_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !282  ; 3 uses
  %or.cond.i = icmp ult i32 %i.b, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.b to i8    ; 2 uses
  %i.c = udiv i8 %.lhs.trunc.i, 10
  %i.d = urem i8 %.lhs.trunc.i, 10
  %i.e = or disjoint i8 %i.c, 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !66
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !64
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.h), !inline_history !31
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !67
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !62
  %i.q = or disjoint i8 %i.d, 48
  %i.r = load i64, ptr %i.f, align 8, !tbaa !67   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !66
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !64
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.s), !inline_history !31
  %.pre.i5.i = load i64, ptr %i.f, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.s, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.x = phi i64 [ %i.r, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.y = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i, ptr %i.f, align 8, !tbaa !67
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %i.q, ptr %i.z, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #38
  %.sroa.01.0.insert.ext.i.i = zext i32 %i.b to i128
  store i128 %.sroa.01.0.insert.ext.i.i, ptr %5, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %i.ac = add i64 %i.ab, 1                        ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.af = icmp ugt i64 %i.ac, %i.ae
  br i1 %i.af, label %bb.f, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !64
  call void %i.ah(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ac), !inline_history !28
  %.pre.i = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit, %bb.f
  %.pre-phi.i = phi i64 [ %i.ac, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre2.i, %bb.f ]
  %i.ai = phi i64 [ %i.ab, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit ], [ %.pre.i, %bb.f ]
  %i.aj = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i, ptr %i.aa, align 8, !tbaa !67
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ai
  store i8 58, ptr %i.ak, align 1, !tbaa !62
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !283 ; 3 uses
  %or.cond.i7 = icmp ult i32 %i.am, 100
  br i1 %or.cond.i7, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  %.lhs.trunc.i9 = trunc nuw nsw i32 %i.am to i8  ; 2 uses
  %i.an = udiv i8 %.lhs.trunc.i9, 10
  %i.ao = urem i8 %.lhs.trunc.i9, 10
  %i.ap = or disjoint i8 %i.an, 48
  %i.aq = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %i.ar = add i64 %i.aq, 1                        ; 3 uses
  %i.as = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.at = icmp ugt i64 %i.ar, %i.as
  br i1 %i.at, label %bb.h, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10

bb.h:                                             ; preds = %bb.g
  %i.au = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !64
  call void %i.av(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ar), !inline_history !31
  %.pre.i.i16 = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.pre2.i.i17 = add i64 %.pre.i.i16, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i11 = phi i64 [ %i.ar, %bb.g ], [ %.pre2.i.i17, %bb.h ]
  %i.aw = phi i64 [ %i.aq, %bb.g ], [ %.pre.i.i16, %bb.h ]
  %i.ax = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i.i11, ptr %i.aa, align 8, !tbaa !67
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %i.aw
  store i8 %i.ap, ptr %i.ay, align 1, !tbaa !62
  %i.az = or disjoint i8 %i.ao, 48
  %i.ba = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %i.bb = add i64 %i.ba, 1                        ; 3 uses
  %i.bc = load i64, ptr %i.ad, align 8, !tbaa !66
  %i.bd = icmp ugt i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.i, label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i12

bb.i:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10
  %i.be = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !64
  call void %i.bf(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bb), !inline_history !31
  %.pre.i5.i14 = load i64, ptr %i.aa, align 8, !tbaa !67 ; 2 uses
  %.pre2.i6.i15 = add i64 %.pre.i5.i14, 1
  br label %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i12

_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i12: ; preds = %bb.i, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10
  %.pre-phi.i4.i13 = phi i64 [ %i.bb, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10 ], [ %.pre2.i6.i15, %bb.i ]
  %i.bg = phi i64 [ %i.ba, %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit.i10 ], [ %.pre.i5.i14, %bb.i ]
  %i.bh = load ptr, ptr %3, align 8, !tbaa !65
  store i64 %.pre-phi.i4.i13, ptr %i.aa, align 8, !tbaa !67
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 %i.bg
  store i8 %i.az, ptr %i.bi, align 1, !tbaa !62
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit18

bb.j:                                             ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #38
  %.sroa.01.0.insert.ext.i.i8 = zext i32 %i.am to i128
  store i128 %.sroa.01.0.insert.ext.i.i8, ptr %4, align 16
  call void @_ZN3fmt3v116detail10vformat_toIcEEvRNS1_6bufferIT_EENS0_17basic_string_viewIS4_EENS1_12vformat_argsIS4_E4typeENS1_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.56, i64 5, i64 1, ptr nonnull %4, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #38
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit18

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE.exit18: ; preds = %_ZN3fmt3v116detail6bufferIcE9push_backERKc.exit7.i12, %bb.j
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11T_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 24) #40
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6spdlog7details11T_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1119basic_memory_bufferIcLm250ESaIcEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %5 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %6 = alloca %"struct.fmt::v11::detail::format_arg_store.198", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !282  ; 3 uses
  %or.cond.i = icmp ult i32 %i.b, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.b to i8    ; 2 uses
  %i.c = udiv i8 %.lhs.trunc.i, 10
end_hunk_2
