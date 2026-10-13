Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wasmedge/original/format?download=true
inline.NumInlined: 2606
inline.NumDeleted: 709
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 33
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 5 uses
  store ptr %i.d, ptr %5, align 8, !tbaa !223
  store i64 32, ptr %i.a, align 8, !tbaa !224
  %i.e = getelementptr inbounds nuw i8, ptr %5, i64 168 ; 10 uses
  store i32 0, ptr %i.e, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #31
  %i.f = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 9 uses
  store i64 0, ptr %i.h, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE4growERNS0_6detail6bufferIjEEm, ptr %i.g, align 8, !tbaa !222
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  store ptr %i.i, ptr %6, align 8, !tbaa !223
  store i64 32, ptr %i.f, align 8, !tbaa !224
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 7 uses
  store i32 0, ptr %i.j, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #31
  %i.k = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 14 uses
  store i64 0, ptr %i.m, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE4growERNS0_6detail6bufferIjEEm, ptr %i.l, align 8, !tbaa !222
  %i.n = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 3 uses
  store ptr %i.n, ptr %7, align 8, !tbaa !223
  store i64 32, ptr %i.k, align 8, !tbaa !224
  %i.o = getelementptr inbounds nuw i8, ptr %7, i64 168 ; 7 uses
  store i32 0, ptr %i.o, align 8, !tbaa !228
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #31
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 9 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 5 uses
  store i64 0, ptr %i.r, align 8
  store ptr @_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE4growERNS0_6detail6bufferIjEEm, ptr %i.q, align 8, !tbaa !222
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 3 uses
  store ptr %i.s, ptr %8, align 8, !tbaa !223
  store i64 32, ptr %i.p, align 8, !tbaa !224
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 168 ; 4 uses
  store i32 0, ptr %i.t, align 8, !tbaa !228
  %i.u = and i32 %1, 1                            ; 2 uses
  %.not = icmp eq i32 %i.u, 0                     ; 3 uses
  %i.v = add nuw nsw i32 %i.u, 1                  ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.x = load i32, ptr %i.w, align 16, !tbaa !519 ; 5 uses
  %i.y = icmp sgt i32 %i.x, -1
  br i1 %i.y, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.z = load i128, ptr %0, align 16, !tbaa !520  ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %.05.i.i = phi i128 [ %i.z, %bb.b ], [ %i.ad, %bb.c ] ; 2 uses
  %.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ab, %bb.c ] ; 3 uses
  %i.aa = trunc i128 %.05.i.i to i32
  %i.ab = add nuw nsw i64 %.0.i.i, 1              ; 2 uses
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i
  store i32 %i.aa, ptr %i.ac, align 4, !tbaa !112
  %i.ad = lshr i128 %.05.i.i, 32                  ; 2 uses
  %.not.i.i = icmp eq i128 %i.ad, 0
  br i1 %.not.i.i, label %bb.d, label %bb.c, !llvm.loop !501

bb.d:                                             ; preds = %bb.c
  %.not8.i.i = icmp samesign ult i64 %.0.i.i, 32
  br i1 %.not8.i.i, label %bb.e, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i:   ; preds = %bb.d
  %i.ae = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i
  store ptr %i.ae, ptr %5, align 8, !tbaa !223
  store i64 48, ptr %i.a, align 8, !tbaa !224
  br label %bb.e

bb.e:                                             ; preds = %.noexc, %bb.d
  %i.af = phi i64 [ 32, %bb.d ], [ 48, %.noexc ]
  %..i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ab, i64 %i.af)
  store i64 %..i.i.i.i, ptr %i.c, align 8, !tbaa !229
  store i32 0, ptr %i.e, align 8, !tbaa !228
  %i.ag = add nuw nsw i32 %i.x, %i.v
  %i.ah = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.ag)
          to label %bb.f unwind label %.loopexit.split-lp ; 0 uses

bb.f:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %7, align 8, !tbaa !223
  store i32 1, ptr %i.ai, align 4, !tbaa !112
  %i.aj = load i64, ptr %i.k, align 8, !tbaa !224
  %.not8.i.i121.not = icmp eq i64 %i.aj, 0
  br i1 %.not8.i.i121.not, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %i.l, align 8, !tbaa !222
  invoke void %i.ak(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc124 unwind label %.loopexit.split-lp, !inline_history !502

.noexc124:                                        ; preds = %bb.g
  %.pre.i.i.i.i122 = load i64, ptr %i.k, align 8, !tbaa !224
  %i.al = icmp ne i64 %.pre.i.i.i.i122, 0
  %i.am = zext i1 %i.al to i64
  br label %bb.h

bb.h:                                             ; preds = %.noexc124, %bb.f
  %..i.i.i.i123 = phi i64 [ 1, %bb.f ], [ %i.am, %.noexc124 ]
  store i64 %..i.i.i.i123, ptr %i.m, align 8, !tbaa !229
  store i32 0, ptr %i.o, align 8, !tbaa !228
  %i.an = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.x)
          to label %bb.i unwind label %.loopexit.split-lp ; 0 uses

bb.i:                                             ; preds = %bb.h
  br i1 %.not, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %8, align 8, !tbaa !223
  store i32 1, ptr %i.ao, align 4, !tbaa !112
  %i.ap = load i64, ptr %i.p, align 8, !tbaa !224
  %.not8.i.i128.not = icmp eq i64 %i.ap, 0
  br i1 %.not8.i.i128.not, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aq = load ptr, ptr %i.q, align 8, !tbaa !222
  invoke void %i.aq(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef 1)
          to label %.noexc131 unwind label %.loopexit.split-lp, !inline_history !502

.noexc131:                                        ; preds = %bb.k
  %.pre.i.i.i.i129 = load i64, ptr %i.p, align 8, !tbaa !224
  %i.ar = icmp ne i64 %.pre.i.i.i.i129, 0
  %i.as = zext i1 %i.ar to i64
  br label %bb.l

bb.l:                                             ; preds = %.noexc131, %bb.j
  %..i.i.i.i130 = phi i64 [ 1, %bb.j ], [ %i.as, %.noexc131 ]
  store i64 %..i.i.i.i130, ptr %i.r, align 8, !tbaa !229
  store i32 0, ptr %i.t, align 8, !tbaa !228
  %i.at = add nuw nsw i32 %i.x, 1
  %i.au = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %8, i32 noundef %i.at)
          to label %bb.m unwind label %.loopexit.split-lp ; 0 uses

.loopexit451:                                     ; preds = %bb.u
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i705, %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i, %bb.e, %bb.h, %bb.l, %bb.m, %bb.n, %bb.p, %.loopexit452, %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, %bb.x, %bb.ab, %bb.ac, %bb.ad, %bb.g, %bb.k, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i143, %bb.w, %bb.af, %bb.ai
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.m:                                             ; preds = %bb.l, %bb.i
  %.079 = phi ptr [ null, %bb.i ], [ %8, %bb.l ]
  %i.av = load i32, ptr %4, align 4, !tbaa !112
  invoke void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.av)
          to label %bb.n unwind label %.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %extract.t = trunc i128 %i.z to i32
  %i.aw = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.v)
          to label %bb.aj unwind label %.loopexit.split-lp ; 0 uses

bb.o:                                             ; preds = %bb.a
  %i.ax = load i32, ptr %4, align 4, !tbaa !112   ; 2 uses
  %i.ay = icmp slt i32 %i.ax, 0
  br i1 %i.ay, label %bb.p, label %bb.y

bb.p:                                             ; preds = %bb.o
  %i.az = sub nsw i32 0, %i.ax
  invoke void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.az)
          to label %bb.q unwind label %.loopexit.split-lp

bb.q:                                             ; preds = %bb.p
  %i.ba = load i64, ptr %i.c, align 8, !tbaa !229 ; 7 uses
  %i.bb = load i64, ptr %i.k, align 8, !tbaa !224
  %i.bc = icmp ugt i64 %i.ba, %i.bb
  br i1 %i.bc, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i: ; preds = %bb.q
  %i.bd = load ptr, ptr %i.l, align 8, !tbaa !222
  invoke void %i.bd(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ba)
          to label %.noexc134 unwind label %.loopexit.split-lp, !inline_history !503

.noexc134:                                        ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i
  %.pre.i.i.i = load i64, ptr %i.k, align 8, !tbaa !224
  %..i.i8.i = call i64 @llvm.umin.i64(i64 %i.ba, i64 %.pre.i.i.i)
  store i64 %..i.i8.i, ptr %i.m, align 8, !tbaa !229
  %i.be = load ptr, ptr %5, align 8, !tbaa !223   ; 2 uses
  %.idx9.i = shl nuw nsw i64 %i.ba, 2
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx9.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i: ; preds = %bb.q
  store i64 %i.ba, ptr %i.m, align 8, !tbaa !229
  %i.bg = load ptr, ptr %5, align 8, !tbaa !223   ; 3 uses
  %.idx.i = shl nuw nsw i64 %i.ba, 2
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.ba, 0
  br i1 %.not6.i.i, label %.loopexit453, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i, %.noexc134
  %i.bi = phi ptr [ %i.bf, %.noexc134 ], [ %i.bh, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i ] ; 2 uses
  %i.bj = phi ptr [ %i.be, %.noexc134 ], [ %i.bg, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i ] ; 5 uses
  %i.bk = ptrtoaddr ptr %i.bj to i64              ; 2 uses
  %9 = load ptr, ptr %7, align 8, !tbaa !223      ; 4 uses
  %10 = ptrtoaddr ptr %i.bi to i64
  %i.bl = add i64 %10, -4
  %i.bm = sub i64 %i.bl, %i.bk                    ; 2 uses
  %i.bn = lshr i64 %i.bm, 2
  %i.bo = add nuw nsw i64 %i.bn, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.bm, 44
  %i.bp = ptrtoaddr ptr %9 to i64
  %i.bq = sub i64 %i.bk, %i.bp
  %diff.check = icmp ugt i64 %i.bq, -32
  %or.cond972 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond972, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.bo, 9223372036854775800     ; 3 uses
  %i.br = shl i64 %n.vec, 2                       ; 2 uses
  %i.bs = getelementptr i8, ptr %9, i64 %i.br
  %i.bt = getelementptr i8, ptr %i.bj, i64 %i.br
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bu = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %9, i64 %i.bu ; 2 uses
  %next.gep951 = getelementptr i8, ptr %i.bj, i64 %i.bu ; 2 uses
  %i.bv = getelementptr i8, ptr %next.gep951, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep951, align 4, !tbaa !112
  %wide.load952 = load <4 x i32>, ptr %i.bv, align 4, !tbaa !112
  %i.bw = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4, !tbaa !112
  store <4 x i32> %wide.load952, ptr %i.bw, align 4, !tbaa !112
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bx = icmp eq i64 %index.next, %n.vec
  br i1 %i.bx, label %middle.block, label %vector.body, !llvm.loop !504

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bo, %n.vec
  br i1 %cmp.n, label %.loopexit453.loopexit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %9, %.lr.ph.i.preheader.i ], [ %i.bs, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.bj, %.lr.ph.i.preheader.i ], [ %i.bt, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.ca, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.by, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.bz = load i32, ptr %.057.i.i, align 4, !tbaa !112
  %i.ca = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.bz, ptr %.08.i.i, align 4, !tbaa !112
  %.not.i.i133 = icmp eq ptr %i.by, %i.bi
  br i1 %.not.i.i133, label %.loopexit453.loopexit, label %.lr.ph.i.i, !llvm.loop !505

.loopexit453.loopexit:                            ; preds = %.lr.ph.i.i, %middle.block
  %.pre542.pre = load i64, ptr %i.c, align 8, !tbaa !229
  br label %.loopexit453

.loopexit453:                                     ; preds = %.loopexit453.loopexit, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i
  %.pre542 = phi i64 [ %.pre542.pre, %.loopexit453.loopexit ], [ 0, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i ] ; 8 uses
  %i.cb = phi ptr [ %i.bj, %.loopexit453.loopexit ], [ %i.bg, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i ] ; 2 uses
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !228 ; 2 uses
  store i32 %i.cc, ptr %i.o, align 8, !tbaa !228
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit453
  %i.cd = load i64, ptr %i.p, align 8, !tbaa !224
  %i.ce = icmp ugt i64 %.pre542, %i.cd
  br i1 %i.ce, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i143, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135

_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i143: ; preds = %bb.r
  %i.cf = load ptr, ptr %i.q, align 8, !tbaa !222
  invoke void %i.cf(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %.pre542)
          to label %.noexc147 unwind label %.loopexit.split-lp, !inline_history !503

.noexc147:                                        ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.thread.i143
  %.pre.i.i.i144 = load i64, ptr %i.p, align 8, !tbaa !224
  %..i.i8.i145 = call i64 @llvm.umin.i64(i64 %.pre542, i64 %.pre.i.i.i144)
  store i64 %..i.i8.i145, ptr %i.r, align 8, !tbaa !229
  %i.cg = load ptr, ptr %5, align 8, !tbaa !223   ; 2 uses
  %.idx9.i146 = shl nuw nsw i64 %.pre542, 2
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 %.idx9.i146
  br label %.lr.ph.i.preheader.i138

_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135: ; preds = %bb.r
  store i64 %.pre542, ptr %i.r, align 8, !tbaa !229
  %.idx.i136 = shl nuw nsw i64 %.pre542, 2
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cb, i64 %.idx.i136
  %.not6.i.i137 = icmp eq i64 %.pre542, 0
  br i1 %.not6.i.i137, label %.loopexit452, label %.lr.ph.i.preheader.i138

.lr.ph.i.preheader.i138:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135, %.noexc147
  %i.cj = phi ptr [ %i.ch, %.noexc147 ], [ %i.ci, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135 ] ; 2 uses
  %i.ck = phi ptr [ %i.cg, %.noexc147 ], [ %i.cb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135 ] ; 4 uses
  %i.cl = ptrtoaddr ptr %i.ck to i64              ; 2 uses
  %11 = load ptr, ptr %8, align 8, !tbaa !223     ; 4 uses
  %12 = ptrtoaddr ptr %i.cj to i64
  %i.cm = add i64 %12, -4
  %i.cn = sub i64 %i.cm, %i.cl                    ; 2 uses
  %i.co = lshr i64 %i.cn, 2
  %i.cp = add nuw nsw i64 %i.co, 1                ; 2 uses
  %min.iters.check957 = icmp ult i64 %i.cn, 44
  %i.cq = ptrtoaddr ptr %11 to i64
  %i.cr = sub i64 %i.cl, %i.cq
  %diff.check955 = icmp ugt i64 %i.cr, -32
  %or.cond974 = select i1 %min.iters.check957, i1 true, i1 %diff.check955
  br i1 %or.cond974, label %.lr.ph.i.i139.preheader, label %vector.ph958

vector.ph958:                                     ; preds = %.lr.ph.i.preheader.i138
  %n.vec959 = and i64 %i.cp, 9223372036854775800  ; 3 uses
  %i.cs = shl i64 %n.vec959, 2                    ; 2 uses
  %i.ct = getelementptr i8, ptr %11, i64 %i.cs
  %i.cu = getelementptr i8, ptr %i.ck, i64 %i.cs
  br label %vector.body960

vector.body960:                                   ; preds = %vector.body960, %vector.ph958
  %index961 = phi i64 [ 0, %vector.ph958 ], [ %index.next966, %vector.body960 ] ; 2 uses
  %i.cv = shl i64 %index961, 2                    ; 2 uses
  %next.gep962 = getelementptr i8, ptr %11, i64 %i.cv ; 2 uses
  %next.gep963 = getelementptr i8, ptr %i.ck, i64 %i.cv ; 2 uses
  %i.cw = getelementptr i8, ptr %next.gep963, i64 16
  %wide.load964 = load <4 x i32>, ptr %next.gep963, align 4, !tbaa !112
  %wide.load965 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !112
  %i.cx = getelementptr i8, ptr %next.gep962, i64 16
  store <4 x i32> %wide.load964, ptr %next.gep962, align 4, !tbaa !112
  store <4 x i32> %wide.load965, ptr %i.cx, align 4, !tbaa !112
  %index.next966 = add nuw i64 %index961, 8       ; 2 uses
  %i.cy = icmp eq i64 %index.next966, %n.vec959
  br i1 %i.cy, label %middle.block967, label %vector.body960, !llvm.loop !506

middle.block967:                                  ; preds = %vector.body960
  %cmp.n968 = icmp eq i64 %i.cp, %n.vec959
  br i1 %cmp.n968, label %.loopexit452.loopexit, label %.lr.ph.i.i139.preheader

.lr.ph.i.i139.preheader:                          ; preds = %.lr.ph.i.preheader.i138, %middle.block967
  %.08.i.i140.ph = phi ptr [ %11, %.lr.ph.i.preheader.i138 ], [ %i.ct, %middle.block967 ]
  %.057.i.i141.ph = phi ptr [ %i.ck, %.lr.ph.i.preheader.i138 ], [ %i.cu, %middle.block967 ]
  br label %.lr.ph.i.i139

.lr.ph.i.i139:                                    ; preds = %.lr.ph.i.i139.preheader, %.lr.ph.i.i139
  %.08.i.i140 = phi ptr [ %i.db, %.lr.ph.i.i139 ], [ %.08.i.i140.ph, %.lr.ph.i.i139.preheader ] ; 2 uses
  %.057.i.i141 = phi ptr [ %i.cz, %.lr.ph.i.i139 ], [ %.057.i.i141.ph, %.lr.ph.i.i139.preheader ] ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.057.i.i141, i64 4 ; 2 uses
  %i.da = load i32, ptr %.057.i.i141, align 4, !tbaa !112
  %i.db = getelementptr inbounds nuw i8, ptr %.08.i.i140, i64 4
  store i32 %i.da, ptr %.08.i.i140, align 4, !tbaa !112
  %.not.i.i142 = icmp eq ptr %i.cz, %i.cj
  br i1 %.not.i.i142, label %.loopexit452.loopexit, label %.lr.ph.i.i139, !llvm.loop !507

.loopexit452.loopexit:                            ; preds = %.lr.ph.i.i139, %middle.block967
  %.pre = load i32, ptr %i.e, align 8, !tbaa !228
  br label %.loopexit452

.loopexit452:                                     ; preds = %.loopexit452.loopexit, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135
  %i.dc = phi i32 [ %.pre, %.loopexit452.loopexit ], [ %i.cc, %_ZN3fmt3v1119basic_memory_bufferIjLm32ESaIjEE6resizeEm.exit.i135 ]
  store i32 %i.dc, ptr %i.t, align 8, !tbaa !228
  %i.dd = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %8, i32 noundef 1)
          to label %.loopexit452._crit_edge unwind label %.loopexit.split-lp ; 0 uses

.loopexit452._crit_edge:                          ; preds = %.loopexit452
  %.pre541 = load i64, ptr %i.c, align 8, !tbaa !229
  br label %bb.s

bb.s:                                             ; preds = %.loopexit452._crit_edge, %.loopexit453
  %i.de = phi i64 [ %.pre542, %.loopexit453 ], [ %.pre541, %.loopexit452._crit_edge ] ; 3 uses
  %.1 = phi ptr [ null, %.loopexit453 ], [ %8, %.loopexit452._crit_edge ]
  %i.df = load i128, ptr %0, align 16, !tbaa !520 ; 3 uses
  %i.dg = and i128 %i.df, 18446744073709551615
  %.not23.i.i = icmp eq i64 %i.de, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph.i.i149

.lr.ph.i.i149:                                    ; preds = %bb.s
  %i.dh = load ptr, ptr %5, align 8, !tbaa !223   ; 2 uses
  %i.di = lshr i128 %i.df, 32
  %i.dj = and i128 %i.di, 79228162514264337589248983040
  br label %bb.t

.preheader.i.i:                                   ; preds = %bb.t
  %.not20.i.i = icmp eq i128 %i.du, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.t:                                             ; preds = %bb.t, %.lr.ph.i.i149
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i149 ], [ %i.dw, %bb.t ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i149 ], [ %i.du, %bb.t ] ; 2 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.dh, i64 %.019.i.i ; 2 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !112
  %i.dm = zext i32 %i.dl to i128                  ; 2 uses
  %i.dn = mul nuw nsw i128 %i.dg, %i.dm
  %i.do = and i128 %.01718.i.i, 4294967295
  %i.dp = add nuw nsw i128 %i.dn, %i.do           ; 2 uses
  %i.dq = mul nuw i128 %i.dj, %i.dm
  %i.dr = lshr i128 %i.dp, 32
  %i.ds = lshr i128 %.01718.i.i, 32
  %i.dt = add nuw i128 %i.dq, %i.ds
  %i.du = add nuw i128 %i.dt, %i.dr               ; 3 uses
  %i.dv = trunc i128 %i.dp to i32
  store i32 %i.dv, ptr %i.dk, align 4, !tbaa !112
  %i.dw = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.dw, %i.de
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.t, !llvm.loop !508

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %i.dx = phi ptr [ %i.ee, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.dh, %.preheader.i.i ]
  %i.dy = phi i64 [ %.pre-phi.i.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.de, %.preheader.i.i ] ; 2 uses
  %.121.i.i = phi i128 [ %i.eh, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.du, %.preheader.i.i ] ; 2 uses
  %i.dz = trunc i128 %.121.i.i to i32
  %i.ea = add i64 %i.dy, 1                        ; 3 uses
  %i.eb = load i64, ptr %i.a, align 8, !tbaa !224
  %i.ec = icmp ugt i64 %i.ea, %i.eb
  br i1 %i.ec, label %bb.u, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.u:                                             ; preds = %.lr.ph22.i.i
  %i.ed = load ptr, ptr %i.b, align 8, !tbaa !222
  invoke void %i.ed(ptr noundef nonnull align 8 dereferenceable(172) %5, i64 noundef %i.ea)
          to label %.noexc152 unwind label %.loopexit451, !inline_history !509

.noexc152:                                        ; preds = %bb.u
  %.pre.i.i.i151 = load i64, ptr %i.c, align 8, !tbaa !229 ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i151, 1
  %.pre.i = load ptr, ptr %5, align 8, !tbaa !223
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %.noexc152, %.lr.ph22.i.i
  %i.ee = phi ptr [ %i.dx, %.lr.ph22.i.i ], [ %.pre.i, %.noexc152 ] ; 2 uses
  %.pre-phi.i.i.i = phi i64 [ %i.ea, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %.noexc152 ] ; 2 uses
  %i.ef = phi i64 [ %i.dy, %.lr.ph22.i.i ], [ %.pre.i.i.i151, %.noexc152 ]
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8, !tbaa !229
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %i.ef
  store i32 %i.dz, ptr %i.eg, align 4, !tbaa !112
  %i.eh = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i150 = icmp eq i128 %i.eh, 0
  br i1 %.not.i.i150, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !510

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i, %bb.s
  %i.ei = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.v)
          to label %bb.v unwind label %.loopexit.split-lp ; 0 uses

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit
  %i.ej = load ptr, ptr %6, align 8, !tbaa !223
  store i32 1, ptr %i.ej, align 4, !tbaa !112
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !224
  %.not8.i.i156.not = icmp eq i64 %i.ek, 0
  br i1 %.not8.i.i156.not, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.el = load ptr, ptr %i.g, align 8, !tbaa !222
  invoke void %i.el(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef 1)
          to label %.noexc159 unwind label %.loopexit.split-lp, !inline_history !502

.noexc159:                                        ; preds = %bb.w
  %.pre.i.i.i.i157 = load i64, ptr %i.f, align 8, !tbaa !224
  %i.em = icmp ne i64 %.pre.i.i.i.i157, 0
  %i.en = zext i1 %i.em to i64
  br label %bb.x

bb.x:                                             ; preds = %.noexc159, %bb.v
  %..i.i.i.i158 = phi i64 [ 1, %bb.v ], [ %i.en, %.noexc159 ]
  store i64 %..i.i.i.i158, ptr %i.h, align 8, !tbaa !229
  store i32 0, ptr %i.j, align 8, !tbaa !228
  %i.eo = load i32, ptr %i.w, align 16, !tbaa !519
  %i.ep = sub nsw i32 %i.v, %i.eo
  %extract.t636 = trunc i128 %i.df to i32
  %i.eq = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.ep)
          to label %bb.aj unwind label %.loopexit.split-lp ; 0 uses

bb.y:                                             ; preds = %bb.o
  %i.er = load i128, ptr %0, align 16, !tbaa !520 ; 2 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.z, %bb.y
  %.05.i.i161 = phi i128 [ %i.er, %bb.y ], [ %i.ev, %bb.z ] ; 2 uses
  %.0.i.i162 = phi i64 [ 0, %bb.y ], [ %i.et, %bb.z ] ; 3 uses
  %i.es = trunc i128 %.05.i.i161 to i32
  %i.et = add nuw nsw i64 %.0.i.i162, 1           ; 2 uses
  %i.eu = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %.0.i.i162
  store i32 %i.es, ptr %i.eu, align 4, !tbaa !112
  %i.ev = lshr i128 %.05.i.i161, 32               ; 2 uses
  %.not.i.i163 = icmp eq i128 %i.ev, 0
  br i1 %.not.i.i163, label %bb.aa, label %bb.z, !llvm.loop !501

bb.aa:                                            ; preds = %bb.z
  %.not8.i.i164 = icmp samesign ult i64 %.0.i.i162, 32
  br i1 %.not8.i.i164, label %bb.ab, label %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i705

_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i705: ; preds = %bb.aa
  %i.ew = invoke noalias noundef nonnull dereferenceable(192) ptr @_Znwm(i64 noundef 192) #37
          to label %.noexc167 unwind label %.loopexit.split-lp

.noexc167:                                        ; preds = %_ZNSt15__new_allocatorIjE8allocateEmPKv.exit.i705
  store ptr %i.ew, ptr %5, align 8, !tbaa !223
  store i64 48, ptr %i.a, align 8, !tbaa !224
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc167, %bb.aa
  %i.ex = phi i64 [ 32, %bb.aa ], [ 48, %.noexc167 ]
  %..i.i.i.i166 = call i64 @llvm.umin.i64(i64 %i.et, i64 %i.ex)
  store i64 %..i.i.i.i166, ptr %i.c, align 8, !tbaa !229
  store i32 0, ptr %i.e, align 8, !tbaa !228
  %i.ey = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %5, i32 noundef %i.v)
          to label %bb.ac unwind label %.loopexit.split-lp ; 0 uses

bb.ac:                                            ; preds = %bb.ab
  %i.ez = load i32, ptr %4, align 4, !tbaa !112
  invoke void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.ez)
          to label %bb.ad unwind label %.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  %i.fa = sub nsw i32 %i.v, %i.x
  %i.fb = invoke noundef nonnull align 8 dereferenceable(172) ptr @_ZN3fmt3v116detail6bigintlSEi(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.fa)
          to label %bb.ae unwind label %.loopexit.split-lp ; 0 uses

bb.ae:                                            ; preds = %bb.ad
  %i.fc = load ptr, ptr %7, align 8, !tbaa !223
  store i32 1, ptr %i.fc, align 4, !tbaa !112
  %i.fd = load i64, ptr %i.k, align 8, !tbaa !224
  %.not8.i.i172.not = icmp eq i64 %i.fd, 0
  br i1 %.not8.i.i172.not, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.fe = load ptr, ptr %i.l, align 8, !tbaa !222
  invoke void %i.fe(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef 1)
          to label %.noexc175 unwind label %.loopexit.split-lp, !inline_history !502

.noexc175:                                        ; preds = %bb.af
  %.pre.i.i.i.i173 = load i64, ptr %i.k, align 8, !tbaa !224
  %i.ff = icmp ne i64 %.pre.i.i.i.i173, 0
  %i.fg = zext i1 %i.ff to i64
  br label %bb.ag

bb.ag:                                            ; preds = %.noexc175, %bb.ae
  %..i.i.i.i174 = phi i64 [ 1, %bb.ae ], [ %i.fg, %.noexc175 ]
  store i64 %..i.i.i.i174, ptr %i.m, align 8, !tbaa !229
  store i32 0, ptr %i.o, align 8, !tbaa !228
  %extract.t637 = trunc i128 %i.er to i32         ; 2 uses
  br i1 %.not, label %bb.aj, label %bb.ah

end_hunk_0
