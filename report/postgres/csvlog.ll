Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/postgres/original/csvlog?download=true
begin_hunk_0_@write_csvlog:bb.a
  %.not47 = icmp eq i32 %i.m, 0
  br i1 %.not47, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.m) #4
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.n = load ptr, ptr @MyProcPort, align 8       ; 2 uses
  %.not48 = icmp eq ptr %i.n, null
  br i1 %.not48, label %bb.o, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 288
  %i.p = load ptr, ptr %i.o, align 8
  %.not49 = icmp eq ptr %i.p, null
  br i1 %.not49, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 34) #4
  %i.q = load ptr, ptr @MyProcPort, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 288
  %i.s = load ptr, ptr %i.r, align 8
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef %i.s) #4
  %i.t = load ptr, ptr @MyProcPort, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 312
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not50 = icmp eq ptr %i.v, null
  br i1 %.not50, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.w = load i8, ptr %i.v, align 1
  %.not51 = icmp eq i8 %i.w, 0
  br i1 %.not51, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 58) #4
  %i.x = load ptr, ptr @MyProcPort, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 312
  %i.z = load ptr, ptr %i.y, align 8
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef %i.z) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 34) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j, %bb.i
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.aa = load i64, ptr @MyStartTime, align 8
  %i.ab = load i32, ptr @MyProcPid, align 4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.1, i64 noundef %i.aa, i32 noundef %i.ab) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ac = load i64, ptr @write_csvlog.log_line_number, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef %i.ac) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ad = load ptr, ptr @MyProcPort, align 8
  %.not52 = icmp eq ptr %i.ad, null
  br i1 %.not52, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #4
  call void @initStringInfo(ptr noundef nonnull %2) #4
  %i.ae = call ptr @get_ps_display(ptr noundef nonnull %i.a) #4
  %i.af = load i32, ptr %i.a, align 4
  call void @appendBinaryStringInfo(ptr noundef nonnull %2, ptr noundef %i.ae, i32 noundef %i.af) #4
  %i.ag = load ptr, ptr %2, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.ag)
  %i.ah = load ptr, ptr %2, align 8
  call void @pfree(ptr noundef %i.ah) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #4
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ai = call ptr @get_formatted_start_time() #4
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef %i.ai) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.aj = load ptr, ptr @MyProc, align 8          ; 3 uses
  %.not53 = icmp eq ptr %i.aj, null
  br i1 %.not53, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %i.al = load i32, ptr %i.ak, align 4            ; 2 uses
  %.not54 = icmp eq i32 %i.al, -1
  br i1 %.not54, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 56
  %i.an = load i32, ptr %i.am, align 4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.3, i32 noundef %i.al, i32 noundef %i.an) #4
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ao = call i32 @GetTopTransactionIdIfAny() #4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.4, i32 noundef %i.ao) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ap = load i32, ptr %0, align 8
  %i.aq = call ptr @error_severity(i32 noundef %i.ap) #4
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef %i.aq) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.as = load i32, ptr %i.ar, align 8
  %i.at = call ptr @unpack_sql_state(i32 noundef %i.as) #4
  call void @appendStringInfoString(ptr noundef nonnull %1, ptr noundef %i.at) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.av = load ptr, ptr %i.au, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.av)
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ax = load ptr, ptr %i.aw, align 8            ; 2 uses
  %.not55 = icmp eq ptr %i.ax, null
  br i1 %.not55, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.az = load ptr, ptr %i.ay, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sink = phi ptr [ %i.az, %bb.u ], [ %i.ax, %bb.t ]
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %.sink)
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.bb)
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.bd = load ptr, ptr %i.bc, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.bd)
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.bf = load i32, ptr %i.be, align 4            ; 2 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.bh = load ptr, ptr %i.bc, align 8
  %.not56 = icmp eq ptr %i.bh, null
  br i1 %.not56, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.bf) #4
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %bb.v
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 7
  %i.bj = load i8, ptr %i.bi, align 1, !range !4, !noundef !5
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bm = load ptr, ptr %i.bl, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.bm)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.bn = call zeroext i1 @check_log_of_query(ptr noundef nonnull %0) #4
  br i1 %i.bn, label %bb.ab, label %.critedge

bb.ab:                                            ; preds = %bb.aa
  %i.bo = load ptr, ptr @debug_query_string, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.bo)
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.bq = load i32, ptr %i.bp, align 8            ; 2 uses
  %i.br = icmp sgt i32 %i.bq, 0
  br i1 %i.br, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.bq) #4
  br label %bb.ad

.critedge:                                        ; preds = %bb.aa
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  br label %bb.ad

bb.ad:                                            ; preds = %.critedge, %bb.ac, %bb.ab
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.bs = load i32, ptr @Log_error_verbosity, align 4
  %i.bt = icmp sgt i32 %i.bs, 1
  br i1 %i.bt, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #4
  call void @initStringInfo(ptr noundef nonnull %3) #4
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not57 = icmp eq ptr %i.bv, null
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre = load ptr, ptr %.phi.trans.insert, align 8 ; 3 uses
  br i1 %.not57, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not58 = icmp eq ptr %.pre, null
  br i1 %.not58, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bx = load i32, ptr %i.bw, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.bv, ptr noundef nonnull %.pre, i32 noundef %i.bx) #4
  br label %.thread

bb.ah:                                            ; preds = %bb.ae, %bb.af
  %4 = phi ptr [ null, %bb.af ], [ %.pre, %bb.ae ] ; 2 uses
  %.not59 = icmp eq ptr %4, null
  br i1 %.not59, label %.thread, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bz = load i32, ptr %i.by, align 8
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %3, ptr noundef nonnull @.str.6, ptr noundef nonnull %4, i32 noundef %i.bz) #4
  br label %.thread

.thread:                                          ; preds = %bb.ah, %bb.ai, %bb.ag
  %i.ca = load ptr, ptr %3, align 8
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.ca)
  %i.cb = load ptr, ptr %3, align 8
  call void @pfree(ptr noundef %i.cb) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #4
  br label %bb.aj

bb.aj:                                            ; preds = %.thread, %bb.ad
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.cc = load ptr, ptr @application_name, align 8 ; 2 uses
  %.not60 = icmp eq ptr %i.cc, null
  br i1 %.not60, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef nonnull %i.cc)
  br label %bb.al

bb.al:                                            ; preds = %bb.ak, %bb.aj
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.cd = call ptr @get_backend_type_for_log() #4
  call fastcc void @appendCSVLiteral(ptr noundef %1, ptr noundef %i.cd)
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ce = load ptr, ptr @MyProc, align 8          ; 2 uses
  %.not61 = icmp eq ptr %i.ce, null
  br i1 %.not61, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 384
  %i.cg = load ptr, ptr %i.cf, align 128          ; 2 uses
  %.not62 = icmp eq ptr %i.cg, null
  br i1 %.not62, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = load i32, ptr %i.ch, align 8            ; 2 uses
  %i.cj = load i32, ptr @MyProcPid, align 4
  %.not63 = icmp eq i32 %i.ci, %i.cj
  br i1 %.not63, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str, i32 noundef %i.ci) #4
  br label %bb.ap

bb.ap:                                            ; preds = %bb.am, %bb.an, %bb.ao, %bb.al
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 44) #4
  %i.ck = call i64 @pgstat_get_my_query_id() #4
  call void (ptr, ptr, ...) @appendStringInfo(ptr noundef nonnull %1, ptr noundef nonnull @.str.2, i64 noundef %i.ck) #4
  call void @appendStringInfoChar(ptr noundef nonnull %1, i8 noundef signext 10) #4
  %i.cl = load i8, ptr @syslogger_setup_done, align 1, !range !4, !noundef !5
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load ptr, ptr %1, align 8               ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cp = load i32, ptr %i.co, align 8            ; 2 uses
  br i1 %i.cm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  call void @write_syslogger_file(ptr noundef %i.cn, i32 noundef %i.cp, i32 noundef 8) #4
  br label %bb.as

bb.ar:                                            ; preds = %bb.ap
  call void @write_pipe_chunks(ptr noundef %i.cn, i32 noundef %i.cp, i32 noundef 8) #4
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq
  %i.cq = load ptr, ptr %1, align 8
  call void @pfree(ptr noundef %i.cq) #4
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @reset_formatted_start_time() local_unnamed_addr #2

declare void @initStringInfo(ptr noundef) local_unnamed_addr #2

declare void @appendStringInfoString(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @get_formatted_log_time() local_unnamed_addr #2

declare void @appendStringInfoChar(ptr noundef, i8 noundef signext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @appendCSVLiteral(ptr noundef nonnull %0, ptr nofree noundef readonly captures(address_is_null) %1) unnamed_addr #3 {
bb.a:
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 12 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add i32 %i.c, 1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp slt i32 %i.d, %i.f
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 34) #4
  br label %.preheader

bb.d:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8
  %i.h = sext i32 %i.c to i64
  %i.i = getelementptr inbounds i8, ptr %i.g, i64 %i.h
  store i8 34, ptr %i.i, align 1
  %i.j = load ptr, ptr %0, align 8
  %i.k = load i32, ptr %i.b, align 8
  %i.l = add i32 %i.k, 1                          ; 2 uses
  store i32 %i.l, ptr %i.b, align 8
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds i8, ptr %i.j, i64 %i.m
  store i8 0, ptr %i.n, align 1
  br label %.preheader

.preheader:                                       ; preds = %bb.d, %bb.c
  br label %bb.e

bb.e:                                             ; preds = %.backedge, %.preheader
  %.0 = phi ptr [ %1, %.preheader ], [ %i.o, %.backedge ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.0, i64 1
  %i.p = load i8, ptr %.0, align 1                ; 3 uses
  switch i8 %i.p, label %bb.i [
    i8 0, label %bb.l
    i8 34, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr %i.b, align 8              ; 2 uses
  %i.r = add i32 %i.q, 1
  %i.s = load i32, ptr %i.e, align 4
  %.not37 = icmp slt i32 %i.r, %i.s
  br i1 %.not37, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 34) #4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.t = load ptr, ptr %0, align 8
  %i.u = sext i32 %i.q to i64
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 %i.u
  store i8 34, ptr %i.v, align 1
  %i.w = load ptr, ptr %0, align 8
  %i.x = load i32, ptr %i.b, align 8
  %i.y = add i32 %i.x, 1                          ; 2 uses
  store i32 %i.y, ptr %i.b, align 8
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.w, i64 %i.z
  store i8 0, ptr %i.aa, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %bb.g, %bb.h
  %i.ab = load i32, ptr %i.b, align 8             ; 2 uses
  %i.ac = add i32 %i.ab, 1
  %i.ad = load i32, ptr %i.e, align 4
  %.not38 = icmp slt i32 %i.ac, %i.ad
  br i1 %.not38, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext %i.p) #4
  br label %.backedge

bb.k:                                             ; preds = %bb.i
  %i.ae = load ptr, ptr %0, align 8
  %i.af = sext i32 %i.ab to i64
  %i.ag = getelementptr inbounds i8, ptr %i.ae, i64 %i.af
  store i8 %i.p, ptr %i.ag, align 1
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = load i32, ptr %i.b, align 8
  %i.aj = add i32 %i.ai, 1                        ; 2 uses
  store i32 %i.aj, ptr %i.b, align 8
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.ak
  store i8 0, ptr %i.al, align 1
  br label %.backedge

.backedge:                                        ; preds = %bb.k, %bb.j
  br label %bb.e, !llvm.loop !6

bb.l:                                             ; preds = %bb.e
  %i.am = load i32, ptr %i.b, align 8             ; 2 uses
  %i.an = add i32 %i.am, 1
  %i.ao = load i32, ptr %i.e, align 4
  %.not36 = icmp slt i32 %i.an, %i.ao
  br i1 %.not36, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @appendStringInfoChar(ptr noundef nonnull %0, i8 noundef signext 34) #4
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = sext i32 %i.am to i64
  %i.ar = getelementptr inbounds i8, ptr %i.ap, i64 %i.aq
  store i8 34, ptr %i.ar, align 1
  %i.as = load ptr, ptr %0, align 8
  %i.at = load i32, ptr %i.b, align 8
  %i.au = add i32 %i.at, 1                        ; 2 uses
end_hunk_0
