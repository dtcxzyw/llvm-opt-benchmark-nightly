Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/spdlog/original/spdlog?download=true
inline.NumInlined: 6885
inline.NumDeleted: 3933
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 130
loop-unroll.NumUnrolled: 132
begin_hunk_0_@_ZN6spdlog7details11E_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
iter.check42:                                     ; preds = %bb.k
  %min.iters.check29 = icmp ult i64 %.025.i.i.i.i, 4
  br i1 %min.iters.check29, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck27

vector.memcheck27:                                ; preds = %iter.check42
  %i.dm = add i64 %.026.i.i.i.i, %i.dk
  %i.dn = sub i64 %i.da, %i.dm
  %diff.check28 = icmp ugt i64 %i.dn, -32
  br i1 %diff.check28, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check30

vector.main.loop.iter.check30:                    ; preds = %vector.memcheck27
  %min.iters.check31 = icmp ult i64 %.025.i.i.i.i, 32
  br i1 %min.iters.check31, label %vec.epilog.ph46, label %vector.ph32

vector.ph32:                                      ; preds = %vector.main.loop.iter.check30
  %i.do = and i64 %.025.i.i.i.i, 28
  %n.vec33 = and i64 %.025.i.i.i.i, -32           ; 4 uses
  br label %vector.body34

vector.body34:                                    ; preds = %vector.ph32, %vector.body34
  %index35 = phi i64 [ 0, %vector.ph32 ], [ %index.next38, %vector.body34 ] ; 3 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index35 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 16
  %wide.load36 = load <16 x i8>, ptr %i.dp, align 1, !tbaa !64
  %wide.load37 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !64
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index35 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 16
  store <16 x i8> %wide.load36, ptr %i.dr, align 1, !tbaa !64
  store <16 x i8> %wide.load37, ptr %i.ds, align 1, !tbaa !64
  %index.next38 = add nuw i64 %index35, 32        ; 2 uses
  %i.dt = icmp eq i64 %index.next38, %n.vec33
  br i1 %i.dt, label %middle.block39, label %vector.body34, !llvm.loop !1080

middle.block39:                                   ; preds = %vector.body34
  %cmp.n40 = icmp eq i64 %.025.i.i.i.i, %n.vec33
  br i1 %cmp.n40, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check44

vec.epilog.iter.check44:                          ; preds = %middle.block39
  %min.epilog.iters.check45 = icmp eq i64 %i.do, 0
  br i1 %min.epilog.iters.check45, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph46, !prof !109

vec.epilog.ph46:                                  ; preds = %vector.main.loop.iter.check30, %vec.epilog.iter.check44
  %vec.epilog.resume.val41 = phi i64 [ %n.vec33, %vec.epilog.iter.check44 ], [ 0, %vector.main.loop.iter.check30 ]
  %n.vec47 = and i64 %.025.i.i.i.i, -4            ; 3 uses
  br label %vec.epilog.vector.body48

vec.epilog.vector.body48:                         ; preds = %vec.epilog.vector.body48, %vec.epilog.ph46
  %index49 = phi i64 [ %vec.epilog.resume.val41, %vec.epilog.ph46 ], [ %index.next51, %vec.epilog.vector.body48 ] ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index49
  %wide.load50 = load <4 x i8>, ptr %i.du, align 1, !tbaa !64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dl, i64 %index49
  store <4 x i8> %wide.load50, ptr %i.dv, align 1, !tbaa !64
  %index.next51 = add nuw i64 %index49, 4         ; 2 uses
  %i.dw = icmp eq i64 %index.next51, %n.vec47
  br i1 %i.dw, label %vec.epilog.middle.block52, label %vec.epilog.vector.body48, !llvm.loop !1081

vec.epilog.middle.block52:                        ; preds = %vec.epilog.vector.body48
  %cmp.n53 = icmp eq i64 %.025.i.i.i.i, %n.vec47
  br i1 %cmp.n53, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check42, %vector.memcheck27, %vec.epilog.iter.check44, %vec.epilog.middle.block52
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check42 ], [ 0, %vector.memcheck27 ], [ %n.vec33, %vec.epilog.iter.check44 ], [ %n.vec47, %vec.epilog.middle.block52 ] ; 3 uses
  %xtraiter56 = and i64 %.025.i.i.i.i, 3          ; 2 uses
  %lcmp.mod57.not = icmp eq i64 %xtraiter56, 0
  br i1 %lcmp.mod57.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.ea, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter58 = phi i64 [ %prol.iter58.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.dx = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.dy = load i8, ptr %i.dx, align 1, !tbaa !64
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.030.i.i.i.i.prol
  store i8 %i.dy, ptr %i.dz, align 1, !tbaa !64
  %i.ea = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter58.next = add i64 %prol.iter58, 1     ; 2 uses
  %prol.iter58.cmp.not = icmp eq i64 %prol.iter58.next, %xtraiter56
  br i1 %prol.iter58.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1082

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ea, %.lr.ph.i.i.i.i.prol ]
  %i.eb = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.ec = icmp ugt i64 %i.eb, -4
  br i1 %i.ec, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block52, %middle.block39
  %.pre37.i.i.i.i = load i64, ptr %i.ct, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.k
  %i.ed = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.k ]
  %i.ee = add i64 %i.ed, %.025.i.i.i.i            ; 2 uses
  store i64 %i.ee, ptr %i.ct, align 8, !tbaa !69
  %i.ef = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ef, %i.cs
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.i, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.ev, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.030.i.i.i.i
  store i8 %i.eh, ptr %i.ei, align 1, !tbaa !64
  %i.ej = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.ej
  %i.el = load i8, ptr %i.ek, align 1, !tbaa !64
  %i.em = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.ej
  store i8 %i.el, ptr %i.em, align 1, !tbaa !64
  %i.en = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.en
  store i8 %i.ep, ptr %i.eq, align 1, !tbaa !64
  %i.er = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.er
  %i.et = load i8, ptr %i.es, align 1, !tbaa !64
  %i.eu = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.er
  store i8 %i.et, ptr %i.eu, align 1, !tbaa !64
  %i.ev = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ev, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1083

bb.l:                                             ; preds = %.loopexit
  %i.ew = load ptr, ptr %5, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 12
  %i.ey = load i8, ptr %i.ex, align 4, !tbaa !265, !range !71, !noundef !72
  %i.ez = trunc nuw i8 %i.ey to i1
  br i1 %i.ez, label %bb.m, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.m:                                             ; preds = %bb.l
  %i.fa = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fb = load ptr, ptr %i.fa, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 8 ; 2 uses
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !69
  %i.fe = add nsw i64 %i.fd, %i.cm
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.fe, i64 0) ; 3 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fb, i64 16 ; 2 uses
  %i.fg = load i64, ptr %i.ff, align 8, !tbaa !68 ; 2 uses
  %i.fh = icmp ugt i64 %spec.store.select.i, %i.fg
  br i1 %i.fh, label %bb.n, label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

bb.n:                                             ; preds = %bb.m
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fb, i64 24
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !66
  invoke void %i.fj(ptr noundef nonnull align 8 dereferenceable(283) %i.fb, i64 noundef %spec.store.select.i)
          to label %.noexc2.i unwind label %.loopexit.split-lp.i, !inline_history !36

.noexc2.i:                                        ; preds = %bb.n
  %.pre.i.i.i = load i64, ptr %i.ff, align 8, !tbaa !68
  br label %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i

_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i: ; preds = %.noexc2.i, %bb.m
  %i.fk = phi i64 [ %i.fg, %bb.m ], [ %.pre.i.i.i, %.noexc2.i ]
  %i.fl = call noundef i64 @llvm.umin.i64(i64 %spec.store.select.i, i64 %i.fk)
  store i64 %i.fl, ptr %i.fc, align 8, !tbaa !69
  br label %_ZN6spdlog7details13scoped_padderD2Ev.exit

.loopexit.i:                                      ; preds = %bb.j
  %lpad.loopexit.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

.loopexit.split-lp.i:                             ; preds = %bb.n
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          catch ptr null
  br label %bb.o

bb.o:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.fm = extractvalue { ptr, i32 } %lpad.phi.i, 0
  call void @__clang_call_terminate(ptr %i.fm) #41
  unreachable

_ZN6spdlog7details13scoped_padderD2Ev.exit:       ; preds = %._crit_edge.i.i.i.i, %bb.h, %bb.l, %_ZN3fmt3v1219basic_memory_bufferIcLm250ENS0_6detail9allocatorIcEEE6resizeEm.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  ret void

bb.p:                                             ; preds = %bb.f
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6spdlog7details13scoped_padderD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %5) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  resume { ptr, i32 } %i.fn
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_13scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
.lr.ph34.i.i:
  %4 = alloca %"class.spdlog::details::scoped_padder", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @_ZN6spdlog7details13scoped_padderC2EmRKNS0_12padding_infoERN3fmt3v1219basic_memory_bufferIcLm250ENS6_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(40) %4, i64 noundef 2, ptr noundef nonnull align 8 dereferenceable(14) %i.a, ptr noundef nonnull align 8 dereferenceable(283) %3)
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.b, align 8, !tbaa !308
  %i.c = icmp sgt i32 %.val, 11
  %i.d = select i1 %i.c, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i9 = ptrtoaddr ptr %i.d to i64
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.e, align 8, !tbaa !69
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %5 = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.an, %._crit_edge.i.i ] ; 3 uses
  %i.h = phi i64 [ 0, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.h ; 7 uses
  %i.i = load i64, ptr %i.f, align 8, !tbaa !68
  %i.j = sub i64 %i.i, %5
  %i.k = sub nsw i64 2, %i.h                      ; 4 uses
  %i.l = icmp ult i64 %i.j, %i.k
  br i1 %i.l, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.g, align 8, !tbaa !66
  %i.n = add i64 %i.k, %5
  invoke void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.n)
          to label %.noexc unwind label %bb.l, !inline_history !34

.noexc:                                           ; preds = %bb.b
  %i.o = load i64, ptr %i.e, align 8, !tbaa !69   ; 2 uses
  %i.p = load i64, ptr %i.f, align 8, !tbaa !68
  %i.q = sub i64 %i.p, %i.o
  %i.r = call i64 @llvm.umin.i64(i64 %i.k, i64 %i.q)
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.026.i.i = phi i64 [ %i.o, %.noexc ], [ %5, %bb.a ] ; 3 uses
  %.025.i.i = phi i64 [ %i.r, %.noexc ], [ %i.k, %bb.a ] ; 13 uses
  %i.s = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.t = ptrtoaddr ptr %i.s to i64
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.v = add i64 %.026.i.i, %i.t
  %6 = add i64 %i.h, %.str.110..str.111.i9
  %i.w = sub i64 %6, %i.v
  %diff.check = icmp ugt i64 %i.w, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check12 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check12, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.x = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %wide.load = load <16 x i8>, ptr %i.y, align 1, !tbaa !64
  %wide.load13 = load <16 x i8>, ptr %i.z, align 1, !tbaa !64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.u, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store <16 x i8> %wide.load, ptr %i.aa, align 1, !tbaa !64
  store <16 x i8> %wide.load13, ptr %i.ab, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !1084

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.x, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec14 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index15 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next17, %vec.epilog.vector.body ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index15
  %wide.load16 = load <4 x i8>, ptr %i.ad, align 1, !tbaa !64
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 %index15
  store <4 x i8> %wide.load16, ptr %i.ae, align 1, !tbaa !64
  %index.next17 = add nuw i64 %index15, 4         ; 2 uses
  %i.af = icmp eq i64 %index.next17, %n.vec14
  br i1 %i.af, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1085

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n18 = icmp eq i64 %.025.i.i, %n.vec14
  br i1 %cmp.n18, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec14, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !64
  %i.ai = getelementptr inbounds nuw i8, ptr %i.u, i64 %.030.i.i.prol
  store i8 %i.ah, ptr %i.ai, align 1, !tbaa !64
  %i.aj = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1086

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %i.ak = sub i64 %.030.i.i.ph, %.025.i.i
  %i.al = icmp ugt i64 %i.ak, -4
  br i1 %i.al, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.e, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.am = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.c ]
  %i.an = add i64 %i.am, %.025.i.i                ; 2 uses
  store i64 %i.an, ptr %i.e, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %i.h ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.a, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !tbaa !64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.u, i64 %.030.i.i
  store i8 %i.ap, ptr %i.aq, align 1, !tbaa !64
  %i.ar = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1, !tbaa !64
  %i.au = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.ar
  store i8 %i.at, ptr %i.au, align 1, !tbaa !64
  %i.av = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !tbaa !64
  %i.ay = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.av
  store i8 %i.ax, ptr %i.ay, align 1, !tbaa !64
  %i.az = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.az
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !64
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.az
  store i8 %i.bb, ptr %i.bc, align 1, !tbaa !64
  %i.bd = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bd, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1087

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  %i.be = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.bf = load i64, ptr %i.be, align 8, !tbaa !331 ; 4 uses
  %i.bg = icmp sgt i64 %i.bf, -1
  br i1 %i.bg, label %bb.d, label %bb.h

bb.d:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !108 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bf ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.bf, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 2 uses
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.bq = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.cx, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.bi, %.lr.ph34.i.i.i.i ], [ %i.cy, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.br = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.bs = sub i64 %i.br, %i.bq
  %i.bt = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.bu = sub i64 %i.bo, %i.bt                    ; 4 uses
  %i.bv = icmp ult i64 %i.bs, %i.bu
  br i1 %i.bv, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bw = load ptr, ptr %i.bp, align 8, !tbaa !66
  %i.bx = add i64 %i.bu, %i.bq
  invoke void %i.bw(ptr noundef nonnull align 8 dereferenceable(283) %i.bk, i64 noundef %i.bx)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.f
  %i.by = load i64, ptr %i.bm, align 8, !tbaa !69 ; 2 uses
  %i.bz = load i64, ptr %i.bn, align 8, !tbaa !68
  %i.ca = sub i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bu, i64 %i.ca)
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i, %bb.e
  %.026.i.i.i.i = phi i64 [ %i.by, %.noexc.i ], [ %i.bq, %bb.e ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.cb, %.noexc.i ], [ %i.bu, %bb.e ] ; 13 uses
  %i.cc = load ptr, ptr %i.bk, align 8, !tbaa !67 ; 2 uses
  %i.cd = ptrtoaddr ptr %i.cc to i64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
  br i1 %.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check34

iter.check34:                                     ; preds = %bb.g
  %min.iters.check21.a = icmp ult i64 %.025.i.i.i.i, 4
  br i1 %min.iters.check21.a, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck19

vector.memcheck19:                                ; preds = %iter.check34
  %i.cf = add i64 %.026.i.i.i.i, %i.cd
  %i.cg = sub i64 %i.bt, %i.cf
  %diff.check20 = icmp ugt i64 %i.cg, -32
  br i1 %diff.check20, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check22

vector.main.loop.iter.check22:                    ; preds = %vector.memcheck19
  %min.iters.check23 = icmp ult i64 %.025.i.i.i.i, 32
  br i1 %min.iters.check23, label %vec.epilog.ph38, label %vector.ph24

vector.ph24:                                      ; preds = %vector.main.loop.iter.check22
  %i.ch = and i64 %.025.i.i.i.i, 28
  %n.vec25 = and i64 %.025.i.i.i.i, -32           ; 4 uses
  br label %vector.body26

vector.body26:                                    ; preds = %vector.ph24, %vector.body26
  %index27 = phi i64 [ 0, %vector.ph24 ], [ %index.next30, %vector.body26 ] ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index27 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  %wide.load28 = load <16 x i8>, ptr %i.ci, align 1, !tbaa !64
  %wide.load29 = load <16 x i8>, ptr %i.cj, align 1, !tbaa !64
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ce, i64 %index27 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  store <16 x i8> %wide.load28, ptr %i.ck, align 1, !tbaa !64
  store <16 x i8> %wide.load29, ptr %i.cl, align 1, !tbaa !64
  %index.next30 = add nuw i64 %index27, 32        ; 2 uses
  %i.cm = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.cm, label %middle.block31, label %vector.body26, !llvm.loop !1088

middle.block31:                                   ; preds = %vector.body26
  %cmp.n32 = icmp eq i64 %.025.i.i.i.i, %n.vec25
  br i1 %cmp.n32, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check36

vec.epilog.iter.check36:                          ; preds = %middle.block31
  %min.epilog.iters.check37 = icmp eq i64 %i.ch, 0
  br i1 %min.epilog.iters.check37, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph38, !prof !109

vec.epilog.ph38:                                  ; preds = %vector.main.loop.iter.check22, %vec.epilog.iter.check36
  %vec.epilog.resume.val33 = phi i64 [ %n.vec25, %vec.epilog.iter.check36 ], [ 0, %vector.main.loop.iter.check22 ]
  %n.vec39 = and i64 %.025.i.i.i.i, -4            ; 3 uses
  br label %vec.epilog.vector.body40

vec.epilog.vector.body40:                         ; preds = %vec.epilog.vector.body40, %vec.epilog.ph38
  %index41 = phi i64 [ %vec.epilog.resume.val33, %vec.epilog.ph38 ], [ %index.next43, %vec.epilog.vector.body40 ] ; 3 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index41
  %wide.load42 = load <4 x i8>, ptr %i.cn, align 1, !tbaa !64
  %i.co = getelementptr inbounds nuw i8, ptr %i.ce, i64 %index41
  store <4 x i8> %wide.load42, ptr %i.co, align 1, !tbaa !64
  %index.next43 = add nuw i64 %index41, 4         ; 2 uses
  %i.cp = icmp eq i64 %index.next43, %n.vec39
  br i1 %i.cp, label %vec.epilog.middle.block44, label %vec.epilog.vector.body40, !llvm.loop !1089

vec.epilog.middle.block44:                        ; preds = %vec.epilog.vector.body40
  %cmp.n45 = icmp eq i64 %.025.i.i.i.i, %n.vec39
  br i1 %cmp.n45, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check34, %vector.memcheck19, %vec.epilog.iter.check36, %vec.epilog.middle.block44
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check34 ], [ 0, %vector.memcheck19 ], [ %n.vec25, %vec.epilog.iter.check36 ], [ %n.vec39, %vec.epilog.middle.block44 ] ; 3 uses
  %xtraiter47 = and i64 %.025.i.i.i.i, 3          ; 2 uses
  %lcmp.mod48.not = icmp eq i64 %xtraiter47, 0
  br i1 %lcmp.mod48.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter49 = phi i64 [ %prol.iter49.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !64
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.030.i.i.i.i.prol
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !64
  %i.ct = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter49.next = add i64 %prol.iter49, 1     ; 2 uses
  %prol.iter49.cmp.not = icmp eq i64 %prol.iter49.next, %xtraiter47
  br i1 %prol.iter49.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1090

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.ct, %.lr.ph.i.i.i.i.prol ]
  %i.cu = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.cv = icmp ugt i64 %i.cu, -4
  br i1 %i.cv, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block44, %middle.block31
  %.pre37.i.i.i.i = load i64, ptr %i.bm, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.g
  %i.cw = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.g ]
  %i.cx = add i64 %i.cw, %.025.i.i.i.i            ; 2 uses
  store i64 %i.cx, ptr %i.bm, align 8, !tbaa !69
  %i.cy = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cy, %i.bl
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.do, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.da = load i8, ptr %i.cz, align 1, !tbaa !64
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 %.030.i.i.i.i
  store i8 %i.da, ptr %i.db, align 1, !tbaa !64
  %i.dc = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !tbaa !64
  %i.df = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dc
  store i8 %i.de, ptr %i.df, align 1, !tbaa !64
  %i.dg = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.dg
  %i.di = load i8, ptr %i.dh, align 1, !tbaa !64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dg
  store i8 %i.di, ptr %i.dj, align 1, !tbaa !64
  %i.dk = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.dk
  %i.dm = load i8, ptr %i.dl, align 1, !tbaa !64
  %i.dn = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.dk
  store i8 %i.dm, ptr %i.dn, align 1, !tbaa !64
  %i.do = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.do, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1091

bb.h:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.dp = load ptr, ptr %4, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 12
  %i.dr = load i8, ptr %i.dq, align 4, !tbaa !265, !range !71, !noundef !72
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %bb.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8 ; 2 uses
  %i.dw = load i64, ptr %i.dv, align 8, !tbaa !69
  %i.dx = add nsw i64 %i.dw, %i.bf
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.dx, i64 0) ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 16 ; 2 uses
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !68 ; 2 uses
  %i.ea = icmp ugt i64 %spec.store.select.i, %i.dz
end_hunk_0
begin_hunk_1_@_ZN6spdlog7details11r_formatterINS0_13scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  %i.bm = icmp ugt i64 %i.bk, %i.bl
  br i1 %i.bm, label %bb.j, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i27

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i25
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !66
  invoke void %i.bo(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bk)
          to label %.noexc34 unwind label %.loopexit.split-lp, !inline_history !41

.noexc34:                                         ; preds = %bb.j
  %.pre.i5.i29 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i30 = add i64 %.pre.i5.i29, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i27

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i27: ; preds = %.noexc34, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i25
  %.pre-phi.i4.i28 = phi i64 [ %i.bk, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i25 ], [ %.pre2.i6.i30, %.noexc34 ]
  %i.bp = phi i64 [ %i.bj, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i25 ], [ %.pre.i5.i29, %.noexc34 ]
  %i.bq = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i28, ptr %i.aj, align 8, !tbaa !69
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.bp
  store i8 %i.bi, ptr %i.br, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37

bb.k:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 1, ptr %6, align 8, !tbaa !204
  %.ptr.i.i22 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %.ptr.i.i22, align 8, !tbaa !206
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.bs, align 8, !tbaa !207
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.70, ptr %i.bt, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i23 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i23, align 8, !tbaa !70
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.bu, align 8, !tbaa !209
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.bv, align 4, !tbaa !211
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %6, ptr %i.bw, align 8, !tbaa !212
  %i.bx = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.bx, align 8, !tbaa !177
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %6)
          to label %.noexc35 unwind label %.loopexit.split-lp

.noexc35:                                         ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i32 %i.av, ptr %7, align 16, !tbaa !64
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %7, ptr null)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %.noexc35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37: ; preds = %.noexc36, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i27
  %i.by = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %i.ca = load i64, ptr %i.am, align 8, !tbaa !68
  %i.cb = icmp ugt i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !66
  invoke void %i.cd(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.bz)
          to label %.noexc41 unwind label %bb.ae, !inline_history !39

.noexc41:                                         ; preds = %bb.l
  %.pre.i39 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i40 = add i64 %.pre.i39, 1
  br label %bb.m

bb.m:                                             ; preds = %.noexc41, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37
  %.pre-phi.i38 = phi i64 [ %i.bz, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37 ], [ %.pre2.i40, %.noexc41 ]
  %i.ce = phi i64 [ %i.by, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit37 ], [ %.pre.i39, %.noexc41 ]
  %i.cf = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i38, ptr %i.aj, align 8, !tbaa !69
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %i.ce
  store i8 58, ptr %i.cg, align 1, !tbaa !64
  %i.ch = load i32, ptr %2, align 8, !tbaa !310   ; 3 uses
  %or.cond.i43 = icmp ult i32 %i.ch, 100
  br i1 %or.cond.i43, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  %.lhs.trunc.i46 = trunc nuw nsw i32 %i.ch to i8 ; 2 uses
  %i.ci = udiv i8 %.lhs.trunc.i46, 10
  %i.cj = urem i8 %.lhs.trunc.i46, 10
  %i.ck = or disjoint i8 %i.ci, 48
  %i.cl = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.cm = add i64 %i.cl, 1                        ; 3 uses
  %i.cn = load i64, ptr %i.am, align 8, !tbaa !68
  %i.co = icmp ugt i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.o, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47

bb.o:                                             ; preds = %bb.n
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !66
  invoke void %i.cq(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cm)
          to label %.noexc55 unwind label %.loopexit.split-lp, !inline_history !41

.noexc55:                                         ; preds = %bb.o
  %.pre.i.i53 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i54 = add i64 %.pre.i.i53, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47: ; preds = %.noexc55, %bb.n
  %.pre-phi.i.i48 = phi i64 [ %i.cm, %bb.n ], [ %.pre2.i.i54, %.noexc55 ]
  %i.cr = phi i64 [ %i.cl, %bb.n ], [ %.pre.i.i53, %.noexc55 ]
  %i.cs = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i48, ptr %i.aj, align 8, !tbaa !69
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 %i.cr
  store i8 %i.ck, ptr %i.ct, align 1, !tbaa !64
  %i.cu = or disjoint i8 %i.cj, 48
  %i.cv = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.cw = add i64 %i.cv, 1                        ; 3 uses
  %i.cx = load i64, ptr %i.am, align 8, !tbaa !68
  %i.cy = icmp ugt i64 %i.cw, %i.cx
  br i1 %i.cy, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49

bb.p:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !66
  invoke void %i.da(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cw)
          to label %.noexc56 unwind label %.loopexit.split-lp, !inline_history !41

.noexc56:                                         ; preds = %bb.p
  %.pre.i5.i51 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i52 = add i64 %.pre.i5.i51, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49: ; preds = %.noexc56, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47
  %.pre-phi.i4.i50 = phi i64 [ %i.cw, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47 ], [ %.pre2.i6.i52, %.noexc56 ]
  %i.db = phi i64 [ %i.cv, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i47 ], [ %.pre.i5.i51, %.noexc56 ]
  %i.dc = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i50, ptr %i.aj, align 8, !tbaa !69
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 %i.db
  store i8 %i.cu, ptr %i.dd, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i44 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i44, align 8, !tbaa !206
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.de, align 8, !tbaa !207
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.df, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i45 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i45, align 8, !tbaa !70
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.dg, align 8, !tbaa !209
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.dh, align 4, !tbaa !211
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.di, align 8, !tbaa !212
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.dj, align 8, !tbaa !177
  invoke void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
          to label %.noexc57 unwind label %.loopexit.split-lp

.noexc57:                                         ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i32 %i.ch, ptr %5, align 16, !tbaa !64
  invoke void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
          to label %.noexc58 unwind label %.loopexit.split-lp

.noexc58:                                         ; preds = %.noexc57
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59: ; preds = %.noexc58, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i49
  %i.dk = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.dl = add i64 %i.dk, 1                        ; 3 uses
  %i.dm = load i64, ptr %i.am, align 8, !tbaa !68
  %i.dn = icmp ugt i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.r, label %.lr.ph34.i.i

bb.r:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59
  %i.do = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !66
  invoke void %i.dp(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dl)
          to label %.noexc63 unwind label %bb.af, !inline_history !39

.noexc63:                                         ; preds = %bb.r
  %.pre.i61 = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %.pre2.i62 = add i64 %.pre.i61, 1
  br label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59, %.noexc63
  %.pre-phi.i60 = phi i64 [ %i.dl, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59 ], [ %.pre2.i62, %.noexc63 ]
  %i.dq = phi i64 [ %i.dk, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit59 ], [ %.pre.i61, %.noexc63 ]
  %i.dr = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i60, ptr %i.aj, align 8, !tbaa !69
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %i.dq
  store i8 32, ptr %i.ds, align 1, !tbaa !64
  %.val16 = load i32, ptr %i.b, align 8, !tbaa !308
  %i.dt = icmp sgt i32 %.val16, 11
  %.str.110..str.111.i = select i1 %i.dt, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i97 = ptrtoaddr ptr %.str.110..str.111.i to i64
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i65 = load i64, ptr %i.aj, align 8, !tbaa !69
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %11 = phi i64 [ %.pre.i.i65, %.lr.ph34.i.i ], [ %i.fb, %._crit_edge.i.i ] ; 3 uses
  %i.dv = phi i64 [ 0, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %.str.110..str.111.i, i64 %i.dv ; 7 uses
  %i.dw = load i64, ptr %i.am, align 8, !tbaa !68
  %i.dx = sub i64 %i.dw, %11
  %i.dy = sub nsw i64 2, %i.dv                    ; 4 uses
  %i.dz = icmp ult i64 %i.dx, %i.dy
  br i1 %i.dz, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ea = load ptr, ptr %i.du, align 8, !tbaa !66
  %i.eb = add i64 %i.dy, %11
  invoke void %i.ea(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.eb)
          to label %.noexc66 unwind label %.loopexit, !inline_history !34

.noexc66:                                         ; preds = %bb.t
  %i.ec = load i64, ptr %i.aj, align 8, !tbaa !69 ; 2 uses
  %i.ed = load i64, ptr %i.am, align 8, !tbaa !68
  %i.ee = sub i64 %i.ed, %i.ec
  %i.ef = call i64 @llvm.umin.i64(i64 %i.dy, i64 %i.ee)
  br label %bb.u

bb.u:                                             ; preds = %.noexc66, %bb.s
  %.026.i.i = phi i64 [ %i.ec, %.noexc66 ], [ %11, %bb.s ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ef, %.noexc66 ], [ %i.dy, %bb.s ] ; 13 uses
  %i.eg = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.eh = ptrtoaddr ptr %i.eg to i64
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eg, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.u
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ej = add i64 %.026.i.i, %i.eh
  %12 = add i64 %i.dv, %.str.110..str.111.i97
  %i.ek = sub i64 %12, %i.ej
  %diff.check = icmp ugt i64 %i.ek, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check100 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check100, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.el = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 16
  %wide.load = load <16 x i8>, ptr %i.em, align 1, !tbaa !64
  %wide.load101 = load <16 x i8>, ptr %i.en, align 1, !tbaa !64
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index ; 2 uses
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 16
  store <16 x i8> %wide.load, ptr %i.eo, align 1, !tbaa !64
  store <16 x i8> %wide.load101, ptr %i.ep, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.eq = icmp eq i64 %index.next, %n.vec
  br i1 %i.eq, label %middle.block, label %vector.body, !llvm.loop !1092

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.el, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec102 = and i64 %.025.i.i, -4               ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index103 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next105, %vec.epilog.vector.body ] ; 3 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index103
  %wide.load104 = load <4 x i8>, ptr %i.er, align 1, !tbaa !64
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 %index103
  store <4 x i8> %wide.load104, ptr %i.es, align 1, !tbaa !64
  %index.next105 = add nuw i64 %index103, 4       ; 2 uses
  %i.et = icmp eq i64 %index.next105, %n.vec102
  br i1 %i.et, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1093

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n106 = icmp eq i64 %.025.i.i, %n.vec102
  br i1 %cmp.n106, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec102, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ex, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.eu = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.ev = load i8, ptr %i.eu, align 1, !tbaa !64
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.030.i.i.prol
  store i8 %i.ev, ptr %i.ew, align 1, !tbaa !64
  %i.ex = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1094

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ex, %.lr.ph.i.i.prol ]
  %i.ey = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ez = icmp ugt i64 %i.ey, -4
  br i1 %i.ez, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.aj, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.u
  %i.fa = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.u ]
  %i.fb = add i64 %i.fa, %.025.i.i                ; 2 uses
  store i64 %i.fb, ptr %i.aj, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %i.dv ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.s, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.fr, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.fd = load i8, ptr %i.fc, align 1, !tbaa !64
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ei, i64 %.030.i.i
  store i8 %i.fd, ptr %i.fe, align 1, !tbaa !64
  %i.ff = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ff
  %i.fh = load i8, ptr %i.fg, align 1, !tbaa !64
  %i.fi = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.ff
  store i8 %i.fh, ptr %i.fi, align 1, !tbaa !64
  %i.fj = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !tbaa !64
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fj
  store i8 %i.fl, ptr %i.fm, align 1, !tbaa !64
  %i.fn = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fn
  %i.fp = load i8, ptr %i.fo, align 1, !tbaa !64
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ei, i64 %i.fn
  store i8 %i.fp, ptr %i.fq, align 1, !tbaa !64
  %i.fr = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fr, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1095

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  %i.fs = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ft = load i64, ptr %i.fs, align 8, !tbaa !331 ; 4 uses
  %i.fu = icmp sgt i64 %i.ft, -1
  br i1 %i.fu, label %bb.v, label %bb.z

bb.v:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %10, i64 24
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !108 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !332, !nonnull !72, !align !294 ; 5 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ft ; 2 uses
  %.not31.i.i.i.i = icmp samesign eq i64 %i.ft, 0
  br i1 %.not31.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %.lr.ph34.i.i.i.i

.lr.ph34.i.i.i.i:                                 ; preds = %bb.v
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fy, i64 8 ; 4 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %i.fy, i64 16 ; 2 uses
  %i.gc = ptrtoint ptr %i.fz to i64
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  %.pre.i.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !69
  br label %bb.w

bb.w:                                             ; preds = %._crit_edge.i.i.i.i, %.lr.ph34.i.i.i.i
  %i.ge = phi i64 [ %.pre.i.i.i.i, %.lr.ph34.i.i.i.i ], [ %i.hl, %._crit_edge.i.i.i.i ] ; 3 uses
  %.02732.i.i.i.i = phi ptr [ %i.fw, %.lr.ph34.i.i.i.i ], [ %i.hm, %._crit_edge.i.i.i.i ] ; 9 uses
  %i.gf = load i64, ptr %i.gb, align 8, !tbaa !68
  %i.gg = sub i64 %i.gf, %i.ge
  %i.gh = ptrtoint ptr %.02732.i.i.i.i to i64     ; 2 uses
  %i.gi = sub i64 %i.gc, %i.gh                    ; 4 uses
  %i.gj = icmp ult i64 %i.gg, %i.gi
  br i1 %i.gj, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.gk = load ptr, ptr %i.gd, align 8, !tbaa !66
  %i.gl = add i64 %i.gi, %i.ge
  invoke void %i.gk(ptr noundef nonnull align 8 dereferenceable(283) %i.fy, i64 noundef %i.gl)
          to label %.noexc.i unwind label %.loopexit.i, !inline_history !35

.noexc.i:                                         ; preds = %bb.x
  %i.gm = load i64, ptr %i.ga, align 8, !tbaa !69 ; 2 uses
  %i.gn = load i64, ptr %i.gb, align 8, !tbaa !68
  %i.go = sub i64 %i.gn, %i.gm
  %i.gp = call i64 @llvm.umin.i64(i64 %i.gi, i64 %i.go)
  br label %bb.y

bb.y:                                             ; preds = %.noexc.i, %bb.w
  %.026.i.i.i.i = phi i64 [ %i.gm, %.noexc.i ], [ %i.ge, %bb.w ] ; 3 uses
  %.025.i.i.i.i = phi i64 [ %i.gp, %.noexc.i ], [ %i.gi, %bb.w ] ; 13 uses
  %i.gq = load ptr, ptr %i.fy, align 8, !tbaa !67 ; 2 uses
  %i.gr = ptrtoaddr ptr %i.gq to i64
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gq, i64 %.026.i.i.i.i ; 7 uses
  %.not36.i.i.i.i = icmp eq i64 %.025.i.i.i.i, 0
  br i1 %.not36.i.i.i.i, label %._crit_edge.i.i.i.i, label %iter.check122

iter.check122:                                    ; preds = %bb.y
  %min.iters.check109.a = icmp ult i64 %.025.i.i.i.i, 4
  br i1 %min.iters.check109.a, label %.lr.ph.i.i.i.i.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %iter.check122
  %i.gt = add i64 %.026.i.i.i.i, %i.gr
  %i.gu = sub i64 %i.gh, %i.gt
  %diff.check108 = icmp ugt i64 %i.gu, -32
  br i1 %diff.check108, label %.lr.ph.i.i.i.i.preheader, label %vector.main.loop.iter.check110

vector.main.loop.iter.check110:                   ; preds = %vector.memcheck107
  %min.iters.check111 = icmp ult i64 %.025.i.i.i.i, 32
  br i1 %min.iters.check111, label %vec.epilog.ph126, label %vector.ph112

vector.ph112:                                     ; preds = %vector.main.loop.iter.check110
  %i.gv = and i64 %.025.i.i.i.i, 28
  %n.vec113 = and i64 %.025.i.i.i.i, -32          ; 4 uses
  br label %vector.body114

vector.body114:                                   ; preds = %vector.ph112, %vector.body114
  %index115 = phi i64 [ 0, %vector.ph112 ], [ %index.next118, %vector.body114 ] ; 3 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index115 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 16
  %wide.load116 = load <16 x i8>, ptr %i.gw, align 1, !tbaa !64
  %wide.load117 = load <16 x i8>, ptr %i.gx, align 1, !tbaa !64
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gs, i64 %index115 ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gy, i64 16
  store <16 x i8> %wide.load116, ptr %i.gy, align 1, !tbaa !64
  store <16 x i8> %wide.load117, ptr %i.gz, align 1, !tbaa !64
  %index.next118 = add nuw i64 %index115, 32      ; 2 uses
  %i.ha = icmp eq i64 %index.next118, %n.vec113
  br i1 %i.ha, label %middle.block119, label %vector.body114, !llvm.loop !1096

middle.block119:                                  ; preds = %vector.body114
  %cmp.n120 = icmp eq i64 %.025.i.i.i.i, %n.vec113
  br i1 %cmp.n120, label %._crit_edge.loopexit.i.i.i.i, label %vec.epilog.iter.check124

vec.epilog.iter.check124:                         ; preds = %middle.block119
  %min.epilog.iters.check125 = icmp eq i64 %i.gv, 0
  br i1 %min.epilog.iters.check125, label %.lr.ph.i.i.i.i.preheader, label %vec.epilog.ph126, !prof !109

vec.epilog.ph126:                                 ; preds = %vector.main.loop.iter.check110, %vec.epilog.iter.check124
  %vec.epilog.resume.val121 = phi i64 [ %n.vec113, %vec.epilog.iter.check124 ], [ 0, %vector.main.loop.iter.check110 ]
  %n.vec127 = and i64 %.025.i.i.i.i, -4           ; 3 uses
  br label %vec.epilog.vector.body128

vec.epilog.vector.body128:                        ; preds = %vec.epilog.vector.body128, %vec.epilog.ph126
  %index129 = phi i64 [ %vec.epilog.resume.val121, %vec.epilog.ph126 ], [ %index.next131, %vec.epilog.vector.body128 ] ; 3 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %index129
  %wide.load130 = load <4 x i8>, ptr %i.hb, align 1, !tbaa !64
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gs, i64 %index129
  store <4 x i8> %wide.load130, ptr %i.hc, align 1, !tbaa !64
  %index.next131 = add nuw i64 %index129, 4       ; 2 uses
  %i.hd = icmp eq i64 %index.next131, %n.vec127
  br i1 %i.hd, label %vec.epilog.middle.block132, label %vec.epilog.vector.body128, !llvm.loop !1097

vec.epilog.middle.block132:                       ; preds = %vec.epilog.vector.body128
  %cmp.n133 = icmp eq i64 %.025.i.i.i.i, %n.vec127
  br i1 %cmp.n133, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %iter.check122, %vector.memcheck107, %vec.epilog.iter.check124, %vec.epilog.middle.block132
  %.030.i.i.i.i.ph = phi i64 [ 0, %iter.check122 ], [ 0, %vector.memcheck107 ], [ %n.vec113, %vec.epilog.iter.check124 ], [ %n.vec127, %vec.epilog.middle.block132 ] ; 3 uses
  %xtraiter135 = and i64 %.025.i.i.i.i, 3         ; 2 uses
  %lcmp.mod136.not = icmp eq i64 %xtraiter135, 0
  br i1 %lcmp.mod136.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol

.lr.ph.i.i.i.i.prol:                              ; preds = %.lr.ph.i.i.i.i.preheader, %.lr.ph.i.i.i.i.prol
  %.030.i.i.i.i.prol = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.prol ], [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %prol.iter137 = phi i64 [ %prol.iter137.next, %.lr.ph.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.preheader ]
  %i.he = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i.prol
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !64
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.030.i.i.i.i.prol
  store i8 %i.hf, ptr %i.hg, align 1, !tbaa !64
  %i.hh = add nuw i64 %.030.i.i.i.i.prol, 1       ; 2 uses
  %prol.iter137.next = add i64 %prol.iter137, 1   ; 2 uses
  %prol.iter137.cmp.not = icmp eq i64 %prol.iter137.next, %xtraiter135
  br i1 %prol.iter137.cmp.not, label %.lr.ph.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.prol, !llvm.loop !1098

.lr.ph.i.i.i.i.prol.loopexit:                     ; preds = %.lr.ph.i.i.i.i.prol, %.lr.ph.i.i.i.i.preheader
  %.030.i.i.i.i.unr = phi i64 [ %.030.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader ], [ %i.hh, %.lr.ph.i.i.i.i.prol ]
  %i.hi = sub i64 %.030.i.i.i.i.ph, %.025.i.i.i.i
  %i.hj = icmp ugt i64 %i.hi, -4
  br i1 %i.hj, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i, %vec.epilog.middle.block132, %middle.block119
  %.pre37.i.i.i.i = load i64, ptr %i.ga, align 8, !tbaa !69
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.y
  %i.hk = phi i64 [ %.pre37.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %.026.i.i.i.i, %bb.y ]
  %i.hl = add i64 %i.hk, %.025.i.i.i.i            ; 2 uses
  store i64 %i.hl, ptr %i.ga, align 8, !tbaa !69
  %i.hm = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.025.i.i.i.i ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.hm, %i.fz
  br i1 %.not.i.i.i.i, label %_ZN6spdlog7details13scoped_padderD2Ev.exit, label %bb.w, !llvm.loop !3

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i
  %.030.i.i.i.i = phi i64 [ %i.ic, %.lr.ph.i.i.i.i ], [ %.030.i.i.i.i.unr, %.lr.ph.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %.030.i.i.i.i
  %i.ho = load i8, ptr %i.hn, align 1, !tbaa !64
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gs, i64 %.030.i.i.i.i
  store i8 %i.ho, ptr %i.hp, align 1, !tbaa !64
  %i.hq = add nuw i64 %.030.i.i.i.i, 1            ; 2 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.hq
  %i.hs = load i8, ptr %i.hr, align 1, !tbaa !64
  %i.ht = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hq
  store i8 %i.hs, ptr %i.ht, align 1, !tbaa !64
  %i.hu = add nuw i64 %.030.i.i.i.i, 2            ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.hu
  %i.hw = load i8, ptr %i.hv, align 1, !tbaa !64
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hu
  store i8 %i.hw, ptr %i.hx, align 1, !tbaa !64
  %i.hy = add nuw i64 %.030.i.i.i.i, 3            ; 2 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %.02732.i.i.i.i, i64 %i.hy
  %i.ia = load i8, ptr %i.hz, align 1, !tbaa !64
  %i.ib = getelementptr inbounds nuw i8, ptr %i.gs, i64 %i.hy
  store i8 %i.ia, ptr %i.ib, align 1, !tbaa !64
  %i.ic = add nuw i64 %.030.i.i.i.i, 4            ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %i.ic, %.025.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1099

bb.z:                                             ; preds = %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.id = load ptr, ptr %10, align 8, !tbaa !333, !nonnull !72, !align !294
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 12
  %i.if = load i8, ptr %i.ie, align 4, !tbaa !265, !range !71, !noundef !72
  %i.ig = trunc nuw i8 %i.if to i1
  br i1 %i.ig, label %bb.aa, label %_ZN6spdlog7details13scoped_padderD2Ev.exit

bb.aa:                                            ; preds = %bb.z
  %i.ih = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !332, !nonnull !72, !align !294 ; 4 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8 ; 2 uses
  %i.ik = load i64, ptr %i.ij, align 8, !tbaa !69
  %i.il = add nsw i64 %i.ik, %i.ft
  %spec.store.select.i = call i64 @llvm.smax.i64(i64 %i.il, i64 0) ; 3 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.ii, i64 16 ; 2 uses
  %i.in = load i64, ptr %i.im, align 8, !tbaa !68 ; 2 uses
  %i.io = icmp ugt i64 %spec.store.select.i, %i.in
end_hunk_1
begin_hunk_2_@_ZN6spdlog7details11E_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE:bb.a
  store i8 %i.v, ptr %i.y, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i

_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i.i.i.i = phi i64 [ %i.x, %bb.c ], [ %i.p, %bb.b ]
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 %.pre-phi.i.i.i.i.i ; 2 uses
  br i1 %i.c, label %bb.d, label %_ZN3fmt3v1210format_intC2El.exit.i

bb.d:                                             ; preds = %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i
  %i.aa = getelementptr inbounds i8, ptr %i.z, i64 -1 ; 2 uses
  store i8 45, ptr %i.aa, align 1, !tbaa !64
  br label %_ZN3fmt3v1210format_intC2El.exit.i

_ZN3fmt3v1210format_intC2El.exit.i:               ; preds = %bb.d, %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i
  %.0.i.i.i = phi ptr [ %i.aa, %bb.d ], [ %i.z, %_ZN3fmt3v1210format_int15format_unsignedImEEPcT_.exit.i.i.i ] ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %.0.i.i.i, ptr %i.ab, align 8, !tbaa !305
  %i.ac = ptrtoint ptr %4 to i64
  %i.ad = ptrtoint ptr %.0.i.i.i to i64           ; 2 uses
  %i.ae = add i64 %i.ac, 21                       ; 2 uses
  %i.af = sub i64 %i.ae, %i.ad
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i.i.i, i64 %i.af ; 2 uses
  %.not31.i.i = icmp eq i64 %i.ae, %i.ad
  br i1 %.not31.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %.lr.ph34.i.i

.lr.ph34.i.i:                                     ; preds = %_ZN3fmt3v1210format_intC2El.exit.i
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aj = ptrtoint ptr %i.ag to i64
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %i.al = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.bs, %._crit_edge.i.i ] ; 3 uses
  %.02732.i.i = phi ptr [ %.0.i.i.i, %.lr.ph34.i.i ], [ %i.bt, %._crit_edge.i.i ] ; 9 uses
  %i.am = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.an = sub i64 %i.am, %i.al
  %i.ao = ptrtoint ptr %.02732.i.i to i64         ; 2 uses
  %i.ap = sub i64 %i.aj, %i.ao                    ; 4 uses
  %i.aq = icmp ult i64 %i.an, %i.ap
  br i1 %i.aq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ar = load ptr, ptr %i.ak, align 8, !tbaa !66
  %i.as = add i64 %i.ap, %i.al
  call void %i.ar(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.as), !inline_history !1293
  %i.at = load i64, ptr %i.ah, align 8, !tbaa !69 ; 2 uses
  %i.au = load i64, ptr %i.ai, align 8, !tbaa !68
  %i.av = sub i64 %i.au, %i.at
  %i.aw = call i64 @llvm.umin.i64(i64 %i.ap, i64 %i.av)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.026.i.i = phi i64 [ %i.at, %bb.f ], [ %i.al, %bb.e ] ; 3 uses
  %.025.i.i = phi i64 [ %i.aw, %bb.f ], [ %i.ap, %bb.e ] ; 13 uses
  %i.ax = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.ay = ptrtoaddr ptr %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.g
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ba = add i64 %.026.i.i, %i.ay
  %i.bb = sub i64 %i.ao, %i.ba
  %diff.check = icmp ugt i64 %i.bb, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check11 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check11, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.bc = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %wide.load = load <16 x i8>, ptr %i.bd, align 1, !tbaa !64
  %wide.load12 = load <16 x i8>, ptr %i.be, align 1, !tbaa !64
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 %index ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  store <16 x i8> %wide.load, ptr %i.bf, align 1, !tbaa !64
  store <16 x i8> %wide.load12, ptr %i.bg, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1294

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec13 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index14 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next16, %vec.epilog.vector.body ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %index14
  %wide.load15 = load <4 x i8>, ptr %i.bi, align 1, !tbaa !64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.az, i64 %index14
  store <4 x i8> %wide.load15, ptr %i.bj, align 1, !tbaa !64
  %index.next16 = add nuw i64 %index14, 4         ; 2 uses
  %i.bk = icmp eq i64 %index.next16, %n.vec13
  br i1 %i.bk, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1295

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n17 = icmp eq i64 %.025.i.i, %n.vec13
  br i1 %cmp.n17, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec13, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.bo, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.bl = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i.prol
  %i.bm = load i8, ptr %i.bl, align 1, !tbaa !64
  %i.bn = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i.prol
  store i8 %i.bm, ptr %i.bn, align 1, !tbaa !64
  %i.bo = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1296

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.bo, %.lr.ph.i.i.prol ]
  %i.bp = sub i64 %.030.i.i.ph, %.025.i.i
  %i.bq = icmp ugt i64 %i.bp, -4
  br i1 %i.bq, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ah, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.g
  %i.br = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.g ]
  %i.bs = add i64 %i.br, %.025.i.i                ; 2 uses
  store i64 %i.bs, ptr %i.ah, align 8, !tbaa !69
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.025.i.i ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, %i.ag
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit, label %bb.e, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.cj, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %.030.i.i
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !64
  %i.bw = getelementptr inbounds nuw i8, ptr %i.az, i64 %.030.i.i
  store i8 %i.bv, ptr %i.bw, align 1, !tbaa !64
  %i.bx = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.bx
  %i.bz = load i8, ptr %i.by, align 1, !tbaa !64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.bx
  store i8 %i.bz, ptr %i.ca, align 1, !tbaa !64
  %i.cb = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !tbaa !64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cb
  store i8 %i.cd, ptr %i.ce, align 1, !tbaa !64
  %i.cf = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.02732.i.i, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !64
  %i.ci = getelementptr inbounds nuw i8, ptr %i.az, i64 %i.cf
  store i8 %i.ch, ptr %i.ci, align 1, !tbaa !64
  %i.cj = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.cj, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1297

_ZN6spdlog7details10fmt_helper10append_intIlEEvT_RN3fmt3v1219basic_memory_bufferIcLm250ENS5_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i, %_ZN3fmt3v1210format_intC2El.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11p_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
.lr.ph34.i.i:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val = load i32, ptr %i.a, align 8, !tbaa !308
  %i.b = icmp sgt i32 %.val, 11
  %i.c = select i1 %i.b, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i5 = ptrtoaddr ptr %i.c to i64
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  br label %bb.a

bb.a:                                             ; preds = %._crit_edge.i.i, %.lr.ph34.i.i
  %4 = phi i64 [ %.pre.i.i, %.lr.ph34.i.i ], [ %i.am, %._crit_edge.i.i ] ; 3 uses
  %i.g = phi i64 [ 0, %.lr.ph34.i.i ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g ; 7 uses
  %i.h = load i64, ptr %i.e, align 8, !tbaa !68
  %i.i = sub i64 %i.h, %4
  %i.j = sub nsw i64 2, %i.g                      ; 4 uses
  %i.k = icmp ult i64 %i.i, %i.j
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.f, align 8, !tbaa !66
  %i.m = add i64 %i.j, %4
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.m), !inline_history !23
  %i.n = load i64, ptr %i.d, align 8, !tbaa !69   ; 2 uses
  %i.o = load i64, ptr %i.e, align 8, !tbaa !68
  %i.p = sub i64 %i.o, %i.n
  %i.q = tail call i64 @llvm.umin.i64(i64 %i.j, i64 %i.p)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.026.i.i = phi i64 [ %i.n, %bb.b ], [ %4, %bb.a ] ; 3 uses
  %.025.i.i = phi i64 [ %i.q, %bb.b ], [ %i.j, %bb.a ] ; 13 uses
  %i.r = load ptr, ptr %3, align 8, !tbaa !67     ; 2 uses
  %i.s = ptrtoaddr ptr %i.r to i64
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.c
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.u = add i64 %.026.i.i, %i.s
  %5 = add i64 %i.g, %.str.110..str.111.i5
  %i.v = sub i64 %5, %i.u
  %diff.check = icmp ugt i64 %i.v, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check6 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check6, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.w = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <16 x i8>, ptr %i.x, align 1, !tbaa !64
  %wide.load7 = load <16 x i8>, ptr %i.y, align 1, !tbaa !64
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store <16 x i8> %wide.load, ptr %i.z, align 1, !tbaa !64
  store <16 x i8> %wide.load7, ptr %i.aa, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ab = icmp eq i64 %index.next, %n.vec
  br i1 %i.ab, label %middle.block, label %vector.body, !llvm.loop !1298

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.w, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec8 = and i64 %.025.i.i, -4                 ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index9 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next11, %vec.epilog.vector.body ] ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index9
  %wide.load10 = load <4 x i8>, ptr %i.ac, align 1, !tbaa !64
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 %index9
  store <4 x i8> %wide.load10, ptr %i.ad, align 1, !tbaa !64
  %index.next11 = add nuw i64 %index9, 4          ; 2 uses
  %i.ae = icmp eq i64 %index.next11, %n.vec8
  br i1 %i.ae, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1299

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n12 = icmp eq i64 %.025.i.i, %n.vec8
  br i1 %cmp.n12, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec8, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ai, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.af = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !64
  %i.ah = getelementptr inbounds nuw i8, ptr %i.t, i64 %.030.i.i.prol
  store i8 %i.ag, ptr %i.ah, align 1, !tbaa !64
  %i.ai = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1300

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ai, %.lr.ph.i.i.prol ]
  %i.aj = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.d, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.c
  %i.al = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.c ]
  %i.am = add i64 %i.al, %.025.i.i                ; 2 uses
  store i64 %i.am, ptr %i.d, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %i.g ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.a, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.an = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !64
  %i.ap = getelementptr inbounds nuw i8, ptr %i.t, i64 %.030.i.i
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !64
  %i.aq = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.aq
  store i8 %i.as, ptr %i.at, align 1, !tbaa !64
  %i.au = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.au
  store i8 %i.aw, ptr %i.ax, align 1, !tbaa !64
  %i.ay = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !tbaa !64
  %i.bb = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.ay
  store i8 %i.ba, ptr %i.bb, align 1, !tbaa !64
  %i.bc = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.bc, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1301

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11r_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %8 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %9 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.val = load i32, ptr %i.a, align 8, !tbaa !308 ; 3 uses
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
  %i.i = load i64, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.j = add i64 %i.i, 1                          ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !68
  %i.m = icmp ugt i64 %i.j, %i.l
  br i1 %i.m, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !66
  tail call void %i.o(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.j), !inline_history !32
  %.pre.i.i = load i64, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.j, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.p = phi i64 [ %i.i, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.q = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.h, align 8, !tbaa !69
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.p
  store i8 %i.g, ptr %i.r, align 1, !tbaa !64
  %i.s = or disjoint i8 %i.f, 48
  %i.t = load i64, ptr %i.h, align 8, !tbaa !69   ; 2 uses
  %i.u = add i64 %i.t, 1                          ; 3 uses
  %i.v = load i64, ptr %i.k, align 8, !tbaa !68
  %i.w = icmp ugt i64 %i.u, %i.v
  br i1 %i.w, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !66
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.u), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.h, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.u, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.z = phi i64 [ %i.t, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.aa = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.h, align 8, !tbaa !69
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.z
  store i8 %i.s, ptr %i.ab, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #36
  store i32 1, ptr %8, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.ac = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i32 0, ptr %i.ac, align 8, !tbaa !207
  %i.ad = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr @.str.70, ptr %i.ad, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
  %i.ae = getelementptr inbounds nuw i8, ptr %8, i64 40
  store i32 0, ptr %i.ae, align 8, !tbaa !209
  %i.af = getelementptr inbounds nuw i8, ptr %8, i64 44
  store i32 1, ptr %i.af, align 4, !tbaa !211
  %i.ag = getelementptr inbounds nuw i8, ptr %8, i64 48
  store ptr %8, ptr %i.ag, align 8, !tbaa !212
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.ah, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #36
  store i32 %i.d, ptr %9, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %9, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 25 uses
  %i.aj = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.ak = add i64 %i.aj, 1                        ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 9 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !68
  %i.an = icmp ugt i64 %i.ak, %i.am
  br i1 %i.an, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !66
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ak), !inline_history !29
  %.pre.i = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.f
  %.pre-phi.i = phi i64 [ %i.ak, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i, %bb.f ]
  %i.aq = phi i64 [ %i.aj, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i, %bb.f ]
  %i.ar = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.ai, align 8, !tbaa !69
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.aq
  store i8 58, ptr %i.as, align 1, !tbaa !64
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.au = load i32, ptr %i.at, align 4, !tbaa !309 ; 3 uses
  %or.cond.i14 = icmp ult i32 %i.au, 100
  br i1 %or.cond.i14, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.lhs.trunc.i17 = trunc nuw nsw i32 %i.au to i8 ; 2 uses
  %i.av = udiv i8 %.lhs.trunc.i17, 10
  %i.aw = urem i8 %.lhs.trunc.i17, 10
  %i.ax = or disjoint i8 %i.av, 48
  %i.ay = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.az = add i64 %i.ay, 1                        ; 3 uses
  %i.ba = load i64, ptr %i.al, align 8, !tbaa !68
  %i.bb = icmp ugt i64 %i.az, %i.ba
  br i1 %i.bb, label %bb.h, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18

bb.h:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !66
  call void %i.bd(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.az), !inline_history !32
  %.pre.i.i24 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i25 = add i64 %.pre.i.i24, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i19 = phi i64 [ %i.az, %bb.g ], [ %.pre2.i.i25, %bb.h ]
  %i.be = phi i64 [ %i.ay, %bb.g ], [ %.pre.i.i24, %bb.h ]
  %i.bf = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i19, ptr %i.ai, align 8, !tbaa !69
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 %i.be
  store i8 %i.ax, ptr %i.bg, align 1, !tbaa !64
  %i.bh = or disjoint i8 %i.aw, 48
  %i.bi = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.bj = add i64 %i.bi, 1                        ; 3 uses
  %i.bk = load i64, ptr %i.al, align 8, !tbaa !68
  %i.bl = icmp ugt i64 %i.bj, %i.bk
  br i1 %i.bl, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i20

bb.i:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18
  %i.bm = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !66
  call void %i.bn(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bj), !inline_history !32
  %.pre.i5.i22 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i23 = add i64 %.pre.i5.i22, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i20

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i20: ; preds = %bb.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18
  %.pre-phi.i4.i21 = phi i64 [ %i.bj, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18 ], [ %.pre2.i6.i23, %bb.i ]
  %i.bo = phi i64 [ %i.bi, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i18 ], [ %.pre.i5.i22, %bb.i ]
  %i.bp = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i21, ptr %i.ai, align 8, !tbaa !69
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %i.bo
  store i8 %i.bh, ptr %i.bq, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 1, ptr %6, align 8, !tbaa !204
  %.ptr.i.i15 = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %.ptr.i.i15, align 8, !tbaa !206
  %i.br = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.br, align 8, !tbaa !207
  %i.bs = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.70, ptr %i.bs, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i16 = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i16, align 8, !tbaa !70
  %i.bt = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.bt, align 8, !tbaa !209
  %i.bu = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.bu, align 4, !tbaa !211
  %i.bv = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %6, ptr %i.bv, align 8, !tbaa !212
  %i.bw = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.bw, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i32 %i.au, ptr %7, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %7, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i20, %bb.j
  %i.bx = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.by = add i64 %i.bx, 1                        ; 3 uses
  %i.bz = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ca = icmp ugt i64 %i.by, %i.bz
  br i1 %i.ca, label %bb.k, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30

bb.k:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26
  %i.cb = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !66
  call void %i.cc(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.by), !inline_history !29
  %.pre.i28 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i29 = add i64 %.pre.i28, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26, %bb.k
  %.pre-phi.i27 = phi i64 [ %i.by, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26 ], [ %.pre2.i29, %bb.k ]
  %i.cd = phi i64 [ %i.bx, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit26 ], [ %.pre.i28, %bb.k ]
  %i.ce = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i27, ptr %i.ai, align 8, !tbaa !69
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.cd
  store i8 58, ptr %i.cf, align 1, !tbaa !64
  %i.cg = load i32, ptr %2, align 8, !tbaa !310   ; 3 uses
  %or.cond.i31 = icmp ult i32 %i.cg, 100
  br i1 %or.cond.i31, label %bb.l, label %bb.o

bb.l:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30
  %.lhs.trunc.i34 = trunc nuw nsw i32 %i.cg to i8 ; 2 uses
  %i.ch = udiv i8 %.lhs.trunc.i34, 10
  %i.ci = urem i8 %.lhs.trunc.i34, 10
  %i.cj = or disjoint i8 %i.ch, 48
  %i.ck = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.cl = add i64 %i.ck, 1                        ; 3 uses
  %i.cm = load i64, ptr %i.al, align 8, !tbaa !68
  %i.cn = icmp ugt i64 %i.cl, %i.cm
  br i1 %i.cn, label %bb.m, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35

bb.m:                                             ; preds = %bb.l
  %i.co = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !66
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cl), !inline_history !32
  %.pre.i.i41 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i42 = add i64 %.pre.i.i41, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35: ; preds = %bb.m, %bb.l
  %.pre-phi.i.i36 = phi i64 [ %i.cl, %bb.l ], [ %.pre2.i.i42, %bb.m ]
  %i.cq = phi i64 [ %i.ck, %bb.l ], [ %.pre.i.i41, %bb.m ]
  %i.cr = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i36, ptr %i.ai, align 8, !tbaa !69
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 %i.cq
  store i8 %i.cj, ptr %i.cs, align 1, !tbaa !64
  %i.ct = or disjoint i8 %i.ci, 48
  %i.cu = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.cv = add i64 %i.cu, 1                        ; 3 uses
  %i.cw = load i64, ptr %i.al, align 8, !tbaa !68
  %i.cx = icmp ugt i64 %i.cv, %i.cw
  br i1 %i.cx, label %bb.n, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37

bb.n:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35
  %i.cy = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !66
  call void %i.cz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.cv), !inline_history !32
  %.pre.i5.i39 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i40 = add i64 %.pre.i5.i39, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37: ; preds = %bb.n, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35
  %.pre-phi.i4.i38 = phi i64 [ %i.cv, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35 ], [ %.pre2.i6.i40, %bb.n ]
  %i.da = phi i64 [ %i.cu, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i35 ], [ %.pre.i5.i39, %bb.n ]
  %i.db = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i38, ptr %i.ai, align 8, !tbaa !69
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 %i.da
  store i8 %i.ct, ptr %i.dc, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43

bb.o:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit30
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i32 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i32, align 8, !tbaa !206
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.dd, align 8, !tbaa !207
  %i.de = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.de, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i33 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i33, align 8, !tbaa !70
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i32 0, ptr %i.df, align 8, !tbaa !209
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 1, ptr %i.dg, align 4, !tbaa !211
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 48
  store ptr %4, ptr %i.dh, align 8, !tbaa !212
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.di, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #36
  store i32 %i.cg, ptr %5, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %5, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i37, %bb.o
  %i.dj = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.dk = add i64 %i.dj, 1                        ; 3 uses
  %i.dl = load i64, ptr %i.al, align 8, !tbaa !68
  %i.dm = icmp ugt i64 %i.dk, %i.dl
  br i1 %i.dm, label %bb.p, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47

bb.p:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !66
  call void %i.do(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.dk), !inline_history !29
  %.pre.i45 = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %.pre2.i46 = add i64 %.pre.i45, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47: ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43, %bb.p
  %.pre-phi.i44 = phi i64 [ %i.dk, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43 ], [ %.pre2.i46, %bb.p ]
  %i.dp = phi i64 [ %i.dj, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit43 ], [ %.pre.i45, %bb.p ]
  %i.dq = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i44, ptr %i.ai, align 8, !tbaa !69
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 %i.dp
  store i8 32, ptr %i.dr, align 1, !tbaa !64
  %.val13 = load i32, ptr %i.a, align 8, !tbaa !308
  %i.ds = icmp sgt i32 %.val13, 11
  %.str.110..str.111.i = select i1 %i.ds, ptr @.str.110, ptr @.str.111 ; 2 uses
  %.str.110..str.111.i74 = ptrtoaddr ptr %.str.110..str.111.i to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.pre.i.i48 = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge.i.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47
  %10 = phi i64 [ %.pre.i.i48, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47 ], [ %i.fa, %._crit_edge.i.i ] ; 3 uses
  %i.du = phi i64 [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit47 ], [ %.02732.i.i.add, %._crit_edge.i.i ] ; 4 uses
  %.02732.i.i.ptr = getelementptr inbounds nuw i8, ptr %.str.110..str.111.i, i64 %i.du ; 7 uses
  %i.dv = load i64, ptr %i.al, align 8, !tbaa !68
  %i.dw = sub i64 %i.dv, %10
  %i.dx = sub nsw i64 2, %i.du                    ; 4 uses
  %i.dy = icmp ult i64 %i.dw, %i.dx
  br i1 %i.dy, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dz = load ptr, ptr %i.dt, align 8, !tbaa !66
  %i.ea = add i64 %i.dx, %10
  call void %i.dz(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ea), !inline_history !23
  %i.eb = load i64, ptr %i.ai, align 8, !tbaa !69 ; 2 uses
  %i.ec = load i64, ptr %i.al, align 8, !tbaa !68
  %i.ed = sub i64 %i.ec, %i.eb
  %i.ee = call i64 @llvm.umin.i64(i64 %i.dx, i64 %i.ed)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.026.i.i = phi i64 [ %i.eb, %bb.r ], [ %10, %bb.q ] ; 3 uses
  %.025.i.i = phi i64 [ %i.ee, %bb.r ], [ %i.dx, %bb.q ] ; 13 uses
  %i.ef = load ptr, ptr %3, align 8, !tbaa !67    ; 2 uses
  %i.eg = ptrtoaddr ptr %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 %.026.i.i ; 7 uses
  %.not36.i.i = icmp eq i64 %.025.i.i, 0
  br i1 %.not36.i.i, label %._crit_edge.i.i, label %iter.check

iter.check:                                       ; preds = %bb.s
  %min.iters.check = icmp ult i64 %.025.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.ei = add i64 %.026.i.i, %i.eg
  %11 = add i64 %i.du, %.str.110..str.111.i74
  %i.ej = sub i64 %11, %i.ei
  %diff.check = icmp ugt i64 %i.ej, -32
  br i1 %diff.check, label %.lr.ph.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %vector.memcheck
  %min.iters.check77 = icmp ult i64 %.025.i.i, 32
  br i1 %min.iters.check77, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ek = and i64 %.025.i.i, 28
  %n.vec = and i64 %.025.i.i, -32                 ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %vector.body
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.el, i64 16
  %wide.load = load <16 x i8>, ptr %i.el, align 1, !tbaa !64
  %wide.load78 = load <16 x i8>, ptr %i.em, align 1, !tbaa !64
  %i.en = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %i.en, i64 16
  store <16 x i8> %wide.load, ptr %i.en, align 1, !tbaa !64
  store <16 x i8> %wide.load78, ptr %i.eo, align 1, !tbaa !64
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ep = icmp eq i64 %index.next, %n.vec
  br i1 %i.ep, label %middle.block, label %vector.body, !llvm.loop !1302

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ek, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.preheader, label %vec.epilog.ph, !prof !109

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec79 = and i64 %.025.i.i, -4                ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index80 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next82, %vec.epilog.vector.body ] ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %index80
  %wide.load81 = load <4 x i8>, ptr %i.eq, align 1, !tbaa !64
  %i.er = getelementptr inbounds nuw i8, ptr %i.eh, i64 %index80
  store <4 x i8> %wide.load81, ptr %i.er, align 1, !tbaa !64
  %index.next82 = add nuw i64 %index80, 4         ; 2 uses
  %i.es = icmp eq i64 %index.next82, %n.vec79
  br i1 %i.es, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !1303

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n83 = icmp eq i64 %.025.i.i, %n.vec79
  br i1 %cmp.n83, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %iter.check, %vector.memcheck, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.030.i.i.ph = phi i64 [ 0, %iter.check ], [ 0, %vector.memcheck ], [ %n.vec, %vec.epilog.iter.check ], [ %n.vec79, %vec.epilog.middle.block ] ; 3 uses
  %xtraiter = and i64 %.025.i.i, 3                ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.030.i.i.prol = phi i64 [ %i.ew, %.lr.ph.i.i.prol ], [ %.030.i.i.ph, %.lr.ph.i.i.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.et = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i.prol
  %i.eu = load i8, ptr %i.et, align 1, !tbaa !64
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.030.i.i.prol
  store i8 %i.eu, ptr %i.ev, align 1, !tbaa !64
  %i.ew = add nuw i64 %.030.i.i.prol, 1           ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !1304

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.030.i.i.unr = phi i64 [ %.030.i.i.ph, %.lr.ph.i.i.preheader ], [ %i.ew, %.lr.ph.i.i.prol ]
  %i.ex = sub i64 %.030.i.i.ph, %.025.i.i
  %i.ey = icmp ugt i64 %i.ex, -4
  br i1 %i.ey, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i = load i64, ptr %i.ai, align 8, !tbaa !69
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.s
  %i.ez = phi i64 [ %.pre37.i.i, %._crit_edge.loopexit.i.i ], [ %.026.i.i, %bb.s ]
  %i.fa = add i64 %i.ez, %.025.i.i                ; 2 uses
  store i64 %i.fa, ptr %i.ai, align 8, !tbaa !69
  %.02732.i.i.add = add nuw nsw i64 %.025.i.i, %i.du ; 2 uses
  %.not.i.i = icmp eq i64 %.02732.i.i.add, 2
  br i1 %.not.i.i, label %_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, label %bb.q, !llvm.loop !3

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.030.i.i = phi i64 [ %i.fq, %.lr.ph.i.i ], [ %.030.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 6 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %.030.i.i
  %i.fc = load i8, ptr %i.fb, align 1, !tbaa !64
  %i.fd = getelementptr inbounds nuw i8, ptr %i.eh, i64 %.030.i.i
  store i8 %i.fc, ptr %i.fd, align 1, !tbaa !64
  %i.fe = add nuw i64 %.030.i.i, 1                ; 2 uses
  %i.ff = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fe
  %i.fg = load i8, ptr %i.ff, align 1, !tbaa !64
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fe
  store i8 %i.fg, ptr %i.fh, align 1, !tbaa !64
  %i.fi = add nuw i64 %.030.i.i, 2                ; 2 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fi
  %i.fk = load i8, ptr %i.fj, align 1, !tbaa !64
  %i.fl = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fi
  store i8 %i.fk, ptr %i.fl, align 1, !tbaa !64
  %i.fm = add nuw i64 %.030.i.i, 3                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr, i64 %i.fm
  %i.fo = load i8, ptr %i.fn, align 1, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.eh, i64 %i.fm
  store i8 %i.fo, ptr %i.fp, align 1, !tbaa !64
  %i.fq = add nuw i64 %.030.i.i, 4                ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.fq, %.025.i.i
  br i1 %exitcond.not.i.i.3, label %._crit_edge.loopexit.i.i, label %.lr.ph.i.i, !llvm.loop !1305

_ZN6spdlog7details10fmt_helper18append_string_viewEN3fmt3v1217basic_string_viewIcEERNS3_19basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %._crit_edge.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11R_formatterINS0_18null_scoped_padderEED0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #10 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #43
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6spdlog7details11R_formatterINS0_18null_scoped_padderEE6formatERKNS0_7log_msgERK2tmRN3fmt3v1219basic_memory_bufferIcLm250ENSB_6detail9allocatorIcEEEE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(56) %2, ptr noundef nonnull align 8 dereferenceable(283) %3) unnamed_addr #6 comdat align 2 {
bb.a:
  %4 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %5 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %6 = alloca %"class.fmt::v12::detail::format_string_checker.209", align 8 ; 13 uses
  %7 = alloca %"struct.fmt::v12::detail::format_arg_store.208", align 16 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.b = load i32, ptr %i.a, align 8, !tbaa !308  ; 3 uses
  %or.cond.i = icmp ult i32 %i.b, 100
  br i1 %or.cond.i, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.lhs.trunc.i = trunc nuw nsw i32 %i.b to i8    ; 2 uses
  %i.c = udiv i8 %.lhs.trunc.i, 10
  %i.d = urem i8 %.lhs.trunc.i, 10
  %i.e = or disjoint i8 %i.c, 48
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 6 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.h = add i64 %i.g, 1                          ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !68
  %i.k = icmp ugt i64 %i.h, %i.j
  br i1 %i.k, label %bb.c, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !66
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.h), !inline_history !32
  %.pre.i.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i = add i64 %.pre.i.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i: ; preds = %bb.c, %bb.b
  %.pre-phi.i.i = phi i64 [ %i.h, %bb.b ], [ %.pre2.i.i, %bb.c ]
  %i.n = phi i64 [ %i.g, %bb.b ], [ %.pre.i.i, %bb.c ]
  %i.o = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i, ptr %i.f, align 8, !tbaa !69
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.n
  store i8 %i.e, ptr %i.p, align 1, !tbaa !64
  %i.q = or disjoint i8 %i.d, 48
  %i.r = load i64, ptr %i.f, align 8, !tbaa !69   ; 2 uses
  %i.s = add i64 %i.r, 1                          ; 3 uses
  %i.t = load i64, ptr %i.i, align 8, !tbaa !68
  %i.u = icmp ugt i64 %i.s, %i.t
  br i1 %i.u, label %bb.d, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

bb.d:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !66
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.s), !inline_history !32
  %.pre.i5.i = load i64, ptr %i.f, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i = add i64 %.pre.i5.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i: ; preds = %bb.d, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i
  %.pre-phi.i4.i = phi i64 [ %i.s, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre2.i6.i, %bb.d ]
  %i.x = phi i64 [ %i.r, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i ], [ %.pre.i5.i, %bb.d ]
  %i.y = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i, ptr %i.f, align 8, !tbaa !69
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.x
  store i8 %i.q, ptr %i.z, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #36
  store i32 1, ptr %6, align 8, !tbaa !204
  %.ptr.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr null, ptr %.ptr.i.i, align 8, !tbaa !206
  %i.aa = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i32 0, ptr %i.aa, align 8, !tbaa !207
  %i.ab = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr @.str.70, ptr %i.ab, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %6, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !tbaa !70
  %i.ac = getelementptr inbounds nuw i8, ptr %6, i64 40
  store i32 0, ptr %i.ac, align 8, !tbaa !209
  %i.ad = getelementptr inbounds nuw i8, ptr %6, i64 44
  store i32 1, ptr %i.ad, align 4, !tbaa !211
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 48
  store ptr %6, ptr %i.ae, align 8, !tbaa !212
  %i.af = getelementptr inbounds nuw i8, ptr %6, i64 56
  store ptr @_ZN3fmt3v126detail12invoke_parseIRicEEPKT0_RNS0_13parse_contextIS4_EE, ptr %i.af, align 8, !tbaa !177
  call void @_ZN3fmt3v126detail19parse_format_stringIcNS1_21format_string_checkerIcLi1ELi0ELb0EEEEEvNS0_17basic_string_viewIT_EEOT0_(ptr nonnull @.str.70, i64 5, ptr noundef nonnull align 8 dereferenceable(64) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #36
  store i32 %i.b, ptr %7, align 16, !tbaa !64
  call void @_ZN3fmt3v126detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS0_10locale_refE(ptr noundef nonnull align 8 dereferenceable(283) %3, ptr nonnull @.str.70, i64 5, i64 1, ptr nonnull %7, ptr null)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #36
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit

_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit: ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i, %bb.e
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 9 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

bb.f:                                             ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !66
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.ai), !inline_history !29
  %.pre.i = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %.pre2.i = add i64 %.pre.i, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit:  ; preds = %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit, %bb.f
  %.pre-phi.i = phi i64 [ %i.ai, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre2.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit ], [ %.pre.i, %bb.f ]
  %i.ap = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i, ptr %i.ag, align 8, !tbaa !69
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 58, ptr %i.aq, align 1, !tbaa !64
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !309 ; 3 uses
  %or.cond.i7 = icmp ult i32 %i.as, 100
  br i1 %or.cond.i7, label %bb.g, label %bb.j

bb.g:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.lhs.trunc.i10 = trunc nuw nsw i32 %i.as to i8 ; 2 uses
  %i.at = udiv i8 %.lhs.trunc.i10, 10
  %i.au = urem i8 %.lhs.trunc.i10, 10
  %i.av = or disjoint i8 %i.at, 48
  %i.aw = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.ax = add i64 %i.aw, 1                        ; 3 uses
  %i.ay = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.az = icmp ugt i64 %i.ax, %i.ay
  br i1 %i.az, label %bb.h, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11

bb.h:                                             ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !66
  call void %i.bb(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.ax), !inline_history !32
  %.pre.i.i17 = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %.pre2.i.i18 = add i64 %.pre.i.i17, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11: ; preds = %bb.h, %bb.g
  %.pre-phi.i.i12 = phi i64 [ %i.ax, %bb.g ], [ %.pre2.i.i18, %bb.h ]
  %i.bc = phi i64 [ %i.aw, %bb.g ], [ %.pre.i.i17, %bb.h ]
  %i.bd = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i.i12, ptr %i.ag, align 8, !tbaa !69
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.bc
  store i8 %i.av, ptr %i.be, align 1, !tbaa !64
  %i.bf = or disjoint i8 %i.au, 48
  %i.bg = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %i.bh = add i64 %i.bg, 1                        ; 3 uses
  %i.bi = load i64, ptr %i.aj, align 8, !tbaa !68
  %i.bj = icmp ugt i64 %i.bh, %i.bi
  br i1 %i.bj, label %bb.i, label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i13

bb.i:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11
  %i.bk = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.bl = load ptr, ptr %i.bk, align 8, !tbaa !66
  call void %i.bl(ptr noundef nonnull align 8 dereferenceable(283) %3, i64 noundef %i.bh), !inline_history !32
  %.pre.i5.i15 = load i64, ptr %i.ag, align 8, !tbaa !69 ; 2 uses
  %.pre2.i6.i16 = add i64 %.pre.i5.i15, 1
  br label %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i13

_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit7.i13: ; preds = %bb.i, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11
  %.pre-phi.i4.i14 = phi i64 [ %i.bh, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11 ], [ %.pre2.i6.i16, %bb.i ]
  %i.bm = phi i64 [ %i.bg, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit.i11 ], [ %.pre.i5.i15, %bb.i ]
  %i.bn = load ptr, ptr %3, align 8, !tbaa !67
  store i64 %.pre-phi.i4.i14, ptr %i.ag, align 8, !tbaa !69
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 %i.bm
  store i8 %i.bf, ptr %i.bo, align 1, !tbaa !64
  br label %_ZN6spdlog7details10fmt_helper4pad2EiRN3fmt3v1219basic_memory_bufferIcLm250ENS3_6detail9allocatorIcEEEE.exit19

bb.j:                                             ; preds = %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  store i32 1, ptr %4, align 8, !tbaa !204
  %.ptr.i.i8 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr null, ptr %.ptr.i.i8, align 8, !tbaa !206
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i32 0, ptr %i.bp, align 8, !tbaa !207
  %i.bq = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr @.str.70, ptr %i.bq, align 8, !tbaa !55
  %.sroa.2.0..sroa_idx.i.i.i.i9 = getelementptr inbounds nuw i8, ptr %4, i64 32
  store i64 5, ptr %.sroa.2.0..sroa_idx.i.i.i.i9, align 8, !tbaa !70
  %i.br = getelementptr inbounds nuw i8, ptr %4, i64 40
end_hunk_2
