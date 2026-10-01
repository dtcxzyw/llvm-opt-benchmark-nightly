Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ipmi_bmc_sim?download=true
inline.NumInlined: 327
inline.NumDeleted: 39
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumUnrolled: 8
begin_hunk_0_@get_channel_info:bb.a

rsp_buffer_push.exit46:                           ; preds = %bb.s
  %i.ci = zext nneg i32 %i.cg to i64
  %i.cj = add nuw nsw i32 %i.cg, 1
  store i32 %i.cj, ptr %i.i, align 4
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 %i.ci
  store i8 %.0, ptr %i.ck, align 1
  %.pr54 = load i32, ptr %i.i, align 4            ; 3 uses
  %i.cl = icmp ugt i32 %.pr54, 299
  br i1 %i.cl, label %rsp_buffer_push.exit46.thread, label %bb.t

rsp_buffer_push.exit46.thread:                    ; preds = %bb.s, %rsp_buffer_push.exit46
  %i.cm = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.cm, align 2
  br label %rsp_buffer_push.exit47

bb.t:                                             ; preds = %rsp_buffer_push.exit46
  %i.cn = zext nneg i32 %.pr54 to i64
  %i.co = add nuw nsw i32 %.pr54, 1
  store i32 %i.co, ptr %i.i, align 4
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 %i.cn
  store i8 %.0, ptr %i.cp, align 1
  br label %rsp_buffer_push.exit47

bb.u:                                             ; preds = %rsp_buffer_push.exit45
  %i.cq = load i32, ptr %i.i, align 4             ; 3 uses
  %i.cr = icmp ugt i32 %i.cq, 299
  br i1 %i.cr, label %rsp_buffer_push.exit48.thread, label %rsp_buffer_push.exit48

rsp_buffer_push.exit48:                           ; preds = %bb.u
  %i.cs = zext nneg i32 %i.cq to i64
  %i.ct = add nuw nsw i32 %i.cq, 1
  store i32 %i.ct, ptr %i.i, align 4
  %i.cu = getelementptr inbounds nuw i8, ptr %3, i64 %i.cs
  store i8 0, ptr %i.cu, align 1
  %.pr55 = load i32, ptr %i.i, align 4            ; 3 uses
  %i.cv = icmp ugt i32 %.pr55, 299
  br i1 %i.cv, label %rsp_buffer_push.exit48.thread, label %bb.v

rsp_buffer_push.exit48.thread:                    ; preds = %bb.u, %rsp_buffer_push.exit48
  %i.cw = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.cw, align 2
  br label %rsp_buffer_push.exit47

bb.v:                                             ; preds = %rsp_buffer_push.exit48
  %i.cx = zext nneg i32 %.pr55 to i64
  %i.cy = add nuw nsw i32 %.pr55, 1
  store i32 %i.cy, ptr %i.i, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 %i.cx
  store i8 0, ptr %i.cz, align 1
  br label %rsp_buffer_push.exit47

rsp_buffer_push.exit47:                           ; preds = %bb.v, %rsp_buffer_push.exit48.thread, %bb.t, %rsp_buffer_push.exit46.thread, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @get_fru_area_info(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18736
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp ugt i32 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.f, align 2
  br label %rsp_buffer_push.exit10

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 6 uses
  %i.h = load i32, ptr %i.g, align 4              ; 3 uses
  %i.i = icmp ugt i32 %i.h, 299
  br i1 %i.i, label %rsp_buffer_push.exit9.thread, label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18740
  %i.k = load i16, ptr %i.j, align 4              ; 2 uses
  %i.l = trunc i16 %i.k to i8
  %i.m = zext nneg i32 %i.h to i64
  %i.n = add nuw nsw i32 %i.h, 1
  store i32 %i.n, ptr %i.g, align 4
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 %i.m
  store i8 %i.l, ptr %i.o, align 1
  %.pr = load i32, ptr %i.g, align 4              ; 3 uses
  %i.p = icmp ugt i32 %.pr, 299
  br i1 %i.p, label %rsp_buffer_push.exit9.thread, label %rsp_buffer_push.exit9

rsp_buffer_push.exit9:                            ; preds = %rsp_buffer_push.exit
  %i.q = lshr i16 %i.k, 8
  %i.r = trunc nuw i16 %i.q to i8
  %i.s = zext nneg i32 %.pr to i64
  %i.t = add nuw nsw i32 %.pr, 1
  store i32 %i.t, ptr %i.g, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  store i8 %i.r, ptr %i.u, align 1
  %.pre = load i32, ptr %i.g, align 4             ; 3 uses
  %i.v = icmp ugt i32 %.pre, 299
  br i1 %i.v, label %rsp_buffer_push.exit9.thread, label %bb.d

rsp_buffer_push.exit9.thread:                     ; preds = %rsp_buffer_push.exit, %bb.c, %rsp_buffer_push.exit9
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.w, align 2
  br label %rsp_buffer_push.exit10

bb.d:                                             ; preds = %rsp_buffer_push.exit9
  %i.x = zext nneg i32 %.pre to i64
  %i.y = add nuw nsw i32 %.pre, 1
  store i32 %i.y, ptr %i.g, align 4
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 %i.x
  store i8 0, ptr %i.z, align 1
  br label %rsp_buffer_push.exit10

rsp_buffer_push.exit10:                           ; preds = %bb.d, %rsp_buffer_push.exit9.thread, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @read_fru_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18736
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp ugt i32 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.f, align 2
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.h = load i16, ptr %i.g, align 1
  %i.i = zext i16 %i.h to i32                     ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18740
  %i.k = load i16, ptr %i.j, align 4
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = add nsw i32 %i.l, -1
  %.not30 = icmp sgt i32 %i.m, %i.i
  br i1 %.not30, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.n, align 2
  br label %.loopexit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18744
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = mul nuw nsw i32 %i.l, %i.c
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.u = load i8, ptr %i.t, align 1
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 %i.l, %i.i
  %i.x = tail call i32 @llvm.smin.i32(i32 %i.w, i32 %i.v) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 5 uses
  %i.z = load i32, ptr %i.y, align 4              ; 3 uses
  %i.aa = icmp ugt i32 %i.z, 299
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.ab, align 2
  br label %rsp_buffer_push.exit

bb.g:                                             ; preds = %bb.e
  %i.ac = trunc i32 %i.x to i8
  %i.ad = zext nneg i32 %i.z to i64
  %i.ae = add nuw nsw i32 %i.z, 1
  store i32 %i.ae, ptr %i.y, align 4
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 %i.ad
  store i8 %i.ac, ptr %i.af, align 1
  br label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.f, %bb.g
  %.not33 = icmp eq i32 %i.x, 0
  br i1 %.not33, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %rsp_buffer_push.exit
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 2 uses
  %i.ah = load i32, ptr %i.y, align 4             ; 2 uses
  %i.ai = icmp ugt i32 %i.ah, 299
  br i1 %i.ai, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  store i8 -58, ptr %i.ag, align 2
  br label %.loopexit

.lr.ph.splitthread-pre-split:                     ; preds = %rsp_buffer_push.exit31
  %.pr = load i32, ptr %i.y, align 4
  br label %.lr.ph.split

.lr.ph.split:                                     ; preds = %.lr.ph, %.lr.ph.splitthread-pre-split
  %i.aj = phi i32 [ %.pr, %.lr.ph.splitthread-pre-split ], [ %i.ah, %.lr.ph ] ; 3 uses
  %.032 = phi i32 [ %i.as, %.lr.ph.splitthread-pre-split ], [ 0, %.lr.ph ] ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 299
  br i1 %i.ak, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph.split
  store i8 -58, ptr %i.ag, align 2
  br label %rsp_buffer_push.exit31

bb.i:                                             ; preds = %.lr.ph.split
  %i.al = add i32 %.032, %i.i
  %i.am = sext i32 %i.al to i64
  %i.an = getelementptr inbounds i8, ptr %i.s, i64 %i.am
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = zext nneg i32 %i.aj to i64
  %i.aq = add nuw nsw i32 %i.aj, 1
  store i32 %i.aq, ptr %i.y, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %3, i64 %i.ap
  store i8 %i.ao, ptr %i.ar, align 1
  br label %rsp_buffer_push.exit31

rsp_buffer_push.exit31:                           ; preds = %bb.h, %bb.i
  %i.as = add nuw i32 %.032, 1                    ; 2 uses
  %exitcond.not = icmp eq i32 %i.as, %i.x
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph.splitthread-pre-split, !llvm.loop !25

.loopexit:                                        ; preds = %rsp_buffer_push.exit31, %.lr.ph.split.us, %rsp_buffer_push.exit, %bb.d, %bb.b
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal void @write_fru_data(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef captures(none) %3) #10 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 18736
  %i.e = load i32, ptr %i.d, align 8
  %.not = icmp ugt i32 %i.e, %i.c
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.f, align 2
  br label %rsp_buffer_push.exit

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.h = load i16, ptr %i.g, align 1              ; 2 uses
  %i.i = zext i16 %i.h to i32                     ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 18740
  %i.k = load i16, ptr %i.j, align 4
  %i.l = zext i16 %i.k to i32                     ; 3 uses
  %i.m = add nsw i32 %i.l, -1
  %.not26 = icmp sgt i32 %i.m, %i.i
  br i1 %.not26, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -52, ptr %i.n, align 2
  br label %rsp_buffer_push.exit

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 18744
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = mul nuw nsw i32 %i.l, %i.c
  %i.r = zext nneg i32 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.r
  %i.t = add i32 %2, -5
  %i.u = sub nsw i32 %i.l, %i.i
  %i.v = tail call i32 @llvm.umin.i32(i32 %i.t, i32 %i.u) ; 2 uses
  %i.w = zext i16 %i.h to i64
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.z = zext i32 %i.v to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.x, ptr noundef nonnull align 1 %i.y, i64 noundef range(i64 0, 4294967296) %i.z, i1 noundef false) #12
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4            ; 3 uses
  %i.ac = icmp ugt i32 %i.ab, 299
  br i1 %i.ac, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.ad, align 2
  br label %rsp_buffer_push.exit

bb.g:                                             ; preds = %bb.e
  %i.ae = trunc i32 %i.v to i8
  %i.af = zext nneg i32 %i.ab to i64
  %i.ag = add nuw nsw i32 %i.ab, 1
  store i32 %i.ag, ptr %i.aa, align 4
  %i.ah = getelementptr inbounds nuw i8, ptr %3, i64 %i.af
  store i8 %i.ae, ptr %i.ah, align 1
  br label %rsp_buffer_push.exit

rsp_buffer_push.exit:                             ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable
define internal void @get_sdr_rep_info(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, i32 %2, ptr nofree noundef captures(none) %3) #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 300 ; 28 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = icmp ugt i32 %i.b, 299
  br i1 %i.c, label %rsp_buffer_push.exit.thread, label %rsp_buffer_push.exit

rsp_buffer_push.exit.thread:                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 2
  store i8 -58, ptr %i.d, align 2
  br label %rsp_buffer_push.exit23.thread

rsp_buffer_push.exit:                             ; preds = %bb.a
  %i.e = zext nneg i32 %i.b to i64
  %i.f = add nuw nsw i32 %i.b, 1
  store i32 %i.f, ptr %i.a, align 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 %i.e
  store i8 81, ptr %i.g, align 1
  %.pr = load i32, ptr %i.a, align 4              ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 18708 ; 2 uses
  %i.i = icmp ugt i32 %.pr, 299
  br i1 %i.i, label %rsp_buffer_push.exit23.thread, label %rsp_buffer_push.exit20

rsp_buffer_push.exit20:                           ; preds = %rsp_buffer_push.exit
  %i.j = load i16, ptr %i.h, align 4
  %i.k = trunc i16 %i.j to i8
  %i.l = zext nneg i32 %.pr to i64
  %i.m = add nuw nsw i32 %.pr, 1
  store i32 %i.m, ptr %i.a, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 %i.l
  store i8 %i.k, ptr %i.n, align 1
  %.pre = load i32, ptr %i.a, align 4             ; 3 uses
  %i.o = icmp ugt i32 %.pre, 299
  br i1 %i.o, label %rsp_buffer_push.exit23.thread, label %rsp_buffer_push.exit21

rsp_buffer_push.exit21:                           ; preds = %rsp_buffer_push.exit20
  %i.p = load i16, ptr %i.h, align 4
  %i.q = lshr i16 %i.p, 8
  %i.r = trunc nuw i16 %i.q to i8
  %i.s = zext nneg i32 %.pre to i64
  %i.t = add nuw nsw i32 %.pre, 1
  store i32 %i.t, ptr %i.a, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 %i.s
  store i8 %i.r, ptr %i.u, align 1
  %.pr27 = load i32, ptr %i.a, align 4            ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 18704 ; 2 uses
  %i.w = icmp ugt i32 %.pr27, 299
  br i1 %i.w, label %rsp_buffer_push.exit23.thread, label %rsp_buffer_push.exit22

rsp_buffer_push.exit22:                           ; preds = %rsp_buffer_push.exit21
  %i.x = load i32, ptr %i.v, align 8
  %i.y = trunc i32 %i.x to i8
  %i.z = sub i8 0, %i.y
  %i.aa = zext nneg i32 %.pr27 to i64
  %i.ab = add nuw nsw i32 %.pr27, 1
  store i32 %i.ab, ptr %i.a, align 4
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 %i.aa
  store i8 %i.z, ptr %i.ac, align 1
  %.pre35 = load i32, ptr %i.a, align 4           ; 3 uses
  %i.ad = icmp ugt i32 %.pre35, 299
  br i1 %i.ad, label %rsp_buffer_push.exit23.thread, label %rsp_buffer_push.exit23

rsp_buffer_push.exit23.thread:                    ; preds = %rsp_buffer_push.exit21, %rsp_buffer_push.exit.thread, %rsp_buffer_push.exit, %rsp_buffer_push.exit20, %rsp_buffer_push.exit22
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 2
  br label %.preheader.thread

rsp_buffer_push.exit23:                           ; preds = %rsp_buffer_push.exit22
  %i.af = load i32, ptr %i.v, align 8
  %i.ag = sub i32 16384, %i.af
  %i.ah = lshr i32 %i.ag, 8
  %i.ai = trunc i32 %i.ah to i8
  %i.aj = zext nneg i32 %.pre35 to i64
  %i.ak = add nuw nsw i32 %.pre35, 1
  store i32 %i.ak, ptr %i.a, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %3, i64 %i.aj
  store i8 %i.ai, ptr %i.al, align 1
  %.pre36 = load i32, ptr %i.a, align 4           ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %3, i64 2 ; 7 uses
  %i.an = icmp ugt i32 %.pre36, 299
  br i1 %i.an, label %.preheader.thread, label %rsp_buffer_push.exit24

.preheader.thread:                                ; preds = %rsp_buffer_push.exit23, %rsp_buffer_push.exit23.thread
  %i.ao = phi ptr [ %i.ae, %rsp_buffer_push.exit23.thread ], [ %i.am, %rsp_buffer_push.exit23 ] ; 2 uses
  store i8 -58, ptr %i.ao, align 2
  br label %.preheader.split30.us

.preheader:                                       ; preds = %rsp_buffer_push.exit24.2
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 18715
  %i.aq = load i8, ptr %i.ap, align 1
  %i.ar = zext nneg i32 %.pre39 to i64
  %i.as = add nuw nsw i32 %.pre39, 1
  store i32 %i.as, ptr %i.a, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 %i.ar
  store i8 %i.aq, ptr %i.at, align 1
  %.pre40.pre = load i32, ptr %i.a, align 4       ; 3 uses
  %i.au = icmp ugt i32 %.pre40.pre, 299
  br i1 %i.au, label %.preheader.split30.us, label %rsp_buffer_push.exit25

.preheader.split30.us:                            ; preds = %.preheader.thread68, %.preheader.thread, %.preheader
  %i.av = phi ptr [ %i.ao, %.preheader.thread ], [ %i.am, %.preheader ], [ %i.am, %.preheader.thread68 ] ; 2 uses
  store i8 -58, ptr %i.av, align 2
  br label %.split.us.thread

rsp_buffer_push.exit24:                           ; preds = %rsp_buffer_push.exit23
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 18712
  %i.ax = load i8, ptr %i.aw, align 8
  %i.ay = zext nneg i32 %.pre36 to i64
  %i.az = add nuw nsw i32 %.pre36, 1
  store i32 %i.az, ptr %i.a, align 4
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 %i.ay
  store i8 %i.ax, ptr %i.ba, align 1
  %.pre37 = load i32, ptr %i.a, align 4           ; 3 uses
  %i.bb = icmp ugt i32 %.pre37, 299
  br i1 %i.bb, label %.preheader.thread68, label %rsp_buffer_push.exit24.1

rsp_buffer_push.exit24.1:                         ; preds = %rsp_buffer_push.exit24
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 18713
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = zext nneg i32 %.pre37 to i64
  %i.bf = add nuw nsw i32 %.pre37, 1
  store i32 %i.bf, ptr %i.a, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %3, i64 %i.be
  store i8 %i.bd, ptr %i.bg, align 1
  %.pre38 = load i32, ptr %i.a, align 4           ; 3 uses
  %i.bh = icmp ugt i32 %.pre38, 299
end_hunk_0
