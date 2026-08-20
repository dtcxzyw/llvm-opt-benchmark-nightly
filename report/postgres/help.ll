loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@slashUsage:bb.a
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.184) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.185) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.186) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.187) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.188) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.189) #10
  %i.p = load ptr, ptr %1, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %.09 = phi i32 [ 0, %bb.d ], [ %.1, %bb.h ]     ; 3 uses
  %.0 = phi ptr [ %i.p, %bb.d ], [ %i.w, %bb.h ]  ; 2 uses
  %i.q = load i8, ptr %.0, align 1
  switch i8 %i.q, label %bb.h [
    i8 0, label %bb.f
    i8 10, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %.not14 = icmp eq i16 %0, 0
  %i.r = select i1 %.not14, ptr null, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 48)
  %i.s = call ptr @PageOutput(i32 noundef %.09, ptr noundef %i.r) #10 ; 2 uses
  %i.t = load ptr, ptr %1, align 8
  %i.u = call i32 @fputs(ptr noundef %i.t, ptr noundef %i.s) ; 0 uses
  call void @ClosePager(ptr noundef %i.s) #10
  call void @termPQExpBuffer(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void

bb.g:                                             ; preds = %bb.e
  %i.v = add i32 %.09, 1
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.g
  %.1 = phi i32 [ %i.v, %bb.g ], [ %.09, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.e, !llvm.loop !8
}

declare ptr @PQdb(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local void @helpVariables(i16 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.PQExpBufferData, align 8    ; 90 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  call void @initPQExpBuffer(ptr noundef nonnull %1) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.190) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.191) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.192) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.193) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.194) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.195) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.196) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.197) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.198) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.199) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.200) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.201) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.202) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.203) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.204) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.205) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.206) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.207) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.208) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.209) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.210) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.211) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.212) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.213) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.214) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.215) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.216) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.217) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.218) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.219) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.220) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.221) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.222) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.223) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.224) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.225) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.226) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.227) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.228) #10
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %1, ptr noundef nonnull @.str.229, ptr noundef nonnull @.str.230) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.231) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.232) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.233) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.234) #10
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %1, ptr noundef nonnull @.str.235, i32 noundef 44) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.236) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.237) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.238) #10
  call void (ptr, ptr, ...) @appendPQExpBuffer(ptr noundef nonnull %1, ptr noundef nonnull @.str.239, ptr noundef nonnull @.str.30) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.240) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.241) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.242) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.243) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.244) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.245) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.246) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.247) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.248) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.249) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.250) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.251) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.252) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.253) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.254) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.1) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.255) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.256) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.257) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.258) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.259) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.260) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.261) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.262) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.263) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.264) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.265) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.266) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.267) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.268) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.269) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.270) #10
  call void @appendPQExpBufferStr(ptr noundef nonnull %1, ptr noundef nonnull @.str.271) #10
  %i.a = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.e, %bb.a
  %.07 = phi i32 [ 0, %bb.a ], [ %.1, %bb.e ]     ; 3 uses
  %.0 = phi ptr [ %i.a, %bb.a ], [ %i.h, %bb.e ]  ; 2 uses
  %i.b = load i8, ptr %.0, align 1
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.c
    i8 10, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %.not9 = icmp eq i16 %0, 0
  %i.c = select i1 %.not9, ptr null, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 48)
  %i.d = call ptr @PageOutput(i32 noundef %.07, ptr noundef %i.c) #10 ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  %i.f = call i32 @fputs(ptr noundef %i.e, ptr noundef %i.d) ; 0 uses
  call void @ClosePager(ptr noundef %i.d) #10
  call void @termPQExpBuffer(ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  ret void

bb.d:                                             ; preds = %bb.b
  %i.g = add i32 %.07, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.d
  %.1 = phi i32 [ %i.g, %bb.d ], [ %.07, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %.0, i64 1
  br label %bb.b, !llvm.loop !9
}

; Function Attrs: nounwind uwtable
define dso_local void @helpSQL(ptr noundef %0, i16 noundef zeroext %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.winsize, align 2            ; 4 uses
  %3 = alloca %struct.PQExpBufferData, align 8    ; 6 uses
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #11 ; 11 uses
  %i.b = icmp eq i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  %i.c = load ptr, ptr @stdout, align 8
  %i.d = tail call i32 @fileno(ptr noundef %i.c) #10
  %i.e = call i32 (i32, i64, ...) @ioctl(i32 noundef %i.d, i64 noundef 21523, ptr noundef nonnull %2) #10
  %i.f = icmp eq i32 %i.e, -1
  br i1 %i.f, label %.lr.ph172, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.h = load i16, ptr %i.g, align 2
  %.fr178 = freeze i16 %i.h
  %i.i = zext i16 %.fr178 to i32
  %i.j = add nsw i32 %i.i, -3
  %i.k = sdiv i32 %i.j, 33
  %i.l = call i32 @llvm.umax.i32(i32 %i.k, i32 1)
  br label %.lr.ph172

.lr.ph172:                                        ; preds = %bb.d, %bb.c
  %.0111 = phi i32 [ %i.l, %bb.d ], [ 2, %bb.c ]  ; 3 uses
  %i.m = trunc nuw nsw i32 %.0111 to i16          ; 2 uses
  %.lhs.trunc = add nuw nsw i16 %i.m, 189
  %i.n = udiv i16 %.lhs.trunc, %i.m               ; 2 uses
  %.zext = zext nneg i16 %i.n to i32              ; 4 uses
  %i.o = add nuw nsw i32 %.zext, 1
  %.not128 = icmp eq i16 %1, 0
  %i.p = select i1 %.not128, ptr null, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 48)
  %i.q = call ptr @PageOutput(i32 noundef %i.o, ptr noundef %i.p) #10 ; 9 uses
  %i.r = call i64 @fwrite(ptr nonnull @.str.272, i64 16, i64 1, ptr %i.q) ; 0 uses
  %i.s = icmp samesign ugt i32 %.0111, 1
  br i1 %i.s, label %.lr.ph167.us.preheader, label %.lr.ph172.split.preheader

.lr.ph172.split.preheader:                        ; preds = %.lr.ph172
  %4 = zext nneg i16 %i.n to i64
  br label %.lr.ph172.split

.lr.ph167.us.preheader:                           ; preds = %.lr.ph172
  %i.t = add nsw i32 %.0111, -1                   ; 2 uses
  %wide.trip.count = zext nneg i32 %i.t to i64
  %i.u = mul nuw nsw i32 %i.t, %.zext
  br label %.lr.ph167.us

.lr.ph167.us:                                     ; preds = %.lr.ph167.us.preheader, %bb.g
  %.0110170.us = phi i32 [ %10, %bb.g ], [ 0, %.lr.ph167.us.preheader ] ; 3 uses
  %i.v = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.273) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph167.us, %bb.e
  %indvars.iv184 = phi i64 [ 0, %.lr.ph167.us ], [ %indvars.iv.next185, %bb.e ] ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv184 to i32
  %6 = mul i32 %5, %.zext
  %7 = add i32 %6, %.0110170.us
  %8 = sext i32 %7 to i64
  %i.w = getelementptr inbounds [40 x i8], ptr @QL_HELP, i64 %8
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not130.us = icmp eq ptr %i.x, null
  %spec.select.us = select i1 %.not130.us, ptr @.str.275, ptr %i.x
  %i.y = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.274, i32 noundef 33, ptr noundef nonnull %spec.select.us) #10 ; 0 uses
  %indvars.iv.next185 = add nuw nsw i64 %indvars.iv184, 1 ; 2 uses
  %exitcond.not.a = icmp eq i64 %indvars.iv.next185, %wide.trip.count
  br i1 %exitcond.not.a, label %._crit_edge168.us, label %bb.e, !llvm.loop !10

bb.f:                                             ; preds = %._crit_edge168.us
  %9 = sext i32 %12 to i64
  %i.z = getelementptr inbounds [40 x i8], ptr @QL_HELP, i64 %9
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %.not129.us = icmp eq ptr %i.aa, null
  %spec.select131.us = select i1 %.not129.us, ptr @.str.275, ptr %i.aa
  %i.ab = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.276, ptr noundef nonnull %spec.select131.us) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge168.us
  %i.ac = call i32 @fputc(i32 noundef 10, ptr noundef %i.q) ; 0 uses
  %10 = add nuw nsw i32 %.0110170.us, 1           ; 2 uses
  %11 = icmp samesign ult i32 %10, %.zext
  br i1 %11, label %.lr.ph167.us, label %._crit_edge173, !llvm.loop !11

._crit_edge168.us:                                ; preds = %bb.e
  %12 = add i32 %i.u, %.0110170.us                ; 2 uses
  %13 = icmp slt i32 %12, 190
  br i1 %13, label %bb.f, label %bb.g

.lr.ph172.split:                                  ; preds = %.lr.ph172.split.preheader, %bb.i
  %indvars.iv = phi i64 [ 0, %.lr.ph172.split.preheader ], [ %indvars.iv.next, %bb.i ] ; 3 uses
  %i.ad = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.273) #10 ; 0 uses
  %i.ae = icmp samesign ult i64 %indvars.iv, 190
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.lr.ph172.split
  %i.af = getelementptr inbounds nuw [40 x i8], ptr @QL_HELP, i64 %indvars.iv
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not129 = icmp eq ptr %i.ag, null
  %spec.select131 = select i1 %.not129, ptr @.str.275, ptr %i.ag
  %i.ah = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.q, ptr noundef nonnull @.str.276, ptr noundef nonnull %spec.select131) #10 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph172.split
  %i.ai = call i32 @fputc(i32 noundef 10, ptr noundef %i.q) ; 0 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %14 = icmp samesign ult i64 %indvars.iv.next, %4
  br i1 %14, label %.lr.ph172.split, label %._crit_edge173, !llvm.loop !11

._crit_edge173:                                   ; preds = %bb.i, %bb.g
  call void @ClosePager(ptr noundef %i.q) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.w

bb.j:                                             ; preds = %bb.b
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 4 uses
  %i.ak = load ptr, ptr @QL_HELP, align 8         ; 3 uses
  %.not123149 = icmp eq ptr %i.ak, null
  br i1 %.not123149, label %.preheader138.1, label %.lr.ph152

.lr.ph152:                                        ; preds = %bb.j, %.tail.thread
  %i.al = phi ptr [ %i.bb, %.tail.thread ], [ %i.ak, %bb.j ] ; 2 uses
  %i.am = phi ptr [ %i.ba, %.tail.thread ], [ @QL_HELP, %bb.j ]
  %.093151 = phi i32 [ %.1, %.tail.thread ], [ 0, %bb.j ] ; 3 uses
  %.0107150 = phi i32 [ %i.ay, %.tail.thread ], [ 0, %bb.j ]
  %i.an = tail call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.al, i64 noundef %i.a) #10
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.k, label %sub_0

sub_0:                                            ; preds = %.lr.ph152
  %i.ap = load i8, ptr %0, align 1
  %.not174 = icmp eq i8 %i.ap, 42
  br i1 %.not174, label %.tail, label %.tail.thread

.tail:                                            ; preds = %sub_0
  %i.aq = load i8, ptr %i.aj, align 1
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.k, label %.tail.thread

bb.k:                                             ; preds = %.tail, %.lr.ph152
  %i.as = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %i.at = load i32, ptr %i.as, align 8
  %i.au = add i32 %.093151, 7
  %i.av = add i32 %i.au, %i.at                    ; 2 uses
  %i.aw = tail call i32 @pg_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.al) #10
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %._crit_edge, label %.tail.thread

.tail.thread:                                     ; preds = %sub_0, %.tail, %bb.k
  %.1 = phi i32 [ %i.av, %bb.k ], [ %.093151, %.tail ], [ %.093151, %sub_0 ] ; 2 uses
  %i.ay = add i32 %.0107150, 1                    ; 2 uses
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [40 x i8], ptr @QL_HELP, i64 %i.az ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not123 = icmp eq ptr %i.bb, null
  br i1 %.not123, label %._crit_edge, label %.lr.ph152, !llvm.loop !12

._crit_edge:                                      ; preds = %.tail.thread, %bb.k
  %.2 = phi i32 [ %i.av, %bb.k ], [ %.1, %.tail.thread ] ; 2 uses
  %i.bc = icmp eq i32 %.2, 0
  br i1 %i.bc, label %.preheader138.1, label %bb.l

bb.l:                                             ; preds = %._crit_edge.2, %._crit_edge.1, %._crit_edge
  %i.bd = phi ptr [ %i.ak, %._crit_edge ], [ %i.cm, %._crit_edge.1 ], [ %i.dj, %._crit_edge.2 ]
  %.2.lcssa = phi i32 [ %.2, %._crit_edge ], [ %.2.1, %._crit_edge.1 ], [ %.2.2, %._crit_edge.2 ]
  %.1101.lcssa = phi i64 [ %i.a, %._crit_edge ], [ %.299.1, %._crit_edge.1 ], [ %.097.lcssa.2, %._crit_edge.2 ]
  %.not124 = icmp eq i16 %1, 0
  %i.be = select i1 %.not124, ptr null, ptr getelementptr inbounds nuw (i8, ptr @pset, i64 48)
  %i.bf = tail call ptr @PageOutput(i32 noundef %.2.lcssa, ptr noundef %i.be) #10 ; 3 uses
  br label %.lr.ph162

.lr.ph162:                                        ; preds = %bb.l, %.tail134.thread
  %i.bg = phi ptr [ %i.cb, %.tail134.thread ], [ %i.bd, %bb.l ] ; 3 uses
  %i.bh = phi ptr [ %i.ca, %.tail134.thread ], [ @QL_HELP, %bb.l ] ; 3 uses
  %.1108160 = phi i32 [ %i.by, %.tail134.thread ], [ 0, %bb.l ]
  %i.bi = call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.bg, i64 noundef %.1101.lcssa) #10
  %i.bj = icmp eq i32 %i.bi, 0
  br i1 %i.bj, label %bb.m, label %sub_0135

sub_0135:                                         ; preds = %.lr.ph162
  %i.bk = load i8, ptr %0, align 1
  %.not175 = icmp eq i8 %i.bk, 42
  br i1 %.not175, label %.tail134, label %.tail134.thread

.tail134:                                         ; preds = %sub_0135
  %i.bl = load i8, ptr %i.aj, align 1
  %i.bm = icmp eq i8 %i.bl, 0
  br i1 %i.bm, label %bb.m, label %.tail134.thread

bb.m:                                             ; preds = %.tail134, %.lr.ph162
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  call void @initPQExpBuffer(ptr noundef nonnull %3) #10
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8
  call void %i.bo(ptr noundef nonnull %3) #10
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = call ptr (ptr, ...) @psprintf(ptr noundef nonnull @.str.278, ptr noundef nonnull @.str.281, ptr noundef %i.bq) #10 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = load ptr, ptr %3, align 8
  %i.bv = call i32 (ptr, ptr, ...) @pg_fprintf(ptr noundef %i.bf, ptr noundef nonnull @.str.282, ptr noundef nonnull %i.bg, ptr noundef %i.bt, ptr noundef %i.bu, ptr noundef %i.br) #10 ; 0 uses
  call void @free(ptr noundef %i.br) #10
  call void @termPQExpBuffer(ptr noundef nonnull %3) #10
  %i.bw = call i32 @pg_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.bg) #10
  %i.bx = icmp eq i32 %i.bw, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br i1 %i.bx, label %._crit_edge163, label %.tail134.thread

.tail134.thread:                                  ; preds = %sub_0135, %bb.m, %.tail134
  %i.by = add i32 %.1108160, 1                    ; 2 uses
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [40 x i8], ptr @QL_HELP, i64 %i.bz ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8            ; 2 uses
  %.not125 = icmp eq ptr %i.cb, null
  br i1 %.not125, label %._crit_edge163, label %.lr.ph162, !llvm.loop !13

.preheader138.1:                                  ; preds = %bb.j, %._crit_edge
  %.not205 = icmp eq i64 %i.a, 1
  br i1 %.not205, label %.critedge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader138.1, %bb.n
  %.094141.1 = phi i64 [ %i.cc, %bb.n ], [ 1, %.preheader138.1 ] ; 3 uses
  %i.cc = add nuw i64 %.094141.1, 1               ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %.094141.1
  %i.ce = load i8, ptr %i.cd, align 1
  %.not120.1 = icmp eq i8 %i.ce, 32
  br i1 %.not120.1, label %.critedge.1, label %bb.n

bb.n:                                             ; preds = %.lr.ph.1
  %exitcond.1.not = icmp eq i64 %i.cc, %i.a
  br i1 %exitcond.1.not, label %.preheader138.2, label %.lr.ph.1, !llvm.loop !14

.critedge.1:                                      ; preds = %.lr.ph.1, %.preheader138.1
  %.097.lcssa.1 = phi i64 [ 1, %.preheader138.1 ], [ %.094141.1, %.lr.ph.1 ] ; 3 uses
  %.195.1 = phi i64 [ 1, %.preheader138.1 ], [ %i.cc, %.lr.ph.1 ] ; 3 uses
  %i.cf = icmp ult i64 %.195.1, %i.a
  br i1 %i.cf, label %.preheader.1, label %.critedge2.1

.preheader.1:                                     ; preds = %.critedge.1
  %i.cg = add i64 %i.a, 1
  %i.ch = add i64 %i.cg, %.097.lcssa.1
  %i.ci = sub i64 %i.ch, %.195.1
  br label %bb.o

bb.o:                                             ; preds = %bb.p, %.preheader.1
  %.198148.1.in = phi i64 [ %.097.lcssa.1, %.preheader.1 ], [ %.198148.1, %bb.p ]
  %.296147.1 = phi i64 [ %.195.1, %.preheader.1 ], [ %i.cl, %bb.p ] ; 2 uses
  %.198148.1 = add i64 %.198148.1.in, 1           ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 %.296147.1
  %i.ck = load i8, ptr %i.cj, align 1
  %.not121.1 = icmp eq i8 %i.ck, 32
  br i1 %.not121.1, label %.critedge2.1, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cl = add i64 %.296147.1, 1                   ; 2 uses
  %exitcond181.1.not = icmp eq i64 %i.cl, %i.a
  br i1 %exitcond181.1.not, label %.critedge2.1, label %bb.o, !llvm.loop !15

.critedge2.1:                                     ; preds = %bb.o, %bb.p, %.critedge.1
  %.299.1 = phi i64 [ %.097.lcssa.1, %.critedge.1 ], [ %.198148.1, %bb.o ], [ %i.ci, %bb.p ] ; 5 uses
  %.not122.1 = icmp ult i64 %.299.1, %i.a
  br i1 %.not122.1, label %bb.q, label %.preheader138.2

bb.q:                                             ; preds = %.critedge2.1
  %i.cm = load ptr, ptr @QL_HELP, align 8         ; 3 uses
  %.not123149.1 = icmp eq ptr %i.cm, null
  br i1 %.not123149.1, label %.preheader138.2, label %.lr.ph152.1

.lr.ph152.1:                                      ; preds = %bb.q, %.tail.1.thread
  %i.cn = phi ptr [ %i.dd, %.tail.1.thread ], [ %i.cm, %bb.q ] ; 2 uses
  %i.co = phi ptr [ %i.dc, %.tail.1.thread ], [ @QL_HELP, %bb.q ]
  %.093151.1 = phi i32 [ %.1.1, %.tail.1.thread ], [ 0, %bb.q ] ; 3 uses
  %.0107150.1 = phi i32 [ %i.da, %.tail.1.thread ], [ 0, %bb.q ]
  %i.cp = tail call i32 @pg_strncasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.cn, i64 noundef %.299.1) #10
  %i.cq = icmp eq i32 %i.cp, 0
  br i1 %i.cq, label %bb.r, label %sub_0.1

sub_0.1:                                          ; preds = %.lr.ph152.1
  %i.cr = load i8, ptr %0, align 1
  %.not174.1 = icmp eq i8 %i.cr, 42
  br i1 %.not174.1, label %.tail.1, label %.tail.1.thread

.tail.1:                                          ; preds = %sub_0.1
  %i.cs = load i8, ptr %i.aj, align 1
  %i.ct = icmp eq i8 %i.cs, 0
  br i1 %i.ct, label %bb.r, label %.tail.1.thread

bb.r:                                             ; preds = %.tail.1, %.lr.ph152.1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 32
  %i.cv = load i32, ptr %i.cu, align 8
  %i.cw = add i32 %.093151.1, 7
  %i.cx = add i32 %i.cw, %i.cv                    ; 2 uses
  %i.cy = tail call i32 @pg_strcasecmp(ptr noundef nonnull %0, ptr noundef nonnull %i.cn) #10
  %i.cz = icmp eq i32 %i.cy, 0
  br i1 %i.cz, label %._crit_edge.1, label %.tail.1.thread

.tail.1.thread:                                   ; preds = %sub_0.1, %bb.r, %.tail.1
  %.1.1 = phi i32 [ %i.cx, %bb.r ], [ %.093151.1, %.tail.1 ], [ %.093151.1, %sub_0.1 ] ; 2 uses
  %i.da = add i32 %.0107150.1, 1                  ; 2 uses
  %i.db = sext i32 %i.da to i64
  %i.dc = getelementptr inbounds [40 x i8], ptr @QL_HELP, i64 %i.db ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %.not123.1 = icmp eq ptr %i.dd, null
  br i1 %.not123.1, label %._crit_edge.1, label %.lr.ph152.1, !llvm.loop !12

._crit_edge.1:                                    ; preds = %bb.r, %.tail.1.thread
  %.2.1 = phi i32 [ %i.cx, %bb.r ], [ %.1.1, %.tail.1.thread ] ; 2 uses
end_hunk_0
