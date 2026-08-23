Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ipmi_bmc_sim?download=true
inline.NumInlined: 327
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@set_sensor_evt_enable:bb.a
  %i.bc = zext i8 %i.bb to i16
  %i.bd = xor i16 %i.bc, -1
  %i.be = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.bf = load i16, ptr %i.be, align 4
  %i.bg = and i16 %i.bf, %i.bd                    ; 2 uses
  store i16 %i.bg, ptr %i.be, align 4
  %.not43 = icmp eq i32 %2, 7
  br i1 %.not43, label %.thread36, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bi = load i8, ptr %i.bh, align 1
  %i.bj = zext i8 %i.bi to i16
  %i.bk = shl nuw i16 %i.bj, 8
  %i.bl = xor i16 %i.bk, -1
  %i.bm = and i16 %i.bg, %i.bl
  store i16 %i.bm, ptr %i.be, align 4
  br label %.thread36

bb.o:                                             ; preds = %bb.d
  %i.bn = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.bn, align 2
  br label %bb.p

default.unreachable47:                            ; preds = %bb.d
  unreachable

.thread36:                                        ; preds = %bb.j, %bb.k, %bb.l, %bb.e, %bb.f, %bb.g, %bb.m, %bb.n, %bb.h, %bb.i, %bb.d
  %i.bo = and i8 %i.g, 63
  %i.bp = load i8, ptr %i.j, align 1
  %i.bq = and i8 %i.bp, -64
  %i.br = or disjoint i8 %i.bq, %i.bo
  store i8 %i.br, ptr %i.f, align 4
  br label %bb.p

bb.p:                                             ; preds = %.thread36, %bb.o, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @get_sensor_evt_enable(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, 19
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.e = zext nneg i8 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.f, align 4               ; 2 uses
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -53, ptr %i.i, align 2
  br label %rsp_buffer_push.exit19

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 10 uses
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp ugt i32 %i.k, 299
  br i1 %i.l, label %rsp_buffer_push.exit18.thread, label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.d
  %i.m = and i8 %i.g, -64
  %i.n = zext nneg i32 %i.k to i64
  %i.o = add nuw nsw i32 %i.k, 1
  store i32 %i.o, ptr %i.j, align 4
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 %i.n
  store i8 %i.m, ptr %i.p, align 1
  %.pr = load i32, ptr %i.j, align 4              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 14 ; 2 uses
  %i.r = icmp ugt i32 %.pr, 299
  br i1 %i.r, label %rsp_buffer_push.exit18.thread, label %rsp_buffer_push.exit16

rsp_buffer_push.exit16:                           ; preds = %rsp_buffer_push.exit
  %i.s = load i16, ptr %i.q, align 2
  %i.t = trunc i16 %i.s to i8
  %i.u = zext nneg i32 %.pr to i64
  %i.v = add nuw nsw i32 %.pr, 1
  store i32 %i.v, ptr %i.j, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  store i8 %i.t, ptr %i.w, align 1
  %.pre = load i32, ptr %i.j, align 4             ; 3 uses
  %i.x = icmp ugt i32 %.pre, 299
  br i1 %i.x, label %rsp_buffer_push.exit18.thread, label %rsp_buffer_push.exit17

rsp_buffer_push.exit17:                           ; preds = %rsp_buffer_push.exit16
  %i.y = load i16, ptr %i.q, align 2
  %i.z = lshr i16 %i.y, 8
  %i.aa = trunc nuw i16 %i.z to i8
  %i.ab = zext nneg i32 %.pre to i64
  %i.ac = add nuw nsw i32 %.pre, 1
  store i32 %i.ac, ptr %i.j, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  store i8 %i.aa, ptr %i.ad, align 1
  %.pr20 = load i32, ptr %i.j, align 4            ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %i.af = icmp ugt i32 %.pr20, 299
  br i1 %i.af, label %rsp_buffer_push.exit18.thread, label %rsp_buffer_push.exit18

rsp_buffer_push.exit18:                           ; preds = %rsp_buffer_push.exit17
  %i.ag = load i16, ptr %i.ae, align 4
  %i.ah = trunc i16 %i.ag to i8
  %i.ai = zext nneg i32 %.pr20 to i64
  %i.aj = add nuw nsw i32 %.pr20, 1
  store i32 %i.aj, ptr %i.j, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.ai
  store i8 %i.ah, ptr %i.ak, align 1
  %.pre21 = load i32, ptr %i.j, align 4           ; 3 uses
  %i.al = icmp ugt i32 %.pre21, 299
  br i1 %i.al, label %rsp_buffer_push.exit18.thread, label %bb.e

rsp_buffer_push.exit18.thread:                    ; preds = %rsp_buffer_push.exit17, %rsp_buffer_push.exit, %bb.d, %rsp_buffer_push.exit16, %rsp_buffer_push.exit18
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.am, align 2
  br label %rsp_buffer_push.exit19

bb.e:                                             ; preds = %rsp_buffer_push.exit18
  %i.an = load i16, ptr %i.ae, align 4
  %i.ao = lshr i16 %i.an, 8
  %i.ap = trunc nuw i16 %i.ao to i8
  %i.aq = zext nneg i32 %.pre21 to i64
  %i.ar = add nuw nsw i32 %.pre21, 1
  store i32 %i.ar, ptr %i.j, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.aq
  store i8 %i.ap, ptr %i.as, align 1
  br label %rsp_buffer_push.exit19

rsp_buffer_push.exit19:                           ; preds = %bb.e, %rsp_buffer_push.exit18.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @rearm_sensor_evts(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, 19
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.e = zext nneg i8 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e ; 2 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -53, ptr %i.i, align 2
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1
  %i.l = icmp sgt i8 %i.k, -1
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i16 0, ptr %i.m, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @get_sensor_evt_status(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, 19
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.e = zext nneg i8 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e ; 5 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -53, ptr %i.i, align 2
  br label %rsp_buffer_push.exit22

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 12 uses
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp ugt i32 %i.k, 299
  br i1 %i.l, label %rsp_buffer_push.exit18.thread, label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext nneg i32 %i.k to i64
  %i.p = add nuw nsw i32 %i.k, 1
  store i32 %i.p, ptr %i.j, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  store i8 %i.n, ptr %i.q, align 1
  %.pr = load i32, ptr %i.j, align 4              ; 3 uses
  %i.r = icmp ugt i32 %.pr, 299
  br i1 %i.r, label %rsp_buffer_push.exit18.thread, label %rsp_buffer_push.exit18

rsp_buffer_push.exit18.thread:                    ; preds = %bb.d, %rsp_buffer_push.exit
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %4, align 2
  br label %rsp_buffer_push.exit21.thread

rsp_buffer_push.exit18:                           ; preds = %rsp_buffer_push.exit
  %i.s = load i8, ptr %i.f, align 4
  %i.t = and i8 %i.s, -64
  %i.u = zext nneg i32 %.pr to i64
  %i.v = add nuw nsw i32 %.pr, 1
  store i32 %i.v, ptr %i.j, align 4
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 %i.u
  store i8 %i.t, ptr %i.w, align 1
  %.pre = load i32, ptr %i.j, align 4             ; 3 uses
  %i.x = icmp ugt i32 %.pre, 299
  br i1 %i.x, label %rsp_buffer_push.exit21.thread, label %rsp_buffer_push.exit19

rsp_buffer_push.exit19:                           ; preds = %rsp_buffer_push.exit18
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 10 ; 2 uses
  %i.z = load i16, ptr %i.y, align 2
  %i.aa = trunc i16 %i.z to i8
  %i.ab = zext nneg i32 %.pre to i64
  %i.ac = add nuw nsw i32 %.pre, 1
  store i32 %i.ac, ptr %i.j, align 4
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 %i.ab
  store i8 %i.aa, ptr %i.ad, align 1
  %.pr23 = load i32, ptr %i.j, align 4            ; 3 uses
  %i.ae = icmp ugt i32 %.pr23, 299
  br i1 %i.ae, label %rsp_buffer_push.exit21.thread, label %rsp_buffer_push.exit20

rsp_buffer_push.exit20:                           ; preds = %rsp_buffer_push.exit19
  %i.af = load i16, ptr %i.y, align 2
  %i.ag = lshr i16 %i.af, 8
  %i.ah = trunc nuw i16 %i.ag to i8
  %i.ai = zext nneg i32 %.pr23 to i64
  %i.aj = add nuw nsw i32 %.pr23, 1
  store i32 %i.aj, ptr %i.j, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %3, i64 %i.ai
  store i8 %i.ah, ptr %i.ak, align 1
  %.pre25 = load i32, ptr %i.j, align 4           ; 3 uses
  %i.al = icmp ugt i32 %.pre25, 299
  br i1 %i.al, label %rsp_buffer_push.exit21.thread, label %rsp_buffer_push.exit21

rsp_buffer_push.exit21:                           ; preds = %rsp_buffer_push.exit20
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 12 ; 2 uses
  %i.an = load i16, ptr %i.am, align 4
  %i.ao = trunc i16 %i.an to i8
  %i.ap = zext nneg i32 %.pre25 to i64
  %i.aq = add nuw nsw i32 %.pre25, 1
  store i32 %i.aq, ptr %i.j, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  store i8 %i.ao, ptr %i.ar, align 1
  %.pr24 = load i32, ptr %i.j, align 4            ; 3 uses
  %i.as = icmp ugt i32 %.pr24, 299
  br i1 %i.as, label %rsp_buffer_push.exit21.thread, label %bb.e

rsp_buffer_push.exit21.thread:                    ; preds = %rsp_buffer_push.exit20, %rsp_buffer_push.exit18, %rsp_buffer_push.exit18.thread, %rsp_buffer_push.exit19, %rsp_buffer_push.exit21
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.at, align 2
  br label %rsp_buffer_push.exit22

bb.e:                                             ; preds = %rsp_buffer_push.exit21
  %i.au = load i16, ptr %i.am, align 4
  %i.av = lshr i16 %i.au, 8
  %i.aw = trunc nuw i16 %i.av to i8
  %i.ax = zext nneg i32 %.pr24 to i64
  %i.ay = add nuw nsw i32 %.pr24, 1
  store i32 %i.ay, ptr %i.j, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 %i.ax
  store i8 %i.aw, ptr %i.az, align 1
  br label %rsp_buffer_push.exit22

rsp_buffer_push.exit22:                           ; preds = %bb.e, %rsp_buffer_push.exit21.thread, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @get_sensor_reading(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, 19
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.e = zext nneg i8 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e ; 6 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -53, ptr %i.i, align 2
  br label %rsp_buffer_push.exit18

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 8 uses
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp ugt i32 %i.k, 299
  br i1 %i.l, label %rsp_buffer_push.exit16.thread, label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.n = load i8, ptr %i.m, align 1
  %i.o = zext nneg i32 %i.k to i64
  %i.p = add nuw nsw i32 %i.k, 1
  store i32 %i.p, ptr %i.j, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  store i8 %i.n, ptr %i.q, align 1
  %.pr = load i32, ptr %i.j, align 4              ; 3 uses
  %i.r = icmp ugt i32 %.pr, 299
  br i1 %i.r, label %rsp_buffer_push.exit16.thread, label %rsp_buffer_push.exit16

rsp_buffer_push.exit16.thread:                    ; preds = %bb.d, %rsp_buffer_push.exit
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  br label %bb.e

rsp_buffer_push.exit16:                           ; preds = %rsp_buffer_push.exit
  %i.t = load i8, ptr %i.f, align 4
  %i.u = and i8 %i.t, -64
  %i.v = zext nneg i32 %.pr to i64
  %i.w = add nuw nsw i32 %.pr, 1
  store i32 %i.w, ptr %i.j, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 %i.v
  store i8 %i.u, ptr %i.x, align 1
  %.pre = load i32, ptr %i.j, align 4             ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.z = icmp ugt i32 %.pre, 299
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %rsp_buffer_push.exit16.thread, %rsp_buffer_push.exit16
  %i.aa = phi ptr [ %i.s, %rsp_buffer_push.exit16.thread ], [ %i.y, %rsp_buffer_push.exit16 ]
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.ab, align 2
  br label %rsp_buffer_push.exit17

bb.f:                                             ; preds = %rsp_buffer_push.exit16
  %i.ac = load i16, ptr %i.y, align 4
  %i.ad = trunc i16 %i.ac to i8
  %i.ae = zext nneg i32 %.pre to i64
  %i.af = add nuw nsw i32 %.pre, 1
  store i32 %i.af, ptr %i.j, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 %i.ae
  store i8 %i.ad, ptr %i.ag, align 1
  br label %rsp_buffer_push.exit17

rsp_buffer_push.exit17:                           ; preds = %bb.e, %bb.f
  %i.ah = phi ptr [ %i.aa, %bb.e ], [ %i.y, %bb.f ]
  %i.ai = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  %i.aj = load i8, ptr %i.ai, align 1
  %.not15 = icmp eq i8 %i.aj, 1
  br i1 %.not15, label %rsp_buffer_push.exit18, label %bb.g

bb.g:                                             ; preds = %rsp_buffer_push.exit17
  %i.ak = load i32, ptr %i.j, align 4             ; 3 uses
  %i.al = icmp ugt i32 %i.ak, 299
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.am, align 2
  br label %rsp_buffer_push.exit18

bb.i:                                             ; preds = %bb.g
  %i.an = load i16, ptr %i.ah, align 2
  %i.ao = lshr i16 %i.an, 8
  %i.ap = trunc nuw i16 %i.ao to i8
  %i.aq = zext nneg i32 %i.ak to i64
  %i.ar = add nuw nsw i32 %i.ak, 1
  store i32 %i.ar, ptr %i.j, align 4
  %i.as = getelementptr inbounds nuw i8, ptr %3, i64 %i.aq
  store i8 %i.ap, ptr %i.as, align 1
  br label %rsp_buffer_push.exit18

rsp_buffer_push.exit18:                           ; preds = %bb.i, %bb.h, %rsp_buffer_push.exit17, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @set_sensor_type(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef writeonly captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, 19
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.e = zext nneg i8 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -53, ptr %i.i, align 2
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  store i8 %i.k, ptr %i.l, align 2
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.n = load i8, ptr %i.m, align 1
  %i.o = and i8 %i.n, 127
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 19
  store i8 %i.o, ptr %i.p, align 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @get_sensor_type(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1               ; 2 uses
  %i.c = icmp ugt i8 %i.b, 19
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18752
  %i.e = zext nneg i8 %i.b to i64
  %i.f = getelementptr inbounds nuw [20 x i8], ptr %i.d, i64 %i.e ; 3 uses
  %i.g = load i8, ptr %i.f, align 4
  %i.h = and i8 %i.g, 1
  %.not = icmp eq i8 %i.h, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -53, ptr %i.i, align 2
  br label %rsp_buffer_push.exit10

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 4 uses
  %i.k = load i32, ptr %i.j, align 4              ; 3 uses
  %i.l = icmp ugt i32 %i.k, 299
  br i1 %i.l, label %rsp_buffer_push.exit.thread, label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 18
  %i.n = load i8, ptr %i.m, align 2
  %i.o = zext nneg i32 %i.k to i64
  %i.p = add nuw nsw i32 %i.k, 1
  store i32 %i.p, ptr %i.j, align 4
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 %i.o
  store i8 %i.n, ptr %i.q, align 1
  %.pr = load i32, ptr %i.j, align 4              ; 3 uses
  %i.r = icmp ugt i32 %.pr, 299
end_hunk_0
