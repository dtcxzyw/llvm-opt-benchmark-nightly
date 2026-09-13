Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/signal?download=true
inline.NumInlined: 138
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@rb_f_kill:bb.a
  br i1 %exitcond109.not, label %.loopexit, label %.lr.ph82, !llvm.loop !96

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr align 8 @ruby_current_ec)
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !20
  store volatile ptr %i.v, ptr %i.a, align 8, !tbaa !20
  %.0..0..0..0..0..0..0..0..i.i = load volatile ptr, ptr %i.a, align 8, !tbaa !20
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.w = getelementptr i8, ptr %.0..0..0..0..0..0..0..0..i.i, i64 48
  %.val.i = load ptr, ptr %i.w, align 8, !tbaa !32
  %i.x = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !13
  %i.y = getelementptr i8, ptr %i.x, i64 40
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !98
  %i.aa = icmp eq ptr %.val.i, %i.z
  br i1 %i.aa, label %.lr.ph, label %.lr.ph.split.us.preheader

.lr.ph:                                           ; preds = %bb.j
  %i.ab = tail call i32 @getpid() #16
  %i.ac = freeze i32 %i.ab                        ; 5 uses
  %i.ad = icmp ne i32 %.039.fr, 0
  %i.ae = icmp ne i32 %i.ac, -1
  %or.cond = and i1 %i.ad, %i.ae
  %i.af = zext nneg i32 %.039.fr to i64
  %i.ag = getelementptr [4 x i8], ptr @signal_buff, i64 %i.af
  br i1 %or.cond, label %.lr.ph.split, label %.lr.ph.split.us.preheader

.lr.ph.split.us.preheader:                        ; preds = %bb.j, %.lr.ph
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph.split.us.preheader, %bb.m
  %indvars.iv = phi i64 [ 1, %.lr.ph.split.us.preheader ], [ %indvars.iv.next, %bb.m ] ; 2 uses
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %indvars.iv
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !17 ; 3 uses
  %i.aj = trunc i64 %i.ai to i1
  br i1 %i.aj, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us
  %i.ak = tail call i64 @rb_num2int(i64 noundef %i.ai) #16
  br label %rb_num2int_inline.exit52.us

bb.l:                                             ; preds = %.lr.ph.split.us
  %i.al = tail call i64 @rb_fix2int(i64 noundef %i.ai) #16
  br label %rb_num2int_inline.exit52.us

rb_num2int_inline.exit52.us:                      ; preds = %bb.l, %bb.k
  %.0.i51.us = phi i64 [ %i.al, %bb.l ], [ %i.ak, %bb.k ]
  %i.am = trunc i64 %.0.i51.us to i32
  %i.an = tail call i32 @kill(i32 noundef %i.am, i32 noundef %.039.fr) #16
  %i.ao = icmp slt i32 %i.an, 0
  br i1 %i.ao, label %.split.us, label %bb.m

bb.m:                                             ; preds = %rb_num2int_inline.exit52.us
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.split.us, !llvm.loop !97

.lr.ph.split:                                     ; preds = %.lr.ph
  %wide.trip.count102 = zext nneg i32 %0 to i64   ; 3 uses
  %switch.tableidx = add nsw i32 %.039.fr, -4     ; 2 uses
  %i.ap = icmp ult i32 %switch.tableidx, 16
  %switch.maskindex = trunc i32 %switch.tableidx to i16
  %switch.shifted = lshr i16 -32583, %switch.maskindex
  %switch.lobit = trunc i16 %switch.shifted to i1
  %or.cond151 = select i1 %i.ap, i1 %switch.lobit, i1 false
  br i1 %or.cond151, label %switch.lookup, label %.lr.ph.split.split.outer

.lr.ph.split.split.outer:                         ; preds = %.lr.ph.split, %.thread120
  %indvars.iv98.ph = phi i64 [ %indvars.iv.next99122, %.thread120 ], [ 1, %.lr.ph.split ]
  %i.aq = phi i1 [ false, %.thread120 ], [ true, %.lr.ph.split ]
  br label %.lr.ph.split.split

switch.lookup:                                    ; preds = %.lr.ph.split, %bb.r
  %indvars.iv92 = phi i64 [ %indvars.iv.next93, %bb.r ], [ 1, %.lr.ph.split ] ; 2 uses
  %i.ar = getelementptr [8 x i8], ptr %1, i64 %indvars.iv92
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !17 ; 3 uses
  %i.at = trunc i64 %i.as to i1
  br i1 %i.at, label %bb.o, label %bb.n

bb.n:                                             ; preds = %switch.lookup
  %i.au = tail call i64 @rb_num2int(i64 noundef %i.as) #16
  br label %rb_num2int_inline.exit52.us73

bb.o:                                             ; preds = %switch.lookup
  %i.av = tail call i64 @rb_fix2int(i64 noundef %i.as) #16
  br label %rb_num2int_inline.exit52.us73

rb_num2int_inline.exit52.us73:                    ; preds = %bb.o, %bb.n
  %.0.i51.us74 = phi i64 [ %i.av, %bb.o ], [ %i.au, %bb.n ]
  %i.aw = trunc i64 %.0.i51.us74 to i32           ; 2 uses
  %i.ax = icmp eq i32 %i.ac, %i.aw
  br i1 %i.ax, label %bb.q, label %bb.p

bb.p:                                             ; preds = %rb_num2int_inline.exit52.us73
  %i.ay = tail call i32 @kill(i32 noundef %i.aw, i32 noundef %.039.fr) #16
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %.split.us, label %bb.r

bb.q:                                             ; preds = %rb_num2int_inline.exit52.us73
  %i.ba = tail call i32 @kill(i32 noundef %i.ac, i32 noundef %.039.fr) #16 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %indvars.iv.next93 = add nuw nsw i64 %indvars.iv92, 1 ; 2 uses
  %exitcond97.not = icmp eq i64 %indvars.iv.next93, %wide.trip.count102
  br i1 %exitcond97.not, label %.loopexit, label %switch.lookup, !llvm.loop !97

.lr.ph.split.split:                               ; preds = %.lr.ph.split.split.outer, %bb.z
  %indvars.iv98 = phi i64 [ %indvars.iv.next99, %bb.z ], [ %indvars.iv98.ph, %.lr.ph.split.split.outer ] ; 3 uses
  %i.bb = getelementptr [8 x i8], ptr %1, i64 %indvars.iv98
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !17 ; 3 uses
  %i.bd = trunc i64 %i.bc to i1
  br i1 %i.bd, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.split.split
  %i.be = call i64 @rb_fix2int(i64 noundef %i.bc) #16
  br label %rb_num2int_inline.exit52

bb.t:                                             ; preds = %.lr.ph.split.split
  %i.bf = call i64 @rb_num2int(i64 noundef %i.bc) #16
  br label %rb_num2int_inline.exit52

rb_num2int_inline.exit52:                         ; preds = %bb.s, %bb.t
  %.0.i51 = phi i64 [ %i.be, %bb.s ], [ %i.bf, %bb.t ]
  %i.bg = trunc i64 %.0.i51 to i32                ; 2 uses
  %i.bh = icmp eq i32 %i.ac, %i.bg
  br i1 %i.bh, label %bb.u, label %bb.y

bb.u:                                             ; preds = %rb_num2int_inline.exit52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #16
  %i.bi = call i32 @sigaction(i32 noundef range(i32 1, -2147483648) %.039.fr, ptr noundef null, ptr noundef nonnull %2) #16
  %i.bj = icmp slt i32 %i.bi, 0
  br i1 %i.bj, label %signal_ignored.exit.thread, label %bb.v

signal_ignored.exit.thread:                       ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %.thread120

bb.v:                                             ; preds = %bb.u
  %i.bk = load ptr, ptr %2, align 8, !tbaa !56    ; 2 uses
  %i.bl = icmp eq ptr %i.bk, inttoptr (i64 1 to ptr)
  br i1 %i.bl, label %.thread, label %signal_ignored.exit

.thread:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br label %bb.z

signal_ignored.exit:                              ; preds = %bb.v
  %.not61 = icmp eq ptr %i.bk, @sighandler
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  br i1 %.not61, label %.thread120, label %bb.w

bb.w:                                             ; preds = %signal_ignored.exit
  %i.bm = call i32 @kill(i32 noundef %i.ac, i32 noundef %.039.fr) #16
  %.not49 = icmp eq i32 %i.bm, 0
  br i1 %.not49, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bn = call ptr @rb_errno_ptr() #16
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.bo, ptr noundef null) #18
  unreachable

bb.y:                                             ; preds = %rb_num2int_inline.exit52
  %i.bp = call i32 @kill(i32 noundef %i.bg, i32 noundef %.039.fr) #16
  %i.bq = icmp slt i32 %i.bp, 0
  br i1 %i.bq, label %.split.us, label %bb.z

.split.us:                                        ; preds = %rb_num2int_inline.exit52.us, %bb.y, %bb.p
  %i.br = call ptr @rb_errno_ptr() #16
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !10
  call void @rb_syserr_fail(i32 noundef %i.bs, ptr noundef null) #18
  unreachable

bb.z:                                             ; preds = %.thread, %bb.w, %bb.y
  %indvars.iv.next99 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond103.not = icmp eq i64 %indvars.iv.next99, %wide.trip.count102
  br i1 %exitcond103.not, label %._crit_edge, label %.lr.ph.split.split, !llvm.loop !97

.thread120:                                       ; preds = %signal_ignored.exit, %signal_ignored.exit.thread
  %i.bt = atomicrmw volatile add ptr %i.ag, i32 1 seq_cst, align 4 ; 0 uses
  %i.bu = atomicrmw volatile add ptr getelementptr inbounds nuw (i8, ptr @signal_buff, i64 260), i32 1 seq_cst, align 4 ; 0 uses
  %indvars.iv.next99122 = add nuw nsw i64 %indvars.iv98, 1 ; 2 uses
  %exitcond103.not123 = icmp eq i64 %indvars.iv.next99122, %wide.trip.count102
  br i1 %exitcond103.not123, label %._crit_edge.thread125, label %.lr.ph.split.split.outer, !llvm.loop !97

._crit_edge:                                      ; preds = %bb.z
  br i1 %i.aq, label %.loopexit, label %._crit_edge.thread125

._crit_edge.thread125:                            ; preds = %.thread120, %._crit_edge
  %i.bv = load ptr, ptr @ruby_current_vm_ptr, align 8, !tbaa !13
  %i.bw = getelementptr i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !98
  call void @rb_threadptr_check_signal(ptr noundef %i.bx) #16
  br label %.loopexit

.loopexit:                                        ; preds = %bb.m, %bb.r, %bb.i, %._crit_edge.thread125, %._crit_edge
  %i.by = call i64 @rb_thread_current() #16
  call void @rb_thread_execute_interrupts(i64 noundef %i.by) #16
  %3 = add nsw i32 %0, -1
  %4 = zext nneg i32 %3 to i64
  %5 = shl nuw nsw i64 %4, 1
  %6 = or disjoint i64 %5, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  ret i64 %6
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @signm2signo(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 2) %1, i32 noundef range(i32 0, 2) %2, ptr nofree noundef writeonly captures(address_is_null) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !tbaa !17     ; 9 uses
  %i.b = and i64 %i.a, 255
  %i.c = icmp eq i64 %i.b, 12
  br i1 %i.c, label %RB_SYMBOL_P.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp eq i64 %i.a, 0
  %i.e = and i64 %i.a, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rbimpl_RB_TYPE_P_fastpath.exit.thread, label %RB_SYMBOL_P.exit

RB_SYMBOL_P.exit:                                 ; preds = %bb.b
  %i.h = inttoptr i64 %i.a to ptr
  %i.i = load i64, ptr %i.h, align 8, !tbaa !58
  %i.j = and i64 %i.i, 31
  %i.k = icmp eq i64 %i.j, 20
  br i1 %i.k, label %RB_SYMBOL_P.exit.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

RB_SYMBOL_P.exit.thread:                          ; preds = %bb.a, %RB_SYMBOL_P.exit
  %i.l = tail call i64 @rb_sym2str(i64 noundef %i.a) #16
  br label %.sink.split

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %RB_SYMBOL_P.exit
  %i.m = inttoptr i64 %i.a to ptr
  %i.n = load i64, ptr %i.m, align 8, !tbaa !58
  %i.o = and i64 %i.n, 31
  %i.p = icmp eq i64 %i.o, 5
  br i1 %i.p, label %bb.d, label %rbimpl_RB_TYPE_P_fastpath.exit.thread

rbimpl_RB_TYPE_P_fastpath.exit.thread:            ; preds = %bb.b, %rbimpl_RB_TYPE_P_fastpath.exit
  %i.q = tail call i64 @rb_check_string_type(i64 noundef %i.a) #16 ; 2 uses
  %i.r = icmp eq i64 %i.q, 4
  br i1 %i.r, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread
  %i.s = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  %i.t = tail call ptr @rb_obj_classname(i64 noundef %i.a) #16
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.s, ptr noundef nonnull @.str.21, ptr noundef %i.t) #18
  unreachable

.sink.split:                                      ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread, %RB_SYMBOL_P.exit.thread
  %.sink = phi i64 [ %i.l, %RB_SYMBOL_P.exit.thread ], [ %i.q, %rbimpl_RB_TYPE_P_fastpath.exit.thread ] ; 2 uses
  store i64 %.sink, ptr %0, align 8, !tbaa !17
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %rbimpl_RB_TYPE_P_fastpath.exit
  %.059 = phi i64 [ %i.a, %rbimpl_RB_TYPE_P_fastpath.exit ], [ %.sink, %.sink.split ] ; 5 uses
  tail call void @rb_must_asciicompat(i64 noundef %.059) #16
  %i.u = inttoptr i64 %.059 to ptr                ; 3 uses
  %i.v = load i64, ptr %i.u, align 8, !tbaa !58
  %i.w = and i64 %i.v, 8192
  %.not.i = icmp eq i64 %i.w, 0
  %i.x = getelementptr i8, ptr %i.u, i64 24       ; 2 uses
  br i1 %.not.i, label %RSTRING_PTR.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !56
  br label %RSTRING_PTR.exit

RSTRING_PTR.exit:                                 ; preds = %bb.d, %bb.e
  %i.z = phi ptr [ %i.y, %bb.e ], [ %i.x, %bb.d ] ; 4 uses
  %i.aa = getelementptr i8, ptr %i.u, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !60 ; 6 uses
  %i.ac = tail call ptr @memchr(ptr noundef %i.z, i32 noundef 0, i64 noundef %i.ab) #24
  %.not = icmp eq ptr %i.ac, null
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %RSTRING_PTR.exit
  %i.ad = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ad, ptr noundef nonnull @.str.22) #18
  unreachable

bb.g:                                             ; preds = %RSTRING_PTR.exit
  %i.ae = icmp sgt i64 %i.ab, 0
  br i1 %i.ae, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  %i.af = load i8, ptr %i.z, align 1, !tbaa !56
  %i.ag = icmp eq i8 %i.af, 45
  br i1 %i.ag, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %.not68 = icmp eq i32 %1, 0
  br i1 %.not68, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.ah, ptr noundef nonnull @.str.23, i64 noundef %.059) #18
  unreachable

bb.k:                                             ; preds = %bb.g, %bb.h, %bb.i
  %.not74 = phi i1 [ false, %bb.i ], [ true, %bb.h ], [ true, %bb.g ]
  %.0 = phi i32 [ 1, %bb.i ], [ 0, %bb.h ], [ 0, %bb.g ] ; 4 uses
  %i.ai = add nuw nsw i32 %.0, 3                  ; 2 uses
  %i.aj = zext nneg i32 %i.ai to i64
  %.not69 = icmp slt i64 %i.ab, %i.aj
  br i1 %.not69, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ak = zext nneg i32 %.0 to i64
  %i.al = getelementptr i8, ptr %i.z, i64 %i.ak   ; 2 uses
  %i.am = load i16, ptr %i.al, align 1
  %i.an = xor i16 %i.am, 18771
  %i.ao = getelementptr i8, ptr %i.al, i64 2
  %i.ap = load i8, ptr %i.ao, align 1
  %i.aq = zext i8 %i.ap to i16
  %i.ar = xor i16 %i.aq, 71
  %i.as = or i16 %i.an, %i.ar
  %i.at = icmp ne i16 %i.as, 0
  %i.au = zext i1 %i.at to i32
  %i.av = icmp eq i32 %i.au, 0
  %spec.select = select i1 %i.av, i32 %i.ai, i32 %.0
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1 = phi i32 [ %.0, %bb.k ], [ %spec.select, %bb.l ] ; 4 uses
  %i.aw = zext nneg i32 %.1 to i64                ; 5 uses
  %.not70 = icmp sgt i64 %i.ab, %i.aw
  br i1 %.not70, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %bb.m
  %.not71 = icmp eq ptr %3, null
  br i1 %.not71, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  store i32 %.1, ptr %3, align 4, !tbaa !10
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ax = sub nuw nsw i64 %i.ab, %i.aw            ; 3 uses
  %i.ay = getelementptr i8, ptr %i.z, i64 %i.aw
  %i.az = icmp samesign ugt i64 %i.ax, 7
  br i1 %i.az, label %.loopexit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ba = xor i32 %2, 1
  %i.bb = zext nneg i32 %i.ba to i64
  %i.bc = getelementptr [12 x i8], ptr @siglist, i64 %i.bb ; 2 uses
  %i.bd = icmp ult ptr %i.bc, getelementptr inbounds nuw (i8, ptr @siglist, i64 408)
  br i1 %i.bd, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.q, %bb.t
  %.06178 = phi ptr [ %i.bm, %bb.t ], [ %i.bc, %bb.q ] ; 4 uses
  %bcmp73 = tail call i32 @bcmp(ptr %.06178, ptr %i.ay, i64 %i.ax)
  %i.be = icmp eq i32 %bcmp73, 0
  br i1 %i.be, label %bb.r, label %bb.t

bb.r:                                             ; preds = %.lr.ph
  %i.bf = getelementptr i8, ptr %.06178, i64 %i.ax
  %i.bg = load i8, ptr %i.bf, align 1, !tbaa !56
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bi = getelementptr i8, ptr %.06178, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !62 ; 2 uses
  %i.bk = sub i32 0, %i.bj
  %i.bl = select i1 %.not74, i32 %i.bj, i32 %i.bk
  ret i32 %i.bl

bb.t:                                             ; preds = %.lr.ph, %bb.r
  %i.bm = getelementptr i8, ptr %.06178, i64 12   ; 2 uses
  %i.bn = icmp ult ptr %i.bm, getelementptr inbounds nuw (i8, ptr @siglist, i64 408)
  br i1 %i.bn, label %.lr.ph, label %.loopexit, !llvm.loop !99

.loopexit:                                        ; preds = %bb.t, %bb.q, %bb.p, %bb.m
  %i.bo = icmp eq i32 %.1, 3
  br i1 %i.bo, label %bb.u, label %.sink.split90

.sink.split90:                                    ; preds = %.loopexit
  %i.bp = icmp sgt i32 %.1, 3                     ; 3 uses
  %i.bq = sub nsw i64 0, %i.aw
  %.sink92.p = select i1 %i.bp, i64 -1, i64 %i.bq
  %.sink92 = add i64 %i.ab, %.sink92.p
  %.sink91 = select i1 %i.bp, i64 1, i64 %i.aw
  %.2.ph = select i1 %i.bp, i32 0, i32 3
  %i.br = tail call i64 @rb_str_subseq(i64 noundef %.059, i64 noundef %.sink91, i64 noundef %.sink92) #16
  br label %bb.u

bb.u:                                             ; preds = %.sink.split90, %.loopexit
  %.160 = phi i64 [ %.059, %.loopexit ], [ %i.br, %.sink.split90 ]
  %.2 = phi i32 [ 0, %.loopexit ], [ %.2.ph, %.sink.split90 ]
  %i.bs = load i64, ptr @rb_eArgError, align 8, !tbaa !17
  tail call void (i64, ptr, ...) @rb_raise(i64 noundef %i.bs, ptr noundef nonnull @.str.24, i32 noundef %.2, ptr noundef nonnull @.str.39, i64 noundef %.160) #18
  unreachable
}

; Function Attrs: nounwind
declare i32 @killpg(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @rb_errno_ptr() local_unnamed_addr #4
end_hunk_0
