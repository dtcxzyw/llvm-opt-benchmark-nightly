Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/wireshark/original/packet-sdp?download=true
inline.NumInlined: 70
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@complete_descriptions:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv94 = phi i64 [ %indvars.iv128, %.lr.ph ], [ %indvars.iv.next95, %bb.b ] ; 2 uses
  %i.u = getelementptr [184 x i8], ptr %i.i, i64 %indvars.iv94
  %i.v = getelementptr i8, ptr %i.u, i64 10
  %i.w = load i16, ptr %i.v, align 2
  %i.x = icmp eq i16 %i.t, %i.w
  %spec.select = select i1 %i.x, ptr %i.r, ptr null ; 2 uses
  %indvars.iv.next95 = add nuw nsw i64 %indvars.iv94, 1 ; 2 uses
  %i.y = icmp samesign ult i64 %indvars.iv.next95, %i.l
  %.not76 = icmp eq ptr %spec.select, null
  %or.cond78 = select i1 %i.y, i1 %.not76, i1 false
  br i1 %or.cond78, label %bb.b, label %.critedge2.loopexit, !llvm.loop !15

bb.c:                                             ; preds = %.lr.ph88, %.loopexit
  %indvars.iv100 = phi i64 [ %i.k, %.lr.ph88 ], [ %indvars.iv.next101, %.loopexit ] ; 2 uses
  %.idx = mul i64 %indvars.iv100, 184             ; 2 uses
  %i.z = getelementptr i8, ptr %i.i, i64 %.idx    ; 4 uses
  %i.aa = load i16, ptr %i.n, align 2
  %i.ab = getelementptr i8, ptr %i.z, i64 10
  %i.ac = load i16, ptr %i.ab, align 2
  %i.ad = icmp eq i16 %i.aa, %i.ac
  br i1 %i.ad, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.ae = getelementptr i8, ptr %i.z, i64 8
  store i8 1, ptr %i.ae, align 8
  %.not75 = icmp eq i64 %.idx, %.idx123
  br i1 %.not75, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = getelementptr i8, ptr %i.z, i64 4
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = load i32, ptr %i.o, align 4
  %i.ai = or i32 %i.ah, %i.ag
  store i32 %i.ai, ptr %i.o, align 4
  %i.aj = getelementptr i8, ptr %i.z, i64 136
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.h
  %.06486 = phi i32 [ 0, %bb.e ], [ %i.ar, %bb.h ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #12
  %i.ak = load ptr, ptr %i.aj, align 8
  %i.al = call zeroext i1 @rtp_dyn_payload_get_full(ptr noundef %i.ak, i32 noundef %.06486, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d)
  br i1 %i.al, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.am = load ptr, ptr %i.p, align 8
  %i.an = load ptr, ptr %i.a, align 8
  %i.ao = load i32, ptr %i.b, align 4
  %i.ap = load i32, ptr %i.c, align 4
  %i.aq = load ptr, ptr %i.d, align 8
  call void @rtp_dyn_payload_insert_full(ptr noundef %i.am, i32 noundef %.06486, ptr noundef %i.an, i32 noundef %i.ao, i32 noundef %i.ap, ptr noundef %i.aq)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #12
  %i.ar = add nuw nsw i32 %.06486, 1              ; 2 uses
  %exitcond.not = icmp eq i32 %i.ar, 128
  br i1 %exitcond.not, label %.loopexit, label %bb.f, !llvm.loop !16

.loopexit:                                        ; preds = %bb.h, %bb.d, %bb.c
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %lftr.wideiv = trunc i64 %indvars.iv.next101 to i32
  %exitcond103.not = icmp eq i32 %i.g, %lftr.wideiv
  br i1 %exitcond103.not, label %.lr.ph90, label %bb.c, !llvm.loop !17

.lr.ph90:                                         ; preds = %.lr.ph83, %.loopexit, %.lr.ph83.preheader
  %.not73 = icmp eq i32 %1, 0
  %i.as = zext i32 %1 to i64                      ; 2 uses
  br label %bb.i

._crit_edge:                                      ; preds = %bb.s, %bb.a
  ret void

bb.i:                                             ; preds = %.lr.ph90, %bb.s
  %indvars.iv104 = phi i64 [ %i.as, %.lr.ph90 ], [ %indvars.iv.next105, %bb.s ] ; 3 uses
  %i.at = getelementptr [184 x i8], ptr %i.i, i64 %indvars.iv104 ; 13 uses
  %i.au = getelementptr i8, ptr %i.at, i64 12     ; 2 uses
  %i.av = load i16, ptr %i.au, align 4
  %i.aw = icmp eq i16 %i.av, 0
  br i1 %i.aw, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.ax = getelementptr i8, ptr %i.at, i64 10
  %i.ay = load i16, ptr %i.ax, align 2
  %i.az = add i16 %i.ay, 1
  store i16 %i.az, ptr %i.au, align 4
  br label %.thread

.thread:                                          ; preds = %bb.j, %bb.i
  br i1 %.not73, label %bb.m, label %bb.k

bb.k:                                             ; preds = %.thread
  %i.ba = getelementptr i8, ptr %i.at, i64 10
  %i.bb = load i16, ptr %i.ba, align 2
  %i.bc = icmp eq i16 %i.bb, 0
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = sub nuw nsw i64 %indvars.iv104, %i.as
  %i.be = getelementptr [184 x i8], ptr %i.i, i64 %i.bd
  %i.bf = getelementptr i8, ptr %i.be, i64 10
  store i16 0, ptr %i.bf, align 2
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.l, %.thread
  %i.bg = load i32, ptr %i.at, align 8
  %i.bh = icmp eq i32 %i.bg, 4
  %i.bi = load ptr, ptr @msrp_handle, align 8
  %i.bj = icmp ne ptr %i.bi, null
  %or.cond = select i1 %i.bh, i1 %i.bj, i1 false
  br i1 %or.cond, label %bb.n, label %bb.s

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.at, i64 152    ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 8
  %.not74 = icmp eq i32 %i.bl, 0
  br i1 %.not74, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bm = call ptr @wmem_file_scope()
  %i.bn = getelementptr i8, ptr %i.at, i64 16     ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 8
  %.not.i = icmp eq i32 %i.bo, 0
  br i1 %.not.i, label %free_address_wmem.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bp = getelementptr i8, ptr %i.at, i64 20
  %i.bq = load i32, ptr %i.bp, align 4
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.q, label %free_address_wmem.exit

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr i8, ptr %i.at, i64 32
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not6.i = icmp eq ptr %i.bt, null
  br i1 %.not6.i, label %free_address_wmem.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @wmem_free(ptr noundef %i.bm, ptr noundef nonnull %i.bt)
  br label %free_address_wmem.exit

free_address_wmem.exit:                           ; preds = %bb.o, %bb.p, %bb.q, %bb.r
  %i.bu = getelementptr i8, ptr %i.at, i64 160
  %i.bv = load ptr, ptr %i.bu, align 8
  %i.bw = load <2 x i32>, ptr %i.bk, align 8
  store <2 x i32> %i.bw, ptr %i.bn, align 8
  %i.bx = getelementptr i8, ptr %i.at, i64 24
  store ptr %i.bv, ptr %i.bx, align 8
  %i.by = getelementptr i8, ptr %i.at, i64 32
  store ptr null, ptr %i.by, align 8
  %i.bz = getelementptr i8, ptr %i.at, i64 176
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.at, i64 10
  store i16 %i.ca, ptr %i.cb, align 2
  br label %bb.s

bb.s:                                             ; preds = %free_address_wmem.exit, %bb.n, %bb.m
  %indvars.iv.next105 = add nuw nsw i64 %indvars.iv104, 1 ; 2 uses
  %lftr.wideiv107 = trunc i64 %indvars.iv.next105 to i32
  %exitcond108.not = icmp eq i32 %i.g, %lftr.wideiv107
  br i1 %exitcond108.not, label %._crit_edge, label %bb.i, !llvm.loop !18
}

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define internal fastcc void @apply_sdp_transport(ptr noundef %0, ptr nofree noundef captures(none) %1, i32 noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr @global_sdp_establish_conversation, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.av

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq i32 %2, 0
  br i1 %i.c, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr i8, ptr %0, i64 20
  %i.e = load i32, ptr %i.d, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %.0130 = phi i32 [ %i.e, %bb.c ], [ %2, %bb.b ] ; 6 uses
  %i.f = getelementptr i8, ptr %1, i64 2056       ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 @wmem_array_get_count(ptr noundef %i.g)
  %.not165 = icmp eq i32 %i.h, 0
  br i1 %.not165, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %.not147 = icmp eq ptr %3, null                 ; 3 uses
  %i.i = getelementptr i8, ptr %3, i64 24         ; 2 uses
  %i.j = getelementptr i8, ptr %3, i64 9          ; 2 uses
  %i.k = getelementptr i8, ptr %1, i64 2072
  %4 = getelementptr i8, ptr %1, i64 2076
  %5 = getelementptr i8, ptr %1, i64 2084
  %i.l = getelementptr i8, ptr %0, i64 20         ; 3 uses
  br label %bb.e

._crit_edge:                                      ; preds = %bb.at, %bb.d
  %i.m = getelementptr i8, ptr %0, i64 416
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i32, ptr @proto_sdp, align 4
  %i.p = tail call ptr @p_get_proto_data(ptr noundef %i.n, ptr noundef %0, i32 noundef %i.o, i32 noundef 0) ; 2 uses
  %.not = icmp eq ptr %i.p, null
  br i1 %.not, label %bb.av, label %bb.au

bb.e:                                             ; preds = %.lr.ph, %bb.at
  %.0124164 = phi i32 [ 0, %.lr.ph ], [ %i.di, %bb.at ] ; 2 uses
  %.0125163 = phi i1 [ false, %.lr.ph ], [ %.3, %bb.at ] ; 6 uses
  %.0126162 = phi ptr [ null, %.lr.ph ], [ %.3129, %bb.at ] ; 7 uses
  %i.q = load ptr, ptr %i.f, align 8
  %i.r = tail call ptr @wmem_array_index(ptr noundef %i.q, i32 noundef %.0124164) ; 23 uses
  %i.s = getelementptr i8, ptr %i.r, i64 40       ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 3 uses
  %.not146 = icmp eq ptr %i.t, null
  br i1 %.not146, label %bb.m, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr i8, ptr %i.r, i64 144
  store i8 1, ptr %i.u, align 8
  br i1 %.not147, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load ptr, ptr %i.i, align 8
  %.not148 = icmp eq ptr %i.v, null
  br i1 %.not148, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = tail call ptr @wmem_file_scope()
  %i.x = load ptr, ptr %i.i, align 8
  %i.y = load ptr, ptr %i.s, align 8
  %i.z = tail call ptr @determine_http_location_target(ptr noundef %i.w, ptr noundef %i.x, ptr noundef %i.y) ; 3 uses
  %.not149 = icmp eq ptr %i.z, null
  br i1 %.not149, label %._crit_edge166, label %bb.i

._crit_edge166:                                   ; preds = %bb.h
  %.pre = load ptr, ptr %i.s, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.h
  store ptr %i.z, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %._crit_edge166, %bb.i, %bb.g, %bb.f
  %i.aa = phi ptr [ %.pre, %._crit_edge166 ], [ %i.z, %bb.i ], [ %i.t, %bb.g ], [ %i.t, %bb.f ]
  %i.ab = tail call ptr @ascii_strdown_inplace(ptr noundef %i.aa) ; 0 uses
  %i.ac = load ptr, ptr @sdp_rtsp_control_map, align 8
  %i.ad = load ptr, ptr %i.s, align 8
  %i.ae = getelementptr i8, ptr %i.r, i64 136     ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call ptr @wmem_map_insert(ptr noundef %i.ac, ptr noundef %i.ad, ptr noundef %i.af) ; 3 uses
  %.not150 = icmp eq ptr %i.ag, null
  br i1 %.not150, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ah = load ptr, ptr %i.ae, align 8
  %.not151 = icmp eq ptr %i.ag, %i.ah
  br i1 %.not151, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @rtp_dyn_payload_free(ptr noundef nonnull %i.ag)
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l, %bb.e
  %i.ai = getelementptr i8, ptr %i.r, i64 10      ; 7 uses
  %i.aj = load i16, ptr %i.ai, align 2            ; 3 uses
  %.not152 = icmp eq i16 %i.aj, 0
  br i1 %.not152, label %thread-pre-split, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ak = getelementptr i8, ptr %i.r, i64 144     ; 2 uses
  %i.al = load i8, ptr %i.ak, align 8, !range !8, !noundef !9
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %thread-pre-split, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load i32, ptr %i.r, align 8             ; 3 uses
  %.off = add i32 %i.an, -1
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %bb.p, label %bb.ag

bb.p:                                             ; preds = %bb.o
  %i.ao = getelementptr i8, ptr %i.r, i64 16      ; 6 uses
  %i.ap = load i32, ptr %i.ao, align 8
  %i.aq = and i32 %i.ap, -2
  %switch160 = icmp eq i32 %i.aq, 2
  br i1 %switch160, label %bb.q, label %thread-pre-split

bb.q:                                             ; preds = %bb.p
  store i8 1, ptr %i.ak, align 8
  %i.ar = getelementptr i8, ptr %i.r, i64 8
  %i.as = load i8, ptr %i.ar, align 8, !range !8, !noundef !9
  %i.at = trunc nuw i8 %i.as to i1                ; 2 uses
  %i.au = select i1 %i.at, i1 %.0125163, i1 false
  %.0125.mux = select i1 %i.at, i1 true, i1 %.0125163 ; 5 uses
  br i1 %i.au, label %bb.at, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.av = icmp eq i32 %i.an, 2
  br i1 %i.av, label %bb.s, label %bb.v

bb.s:                                             ; preds = %bb.r
  %i.aw = tail call ptr @wmem_file_scope()
  %i.ax = tail call noalias dereferenceable_or_null(16) ptr @wmem_alloc0(ptr noundef %i.aw, i64 noundef 16) #13 ; 5 uses
  %i.ay = load i32, ptr %i.k, align 8             ; 2 uses
  %.not154 = icmp eq i32 %i.ay, 0
  br i1 %.not154, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store i32 %i.ay, ptr %i.ax, align 4
  %6 = getelementptr i8, ptr %i.ax, i64 4
  %7 = load <2 x i32>, ptr %4, align 4
  store <2 x i32> %7, ptr %6, align 4
  %8 = load i32, ptr %5, align 4
  %9 = getelementptr i8, ptr %i.ax, i64 12
  store i32 %8, ptr %9, align 4
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.az = load i16, ptr %i.ai, align 2
  %i.ba = zext i16 %i.az to i32
  %i.bb = getelementptr i8, ptr %i.r, i64 4
  %i.bc = load i32, ptr %i.bb, align 4
  %i.bd = getelementptr i8, ptr %i.r, i64 136
  %i.be = load ptr, ptr %i.bd, align 8
  tail call void @srtp_add_address(ptr noundef %0, i32 noundef 3, ptr noundef %i.ao, i32 noundef %i.ba, i32 noundef 0, ptr noundef @.str.196, i32 noundef %.0130, i32 noundef %i.bc, ptr noundef %i.be, ptr noundef %i.ax, ptr noundef %3)
  br label %bb.z

bb.v:                                             ; preds = %bb.r
  br i1 %.not147, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bf = load i8, ptr %i.j, align 1, !range !8, !noundef !9
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.bh = zext i16 %i.aj to i32
  tail call void @osmux_add_address(ptr noundef %0, ptr noundef %i.ao, i32 noundef %i.bh, i32 noundef 0, i32 noundef %.0130)
  br label %bb.z

bb.y:                                             ; preds = %bb.w, %bb.v
  %i.bi = zext i16 %i.aj to i32
  %i.bj = getelementptr i8, ptr %i.r, i64 4
  %i.bk = load i32, ptr %i.bj, align 4
  %i.bl = getelementptr i8, ptr %i.r, i64 136
  %i.bm = load ptr, ptr %i.bl, align 8
  tail call void @srtp_add_address(ptr noundef %0, i32 noundef 3, ptr noundef %i.ao, i32 noundef %i.bi, i32 noundef 0, ptr noundef @.str.196, i32 noundef %.0130, i32 noundef %i.bk, ptr noundef %i.bm, ptr noundef null, ptr noundef %3)
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y, %bb.u
  %.1127 = phi ptr [ %i.ax, %bb.u ], [ %.0126162, %bb.x ], [ %.0126162, %bb.y ] ; 6 uses
  %i.bn = load i16, ptr %i.ai, align 2            ; 6 uses
  %i.bo = load ptr, ptr @rtcp_handle, align 8
  %.not155 = icmp eq ptr %i.bo, null
  br i1 %.not155, label %thread-pre-split, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bp = getelementptr i8, ptr %i.r, i64 12
  %i.bq = load i16, ptr %i.bp, align 4            ; 2 uses
  %i.br = zext i16 %i.bq to i32                   ; 2 uses
  %.not156 = icmp eq i16 %i.bn, %i.bq
  br i1 %.not156, label %thread-pre-split, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bs = load i32, ptr %i.r, align 8
  %i.bt = icmp eq i32 %i.bs, 2
  br i1 %i.bt, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  tail call void @srtcp_add_address(ptr noundef %0, ptr noundef %i.ao, i32 noundef %i.br, i32 noundef 0, ptr noundef @.str.196, i32 noundef %.0130, ptr noundef %.1127)
  br label %thread-pre-split

bb.ad:                                            ; preds = %bb.ab
  br i1 %.not147, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bu = load i8, ptr %i.j, align 1, !range !8, !noundef !9
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %thread-pre-split, label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  tail call void @rtcp_add_address(ptr noundef %0, ptr noundef %i.ao, i32 noundef %i.br, i32 noundef 0, ptr noundef @.str.196, i32 noundef %.0130)
  br label %thread-pre-split

thread-pre-split:                                 ; preds = %bb.m, %bb.n, %bb.ac, %bb.af, %bb.ae, %bb.aa, %bb.z, %bb.p
  %.2128.ph = phi ptr [ %.0126162, %bb.m ], [ %.0126162, %bb.p ], [ %.1127, %bb.z ], [ %.1127, %bb.aa ], [ %.1127, %bb.af ], [ %.1127, %bb.ae ], [ %.1127, %bb.ac ], [ %.0126162, %bb.n ]
  %.2.ph = phi i1 [ %.0125163, %bb.m ], [ %.0125163, %bb.p ], [ %.0125.mux, %bb.z ], [ %.0125.mux, %bb.aa ], [ %.0125.mux, %bb.af ], [ %.0125.mux, %bb.ae ], [ %.0125.mux, %bb.ac ], [ %.0125163, %bb.n ]
  %.0.shrunk.ph = phi i16 [ 0, %bb.m ], [ 0, %bb.p ], [ %i.bn, %bb.z ], [ %i.bn, %bb.aa ], [ %i.bn, %bb.af ], [ %i.bn, %bb.ae ], [ %i.bn, %bb.ac ], [ 0, %bb.n ]
  %.pr = load i32, ptr %i.r, align 8
  br label %bb.ag

bb.ag:                                            ; preds = %thread-pre-split, %bb.o
  %i.bw = phi i32 [ %.pr, %thread-pre-split ], [ %i.an, %bb.o ]
  %.2128 = phi ptr [ %.2128.ph, %thread-pre-split ], [ %.0126162, %bb.o ] ; 2 uses
  %.2 = phi i1 [ %.2.ph, %thread-pre-split ], [ %.0125163, %bb.o ] ; 2 uses
  %.0.shrunk = phi i16 [ %.0.shrunk.ph, %thread-pre-split ], [ 0, %bb.o ] ; 2 uses
  %i.bx = icmp eq i32 %i.bw, 5
  br i1 %i.bx, label %bb.ah, label %bb.ak

bb.ah:                                            ; preds = %bb.ag
  %i.by = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.bz = load i32, ptr %i.by, align 8            ; 2 uses
  %i.ca = icmp eq i32 %i.bz, 2
  br i1 %i.ca, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.cb = icmp eq i32 %i.bz, 3
  %i.cc = load ptr, ptr @sprt_handle, align 8
  %i.cd = icmp ne ptr %i.cc, null
  %or.cond = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond, label %.sink.split, label %bb.ak

bb.aj:                                            ; preds = %bb.ah
  %.old = load ptr, ptr @sprt_handle, align 8
  %.old1.not = icmp eq ptr %.old, null
  br i1 %.old1.not, label %bb.ak, label %.sink.split

.sink.split:                                      ; preds = %bb.ai, %bb.aj
  %i.ce = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.cf = icmp eq i16 %i.ce, 0
  %i.cg = icmp ne i16 %.0.shrunk, 0
  %or.cond4 = select i1 %i.cf, i1 %i.cg, i1 false
  %.0.sink.v = select i1 %or.cond4, i16 %.0.shrunk, i16 %i.ce
  %.0.sink = zext i16 %.0.sink.v to i32
  %i.ch = load i32, ptr %i.l, align 4
  tail call void @sprt_add_address(ptr noundef %0, ptr noundef %i.by, i32 noundef %.0.sink, i32 noundef 0, ptr noundef @.str.196, i32 noundef %i.ch)
  br label %bb.ak

bb.ak:                                            ; preds = %.sink.split, %bb.aj, %bb.ai, %bb.ag
  %i.ci = load i16, ptr %i.ai, align 2            ; 2 uses
  %i.cj = zext i16 %i.ci to i32
  %.not158 = icmp eq i16 %i.ci, 0
  br i1 %.not158, label %bb.ap, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.ck = getelementptr i8, ptr %i.r, i64 144
  %i.cl = load i8, ptr %i.ck, align 8, !range !8, !noundef !9
  %i.cm = trunc nuw i8 %i.cl to i1
  br i1 %i.cm, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = load i32, ptr %i.r, align 8
  %i.co = icmp eq i32 %i.cn, 3
  br i1 %i.co, label %bb.an, label %bb.ap

bb.an:                                            ; preds = %bb.am
  %i.cp = getelementptr i8, ptr %i.r, i64 16      ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 8
  %i.cr = icmp eq i32 %i.cq, 2
  br i1 %i.cr, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.cs = load i32, ptr %i.l, align 4
  tail call void @t38_add_address(ptr noundef %0, ptr noundef %i.cp, i32 noundef %i.cj, i32 noundef 0, ptr noundef @.str.196, i32 noundef %i.cs)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak
  %i.ct = load i32, ptr %i.r, align 8             ; 2 uses
  %i.cu = icmp eq i32 %i.ct, 4
  %i.cv = load ptr, ptr @msrp_handle, align 8
  %i.cw = icmp ne ptr %i.cv, null
  %or.cond7 = select i1 %i.cu, i1 %i.cw, i1 false
  br i1 %or.cond7, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.cx = getelementptr i8, ptr %i.r, i64 16
  %i.cy = load i16, ptr %i.ai, align 2
  %i.cz = zext i16 %i.cy to i32
  %i.da = load i32, ptr %i.l, align 4
  tail call void @msrp_add_address(ptr noundef %0, ptr noundef %i.cx, i32 noundef %i.cz, ptr noundef @.str.196, i32 noundef %i.da)
  %.pre167 = load i32, ptr %i.r, align 8
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.db = phi i32 [ %.pre167, %bb.aq ], [ %i.ct, %bb.ap ]
  %i.dc = icmp eq i32 %i.db, 6
  %i.dd = load ptr, ptr @bfcp_handle, align 8
  %i.de = icmp ne ptr %i.dd, null
  %or.cond10 = select i1 %i.dc, i1 %i.de, i1 false
  br i1 %or.cond10, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  %i.df = getelementptr i8, ptr %i.r, i64 16
  %i.dg = load i16, ptr %i.ai, align 2
  %i.dh = zext i16 %i.dg to i32
  tail call void @bfcp_add_address(ptr noundef %0, i32 noundef 3, ptr noundef %i.df, i32 noundef %i.dh, ptr noundef @.str.196, i32 noundef %.0130)
  br label %bb.at

bb.at:                                            ; preds = %bb.q, %bb.ar, %bb.as
  %.3129 = phi ptr [ %.0126162, %bb.q ], [ %.2128, %bb.as ], [ %.2128, %bb.ar ]
  %.3 = phi i1 [ true, %bb.q ], [ %.2, %bb.as ], [ %.2, %bb.ar ]
  %i.di = add nuw i32 %.0124164, 1                ; 2 uses
  %i.dj = load ptr, ptr %i.f, align 8
  %i.dk = tail call i32 @wmem_array_get_count(ptr noundef %i.dj)
  %i.dl = icmp ult i32 %i.di, %i.dk
  br i1 %i.dl, label %bb.e, label %._crit_edge, !llvm.loop !19

bb.au:                                            ; preds = %._crit_edge
  %i.dm = getelementptr i8, ptr %1, i64 2064
  store ptr %i.p, ptr %i.dm, align 8
  br label %bb.av

bb.av:                                            ; preds = %._crit_edge, %bb.au, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: null_pointer_is_valid sspstrong uwtable
define hidden void @setup_sdp_transport_resend(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.d, label %bb.b

end_hunk_0
