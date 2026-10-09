Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/url?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@ff_url_decompose:bb.a

.lr.ph.preheader.i77:                             ; preds = %find_delim.exit75
  %i.al = ptrtoaddr ptr %.0.lcssa.i68 to i64
  %i.am = sub i64 %i.al, %i.ac
  %scevgep.i78 = getelementptr i8, ptr %i.z, i64 %i.am
  br label %.lr.ph.i79

.lr.ph.i79:                                       ; preds = %bb.k, %.lr.ph.preheader.i77
  %.06.i80 = phi ptr [ %i.ap, %bb.k ], [ %i.z, %.lr.ph.preheader.i77 ] ; 3 uses
  %i.an = load i8, ptr %.06.i80, align 1, !tbaa !10
  %i.ao = and i8 %i.an, -65
  %.not.i81.not = icmp eq i8 %i.ao, 0
  br i1 %.not.i81.not, label %find_delim.exit83, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i79
  %i.ap = getelementptr inbounds nuw i8, ptr %.06.i80, i64 1 ; 2 uses
  %exitcond.not.i82 = icmp eq ptr %i.ap, %.0.lcssa.i68
  br i1 %exitcond.not.i82, label %find_delim.exit83, label %.lr.ph.i79, !llvm.loop !0

find_delim.exit83:                                ; preds = %.lr.ph.i79, %bb.k, %find_delim.exit75.thread, %find_delim.exit75
  %.0.lcssa.i68117 = phi ptr [ %.0.lcssa.i68, %find_delim.exit75 ], [ %i.z, %find_delim.exit75.thread ], [ %.0.lcssa.i68, %bb.k ], [ %.0.lcssa.i68, %.lr.ph.i79 ] ; 12 uses
  %.0.lcssa.i76 = phi ptr [ %i.z, %find_delim.exit75 ], [ %i.z, %find_delim.exit75.thread ], [ %.06.i80, %.lr.ph.i79 ], [ %scevgep.i78, %bb.k ] ; 2 uses
  %i.aq = load i8, ptr %.0.lcssa.i76, align 1, !tbaa !10
  %i.ar = icmp eq i8 %i.aq, 64
  %i.as = getelementptr inbounds nuw i8, ptr %.0.lcssa.i76, i64 1
  %spec.select67 = select i1 %i.ar, ptr %i.as, ptr %i.z ; 10 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select67, ptr %i.at, align 8, !tbaa !30
  %i.au = load i8, ptr %spec.select67, align 1, !tbaa !10
  %i.av = icmp eq i8 %i.au, 91
  %i.aw = icmp ult ptr %spec.select67, %.0.lcssa.i68117 ; 2 uses
  br i1 %i.av, label %bb.l, label %bb.p

bb.l:                                             ; preds = %find_delim.exit83
  br i1 %i.aw, label %.lr.ph.preheader.i85, label %find_delim.exit91.thread

.lr.ph.preheader.i85:                             ; preds = %bb.l
  %i.ax = ptrtoaddr ptr %.0.lcssa.i68117 to i64
  %i.ay = ptrtoaddr ptr %spec.select67 to i64
  %i.az = sub i64 %i.ax, %i.ay
  %scevgep.i86 = getelementptr i8, ptr %spec.select67, i64 %i.az ; 2 uses
  br label %.lr.ph.i87

.lr.ph.i87:                                       ; preds = %bb.m, %.lr.ph.preheader.i85
  %.06.i88 = phi ptr [ %i.bb, %bb.m ], [ %spec.select67, %.lr.ph.preheader.i85 ] ; 4 uses
  %i.ba = load i8, ptr %.06.i88, align 1, !tbaa !10 ; 3 uses
  switch i8 %i.ba, label %bb.m [
    i8 93, label %find_delim.exit91
    i8 0, label %find_delim.exit91
  ]

bb.m:                                             ; preds = %.lr.ph.i87
  %i.bb = getelementptr inbounds nuw i8, ptr %.06.i88, i64 1 ; 2 uses
  %exitcond.not.i90 = icmp eq ptr %i.bb, %.0.lcssa.i68117
  br i1 %exitcond.not.i90, label %find_delim.exit91thread-pre-split, label %.lr.ph.i87, !llvm.loop !0

find_delim.exit91thread-pre-split:                ; preds = %bb.m
  %.pr = load i8, ptr %scevgep.i86, align 1, !tbaa !10
  br label %find_delim.exit91

find_delim.exit91:                                ; preds = %.lr.ph.i87, %.lr.ph.i87, %find_delim.exit91thread-pre-split
  %i.bc = phi i8 [ %.pr, %find_delim.exit91thread-pre-split ], [ %i.ba, %.lr.ph.i87 ], [ %i.ba, %.lr.ph.i87 ]
  %.0.lcssa.i84 = phi ptr [ %scevgep.i86, %find_delim.exit91thread-pre-split ], [ %.06.i88, %.lr.ph.i87 ], [ %.06.i88, %.lr.ph.i87 ]
  %.not65 = icmp eq i8 %i.bc, 93
  br i1 %.not65, label %bb.n, label %find_delim.exit91.thread

bb.n:                                             ; preds = %find_delim.exit91
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i84, i64 1 ; 4 uses
  %i.be = icmp ult ptr %i.bd, %.0.lcssa.i68117
  br i1 %i.be, label %bb.o, label %find_delim.exit99

bb.o:                                             ; preds = %bb.n
  %i.bf = load i8, ptr %i.bd, align 1, !tbaa !10
  %.not66 = icmp eq i8 %i.bf, 58
  br i1 %.not66, label %find_delim.exit99, label %find_delim.exit91.thread

bb.p:                                             ; preds = %find_delim.exit83
  br i1 %i.aw, label %.lr.ph.preheader.i93, label %find_delim.exit99

.lr.ph.preheader.i93:                             ; preds = %bb.p
  %i.bg = ptrtoaddr ptr %.0.lcssa.i68117 to i64
  %i.bh = ptrtoaddr ptr %spec.select67 to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %scevgep.i94 = getelementptr i8, ptr %spec.select67, i64 %i.bi
  br label %.lr.ph.i95

.lr.ph.i95:                                       ; preds = %bb.q, %.lr.ph.preheader.i93
  %.06.i96 = phi ptr [ %i.bk, %bb.q ], [ %spec.select67, %.lr.ph.preheader.i93 ] ; 4 uses
  %i.bj = load i8, ptr %.06.i96, align 1, !tbaa !10
  switch i8 %i.bj, label %bb.q [
    i8 58, label %find_delim.exit99
    i8 0, label %find_delim.exit99
  ]

bb.q:                                             ; preds = %.lr.ph.i95
  %i.bk = getelementptr inbounds nuw i8, ptr %.06.i96, i64 1 ; 2 uses
  %exitcond.not.i98 = icmp eq ptr %i.bk, %.0.lcssa.i68117
  br i1 %exitcond.not.i98, label %find_delim.exit99, label %.lr.ph.i95, !llvm.loop !0

bb.r:                                             ; preds = %bb.h, %bb.g, %find_delim.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %spec.select, ptr %i.bl, align 8, !tbaa !31
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %spec.select, ptr %i.bm, align 8, !tbaa !30
  br label %find_delim.exit99

find_delim.exit99:                                ; preds = %bb.q, %.lr.ph.i95, %.lr.ph.i95, %bb.o, %bb.n, %bb.p, %bb.r
  %.sink148 = phi i64 [ 24, %bb.r ], [ 40, %bb.p ], [ 40, %bb.n ], [ 40, %bb.o ], [ 40, %.lr.ph.i95 ], [ 40, %.lr.ph.i95 ], [ 40, %bb.q ]
  %spec.select.sink = phi ptr [ %spec.select, %bb.r ], [ %spec.select67, %bb.p ], [ %i.bd, %bb.n ], [ %i.bd, %bb.o ], [ %scevgep.i94, %bb.q ], [ %.06.i96, %.lr.ph.i95 ], [ %.06.i96, %.lr.ph.i95 ]
  %.3 = phi ptr [ %spec.select, %bb.r ], [ %.0.lcssa.i68117, %bb.p ], [ %.0.lcssa.i68117, %bb.n ], [ %.0.lcssa.i68117, %bb.o ], [ %.0.lcssa.i68117, %.lr.ph.i95 ], [ %.0.lcssa.i68117, %.lr.ph.i95 ], [ %.0.lcssa.i68117, %bb.q ] ; 6 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 %.sink148
  store ptr %spec.select.sink, ptr %i.bn, align 8, !tbaa !19
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.3, ptr %i.bo, align 8, !tbaa !20
  %i.bp = icmp ult ptr %.3, %.059
  br i1 %i.bp, label %.lr.ph.preheader.i101, label %find_delim.exit107

.lr.ph.preheader.i101:                            ; preds = %find_delim.exit99
  %i.bq = ptrtoaddr ptr %.3 to i64
  %i.br = sub i64 %i.q, %i.bq
  %scevgep.i102 = getelementptr i8, ptr %.3, i64 %i.br
  br label %.lr.ph.i103

.lr.ph.i103:                                      ; preds = %bb.s, %.lr.ph.preheader.i101
  %.06.i104 = phi ptr [ %i.bw, %bb.s ], [ %.3, %.lr.ph.preheader.i101 ] ; 3 uses
  %i.bs = load i8, ptr %.06.i104, align 1, !tbaa !10 ; 2 uses
  %i.bt = zext nneg i8 %i.bs to i64
  %memchr.bounds127 = icmp ugt i8 %i.bs, 63
  %i.bu = shl nuw i64 1, %i.bt
  %i.bv = and i64 %i.bu, -9223372002495037439
  %memchr.bits128 = icmp eq i64 %i.bv, 0
  %memchr129.not = select i1 %memchr.bounds127, i1 true, i1 %memchr.bits128
  br i1 %memchr129.not, label %bb.s, label %find_delim.exit107

bb.s:                                             ; preds = %.lr.ph.i103
  %i.bw = getelementptr inbounds nuw i8, ptr %.06.i104, i64 1 ; 2 uses
  %exitcond.not.i106 = icmp eq ptr %i.bw, %.059
  br i1 %exitcond.not.i106, label %find_delim.exit107, label %.lr.ph.i103, !llvm.loop !0

find_delim.exit107:                               ; preds = %.lr.ph.i103, %bb.s, %find_delim.exit99
  %.0.lcssa.i100 = phi ptr [ %.3, %find_delim.exit99 ], [ %.06.i104, %.lr.ph.i103 ], [ %scevgep.i102, %bb.s ] ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %.0.lcssa.i100, ptr %i.bx, align 8, !tbaa !21
  %i.by = load i8, ptr %.0.lcssa.i100, align 1, !tbaa !10
  %i.bz = icmp eq i8 %i.by, 63
  %i.ca = icmp ult ptr %.0.lcssa.i100, %.059
  %or.cond = and i1 %i.ca, %i.bz
  br i1 %or.cond, label %.lr.ph.preheader.i109, label %find_delim.exit115

.lr.ph.preheader.i109:                            ; preds = %find_delim.exit107
  %i.cb = ptrtoaddr ptr %.0.lcssa.i100 to i64
  %i.cc = sub i64 %i.q, %i.cb
  %scevgep.i110 = getelementptr i8, ptr %.0.lcssa.i100, i64 %i.cc
  br label %.lr.ph.i111

.lr.ph.i111:                                      ; preds = %bb.t, %.lr.ph.preheader.i109
  %.06.i112 = phi ptr [ %i.ce, %bb.t ], [ %.0.lcssa.i100, %.lr.ph.preheader.i109 ] ; 4 uses
  %i.cd = load i8, ptr %.06.i112, align 1, !tbaa !10
  switch i8 %i.cd, label %bb.t [
    i8 35, label %find_delim.exit115
    i8 0, label %find_delim.exit115
  ]

bb.t:                                             ; preds = %.lr.ph.i111
  %i.ce = getelementptr inbounds nuw i8, ptr %.06.i112, i64 1 ; 2 uses
  %exitcond.not.i114 = icmp eq ptr %i.ce, %.059
  br i1 %exitcond.not.i114, label %find_delim.exit115, label %.lr.ph.i111, !llvm.loop !0

find_delim.exit115:                               ; preds = %.lr.ph.i111, %.lr.ph.i111, %bb.t, %find_delim.exit107
  %.4 = phi ptr [ %.0.lcssa.i100, %find_delim.exit107 ], [ %.06.i112, %.lr.ph.i111 ], [ %scevgep.i110, %bb.t ], [ %.06.i112, %.lr.ph.i111 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %.4, ptr %i.cf, align 8, !tbaa !22
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.059, ptr %i.cg, align 8, !tbaa !23
  br label %find_delim.exit91.thread

find_delim.exit91.thread:                         ; preds = %bb.l, %bb.o, %find_delim.exit91, %find_delim.exit115
  %.060 = phi i32 [ 0, %find_delim.exit115 ], [ -22, %find_delim.exit91 ], [ -22, %bb.o ], [ -22, %bb.l ]
  ret i32 %.060
}

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #8

; Function Attrs: nounwind uwtable
define range(i32 -22, 1) i32 @ff_make_absolute_url2(ptr noundef %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.URLComponents, align 8      ; 12 uses
  %6 = alloca %struct.URLComponents, align 8      ; 11 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = sext i32 %1 to i64                       ; 2 uses
  %i.c = add nsw i64 %i.b, -1                     ; 5 uses
  %i.d = getelementptr inbounds i8, ptr %0, i64 %i.c ; 3 uses
  %.not123 = icmp eq ptr %2, null
  %spec.store.select = select i1 %.not123, ptr @.str.15, ptr %2 ; 9 uses
  %.not124 = icmp eq i32 %4, 0
  br i1 %.not124, label %is_fq_dos_path.exit151.thread160, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @ff_url_decompose(ptr noundef nonnull %5, ptr noundef nonnull %spec.store.select, ptr noundef null) ; 2 uses
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %bb.z, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load i8, ptr %spec.store.select, align 1, !tbaa !10 ; 2 uses
  %i.h = and i8 %i.g, -33
  %i.i = add i8 %i.h, -65
  %or.cond17.i = icmp ult i8 %i.i, 26
  br i1 %or.cond17.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 1
  %i.k = load i8, ptr %i.j, align 1, !tbaa !10
  %i.l = icmp eq i8 %i.k, 58
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 2
  %i.n = load i8, ptr %i.m, align 1, !tbaa !10
  switch i8 %i.n, label %bb.g [
    i8 47, label %is_fq_dos_path.exit.thread154
    i8 92, label %is_fq_dos_path.exit.thread154
  ]

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d
  switch i8 %i.g, label %is_fq_dos_path.exit.thread [
    i8 47, label %is_fq_dos_path.exit
    i8 92, label %is_fq_dos_path.exit
  ]

is_fq_dos_path.exit:                              ; preds = %bb.g, %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %spec.store.select, i64 1
  %i.p = load i8, ptr %i.o, align 1, !tbaa !10
  switch i8 %i.p, label %is_fq_dos_path.exit.thread [
    i8 92, label %is_fq_dos_path.exit.thread154
    i8 47, label %is_fq_dos_path.exit.thread154
  ]

is_fq_dos_path.exit.thread:                       ; preds = %is_fq_dos_path.exit, %bb.g
  %i.q = tail call i32 @av_strstart(ptr noundef nonnull %spec.store.select, ptr noundef nonnull @.str.16, ptr noundef null) #11
  %.not126 = icmp eq i32 %i.q, 0
  br i1 %.not126, label %bb.h, label %is_fq_dos_path.exit.thread154

bb.h:                                             ; preds = %is_fq_dos_path.exit.thread
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !20
  %i.t = load ptr, ptr %5, align 8, !tbaa !14
  %i.u = icmp eq ptr %i.s, %i.t
  br i1 %i.u, label %is_fq_dos_path.exit.thread154, label %is_fq_dos_path.exit151.thread160

is_fq_dos_path.exit.thread154:                    ; preds = %is_fq_dos_path.exit, %is_fq_dos_path.exit, %bb.f, %bb.f, %bb.h, %is_fq_dos_path.exit.thread
  %i.v = load i8, ptr %3, align 1, !tbaa !10      ; 2 uses
  %i.w = and i8 %i.v, -33
  %i.x = add i8 %i.w, -65
  %or.cond17.i146 = icmp ult i8 %i.x, 26
  br i1 %or.cond17.i146, label %bb.i, label %bb.k

bb.i:                                             ; preds = %is_fq_dos_path.exit.thread154
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.z = load i8, ptr %i.y, align 1, !tbaa !10
  %i.aa = icmp eq i8 %i.z, 58
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 2
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !10
  switch i8 %i.ac, label %bb.k [
    i8 47, label %is_fq_dos_path.exit151.thread160
    i8 92, label %is_fq_dos_path.exit151.thread160
  ]

bb.k:                                             ; preds = %bb.j, %bb.i, %is_fq_dos_path.exit.thread154
  switch i8 %i.v, label %is_fq_dos_path.exit151.thread [
    i8 47, label %is_fq_dos_path.exit151
    i8 92, label %is_fq_dos_path.exit151
  ]

is_fq_dos_path.exit151:                           ; preds = %bb.k, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !10  ; 2 uses
  %switch.selectcmp.case1.i147 = icmp ne i8 %i.ae, 47
  %switch.selectcmp.case2.i148 = icmp ne i8 %i.ae, 92
  %switch.selectcmp.i149.not = and i1 %switch.selectcmp.case1.i147, %switch.selectcmp.case2.i148
  %cond.fr = freeze i1 %switch.selectcmp.i149.not
  br i1 %cond.fr, label %is_fq_dos_path.exit151.thread, label %is_fq_dos_path.exit151.thread160

is_fq_dos_path.exit151.thread:                    ; preds = %bb.k, %is_fq_dos_path.exit151
  br label %is_fq_dos_path.exit151.thread160

is_fq_dos_path.exit151.thread160:                 ; preds = %bb.j, %bb.j, %is_fq_dos_path.exit151.thread, %is_fq_dos_path.exit151, %bb.h, %bb.b
  %.099 = phi ptr [ %spec.store.select, %bb.b ], [ %spec.store.select, %bb.h ], [ %spec.store.select, %is_fq_dos_path.exit151.thread ], [ @.str.15, %is_fq_dos_path.exit151 ], [ @.str.15, %bb.j ], [ @.str.15, %bb.j ]
  %.077 = phi ptr [ @.str.14, %bb.b ], [ @.str.14, %bb.h ], [ @.str.17, %is_fq_dos_path.exit151.thread ], [ @.str.17, %is_fq_dos_path.exit151 ], [ @.str.17, %bb.j ], [ @.str.17, %bb.j ]
  %i.af = call i32 @ff_url_decompose(ptr noundef nonnull %5, ptr noundef nonnull %.099, ptr noundef null) ; 2 uses
  %i.ag = icmp slt i32 %i.af, 0
  br i1 %i.ag, label %bb.z, label %bb.l

bb.l:                                             ; preds = %is_fq_dos_path.exit151.thread160
  %i.ah = call i32 @ff_url_decompose(ptr noundef nonnull %6, ptr noundef %3, ptr noundef null) ; 2 uses
  %i.ai = icmp slt i32 %i.ah, 0
  br i1 %i.ai, label %bb.z, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aj = load ptr, ptr %5, align 8, !tbaa !14    ; 4 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !17 ; 3 uses
  %i.am = load ptr, ptr %6, align 8, !tbaa !14    ; 8 uses
  %i.an = icmp eq ptr %i.al, %i.am
  %i.ao = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8            ; 2 uses
  %i.aq = icmp ugt ptr %i.ap, %i.aj
  %i.ar = select i1 %i.an, i1 %i.aq, i1 false
  %.093 = select i1 %i.ar, ptr %i.ap, ptr %i.aj   ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !20 ; 7 uses
  %i.au = icmp eq ptr %i.at, %i.am                ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.aw = load ptr, ptr %i.av, align 8            ; 8 uses
  %i.ax = icmp ugt ptr %i.aw, %.093               ; 2 uses
  %i.ay = select i1 %i.au, i1 %i.ax, i1 false
  %.194 = select i1 %i.ay, ptr %i.aw, ptr %.093   ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !21 ; 6 uses
  %i.bb = icmp eq ptr %i.ba, %i.am
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8            ; 5 uses
  %i.be = icmp ugt ptr %i.bd, %.194
  %i.bf = select i1 %i.bb, i1 %i.be, i1 false
  %.295 = select i1 %i.bf, ptr %i.bd, ptr %.194   ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !22
  %i.bi = icmp eq ptr %i.bh, %i.am
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.bk = load ptr, ptr %i.bj, align 8            ; 2 uses
  %i.bl = icmp ugt ptr %i.bk, %.295
  %i.bm = select i1 %i.bi, i1 %i.bl, i1 false
  %.396 = select i1 %i.bm, ptr %i.bk, ptr %.295   ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !23 ; 2 uses
  %i.bp = icmp eq ptr %i.bo, %i.am
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 72
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %i.bs = icmp ugt ptr %i.br, %.396
  %i.bt = select i1 %i.bp, i1 %i.bs, i1 false
  %.497 = select i1 %i.bt, ptr %i.br, ptr %.396   ; 2 uses
  %i.bu = ptrtoint ptr %.497 to i64
  %i.bv = ptrtoint ptr %i.aj to i64
  %i.bw = sub i64 %i.bu, %i.bv                    ; 6 uses
  %i.bx = ptrtoint ptr %i.d to i64                ; 2 uses
  %i.by = icmp ugt i64 %i.bw, %i.c
  br i1 %i.by, label %.thread192.thread, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %0, ptr align 1 %i.aj, i64 %i.bw, i1 false)
  %i.bz = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.ca = ptrtoint ptr %i.am to i64
  %i.cb = sub i64 %i.bz, %i.ca                    ; 5 uses
  %gepdiff = sub nuw nsw i64 %i.c, %i.bw
  %i.cc = icmp ugt i64 %i.cb, %gepdiff
  br i1 %i.cc, label %.thread192.thread, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %i.bw ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.cd, ptr align 1 %i.am, i64 %i.cb, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 %i.cb ; 5 uses
  %i.cf = icmp ugt ptr %i.bd, %i.aw
  %i.cg = icmp ule ptr %.497, %i.aw               ; 2 uses
  %i.ch = and i1 %i.cf, %i.cg
  %i.ci = icmp ule ptr %i.at, %i.am
  %narrow = select i1 %i.ci, i1 %i.ch, i1 false   ; 2 uses
  %i.cj = icmp ugt ptr %i.ba, %i.at               ; 3 uses
  br i1 %i.cj, label %.split, label %.critedge

.split:                                           ; preds = %bb.o
  %i.ck = load i8, ptr %i.at, align 1, !tbaa !10
  %i.cl = icmp ne i8 %i.ck, 47
  %spec.select138 = select i1 %i.cl, i1 %narrow, i1 false
  br i1 %spec.select138, label %.preheader.preheader, label %.critedge

.preheader:                                       ; preds = %.preheader.preheader
  %i.cm = icmp ugt ptr %i.cn, %i.aw
  br i1 %i.cm, label %.preheader.preheader, label %.critedge, !llvm.loop !32

.preheader.preheader:                             ; preds = %.split, %.preheader
  %.091225 = phi ptr [ %i.cn, %.preheader ], [ %i.bd, %.split ] ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %.091225, i64 -1 ; 4 uses
  %i.co = load i8, ptr %i.cn, align 1, !tbaa !10
  %i.cp = sext i8 %i.co to i32
  %i.cq = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %.077, i32 noundef %i.cp) #12
  %.not128 = icmp eq ptr %i.cq, null
  br i1 %.not128, label %.preheader, label %.critedge, !llvm.loop !32

.critedge:                                        ; preds = %.preheader, %.preheader.preheader, %bb.o, %.split
  %.090.shrunk171 = phi i1 [ false, %.split ], [ %narrow, %bb.o ], [ true, %.preheader.preheader ], [ true, %.preheader ] ; 3 uses
  %.192 = phi ptr [ undef, %.split ], [ %i.bd, %bb.o ], [ %i.cn, %.preheader ], [ %.091225, %.preheader.preheader ] ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !15
  %i.ct = icmp ule ptr %i.al, %i.cs
  %i.cu = select i1 %i.ct, i1 %i.cg, i1 false
  %i.cv = select i1 %i.cu, i1 %i.au, i1 false
  %narrow198 = select i1 %i.cv, i1 %i.ax, i1 false
  %i.cw = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !18
  %i.cy = icmp ugt ptr %i.cx, %i.al
  %narrow199 = select i1 %i.cy, i1 true, i1 %narrow198
  %i.cz = or i1 %i.cj, %.090.shrunk171
  %narrow200 = select i1 %i.cz, i1 %narrow199, i1 false
  br i1 %narrow200, label %bb.p, label %bb.u

bb.p:                                             ; preds = %.critedge
  %i.da = add nuw nsw i64 %i.bw, %i.cb
  %.not130 = icmp eq i64 %i.c, %i.da
  br i1 %.not130, label %.thread192.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  store i8 47, ptr %i.ce, align 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ce, i64 1 ; 3 uses
  store ptr %i.db, ptr %i.a, align 8, !tbaa !19
  br i1 %.090.shrunk171, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.dc = call fastcc i32 @append_path(ptr noundef nonnull %i.db, ptr noundef nonnull %i.d, ptr noundef %i.a, ptr noundef %i.aw, ptr noundef %.192) ; 2 uses
  %i.dd = icmp slt i32 %i.dc, 0
  br i1 %i.dd, label %.thread192, label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  br i1 %i.cj, label %bb.t, label %bb.x

bb.t:                                             ; preds = %bb.s
  %i.de = call fastcc i32 @append_path(ptr noundef nonnull %i.db, ptr noundef nonnull %i.d, ptr noundef %i.a, ptr noundef %i.at, ptr noundef nonnull %i.ba) ; 2 uses
  %i.df = icmp slt i32 %i.de, 0
  br i1 %i.df, label %.thread192, label %bb.x

bb.u:                                             ; preds = %.critedge
  br i1 %.090.shrunk171, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.dg = ptrtoint ptr %.192 to i64
  %i.dh = ptrtoint ptr %i.aw to i64
  %i.di = sub i64 %i.dg, %i.dh                    ; 3 uses
  %7 = add nuw nsw i64 %i.bw, %i.cb
  %gepdiff218 = sub nsw i64 %i.c, %7
  %i.dj = icmp ugt i64 %i.di, %gepdiff218
  br i1 %i.dj, label %.thread192.thread, label %.thread181

.thread181:                                       ; preds = %bb.v
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.ce, ptr align 1 %i.aw, i64 %i.di, i1 false)
  %i.dk = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.di
  br label %bb.w

bb.w:                                             ; preds = %.thread181, %bb.u
  %i.dl = phi ptr [ %i.dk, %.thread181 ], [ %i.ce, %bb.u ] ; 3 uses
  %i.dm = ptrtoint ptr %i.ba to i64
  %i.dn = sub i64 %i.dm, %i.bz                    ; 3 uses
  %i.do = ptrtoint ptr %i.dl to i64
  %i.dp = sub i64 %i.bx, %i.do
  %i.dq = icmp ugt i64 %i.dn, %i.dp
  br i1 %i.dq, label %.thread192.thread, label %.thread184

.thread184:                                       ; preds = %bb.w
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dl, ptr align 1 %i.at, i64 %i.dn, i1 false)
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 %i.dn
  store ptr %i.dr, ptr %i.a, align 8, !tbaa !19
  br label %bb.x

bb.x:                                             ; preds = %.thread184, %bb.s, %bb.t
  %i.ds = ptrtoint ptr %i.bo to i64
  %i.dt = ptrtoint ptr %i.ba to i64
  %i.du = sub i64 %i.ds, %i.dt                    ; 3 uses
  %i.dv = load ptr, ptr %i.a, align 8, !tbaa !19  ; 3 uses
  %i.dw = ptrtoint ptr %i.dv to i64
  %i.dx = sub i64 %i.bx, %i.dw
  %i.dy = icmp ugt i64 %i.du, %i.dx
  br i1 %i.dy, label %.thread192.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %i.dv, ptr align 1 %i.ba, i64 %i.du, i1 false)
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dv, i64 %i.du
  store i8 0, ptr %i.dz, align 1, !tbaa !10
  br label %bb.aa

bb.z:                                             ; preds = %is_fq_dos_path.exit151.thread160, %bb.l, %bb.c
  %.11 = phi i32 [ %i.e, %bb.c ], [ %i.af, %is_fq_dos_path.exit151.thread160 ], [ %i.ah, %bb.l ]
  %.11.fr = freeze i32 %.11                       ; 2 uses
  %i.ea = icmp eq i32 %.11.fr, -22
  %spec.select = select i1 %i.ea, ptr @.str.20, ptr @.str.15
  br label %.thread192

.thread192:                                       ; preds = %bb.t, %bb.r, %bb.z
  %.11195 = phi i32 [ %.11.fr, %bb.z ], [ %i.dc, %bb.r ], [ %i.de, %bb.t ]
  %i.eb = phi ptr [ %spec.select, %bb.z ], [ @.str.15, %bb.r ], [ @.str.15, %bb.t ]
  %.11195.fr = freeze i32 %.11195                 ; 2 uses
  %i.ec = icmp eq i32 %.11195.fr, -12
  %spec.select224 = select i1 %i.ec, ptr @.str.19, ptr %i.eb
  br label %.thread192.thread

.thread192.thread:                                ; preds = %.thread192, %bb.p, %bb.w, %bb.v, %bb.n, %bb.m, %bb.x
  %.11195222 = phi i32 [ %.11195.fr, %.thread192 ], [ -12, %bb.p ], [ -12, %bb.x ], [ -12, %bb.m ], [ -12, %bb.n ], [ -12, %bb.v ], [ -12, %bb.w ]
  %i.ed = phi ptr [ %spec.select224, %.thread192 ], [ @.str.19, %bb.p ], [ @.str.19, %bb.x ], [ @.str.19, %bb.m ], [ @.str.19, %bb.n ], [ @.str.19, %bb.v ], [ @.str.19, %bb.w ]
  %i.ee = tail call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.ed) #11 ; 0 uses
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %.thread192.thread, %bb.y
  %.098 = phi i32 [ %.11195222, %.thread192.thread ], [ -12, %bb.a ], [ 0, %bb.y ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  ret i32 %.098
}

declare i32 @av_strstart(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc range(i32 -12, 1) i32 @append_path(ptr noundef %0, ptr noundef %1, ptr nofree noundef nonnull captures(none) %2, ptr noundef %3, ptr nofree noundef readnone captures(address) %4) unnamed_addr #9 {
bb.a:
  %i.a = load ptr, ptr %2, align 8, !tbaa !19     ; 2 uses
  %i.b = icmp ult ptr %3, %4
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i8, ptr %3, align 1, !tbaa !10
  %i.d = icmp eq i8 %i.c, 47
  %spec.select.idx = zext i1 %i.d to i64
  %spec.select = getelementptr inbounds nuw i8, ptr %3, i64 %spec.select.idx
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.040 = phi ptr [ %3, %bb.a ], [ %spec.select, %bb.b ] ; 2 uses
  %i.e = icmp ult ptr %.040, %4
  br i1 %i.e, label %.lr.ph.preheader.i.lr.ph, label %._crit_edge

.lr.ph.preheader.i.lr.ph:                         ; preds = %bb.c
  %i.f = ptrtoaddr ptr %4 to i64
  %i.g = ptrtoint ptr %0 to i64
  %i.h = ptrtoint ptr %1 to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.lr.ph.preheader.i.lr.ph, %.critedge
  %.050 = phi ptr [ %i.a, %.lr.ph.preheader.i.lr.ph ], [ %.2, %.critedge ] ; 8 uses
  %.14149 = phi ptr [ %.040, %.lr.ph.preheader.i.lr.ph ], [ %i.r, %.critedge ] ; 8 uses
  %i.i = ptrtoaddr ptr %.14149 to i64
  %i.j = sub i64 %i.f, %i.i
  %scevgep.i = getelementptr i8, ptr %.14149, i64 %i.j
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.d, %.lr.ph.preheader.i
  %.06.i = phi ptr [ %i.l, %bb.d ], [ %.14149, %.lr.ph.preheader.i ] ; 4 uses
  %i.k = load i8, ptr %.06.i, align 1, !tbaa !10
  switch i8 %i.k, label %bb.d [
    i8 47, label %find_delim.exit
    i8 0, label %find_delim.exit
  ]

bb.d:                                             ; preds = %.lr.ph.i
  %i.l = getelementptr inbounds nuw i8, ptr %.06.i, i64 1 ; 2 uses
  %exitcond.not.i = icmp eq ptr %i.l, %4
  br i1 %exitcond.not.i, label %find_delim.exit, label %.lr.ph.i, !llvm.loop !0

find_delim.exit:                                  ; preds = %.lr.ph.i, %.lr.ph.i, %bb.d
  %.0.lcssa.i = phi ptr [ %.06.i, %.lr.ph.i ], [ %scevgep.i, %bb.d ], [ %.06.i, %.lr.ph.i ] ; 4 uses
  %i.m = icmp ult ptr %.0.lcssa.i, %4
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %find_delim.exit
  %i.n = load i8, ptr %.0.lcssa.i, align 1, !tbaa !10
  %i.o = icmp eq i8 %i.n, 47
  %i.p = zext i1 %i.o to i64
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %find_delim.exit
  %i.q = phi i64 [ 0, %find_delim.exit ], [ %i.p, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %.0.lcssa.i, i64 %i.q ; 3 uses
  %i.s = ptrtoint ptr %.0.lcssa.i to i64
  %i.t = ptrtoint ptr %.14149 to i64              ; 2 uses
  %i.u = sub i64 %i.s, %i.t
  switch i64 %i.u, label %bb.k [
    i64 1, label %bb.g
    i64 2, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.v = load i8, ptr %.14149, align 1, !tbaa !10
  %i.w = icmp eq i8 %i.v, 46
  br i1 %i.w, label %.critedge, label %bb.k

bb.h:                                             ; preds = %bb.f
  %i.x = load i8, ptr %.14149, align 1, !tbaa !10
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %.14149, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !tbaa !10
  %i.ab = icmp eq i8 %i.aa, 46
  br i1 %i.ab, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ac = ptrtoint ptr %.050 to i64
  %i.ad = sub i64 %i.ac, %i.g
  %i.ae = icmp sgt i64 %i.ad, 1
  %i.af = icmp ugt ptr %.050, %0
  %or.cond = select i1 %i.ae, i1 %i.af, i1 false
  br i1 %or.cond, label %.lr.ph, label %.critedge

.preheader:                                       ; preds = %.lr.ph
  %i.ag = icmp ugt ptr %i.ah, %0
  br i1 %i.ag, label %.lr.ph, label %.critedge, !llvm.loop !33

.lr.ph:                                           ; preds = %bb.j, %.preheader
  %.156 = phi ptr [ %i.ah, %.preheader ], [ %.050, %bb.j ] ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %.156, i64 -1 ; 4 uses
  %i.ai = getelementptr inbounds i8, ptr %.156, i64 -2
  %i.aj = load i8, ptr %i.ai, align 1, !tbaa !10
  %.not = icmp eq i8 %i.aj, 47
  br i1 %.not, label %..critedge.loopexit_crit_edge, label %.preheader, !llvm.loop !33

bb.k:                                             ; preds = %bb.g, %bb.f, %bb.i, %bb.h
  %i.ak = ptrtoint ptr %.050 to i64
  %i.al = sub i64 %i.h, %i.ak
  %i.am = ptrtoint ptr %i.r to i64
  %i.an = sub i64 %i.am, %i.t                     ; 3 uses
  %i.ao = icmp slt i64 %i.al, %i.an
  br i1 %i.ao, label %.loopexit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 1 %.050, ptr align 1 %.14149, i64 %i.an, i1 false)
  %i.ap = getelementptr inbounds i8, ptr %.050, i64 %i.an
  br label %.critedge

..critedge.loopexit_crit_edge:                    ; preds = %.lr.ph
  br label %.critedge, !llvm.loop !33

.critedge:                                        ; preds = %.preheader, %..critedge.loopexit_crit_edge, %bb.l, %bb.j, %bb.g
  %.2 = phi ptr [ %.050, %bb.g ], [ %.050, %bb.j ], [ %i.ap, %bb.l ], [ %i.ah, %..critedge.loopexit_crit_edge ], [ %i.ah, %.preheader ] ; 2 uses
  %i.aq = icmp ult ptr %i.r, %4
  br i1 %i.aq, label %.lr.ph.preheader.i, label %._crit_edge, !llvm.loop !34
end_hunk_0
