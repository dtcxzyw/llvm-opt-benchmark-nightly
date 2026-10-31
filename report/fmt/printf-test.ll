Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fmt/original/printf-test?download=true
inline.NumInlined: 26200
inline.NumDeleted: 1767
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 48
loop-unroll.NumUnrolled: 55
begin_hunk_0_@_ZN3fmt3v126detail12format_floatIdEEiT_iRKNS0_12format_specsEbRNS1_6bufferIcEE:bb.a
  %i.kd = tail call i32 @llvm.umin.i32(i32 %.0187, i32 767)
  store i128 %.sroa.0.0, ptr %5, align 16, !tbaa !190
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i32 %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !121
  call void @_ZN3fmt3v126detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi(ptr noundef nonnull byval(%"struct.fmt::v12::detail::basic_fp.165") align 16 %5, i32 noundef %.1111, i32 noundef %i.kd, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  br label %.thread

.thread:                                          ; preds = %bb.at, %bb.r, %bb.v, %bb.u, %bb.aw
  br i1 %i.d, label %bb.bc, label %bb.ax

bb.ax:                                            ; preds = %.thread
  %i.ke = load i32, ptr %2, align 4, !tbaa !155
  %i.kf = and i32 %i.ke, 8192
  %.not227 = icmp eq i32 %i.kf, 0
  br i1 %.not227, label %bb.ay, label %bb.bc

bb.ay:                                            ; preds = %bb.ax
  %i.kg = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.kh = load i64, ptr %i.kg, align 8, !tbaa !120 ; 2 uses
  %.not132235 = icmp eq i64 %i.kh, 0
  br i1 %.not132235, label %.critedge3.thread, label %.lr.ph237

.lr.ph237:                                        ; preds = %bb.ay
  %.promoted = load i32, ptr %i.a, align 4
  %i.ki = load ptr, ptr %4, align 8, !tbaa !118
  br label %bb.az

bb.az:                                            ; preds = %.lr.ph237, %bb.ba
  %.0236 = phi i64 [ %i.kh, %.lr.ph237 ], [ %i.kk, %bb.ba ] ; 5 uses
  %i.kj = phi i32 [ %.promoted, %.lr.ph237 ], [ %i.ko, %bb.ba ]
  %i.kk = add i64 %.0236, -1                      ; 3 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.ki, i64 %i.kk
  %i.km = load i8, ptr %i.kl, align 1, !tbaa !90
  %i.kn = icmp eq i8 %i.km, 48
  br i1 %i.kn, label %bb.ba, label %.critedge3

bb.ba:                                            ; preds = %bb.az
  %i.ko = add nsw i32 %i.kj, 1                    ; 2 uses
  store i32 %i.ko, ptr %i.a, align 4, !tbaa !121
  %.not132 = icmp eq i64 %i.kk, 0
  br i1 %.not132, label %.critedge3.thread, label %bb.az, !llvm.loop !18051

.critedge3.thread:                                ; preds = %bb.ba, %bb.ay
  %i.kp = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.kq = load i64, ptr %i.kp, align 8, !tbaa !119
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

.critedge3:                                       ; preds = %bb.az
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.ks = load i64, ptr %i.kr, align 8, !tbaa !119 ; 2 uses
  %i.kt = icmp ugt i64 %.0236, %i.ks
  br i1 %i.kt, label %bb.bb, label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

bb.bb:                                            ; preds = %.critedge3
  %i.ku = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.kv = load ptr, ptr %i.ku, align 8, !tbaa !117
  call void %i.kv(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %.0236), !inline_history !28
  %.pre.i153 = load i64, ptr %i.kr, align 8, !tbaa !119
  br label %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154

_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154: ; preds = %.critedge3.thread, %.critedge3, %bb.bb
  %.0.lcssa274 = phi i64 [ %.0236, %.critedge3 ], [ %.0236, %bb.bb ], [ 0, %.critedge3.thread ]
  %i.kw = phi i64 [ %i.ks, %.critedge3 ], [ %.pre.i153, %bb.bb ], [ %i.kq, %.critedge3.thread ]
  %i.kx = call noundef i64 @llvm.umin.i64(i64 %.0.lcssa274, i64 %i.kw)
  store i64 %i.kx, ptr %i.kg, align 8, !tbaa !120
  br label %bb.bc

bb.bc:                                            ; preds = %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit154, %bb.ax, %.thread
  %i.ky = load i32, ptr %i.a, align 4, !tbaa !121
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit
  %.0105 = phi i32 [ %i.ab, %_ZN3fmt3v126detail6bufferIcE10try_resizeEm.exit ], [ 0, %_ZN3fmt3v126detail6bufferIcE9push_backERKc.exit ], [ %i.ky, %bb.bc ]
  ret i32 %.0105
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE1ENS0_14basic_appenderIcEERZNS1_15write_nonfiniteIcS5_EET0_S7_bNS0_12format_specsENS0_4signEEUlS5_E_EET1_SC_RKS8_mmOT2_(ptr %0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 noundef %2, i64 noundef %3, ptr noundef nonnull align 8 dereferenceable(16) %4) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i32, ptr %i.a, align 4, !tbaa !173
  %i.c = zext i32 %i.b to i64
  %i.d = tail call i64 @llvm.usub.sat.i64(i64 %i.c, i64 %3) ; 4 uses
  %i.e = load i32, ptr %1, align 4, !tbaa !155    ; 2 uses
  %i.f = lshr i32 %i.e, 3
  %i.g = and i32 %i.f, 7
  %i.h = zext nneg i32 %i.g to i64
  %i.i = getelementptr inbounds nuw i8, ptr @.str.829, i64 %i.h
  %i.j = load i8, ptr %i.i, align 1, !tbaa !90
  %i.k = sext i8 %i.j to i64
  %i.l = and i64 %i.k, 4294967295
  %i.m = lshr i64 %i.d, %i.l                      ; 4 uses
  %i.n = sub nsw i64 %i.d, %i.m
  %i.o = lshr i32 %i.e, 15
  %i.p = and i32 %i.o, 7
  %i.q = zext nneg i32 %i.p to i64
  %i.r = mul nuw nsw i64 %i.d, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load i64, ptr %i.s, align 8, !tbaa !120
  %i.u = add i64 %i.t, %2
  %i.v = add i64 %i.u, %i.r                       ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i64, ptr %i.w, align 8, !tbaa !119
  %i.y = icmp ugt i64 %i.v, %i.x
  br i1 %i.y, label %bb.b, label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

bb.b:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !117
  tail call void %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.v), !inline_history !18
  br label %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit

_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit: ; preds = %bb.a, %bb.b
  %.not = icmp eq i64 %i.m, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %i.ab = tail call ptr @_ZN3fmt3v126detail4fillIcNS0_14basic_appenderIcEEEET0_S5_mRKNS0_11basic_specsE(ptr nonnull %0, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(8) %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit
  %.sroa.09.0 = phi ptr [ %i.ab, %bb.c ], [ %0, %_ZN3fmt3v126detail7reserveIcEENS0_14basic_appenderIT_EES5_m.exit ] ; 12 uses
  %i.ac = load i32, ptr %4, align 8, !tbaa !195   ; 2 uses
  %.not.i = icmp eq i32 %i.ac, 0
  br i1 %.not.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ad = shl nsw i32 %i.ac, 3
  %i.ae = lshr i32 539700480, %i.ad
  %i.af = trunc i32 %i.ae to i8
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 3 uses
  %i.ah = load i64, ptr %i.ag, align 8, !tbaa !120 ; 2 uses
  %i.ai = add i64 %i.ah, 1                        ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16
  %i.ak = load i64, ptr %i.aj, align 8, !tbaa !119
  %i.al = icmp ugt i64 %i.ai, %i.ak
  br i1 %i.al, label %bb.f, label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

bb.f:                                             ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !117
  tail call void %i.an(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.ai), !inline_history !18054
  %.pre.i.i.i = load i64, ptr %i.ag, align 8, !tbaa !120 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i, 1
  br label %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i

_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i:        ; preds = %bb.f, %bb.e
  %.pre-phi.i.i.i = phi i64 [ %i.ai, %bb.e ], [ %.pre2.i.i.i, %bb.f ]
  %i.ao = phi i64 [ %i.ah, %bb.e ], [ %.pre.i.i.i, %bb.f ]
  %i.ap = load ptr, ptr %.sroa.09.0, align 8, !tbaa !118
  store i64 %.pre-phi.i.i.i, ptr %i.ag, align 8, !tbaa !120
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.ao
  store i8 %i.af, ptr %i.aq, align 1, !tbaa !90
  br label %bb.g

bb.g:                                             ; preds = %_ZN3fmt3v1214basic_appenderIcEaSEc.exit.i, %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !196 ; 2 uses
  %i.at = ptrtoaddr ptr %i.as to i64
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 8 ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 16 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.09.0, i64 24
  %.pre.i.i2.i = load i64, ptr %i.au, align 8, !tbaa !120
  br label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i, %bb.g
  %i.ax = phi i64 [ %.pre.i.i2.i, %bb.g ], [ %i.cd, %._crit_edge.i.i.i ] ; 3 uses
  %.02732.i.i.idx.i = phi i64 [ 0, %bb.g ], [ %.02732.i.i.add.i, %._crit_edge.i.i.i ] ; 4 uses
  %.02732.i.i.ptr.i = getelementptr inbounds nuw i8, ptr %i.as, i64 %.02732.i.i.idx.i ; 7 uses
  %i.ay = load i64, ptr %i.av, align 8, !tbaa !119
  %i.az = sub i64 %i.ay, %i.ax
  %gepdiff.i = sub nsw i64 3, %.02732.i.i.idx.i   ; 4 uses
  %i.ba = icmp ult i64 %i.az, %gepdiff.i
  br i1 %i.ba, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bb = load ptr, ptr %i.aw, align 8, !tbaa !117
  %i.bc = add i64 %gepdiff.i, %i.ax
  tail call void %i.bb(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.09.0, i64 noundef %i.bc), !inline_history !18055
  %i.bd = load i64, ptr %i.au, align 8, !tbaa !120 ; 2 uses
  %i.be = load i64, ptr %i.av, align 8, !tbaa !119
  %i.bf = sub i64 %i.be, %i.bd
  %i.bg = tail call i64 @llvm.umin.i64(i64 %gepdiff.i, i64 %i.bf)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.026.i.i.i = phi i64 [ %i.bd, %bb.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.025.i.i.i = phi i64 [ %i.bg, %bb.i ], [ %gepdiff.i, %bb.h ] ; 13 uses
  %i.bh = load ptr, ptr %.sroa.09.0, align 8, !tbaa !118 ; 2 uses
  %i.bi = ptrtoaddr ptr %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.026.i.i.i ; 7 uses
  %.not36.i.i.i = icmp eq i64 %.025.i.i.i, 0
  br i1 %.not36.i.i.i, label %._crit_edge.i.i.i, label %iter.check

iter.check:                                       ; preds = %bb.j
  %min.iters.check = icmp ult i64 %.025.i.i.i, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %iter.check
  %i.bk = add i64 %.026.i.i.i, %i.bi
  %i.bl = add i64 %.02732.i.i.idx.i, %i.at
  %i.bm = sub i64 %i.bl, %i.bk
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
  %wide.load = load <16 x i8>, ptr %i.bo, align 1, !tbaa !90
  %wide.load36 = load <16 x i8>, ptr %i.bp, align 1, !tbaa !90
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store <16 x i8> %wide.load, ptr %i.bq, align 1, !tbaa !90
  store <16 x i8> %wide.load36, ptr %i.br, align 1, !tbaa !90
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.bs = icmp eq i64 %index.next, %n.vec
  br i1 %i.bs, label %middle.block, label %vector.body, !llvm.loop !18056

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.025.i.i.i, %n.vec
  br i1 %cmp.n, label %._crit_edge.loopexit.i.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.bn, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.i.i.i.preheader, label %vec.epilog.ph, !prof !176

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec37 = and i64 %.025.i.i.i, -4              ; 3 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index38 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next40, %vec.epilog.vector.body ] ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %index38
  %wide.load39 = load <4 x i8>, ptr %i.bt, align 1, !tbaa !90
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bj, i64 %index38
  store <4 x i8> %wide.load39, ptr %i.bu, align 1, !tbaa !90
  %index.next40 = add nuw i64 %index38, 4         ; 2 uses
  %i.bv = icmp eq i64 %index.next40, %n.vec37
  br i1 %i.bv, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !18057

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
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !90
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i.prol
  store i8 %i.bx, ptr %i.by, align 1, !tbaa !90
  %i.bz = add nuw i64 %.030.i.i.i.prol, 1         ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.prol, !llvm.loop !18058

.lr.ph.i.i.i.prol.loopexit:                       ; preds = %.lr.ph.i.i.i.prol, %.lr.ph.i.i.i.preheader
  %.030.i.i.i.unr = phi i64 [ %.030.i.i.i.ph, %.lr.ph.i.i.i.preheader ], [ %i.bz, %.lr.ph.i.i.i.prol ]
  %i.ca = sub i64 %.030.i.i.i.ph, %.025.i.i.i
  %i.cb = icmp ugt i64 %i.ca, -4
  br i1 %i.cb, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i

._crit_edge.loopexit.i.i.i:                       ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i, %vec.epilog.middle.block, %middle.block
  %.pre37.i.i.i = load i64, ptr %i.au, align 8, !tbaa !120
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %._crit_edge.loopexit.i.i.i, %bb.j
  %i.cc = phi i64 [ %.pre37.i.i.i, %._crit_edge.loopexit.i.i.i ], [ %.026.i.i.i, %bb.j ]
  %i.cd = add i64 %i.cc, %.025.i.i.i              ; 2 uses
  store i64 %i.cd, ptr %i.au, align 8, !tbaa !120
  %.02732.i.i.add.i = add nuw nsw i64 %.025.i.i.i, %.02732.i.i.idx.i ; 2 uses
  %.not.i.i.i = icmp eq i64 %.02732.i.i.add.i, 3
  br i1 %.not.i.i.i, label %_ZZN3fmt3v126detail15write_nonfiniteIcNS0_14basic_appenderIcEEEET0_S5_bNS0_12format_specsENS0_4signEENKUlS4_E_clES4_.exit, label %bb.h, !llvm.loop !15

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.prol.loopexit, %.lr.ph.i.i.i
  %.030.i.i.i = phi i64 [ %i.ct, %.lr.ph.i.i.i ], [ %.030.i.i.i.unr, %.lr.ph.i.i.i.prol.loopexit ] ; 6 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %.030.i.i.i
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !90
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %.030.i.i.i
  store i8 %i.cf, ptr %i.cg, align 1, !tbaa !90
  %i.ch = add nuw i64 %.030.i.i.i, 1              ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.ch
  %i.cj = load i8, ptr %i.ci, align 1, !tbaa !90
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.ch
  store i8 %i.cj, ptr %i.ck, align 1, !tbaa !90
  %i.cl = add nuw i64 %.030.i.i.i, 2              ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cl
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !90
  %i.co = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  store i8 %i.cn, ptr %i.co, align 1, !tbaa !90
  %i.cp = add nuw i64 %.030.i.i.i, 3              ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.02732.i.i.ptr.i, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !tbaa !90
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cp
  store i8 %i.cr, ptr %i.cs, align 1, !tbaa !90
  %i.ct = add nuw i64 %.030.i.i.i, 4              ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %i.ct, %.025.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %._crit_edge.loopexit.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !18059

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

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZN3fmt3v126detail14do_write_floatIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i32 noundef %4, ptr %5) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !155    ; 2 uses
  %i.b = and i32 %i.a, 16384
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef signext i8 @_ZN3fmt3v126detail18decimal_point_implIcEET_NS0_10locale_refE(ptr %5)
  %.pre = load i32, ptr %2, align 4, !tbaa !155
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %.pre, %bb.b ], [ %i.a, %bb.a ] ; 5 uses
  %i.e = phi i8 [ %i.c, %bb.b ], [ 46, %bb.a ]    ; 3 uses
  %i.f = load i32, ptr %1, align 4, !tbaa !202    ; 2 uses
  %i.g = or i32 %i.f, 1
  %i.h = tail call range(i32 0, 32) i32 @llvm.ctlz.i32(i32 %i.g, i1 true)
  %i.i = xor i32 %i.h, 31
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw [8 x i8], ptr @_ZZN3fmt3v126detail15do_count_digitsEjE5table, i64 %i.j
  %i.l = load i64, ptr %i.k, align 8, !tbaa !107
  %i.m = zext i32 %i.f to i64
  %i.n = add i64 %i.l, %i.m
  %i.o = lshr i64 %i.n, 32                        ; 3 uses
  %i.p = trunc nuw i64 %i.o to i32                ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !203
  %i.s = add nsw i32 %i.r, %i.p                   ; 3 uses
  %i.t = add nsw i32 %i.s, -1                     ; 3 uses
  %i.u = trunc i32 %i.d to i8
  %i.v = and i8 %i.u, 7
  switch i8 %i.v, label %bb.d [
    i8 2, label %bb.e
    i8 1, label %bb.f
  ]

bb.d:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.x = load i32, ptr %i.w, align 4, !tbaa !154  ; 2 uses
  %i.y = icmp sgt i32 %i.x, 0
  %. = select i1 %i.y, i32 %i.x, i32 %4
  %i.z = icmp sgt i32 %i.s, -4
  %i.aa = icmp sle i32 %i.s, %.
  %i.ab = and i1 %i.z, %i.aa
  br i1 %i.ab, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.ac = ptrtoint ptr %5 to i64
  %i.ad = tail call ptr @_ZN3fmt3v126detail11write_fixedIcNS1_14digit_groupingIcEENS0_14basic_appenderIcEENS1_9dragonbox10decimal_fpIfEEEET1_SA_RKT2_iT_RKNS0_12format_specsENS0_4signENS0_10locale_refE(ptr %0, ptr noundef nonnull align 4 dereferenceable(8) %1, i32 noundef %i.p, i8 noundef signext %i.e, ptr noundef nonnull align 4 dereferenceable(16) %2, i32 noundef %3, i64 %i.ac)
  br label %_ZN3fmt3v126detail12write_paddedIcLNS0_5alignE2ENS0_14basic_appenderIcEERZNS1_14do_write_floatIcNS1_14digit_groupingIcEES5_NS1_9dragonbox10decimal_fpIfEEEET1_SC_RKT2_RKNS0_12format_specsENS0_4signEiNS0_10locale_refEEUlS5_E_EESC_SC_SI_mOSD_.exit

bb.f:                                             ; preds = %bb.c, %bb.d
  %.not51 = icmp ne i32 %3, 0                     ; 3 uses
  %i.ae = zext i1 %.not51 to i64
  %i.af = add nuw nsw i64 %i.o, %i.ae
  %sext = shl i64 %i.af, 32
  %i.ag = ashr exact i64 %sext, 32                ; 2 uses
  %i.ah = and i32 %i.d, 8192
  %.not80 = icmp eq i32 %i.ah, 0
  br i1 %.not80, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !154
  %i.ak = sub nsw i32 %i.aj, %i.p
  %i.al = tail call noundef i32 @llvm.smax.i32(i32 %i.ak, i32 0) ; 2 uses
  %i.am = zext nneg i32 %i.al to i64
  %i.an = add nsw i64 %i.ag, %i.am
  br label %bb.i

bb.h:                                             ; preds = %bb.f
end_hunk_0
