Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_parser-4204840c537c9517.yara_x_parser.b6715538e8e8d337-cgu.00?download=true
inline.NumInlined: 1717
inline.NumDeleted: 280
begin_hunk_0_@_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action:bb.a
  br label %bb.d

bb.bg:                                            ; preds = %bb.b
  store i64 54, ptr %0, align 8
  br label %bb.d

bb.bh:                                            ; preds = %bb.b
  store i64 55, ptr %0, align 8
  br label %bb.d

bb.bi:                                            ; preds = %bb.b
  store i64 56, ptr %0, align 8
  br label %bb.d

bb.bj:                                            ; preds = %bb.b
  store i64 57, ptr %0, align 8
  br label %bb.d

bb.bk:                                            ; preds = %bb.b
  store i64 58, ptr %0, align 8
  br label %bb.d

bb.bl:                                            ; preds = %bb.b
  store i64 59, ptr %0, align 8
  br label %bb.d

bb.bm:                                            ; preds = %bb.b
  store i64 60, ptr %0, align 8
  br label %bb.d

bb.bn:                                            ; preds = %bb.b
  store i64 61, ptr %0, align 8
  br label %bb.d

bb.bo:                                            ; preds = %bb.b
  store i64 62, ptr %0, align 8
  br label %bb.d

bb.bp:                                            ; preds = %bb.b
  store i64 63, ptr %0, align 8
  br label %bb.d

bb.bq:                                            ; preds = %bb.b
  store i64 64, ptr %0, align 8
  br label %bb.d

bb.br:                                            ; preds = %bb.b
  store i64 65, ptr %0, align 8
  br label %bb.d

bb.bs:                                            ; preds = %bb.b
  store i64 66, ptr %0, align 8
  br label %bb.d

bb.bt:                                            ; preds = %bb.b
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load i64, ptr %i.h, align 8, !noundef !5
  %i.j = sub nuw i64 %i.i, %i.g
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.g
  store i64 67, ptr %0, align 8, !alias.scope !81, !noalias !82
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !82
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.j, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !81, !noalias !82
  br label %bb.d

bb.bu:                                            ; preds = %bb.b
  %i.l = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i64, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %i.q = sub nuw i64 %i.p, %i.n
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 %i.n
  store i64 68, ptr %0, align 8, !alias.scope !83, !noalias !84
  %.sroa.4.0..sroa_idx.i153 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i153, align 8, !alias.scope !83, !noalias !84
  %.sroa.5.0..sroa_idx.i154 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %.sroa.5.0..sroa_idx.i154, align 8, !alias.scope !83, !noalias !84
  br label %bb.d

bb.bv:                                            ; preds = %bb.b
  %i.s = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !5
  %i.x = sub nuw i64 %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.u
  store i64 69, ptr %0, align 8, !alias.scope !85, !noalias !86
  %.sroa.4.0..sroa_idx.i155 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %.sroa.4.0..sroa_idx.i155, align 8, !alias.scope !85, !noalias !86
  %.sroa.5.0..sroa_idx.i156 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.x, ptr %.sroa.5.0..sroa_idx.i156, align 8, !alias.scope !85, !noalias !86
  br label %bb.d

bb.bw:                                            ; preds = %bb.b
  %i.z = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !5 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !5
  %i.ae = sub nuw i64 %i.ad, %i.ab
  %i.af = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  store i64 70, ptr %0, align 8, !alias.scope !87, !noalias !88
  %.sroa.4.0..sroa_idx.i157 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %.sroa.4.0..sroa_idx.i157, align 8, !alias.scope !87, !noalias !88
  %.sroa.5.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ae, ptr %.sroa.5.0..sroa_idx.i158, align 8, !alias.scope !87, !noalias !88
  br label %bb.d

bb.bx:                                            ; preds = %bb.b
  %i.ag = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = sub nuw i64 %i.ak, %i.ai
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.ai
  store i64 71, ptr %0, align 8, !alias.scope !89, !noalias !90
  %.sroa.4.0..sroa_idx.i159 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx.i159, align 8, !alias.scope !89, !noalias !90
  %.sroa.5.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.al, ptr %.sroa.5.0..sroa_idx.i160, align 8, !alias.scope !89, !noalias !90
  br label %bb.d

bb.by:                                            ; preds = %bb.b
  %i.an = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !5
  %i.as = sub nuw i64 %i.ar, %i.ap
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 %i.ap
  store i64 72, ptr %0, align 8, !alias.scope !91, !noalias !92
  %.sroa.4.0..sroa_idx.i161 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.at, ptr %.sroa.4.0..sroa_idx.i161, align 8, !alias.scope !91, !noalias !92
  %.sroa.5.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx.i162, align 8, !alias.scope !91, !noalias !92
  br label %bb.d

bb.bz:                                            ; preds = %bb.b
  %i.au = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aw = load i64, ptr %i.av, align 8, !noundef !5 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !5
  %i.az = sub nuw i64 %i.ay, %i.aw
  %i.ba = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.aw
  store i64 73, ptr %0, align 8, !alias.scope !93, !noalias !94
  %.sroa.4.0..sroa_idx.i163 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ba, ptr %.sroa.4.0..sroa_idx.i163, align 8, !alias.scope !93, !noalias !94
  %.sroa.5.0..sroa_idx.i164 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.az, ptr %.sroa.5.0..sroa_idx.i164, align 8, !alias.scope !93, !noalias !94
  br label %bb.d

bb.ca:                                            ; preds = %bb.b
  store i64 74, ptr %0, align 8
  br label %bb.d

bb.cb:                                            ; preds = %bb.b
  store i64 75, ptr %0, align 8
  br label %bb.d

bb.cc:                                            ; preds = %bb.b
  store i64 76, ptr %0, align 8
  br label %bb.d

bb.cd:                                            ; preds = %bb.b
  store i64 77, ptr %0, align 8
  br label %bb.d

bb.ce:                                            ; preds = %bb.b
  store i64 78, ptr %0, align 8
  br label %bb.d

bb.cf:                                            ; preds = %bb.b
  store i64 79, ptr %0, align 8
  br label %bb.d

bb.cg:                                            ; preds = %bb.b
  store i64 80, ptr %0, align 8
  br label %bb.d

bb.ch:                                            ; preds = %bb.b
  store i64 81, ptr %0, align 8
  br label %bb.d

bb.ci:                                            ; preds = %bb.b
  store i64 82, ptr %0, align 8
  br label %bb.d
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5   ; 13 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr95 = phi i64 [ %2, %bb.a ], [ %.tr95.be, %tailrecurse.backedge ] ; 5 uses
  %i.e = add i64 %.tr95, 7                        ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.tr95 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @21, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph259

.preheader:                                       ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr95, %tailrecurse ], [ %i.cj, %bb.o ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.n, label %.lr.ph152, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cj ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @21, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph259

.loopexit:                                        ; preds = %.lr.ph, %.lr.ph152, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.cb, %bb.m ], [ %i.bt, %bb.k ], [ %.tr95, %.lr.ph.preheader ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %i.bl, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.1151, %.lr.ph152 ], [ %i.cj, %.lr.ph ] ; 3 uses
  %i.v = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.v, label %.loopexit.thread323, label %.loopexit.thread.a

.lr.ph152:                                        ; preds = %.preheader, %bb.b
  %.sroa.0.1151 = phi i64 [ %i.ad, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1151
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph152
  %i.ad = add nuw i64 %.sroa.0.1151, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not, label %.loopexit.thread.a, label %.lr.ph152

.lr.ph259:                                        ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.0149258 = phi i64 [ %i.cj, %.lr.ph ], [ %.tr95, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph259
  %i.an = add i64 %.sroa.0.0149258, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph259
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @21, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %.sroa.0.0149258, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @21, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.0149258, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @21, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i64 %.sroa.0.0149258, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @21, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = add i64 %.sroa.0.0149258, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @21, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !5
  %i.bz = and i8 %i.by, 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %.sroa.0.0149258, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @21, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.loopexit.thread323, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.sroa.0.0149258, 8             ; 4 uses
  %i.ck = add i64 %.sroa.0.0149258, 15            ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph, label %.preheader

.loopexit.thread323:                              ; preds = %bb.n, %.loopexit
  %.sroa.0.2325 = phi i64 [ %.sroa.0.2, %.loopexit ], [ %i.af, %bb.n ] ; 17 uses
  %i.cm = add nuw i64 %.sroa.0.2325, 1            ; 12 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.2325
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @22, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !range !8, !noundef !5
  switch i8 %i.cr, label %default.unreachable2968 [
    i8 0, label %.loopexit.thread.a
    i8 1, label %bb.p
    i8 2, label %bb.s
    i8 3, label %bb.v
    i8 4, label %bb.y
    i8 5, label %bb.z
    i8 6, label %bb.aa
    i8 7, label %bb.ab
    i8 8, label %bb.af
  ]

default.unreachable2968:                          ; preds = %.loopexit.thread323
  unreachable

bb.p:                                             ; preds = %.loopexit.thread323
  %i.cs = icmp ult i64 %i.cm, %i.b
  br i1 %i.cs, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !122, !noundef !5
  %i.cv = add i8 %i.cu, 96
  %or.cond.i = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i, label %tailrecurse.backedge, label %bb.r

tailrecurse.backedge:                             ; preds = %bb.w, %bb.t, %bb.q
  %.tr95.be = add nuw i64 %.sroa.0.2325, 2
  br label %tailrecurse

bb.r:                                             ; preds = %bb.q, %bb.p
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !123, !noalias !124, !noundef !5 ; 2 uses
  %i.cy = sub nuw i64 %.sroa.0.2325, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cx
  store i64 71, ptr %0, align 8, !noalias !125
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.465.0..sroa_idx, align 8, !noalias !125
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cy, ptr %.sroa.566.0..sroa_idx, align 8, !noalias !125
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.s:                                             ; preds = %.loopexit.thread323
  %i.da = icmp ult i64 %i.cm, %i.b
  br i1 %i.da, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dc = load i8, ptr %i.db, align 1, !noalias !126, !noundef !5
  %i.dd = add i8 %i.dc, 80
  %or.cond.i43 = icmp ult i8 %i.dd, 10
  br i1 %or.cond.i43, label %tailrecurse.backedge, label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !127, !noalias !128, !noundef !5 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.0.2325, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.df
  store i64 71, ptr %0, align 8, !noalias !129
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %.sroa.474.0..sroa_idx, align 8, !noalias !129
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dg, ptr %.sroa.575.0..sroa_idx, align 8, !noalias !129
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.v:                                             ; preds = %.loopexit.thread323
  %i.di = icmp ult i64 %i.cm, %i.b
  br i1 %i.di, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !130, !noundef !5
  %or.cond.i44 = icmp slt i8 %i.dk, -118
  br i1 %or.cond.i44, label %tailrecurse.backedge, label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !131, !noalias !132, !noundef !5 ; 2 uses
  %i.dn = sub nuw i64 %.sroa.0.2325, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  store i64 71, ptr %0, align 8, !noalias !133
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !133
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %.sroa.584.0..sroa_idx, align 8, !noalias !133
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.y:                                             ; preds = %.loopexit.thread323
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state5(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm, i8 noundef 71)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.z:                                             ; preds = %.loopexit.thread323
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state6(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm, i8 noundef 71)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.aa:                                            ; preds = %.loopexit.thread323
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state7(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm, i8 noundef 71)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.ab:                                            ; preds = %.loopexit.thread323
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  %i.dp = icmp ult i64 %i.cm, %i.b
  br i1 %i.dp, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !134, !noundef !5
  %i.ds = icmp eq i8 %i.dr, -68
  br i1 %i.ds, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.dt = add nuw i64 %.sroa.0.2325, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state356(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dt, i8 noundef 71), !inline_history !9
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.ae:                                            ; preds = %bb.ac, %bb.ab
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !135, !noalias !136, !noundef !5 ; 2 uses
  %i.dw = sub nuw i64 %.sroa.0.2325, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dv
  store i64 71, ptr %0, align 8, !noalias !137
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %.sroa.492.0..sroa_idx, align 8, !noalias !137
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dw, ptr %.sroa.593.0..sroa_idx, align 8, !noalias !137
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.af:                                            ; preds = %.loopexit.thread323
  store i64 %.sroa.0.2325, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state9(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm, i8 noundef 71)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

.loopexit.thread.a:                               ; preds = %.loopexit.thread323, %.loopexit, %bb.b
  %.sroa.0.2201 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.2325, %.loopexit.thread323 ] ; 2 uses
  store i64 %.sroa.0.2201, ptr %i.c, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !138, !noalias !139, !noundef !5 ; 2 uses
  %i.ea = sub nuw i64 %.sroa.0.2201, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dz
  store i64 71, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ea, ptr %.sroa.557.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit: ; preds = %bb.ae, %bb.ad, %bb.x, %bb.u, %bb.r, %bb.y, %bb.z, %bb.aa, %bb.af, %.loopexit.thread.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 -1, 83) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = add i8 %i.g, 96
  %or.cond = icmp ult i8 %i.h, 10
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, i8 noundef %3) #14
  %i.i = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 82)
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.k)
  br label %bb.j

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %i.n, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state242(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.m)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state3(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 -1, 83) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = add i8 %i.g, 80
  %or.cond = icmp ult i8 %i.h, 10
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, i8 noundef %3) #14
  %i.i = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 82)
  switch i64 %i.j, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.k)
  br label %bb.j

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %i.n, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state242(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.m)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.d
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state4(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 -1, 83) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %or.cond = icmp slt i8 %i.g, -118
  br i1 %or.cond, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, i8 noundef %3) #14
  %i.h = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 82)
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
    i64 3, label %bb.h
  ]

bb.d:                                             ; preds = %bb.b
  %i.j = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.j)
  br label %bb.j

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.i

bb.f:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.i

bb.h:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.l, ptr %i.m, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state242(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.l)
  br label %bb.i
end_hunk_0
begin_hunk_1_@_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state182:bb.a
  %i.x = load i8, ptr %i.w, align 1, !noalias !4132, !noundef !5
  %or.cond.i32 = icmp slt i8 %i.x, -118
  br i1 %or.cond.i32, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.y)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  store i64 2, ptr %0, align 8, !noalias !4133
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.p:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state5(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 2)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.q:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state6(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 2)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.r:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state7(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 2)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.s:                                             ; preds = %bb.b
  %i.z = icmp ult i64 %i.e, %i.c
  br i1 %i.z, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !4134, !noundef !5
  %i.ac = icmp eq i8 %i.ab, -68
  br i1 %i.ac, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ad = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state356(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ad, i8 noundef 2), !inline_history !9
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  store i64 2, ptr %0, align 8, !noalias !4135
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.w:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state9(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 2)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.x:                                             ; preds = %bb.b, %bb.a
  store i64 2, ptr %0, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit: ; preds = %bb.v, %bb.u, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %bb.p, %bb.q, %bb.r, %bb.w, %bb.x
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state183(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) initializes((24, 32)) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 5 uses
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.x

bb.b:                                             ; preds = %bb.a
  %i.e = add nuw i64 %2, 1                        ; 13 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %2
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @28, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !range !20, !noundef !5
  switch i8 %i.k, label %default.unreachable77 [
    i8 0, label %bb.x
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.h
    i8 4, label %bb.l
    i8 5, label %bb.p
    i8 6, label %bb.q
    i8 7, label %bb.r
    i8 8, label %bb.s
    i8 9, label %bb.w
  ]

default.unreachable77:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.d:                                             ; preds = %bb.b
  %i.l = icmp ult i64 %i.e, %i.c
  br i1 %i.l, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.n = load i8, ptr %i.m, align 1, !noalias !4148, !noundef !5
  %i.o = add i8 %i.n, 96
  %or.cond.i = icmp ult i8 %i.o, 10
  br i1 %or.cond.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.p = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.p)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.g:                                             ; preds = %bb.e, %bb.d
  store i64 0, ptr %0, align 8, !noalias !4149
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.h:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.e, %i.c
  br i1 %i.q, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.s = load i8, ptr %i.r, align 1, !noalias !4150, !noundef !5
  %i.t = add i8 %i.s, 80
  %or.cond.i31 = icmp ult i8 %i.t, 10
  br i1 %or.cond.i31, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.u = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.u)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.k:                                             ; preds = %bb.i, %bb.h
  store i64 0, ptr %0, align 8, !noalias !4151
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.l:                                             ; preds = %bb.b
  %i.v = icmp ult i64 %i.e, %i.c
  br i1 %i.v, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.x = load i8, ptr %i.w, align 1, !noalias !4152, !noundef !5
  %or.cond.i32 = icmp slt i8 %i.x, -118
  br i1 %or.cond.i32, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.y = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state0(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.y)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.o:                                             ; preds = %bb.m, %bb.l
  store i64 0, ptr %0, align 8, !noalias !4153
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.p:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state5(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 0)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.q:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state6(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 0)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.r:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state7(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 0)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.s:                                             ; preds = %bb.b
  %i.z = icmp ult i64 %i.e, %i.c
  br i1 %i.z, label %bb.t, label %bb.v

bb.t:                                             ; preds = %bb.s
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  %i.ab = load i8, ptr %i.aa, align 1, !noalias !4154, !noundef !5
  %i.ac = icmp eq i8 %i.ab, -68
  br i1 %i.ac, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.ad = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state356(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ad, i8 noundef 0), !inline_history !9
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.v:                                             ; preds = %bb.t, %bb.s
  store i64 0, ptr %0, align 8, !noalias !4155
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.w:                                             ; preds = %bb.b
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state9(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.e, i8 noundef 0)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

bb.x:                                             ; preds = %bb.b, %bb.a
  store i64 0, ptr %0, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex6state2.exit: ; preds = %bb.v, %bb.u, %bb.o, %bb.n, %bb.k, %bb.j, %bb.g, %bb.f, %bb.c, %bb.p, %bb.q, %bb.r, %bb.w, %bb.x
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state184(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5   ; 21 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr142 = phi i64 [ %2, %bb.a ], [ %.tr142.be, %tailrecurse.backedge ] ; 5 uses
  %i.e = add i64 %.tr142, 7                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.tr142 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @21, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph30

.preheader:                                       ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr142, %tailrecurse ], [ %i.cj, %bb.o ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.n, label %.lr.ph199, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cj ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @21, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph30

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph199, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.cb, %bb.m ], [ %i.bt, %bb.k ], [ %.tr142, %.lr.ph.preheader ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %i.bl, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.1198, %.lr.ph199 ], [ %i.af, %bb.n ], [ %i.cj, %.lr.ph ] ; 27 uses
  %i.v = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.v, label %bb.p, label %.loopexit.thread.a

.lr.ph199:                                        ; preds = %.preheader, %bb.b
  %.sroa.0.1198 = phi i64 [ %i.ad, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1198
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph199
  %i.ad = add nuw i64 %.sroa.0.1198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not, label %.loopexit.thread.a, label %.lr.ph199

.lr.ph30:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.019629 = phi i64 [ %i.cj, %.lr.ph ], [ %.tr142, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph30
  %i.an = add i64 %.sroa.0.019629, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @21, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %.sroa.0.019629, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @21, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.019629, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @21, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i64 %.sroa.0.019629, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @21, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = add i64 %.sroa.0.019629, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @21, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !5
  %i.bz = and i8 %i.by, 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %.sroa.0.019629, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @21, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.sroa.0.019629, 8              ; 4 uses
  %i.ck = add i64 %.sroa.0.019629, 15             ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.loopexit
  %i.cm = add nuw i64 %.sroa.0.2, 1               ; 16 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.2
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @22, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !range !8, !noundef !5
  switch i8 %i.cr, label %default.unreachable246 [
    i8 0, label %.loopexit.thread.a
    i8 1, label %bb.q
    i8 2, label %bb.t
    i8 3, label %bb.w
    i8 4, label %bb.z
    i8 5, label %bb.af
    i8 6, label %bb.ao
    i8 7, label %bb.aw
    i8 8, label %bb.ba
  ]

default.unreachable246:                           ; preds = %bb.p, %bb.bb, %bb.ap, %bb.ag, %bb.aa
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult i64 %i.cm, %i.b
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !4207, !noundef !5
  %i.cv = add i8 %i.cu, 96
  %or.cond.i = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i, label %tailrecurse.backedge, label %bb.s

tailrecurse.backedge:                             ; preds = %bb.x, %bb.u, %bb.r
  %.tr142.be = add nuw i64 %.sroa.0.2, 2
  br label %tailrecurse

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !4208, !noalias !4209, !noundef !5 ; 2 uses
  %i.cy = sub nuw i64 %.sroa.0.2, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cx
  store i64 69, ptr %0, align 8, !noalias !4210
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.476.0..sroa_idx, align 8, !noalias !4210
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cy, ptr %.sroa.577.0..sroa_idx, align 8, !noalias !4210
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.t:                                             ; preds = %bb.p
  %i.da = icmp ult i64 %i.cm, %i.b
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dc = load i8, ptr %i.db, align 1, !noalias !4211, !noundef !5
  %i.dd = add i8 %i.dc, 80
  %or.cond.i43 = icmp ult i8 %i.dd, 10
  br i1 %or.cond.i43, label %tailrecurse.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !4212, !noalias !4213, !noundef !5 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.0.2, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.df
  store i64 69, ptr %0, align 8, !noalias !4214
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %.sroa.485.0..sroa_idx, align 8, !noalias !4214
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dg, ptr %.sroa.586.0..sroa_idx, align 8, !noalias !4214
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.w:                                             ; preds = %bb.p
  %i.di = icmp ult i64 %i.cm, %i.b
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !4215, !noundef !5
  %or.cond.i44 = icmp slt i8 %i.dk, -118
  br i1 %or.cond.i44, label %tailrecurse.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !4216, !noalias !4217, !noundef !5 ; 2 uses
  %i.dn = sub nuw i64 %.sroa.0.2, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  store i64 69, ptr %0, align 8, !noalias !4218
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %.sroa.494.0..sroa_idx, align 8, !noalias !4218
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %.sroa.595.0..sroa_idx, align 8, !noalias !4218
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.z:                                             ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dp = icmp ult i64 %i.cm, %i.b
  br i1 %i.dp, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.dq = add nuw i64 %.sroa.0.2, 2               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !4219, !noundef !5
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @57, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !range !11, !noalias !4219, !noundef !5
  switch i8 %i.dv, label %default.unreachable246 [
    i8 0, label %bb.ae
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state243(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ad:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state384(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4220, !noalias !4221, !noundef !5 ; 2 uses
  %i.dy = sub nuw i64 %.sroa.0.2, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dx
  store i64 69, ptr %0, align 8, !noalias !4222
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !4222
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dy, ptr %.sroa.5104.0..sroa_idx, align 8, !noalias !4222
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.af:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ea = icmp ult i64 %i.cm, %i.b
  br i1 %i.ea, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.eb = add nuw i64 %.sroa.0.2, 2               ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !4223, !noundef !5
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @25, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !range !14, !noalias !4223, !noundef !5
  switch i8 %i.eg, label %default.unreachable246 [
    i8 0, label %bb.an
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
    i8 4, label %bb.ak
    i8 5, label %bb.al
    i8 6, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ai:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state186(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.aj:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state187(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ak:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state247(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.al:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state248(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.am:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state384(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.an:                                            ; preds = %bb.ag, %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !4224, !noalias !4225, !noundef !5 ; 2 uses
  %i.ej = sub nuw i64 %.sroa.0.2, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ei
  store i64 69, ptr %0, align 8, !noalias !4226
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %.sroa.4112.0..sroa_idx, align 8, !noalias !4226
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ej, ptr %.sroa.5113.0..sroa_idx, align 8, !noalias !4226
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ao:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.el = icmp ult i64 %i.cm, %i.b
  br i1 %i.el, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.em = add nuw i64 %.sroa.0.2, 2               ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.eo = load i8, ptr %i.en, align 1, !noalias !4227, !noundef !5
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @26, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !range !17, !noalias !4227, !noundef !5
  switch i8 %i.er, label %default.unreachable246 [
    i8 0, label %bb.av
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.as
    i8 4, label %bb.at
    i8 5, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ar:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state186(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.as:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state187(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.at:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state246(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.au:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state384(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !4228, !noalias !4229, !noundef !5 ; 2 uses
  %i.eu = sub nuw i64 %.sroa.0.2, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.et
  store i64 69, ptr %0, align 8, !noalias !4230
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %.sroa.4121.0..sroa_idx, align 8, !noalias !4230
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eu, ptr %.sroa.5122.0..sroa_idx, align 8, !noalias !4230
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.aw:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ew = icmp ult i64 %i.cm, %i.b
  br i1 %i.ew, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !4231, !noundef !5
  %i.ez = icmp eq i8 %i.ey, -68
  br i1 %i.ez, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fa = add nuw i64 %.sroa.0.2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state384(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fa)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !4232, !noalias !4233, !noundef !5 ; 2 uses
  %i.fd = sub nuw i64 %.sroa.0.2, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fc
  store i64 69, ptr %0, align 8, !noalias !4234
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fe, ptr %.sroa.4130.0..sroa_idx, align 8, !noalias !4234
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fd, ptr %.sroa.5131.0..sroa_idx, align 8, !noalias !4234
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.ba:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ff = icmp ult i64 %i.cm, %i.b
  br i1 %i.ff, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.fg = add nuw i64 %.sroa.0.2, 2               ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !4235, !noundef !5
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @27, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !range !18, !noalias !4235, !noundef !5
  switch i8 %i.fl, label %default.unreachable246 [
    i8 0, label %bb.bj
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state360(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.bd:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state361(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.be:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state362(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.bf:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state379(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.bg:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state380(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.bh:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state381(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.bi:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state382(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

bb.bj:                                            ; preds = %bb.bb, %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !4236, !noalias !4237, !noundef !5 ; 2 uses
  %i.fo = sub nuw i64 %.sroa.0.2, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fn
  store i64 69, ptr %0, align 8, !noalias !4238
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %.sroa.4139.0..sroa_idx, align 8, !noalias !4238
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fo, ptr %.sroa.5140.0..sroa_idx, align 8, !noalias !4238
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

.loopexit.thread.a:                               ; preds = %bb.p, %.loopexit, %bb.b
  %.sroa.0.2248 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.2, %bb.p ] ; 2 uses
  store i64 %.sroa.0.2248, ptr %i.c, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !4239, !noalias !4240, !noundef !5 ; 2 uses
  %i.fs = sub nuw i64 %.sroa.0.2248, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fr
  store i64 69, ptr %0, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ft, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fs, ptr %.sroa.568.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185.exit: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.v, %bb.s, %.loopexit.thread.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state185(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 96
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state184(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4244, !noalias !4245, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4244, !noalias !4245, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 69, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state186(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 80
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state184(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4249, !noalias !4250, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4249, !noalias !4250, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 69, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state187(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %or.cond = icmp slt i8 %i.e, -118
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state184(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4254, !noalias !4255, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4254, !noalias !4255, !noundef !5
  %i.k = sub nuw i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.h
  store i64 69, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state199(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 9 uses
  %i.c = add i64 %2, 7                            ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre.pre = load ptr, ptr %1, align 8       ; 10 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !5
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @21, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = and i8 %i.i, 2
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.cj, %bb.o ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.l, label %.lr.ph85, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.cj ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @21, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noundef !5
  %i.r = and i8 %i.q, 2
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph11

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph85, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.cb, %bb.m ], [ %i.bt, %bb.k ], [ %2, %.lr.ph.preheader ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %i.bl, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.184, %.lr.ph85 ], [ %i.af, %bb.n ], [ %i.cj, %.lr.ph ] ; 10 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i64 %.sroa.0.2, ptr %i.t, align 8
  %i.u = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.u, label %bb.p, label %bb.x

.lr.ph85:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.184 = phi i64 [ %i.ac, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %.sroa.0.184
  %i.w = load i8, ptr %i.v, align 1, !noundef !5
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw i8, ptr @21, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !noundef !5
  %i.aa = and i8 %i.z, 2
  %i.ab = icmp eq i8 %i.aa, 0
  br i1 %i.ab, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph85
  %i.ac = add nuw i64 %.sroa.0.184, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.ac, %i.b
  br i1 %exitcond.not, label %.loopexit.thread, label %.lr.ph85

.loopexit.thread:                                 ; preds = %bb.b
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %i.b, ptr %i.ad, align 8
  br label %bb.x

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.08210 = phi i64 [ %i.cj, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
end_hunk_1
begin_hunk_2_@_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state199:bb.a
  %i.dq = sub nuw i64 %.sroa.0.2, %i.dp
  %i.dr = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.dp
  store i64 73, ptr %0, align 8, !noalias !4288
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dr, ptr %.sroa.456.0..sroa_idx, align 8, !noalias !4288
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dq, ptr %.sroa.557.0..sroa_idx, align 8, !noalias !4288
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state198.exit

bb.x:                                             ; preds = %.loopexit.thread, %bb.p, %.loopexit
  %.sroa.0.2106 = phi i64 [ %i.b, %.loopexit.thread ], [ %.sroa.0.2, %bb.p ], [ %.sroa.0.2, %.loopexit ]
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !alias.scope !4289, !noalias !4290, !noundef !5 ; 2 uses
  %i.du = sub nuw i64 %.sroa.0.2106, %i.dt
  %i.dv = getelementptr inbounds nuw i8, ptr %.pre.pre.pre, i64 %i.dt
  store i64 73, ptr %0, align 8
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dv, ptr %.sroa.438.0..sroa_idx, align 8
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.du, ptr %.sroa.539.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state198.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state198.exit: ; preds = %bb.w, %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state266.exit, %bb.t, %bb.s, %bb.x
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state201(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 5 uses
  %i.c = add i64 %2, 7                            ; 2 uses
  %i.d = icmp ult i64 %i.c, %i.b
  %.pre.pre = load ptr, ptr %1, align 8           ; 4 uses
  br i1 %i.d, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %2 ; 2 uses
  %i.f = load i8, ptr %i.e, align 1, !noundef !5
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @21, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  %i.j = and i8 %i.i, 2
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %.loopexit, label %.lr.ph11

.preheader:                                       ; preds = %bb.o, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %i.cg, %bb.o ] ; 3 uses
  %i.l = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.l, label %.lr.ph48, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.m = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.cg ; 2 uses
  %i.n = load i8, ptr %i.m, align 1, !noundef !5
  %i.o = zext i8 %i.n to i64
  %i.p = getelementptr inbounds nuw i8, ptr @21, i64 %i.o
  %i.q = load i8, ptr %i.p, align 1, !noundef !5
  %i.r = and i8 %i.q, 2
  %i.s = icmp eq i8 %i.r, 0
  br i1 %i.s, label %.loopexit, label %.lr.ph11

.lr.ph48:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.147 = phi i64 [ %i.aa, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %.sroa.0.147
  %i.u = load i8, ptr %i.t, align 1, !noundef !5
  %i.v = zext i8 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr @21, i64 %i.v
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = and i8 %i.x, 2
  %i.z = icmp eq i8 %i.y, 0
  br i1 %i.z, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph48
  %i.aa = add nuw i64 %.sroa.0.147, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.aa, %i.b
  br i1 %exitcond.not, label %.loopexit, label %.lr.ph48

.lr.ph11:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ab = phi ptr [ %i.m, %.lr.ph ], [ %i.e, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.04510 = phi i64 [ %i.cg, %.lr.ph ], [ %2, %.lr.ph.preheader ] ; 8 uses
  %i.ac = phi i64 [ %i.ch, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 1
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !5
  %i.af = zext i8 %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr @21, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = and i8 %i.ah, 2
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph11
  %i.ak = add i64 %.sroa.0.04510, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph11
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 2
  %i.am = load i8, ptr %i.al, align 1, !noundef !5
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @21, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = and i8 %i.ap, 2
  %i.ar = icmp eq i8 %i.aq, 0
  br i1 %i.ar, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.as = add i64 %.sroa.0.04510, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.at = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.au = load i8, ptr %i.at, align 1, !noundef !5
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw i8, ptr @21, i64 %i.av
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = and i8 %i.ax, 2
  %i.az = icmp eq i8 %i.ay, 0
  br i1 %i.az, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ba = add i64 %.sroa.0.04510, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !noundef !5
  %i.bd = zext i8 %i.bc to i64
  %i.be = getelementptr inbounds nuw i8, ptr @21, i64 %i.bd
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = and i8 %i.bf, 2
  %i.bh = icmp eq i8 %i.bg, 0
  br i1 %i.bh, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bi = add i64 %.sroa.0.04510, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bj = getelementptr inbounds nuw i8, ptr %i.ab, i64 5
  %i.bk = load i8, ptr %i.bj, align 1, !noundef !5
  %i.bl = zext i8 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr @21, i64 %i.bl
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = and i8 %i.bn, 2
  %i.bp = icmp eq i8 %i.bo, 0
  br i1 %i.bp, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bq = add i64 %.sroa.0.04510, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 6
  %i.bs = load i8, ptr %i.br, align 1, !noundef !5
  %i.bt = zext i8 %i.bs to i64
  %i.bu = getelementptr inbounds nuw i8, ptr @21, i64 %i.bt
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = and i8 %i.bv, 2
  %i.bx = icmp eq i8 %i.bw, 0
  br i1 %i.bx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.by = add i64 %.sroa.0.04510, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.ab, i64 7
  %i.ca = load i8, ptr %i.bz, align 1, !noundef !5
  %i.cb = zext i8 %i.ca to i64
  %i.cc = getelementptr inbounds nuw i8, ptr @21, i64 %i.cb
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = and i8 %i.cd, 2
  %i.cf = icmp eq i8 %i.ce, 0
  br i1 %i.cf, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = add i64 %.sroa.0.04510, 8               ; 4 uses
  %i.ch = add i64 %.sroa.0.04510, 15              ; 2 uses
  %i.ci = icmp ult i64 %i.ch, %i.b
  br i1 %i.ci, label %.lr.ph, label %.preheader

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %bb.b, %.lr.ph48, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.by, %bb.m ], [ %i.bq, %bb.k ], [ %2, %.lr.ph.preheader ], [ %i.ak, %bb.c ], [ %i.as, %bb.e ], [ %i.ba, %bb.g ], [ %i.bi, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.147, %.lr.ph48 ], [ %i.b, %bb.b ], [ %i.cg, %.lr.ph ], [ %i.ac, %bb.n ] ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i64 %.sroa.0.2, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !4294, !noalias !4295, !noundef !5 ; 2 uses
  %i.cm = sub nuw i64 %.sroa.0.2, %i.cl
  %i.cn = getelementptr inbounds nuw i8, ptr %.pre.pre, i64 %i.cl
  store i64 72, ptr %0, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cn, ptr %.sroa.428.0..sroa_idx, align 8
  %.sroa.529.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cm, ptr %.sroa.529.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state209(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5   ; 21 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr142 = phi i64 [ %2, %bb.a ], [ %.tr142.be, %tailrecurse.backedge ] ; 5 uses
  %i.e = add i64 %.tr142, 7                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.tr142 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @21, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph30

.preheader:                                       ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr142, %tailrecurse ], [ %i.cj, %bb.o ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.n, label %.lr.ph199, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cj ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @21, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph30

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph199, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.cb, %bb.m ], [ %i.bt, %bb.k ], [ %.tr142, %.lr.ph.preheader ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %i.bl, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.1198, %.lr.ph199 ], [ %i.af, %bb.n ], [ %i.cj, %.lr.ph ] ; 27 uses
  %i.v = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.v, label %bb.p, label %.loopexit.thread.a

.lr.ph199:                                        ; preds = %.preheader, %bb.b
  %.sroa.0.1198 = phi i64 [ %i.ad, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1198
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph199
  %i.ad = add nuw i64 %.sroa.0.1198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not, label %.loopexit.thread.a, label %.lr.ph199

.lr.ph30:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.019629 = phi i64 [ %i.cj, %.lr.ph ], [ %.tr142, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph30
  %i.an = add i64 %.sroa.0.019629, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @21, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %.sroa.0.019629, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @21, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.019629, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @21, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i64 %.sroa.0.019629, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @21, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = add i64 %.sroa.0.019629, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @21, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !5
  %i.bz = and i8 %i.by, 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %.sroa.0.019629, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @21, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.sroa.0.019629, 8              ; 4 uses
  %i.ck = add i64 %.sroa.0.019629, 15             ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.loopexit
  %i.cm = add nuw i64 %.sroa.0.2, 1               ; 16 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.2
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @22, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !range !8, !noundef !5
  switch i8 %i.cr, label %default.unreachable246 [
    i8 0, label %.loopexit.thread.a
    i8 1, label %bb.q
    i8 2, label %bb.t
    i8 3, label %bb.w
    i8 4, label %bb.z
    i8 5, label %bb.af
    i8 6, label %bb.ao
    i8 7, label %bb.aw
    i8 8, label %bb.ba
  ]

default.unreachable246:                           ; preds = %bb.p, %bb.bb, %bb.ap, %bb.ag, %bb.aa
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult i64 %i.cm, %i.b
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !4347, !noundef !5
  %i.cv = add i8 %i.cu, 96
  %or.cond.i = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i, label %tailrecurse.backedge, label %bb.s

tailrecurse.backedge:                             ; preds = %bb.x, %bb.u, %bb.r
  %.tr142.be = add nuw i64 %.sroa.0.2, 2
  br label %tailrecurse

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !4348, !noalias !4349, !noundef !5 ; 2 uses
  %i.cy = sub nuw i64 %.sroa.0.2, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cx
  store i64 67, ptr %0, align 8, !noalias !4350
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.476.0..sroa_idx, align 8, !noalias !4350
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cy, ptr %.sroa.577.0..sroa_idx, align 8, !noalias !4350
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.t:                                             ; preds = %bb.p
  %i.da = icmp ult i64 %i.cm, %i.b
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dc = load i8, ptr %i.db, align 1, !noalias !4351, !noundef !5
  %i.dd = add i8 %i.dc, 80
  %or.cond.i43 = icmp ult i8 %i.dd, 10
  br i1 %or.cond.i43, label %tailrecurse.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !4352, !noalias !4353, !noundef !5 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.0.2, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.df
  store i64 67, ptr %0, align 8, !noalias !4354
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %.sroa.485.0..sroa_idx, align 8, !noalias !4354
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dg, ptr %.sroa.586.0..sroa_idx, align 8, !noalias !4354
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.w:                                             ; preds = %bb.p
  %i.di = icmp ult i64 %i.cm, %i.b
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !4355, !noundef !5
  %or.cond.i44 = icmp slt i8 %i.dk, -118
  br i1 %or.cond.i44, label %tailrecurse.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !4356, !noalias !4357, !noundef !5 ; 2 uses
  %i.dn = sub nuw i64 %.sroa.0.2, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  store i64 67, ptr %0, align 8, !noalias !4358
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %.sroa.494.0..sroa_idx, align 8, !noalias !4358
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %.sroa.595.0..sroa_idx, align 8, !noalias !4358
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.z:                                             ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dp = icmp ult i64 %i.cm, %i.b
  br i1 %i.dp, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.dq = add nuw i64 %.sroa.0.2, 2               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !4359, !noundef !5
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @24, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !range !11, !noalias !4359, !noundef !5
  switch i8 %i.dv, label %default.unreachable246 [
    i8 0, label %bb.ae
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state310(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ad:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state312(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4360, !noalias !4361, !noundef !5 ; 2 uses
  %i.dy = sub nuw i64 %.sroa.0.2, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dx
  store i64 67, ptr %0, align 8, !noalias !4362
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !4362
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dy, ptr %.sroa.5104.0..sroa_idx, align 8, !noalias !4362
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.af:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ea = icmp ult i64 %i.cm, %i.b
  br i1 %i.ea, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.eb = add nuw i64 %.sroa.0.2, 2               ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !4363, !noundef !5
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @59, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !range !14, !noalias !4363, !noundef !5
  switch i8 %i.eg, label %default.unreachable246 [
    i8 0, label %bb.an
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
    i8 4, label %bb.ak
    i8 5, label %bb.al
    i8 6, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ai:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state211(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.aj:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state212(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ak:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state310(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.al:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state316(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.am:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state317(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.an:                                            ; preds = %bb.ag, %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !4364, !noalias !4365, !noundef !5 ; 2 uses
  %i.ej = sub nuw i64 %.sroa.0.2, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ei
  store i64 67, ptr %0, align 8, !noalias !4366
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %.sroa.4112.0..sroa_idx, align 8, !noalias !4366
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ej, ptr %.sroa.5113.0..sroa_idx, align 8, !noalias !4366
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ao:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.el = icmp ult i64 %i.cm, %i.b
  br i1 %i.el, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.em = add nuw i64 %.sroa.0.2, 2               ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.eo = load i8, ptr %i.en, align 1, !noalias !4367, !noundef !5
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @60, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !range !17, !noalias !4367, !noundef !5
  switch i8 %i.er, label %default.unreachable246 [
    i8 0, label %bb.av
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.as
    i8 4, label %bb.at
    i8 5, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ar:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state211(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.as:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state212(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.at:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state310(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.au:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state315(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !4368, !noalias !4369, !noundef !5 ; 2 uses
  %i.eu = sub nuw i64 %.sroa.0.2, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.et
  store i64 67, ptr %0, align 8, !noalias !4370
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %.sroa.4121.0..sroa_idx, align 8, !noalias !4370
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eu, ptr %.sroa.5122.0..sroa_idx, align 8, !noalias !4370
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.aw:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ew = icmp ult i64 %i.cm, %i.b
  br i1 %i.ew, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !4371, !noundef !5
  %i.ez = icmp eq i8 %i.ey, -68
  br i1 %i.ez, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fa = add nuw i64 %.sroa.0.2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state310(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fa)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !4372, !noalias !4373, !noundef !5 ; 2 uses
  %i.fd = sub nuw i64 %.sroa.0.2, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fc
  store i64 67, ptr %0, align 8, !noalias !4374
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fe, ptr %.sroa.4130.0..sroa_idx, align 8, !noalias !4374
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fd, ptr %.sroa.5131.0..sroa_idx, align 8, !noalias !4374
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.ba:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ff = icmp ult i64 %i.cm, %i.b
  br i1 %i.ff, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.fg = add nuw i64 %.sroa.0.2, 2               ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !4375, !noundef !5
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @27, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !range !18, !noalias !4375, !noundef !5
  switch i8 %i.fl, label %default.unreachable246 [
    i8 0, label %bb.bj
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state302(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.bd:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state303(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.be:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state304(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.bf:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state305(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.bg:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state306(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.bh:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state307(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.bi:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state308(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

bb.bj:                                            ; preds = %bb.bb, %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !4376, !noalias !4377, !noundef !5 ; 2 uses
  %i.fo = sub nuw i64 %.sroa.0.2, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fn
  store i64 67, ptr %0, align 8, !noalias !4378
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %.sroa.4139.0..sroa_idx, align 8, !noalias !4378
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fo, ptr %.sroa.5140.0..sroa_idx, align 8, !noalias !4378
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

.loopexit.thread.a:                               ; preds = %bb.p, %.loopexit, %bb.b
  %.sroa.0.2248 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.2, %bb.p ] ; 2 uses
  store i64 %.sroa.0.2248, ptr %i.c, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !4379, !noalias !4380, !noundef !5 ; 2 uses
  %i.fs = sub nuw i64 %.sroa.0.2248, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fr
  store i64 67, ptr %0, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ft, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fs, ptr %.sroa.568.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210.exit: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.v, %bb.s, %.loopexit.thread.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state210(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 96
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state209(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4384, !noalias !4385, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4384, !noalias !4385, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 67, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state211(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 80
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state209(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4389, !noalias !4390, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4389, !noalias !4390, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 67, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state212(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %or.cond = icmp slt i8 %i.e, -118
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state209(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4394, !noalias !4395, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4394, !noalias !4395, !noundef !5
  %i.k = sub nuw i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.h
  store i64 67, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state218(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5   ; 21 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr142 = phi i64 [ %2, %bb.a ], [ %.tr142.be, %tailrecurse.backedge ] ; 5 uses
  %i.e = add i64 %.tr142, 7                       ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.tr142 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @21, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph30

.preheader:                                       ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr142, %tailrecurse ], [ %i.cj, %bb.o ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.n, label %.lr.ph199, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cj ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @21, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph30

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph199, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.cb, %bb.m ], [ %i.bt, %bb.k ], [ %.tr142, %.lr.ph.preheader ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %i.bl, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.1198, %.lr.ph199 ], [ %i.af, %bb.n ], [ %i.cj, %.lr.ph ] ; 27 uses
  %i.v = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.v, label %bb.p, label %.loopexit.thread.a

.lr.ph199:                                        ; preds = %.preheader, %bb.b
  %.sroa.0.1198 = phi i64 [ %i.ad, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1198
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph199
  %i.ad = add nuw i64 %.sroa.0.1198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not, label %.loopexit.thread.a, label %.lr.ph199

.lr.ph30:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.019629 = phi i64 [ %i.cj, %.lr.ph ], [ %.tr142, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph30
  %i.an = add i64 %.sroa.0.019629, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @21, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %.sroa.0.019629, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @21, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.019629, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @21, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i64 %.sroa.0.019629, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @21, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = add i64 %.sroa.0.019629, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @21, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !5
  %i.bz = and i8 %i.by, 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %.sroa.0.019629, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @21, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.sroa.0.019629, 8              ; 4 uses
  %i.ck = add i64 %.sroa.0.019629, 15             ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.loopexit
  %i.cm = add nuw i64 %.sroa.0.2, 1               ; 16 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.2
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @22, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !range !8, !noundef !5
  switch i8 %i.cr, label %default.unreachable246 [
    i8 0, label %.loopexit.thread.a
    i8 1, label %bb.q
    i8 2, label %bb.t
    i8 3, label %bb.w
    i8 4, label %bb.z
    i8 5, label %bb.af
    i8 6, label %bb.ao
    i8 7, label %bb.aw
    i8 8, label %bb.ba
  ]

default.unreachable246:                           ; preds = %bb.p, %bb.bb, %bb.ap, %bb.ag, %bb.aa
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult i64 %i.cm, %i.b
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !4447, !noundef !5
  %i.cv = add i8 %i.cu, 96
  %or.cond.i = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i, label %tailrecurse.backedge, label %bb.s

tailrecurse.backedge:                             ; preds = %bb.x, %bb.u, %bb.r
  %.tr142.be = add nuw i64 %.sroa.0.2, 2
  br label %tailrecurse

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !4448, !noalias !4449, !noundef !5 ; 2 uses
  %i.cy = sub nuw i64 %.sroa.0.2, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cx
  store i64 68, ptr %0, align 8, !noalias !4450
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.476.0..sroa_idx, align 8, !noalias !4450
  %.sroa.577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cy, ptr %.sroa.577.0..sroa_idx, align 8, !noalias !4450
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.t:                                             ; preds = %bb.p
  %i.da = icmp ult i64 %i.cm, %i.b
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dc = load i8, ptr %i.db, align 1, !noalias !4451, !noundef !5
  %i.dd = add i8 %i.dc, 80
  %or.cond.i43 = icmp ult i8 %i.dd, 10
  br i1 %or.cond.i43, label %tailrecurse.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !4452, !noalias !4453, !noundef !5 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.0.2, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.df
  store i64 68, ptr %0, align 8, !noalias !4454
  %.sroa.485.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %.sroa.485.0..sroa_idx, align 8, !noalias !4454
  %.sroa.586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dg, ptr %.sroa.586.0..sroa_idx, align 8, !noalias !4454
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.w:                                             ; preds = %bb.p
  %i.di = icmp ult i64 %i.cm, %i.b
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !4455, !noundef !5
  %or.cond.i44 = icmp slt i8 %i.dk, -118
  br i1 %or.cond.i44, label %tailrecurse.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !4456, !noalias !4457, !noundef !5 ; 2 uses
  %i.dn = sub nuw i64 %.sroa.0.2, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  store i64 68, ptr %0, align 8, !noalias !4458
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %.sroa.494.0..sroa_idx, align 8, !noalias !4458
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %.sroa.595.0..sroa_idx, align 8, !noalias !4458
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.z:                                             ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dp = icmp ult i64 %i.cm, %i.b
  br i1 %i.dp, label %bb.aa, label %bb.ae

bb.aa:                                            ; preds = %bb.z
  %i.dq = add nuw i64 %.sroa.0.2, 2               ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ds = load i8, ptr %i.dr, align 1, !noalias !4459, !noundef !5
  %i.dt = zext i8 %i.ds to i64
  %i.du = getelementptr inbounds nuw i8, ptr @24, i64 %i.dt
  %i.dv = load i8, ptr %i.du, align 1, !range !11, !noalias !4459, !noundef !5
  switch i8 %i.dv, label %default.unreachable246 [
    i8 0, label %bb.ae
    i8 1, label %bb.ab
    i8 2, label %bb.ac
    i8 3, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ac:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state336(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ad:                                            ; preds = %bb.aa
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state338(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dq)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ae:                                            ; preds = %bb.aa, %bb.z
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !4460, !noalias !4461, !noundef !5 ; 2 uses
  %i.dy = sub nuw i64 %.sroa.0.2, %i.dx
  %i.dz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dx
  store i64 68, ptr %0, align 8, !noalias !4462
  %.sroa.4103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dz, ptr %.sroa.4103.0..sroa_idx, align 8, !noalias !4462
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dy, ptr %.sroa.5104.0..sroa_idx, align 8, !noalias !4462
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.af:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ea = icmp ult i64 %i.cm, %i.b
  br i1 %i.ea, label %bb.ag, label %bb.an

bb.ag:                                            ; preds = %bb.af
  %i.eb = add nuw i64 %.sroa.0.2, 2               ; 6 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ed = load i8, ptr %i.ec, align 1, !noalias !4463, !noundef !5
  %i.ee = zext i8 %i.ed to i64
  %i.ef = getelementptr inbounds nuw i8, ptr @59, i64 %i.ee
  %i.eg = load i8, ptr %i.ef, align 1, !range !14, !noalias !4463, !noundef !5
  switch i8 %i.eg, label %default.unreachable246 [
    i8 0, label %bb.an
    i8 1, label %bb.ah
    i8 2, label %bb.ai
    i8 3, label %bb.aj
    i8 4, label %bb.ak
    i8 5, label %bb.al
    i8 6, label %bb.am
  ]

bb.ah:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ai:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state220(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.aj:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state221(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ak:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state336(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.al:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state342(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.am:                                            ; preds = %bb.ag
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state343(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.eb)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.an:                                            ; preds = %bb.ag, %bb.af
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ei = load i64, ptr %i.eh, align 8, !alias.scope !4464, !noalias !4465, !noundef !5 ; 2 uses
  %i.ej = sub nuw i64 %.sroa.0.2, %i.ei
  %i.ek = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ei
  store i64 68, ptr %0, align 8, !noalias !4466
  %.sroa.4112.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ek, ptr %.sroa.4112.0..sroa_idx, align 8, !noalias !4466
  %.sroa.5113.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ej, ptr %.sroa.5113.0..sroa_idx, align 8, !noalias !4466
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ao:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.el = icmp ult i64 %i.cm, %i.b
  br i1 %i.el, label %bb.ap, label %bb.av

bb.ap:                                            ; preds = %bb.ao
  %i.em = add nuw i64 %.sroa.0.2, 2               ; 5 uses
  %i.en = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.eo = load i8, ptr %i.en, align 1, !noalias !4467, !noundef !5
  %i.ep = zext i8 %i.eo to i64
  %i.eq = getelementptr inbounds nuw i8, ptr @60, i64 %i.ep
  %i.er = load i8, ptr %i.eq, align 1, !range !17, !noalias !4467, !noundef !5
  switch i8 %i.er, label %default.unreachable246 [
    i8 0, label %bb.av
    i8 1, label %bb.aq
    i8 2, label %bb.ar
    i8 3, label %bb.as
    i8 4, label %bb.at
    i8 5, label %bb.au
  ]

bb.aq:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ar:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state220(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.as:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state221(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.at:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state336(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.au:                                            ; preds = %bb.ap
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state341(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.em)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.av:                                            ; preds = %bb.ap, %bb.ao
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.et = load i64, ptr %i.es, align 8, !alias.scope !4468, !noalias !4469, !noundef !5 ; 2 uses
  %i.eu = sub nuw i64 %.sroa.0.2, %i.et
  %i.ev = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.et
  store i64 68, ptr %0, align 8, !noalias !4470
  %.sroa.4121.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ev, ptr %.sroa.4121.0..sroa_idx, align 8, !noalias !4470
  %.sroa.5122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.eu, ptr %.sroa.5122.0..sroa_idx, align 8, !noalias !4470
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.aw:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ew = icmp ult i64 %i.cm, %i.b
  br i1 %i.ew, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.ex = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.ey = load i8, ptr %i.ex, align 1, !noalias !4471, !noundef !5
  %i.ez = icmp eq i8 %i.ey, -68
  br i1 %i.ez, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.fa = add nuw i64 %.sroa.0.2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state336(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fa)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.az:                                            ; preds = %bb.ax, %bb.aw
  %i.fb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !4472, !noalias !4473, !noundef !5 ; 2 uses
  %i.fd = sub nuw i64 %.sroa.0.2, %i.fc
  %i.fe = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fc
  store i64 68, ptr %0, align 8, !noalias !4474
  %.sroa.4130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fe, ptr %.sroa.4130.0..sroa_idx, align 8, !noalias !4474
  %.sroa.5131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fd, ptr %.sroa.5131.0..sroa_idx, align 8, !noalias !4474
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.ba:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.ff = icmp ult i64 %i.cm, %i.b
  br i1 %i.ff, label %bb.bb, label %bb.bj

bb.bb:                                            ; preds = %bb.ba
  %i.fg = add nuw i64 %.sroa.0.2, 2               ; 7 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.fi = load i8, ptr %i.fh, align 1, !noalias !4475, !noundef !5
  %i.fj = zext i8 %i.fi to i64
  %i.fk = getelementptr inbounds nuw i8, ptr @27, i64 %i.fj
  %i.fl = load i8, ptr %i.fk, align 1, !range !18, !noalias !4475, !noundef !5
  switch i8 %i.fl, label %default.unreachable246 [
    i8 0, label %bb.bj
    i8 1, label %bb.bc
    i8 2, label %bb.bd
    i8 3, label %bb.be
    i8 4, label %bb.bf
    i8 5, label %bb.bg
    i8 6, label %bb.bh
    i8 7, label %bb.bi
  ]

bb.bc:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state328(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.bd:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state329(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.be:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state330(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.bf:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state331(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.bg:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state332(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.bh:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state333(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.bi:                                            ; preds = %bb.bb
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state334(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.fg)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

bb.bj:                                            ; preds = %bb.bb, %bb.ba
  %i.fm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fn = load i64, ptr %i.fm, align 8, !alias.scope !4476, !noalias !4477, !noundef !5 ; 2 uses
  %i.fo = sub nuw i64 %.sroa.0.2, %i.fn
  %i.fp = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fn
  store i64 68, ptr %0, align 8, !noalias !4478
  %.sroa.4139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.fp, ptr %.sroa.4139.0..sroa_idx, align 8, !noalias !4478
  %.sroa.5140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fo, ptr %.sroa.5140.0..sroa_idx, align 8, !noalias !4478
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

.loopexit.thread.a:                               ; preds = %bb.p, %.loopexit, %bb.b
  %.sroa.0.2248 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.2, %bb.p ] ; 2 uses
  store i64 %.sroa.0.2248, ptr %i.c, align 8
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !4479, !noalias !4480, !noundef !5 ; 2 uses
  %i.fs = sub nuw i64 %.sroa.0.2248, %i.fr
  %i.ft = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.fr
  store i64 68, ptr %0, align 8
  %.sroa.467.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ft, ptr %.sroa.467.0..sroa_idx, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.fs, ptr %.sroa.568.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219.exit: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bc, %bb.az, %bb.ay, %bb.av, %bb.au, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.y, %bb.v, %bb.s, %.loopexit.thread.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state219(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 96
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state218(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4484, !noalias !4485, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4484, !noalias !4485, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 68, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state220(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 80
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state218(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4489, !noalias !4490, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4489, !noalias !4490, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 68, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state221(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %or.cond = icmp slt i8 %i.e, -118
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state218(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4494, !noalias !4495, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4494, !noalias !4495, !noundef !5
  %i.k = sub nuw i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.h
  store i64 68, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state228(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 10 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 9 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5   ; 13 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %tailrecurse.backedge, %bb.a
  %.tr95 = phi i64 [ %2, %bb.a ], [ %.tr95.be, %tailrecurse.backedge ] ; 5 uses
  %i.e = add i64 %.tr95, 7                        ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %tailrecurse
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %.tr95 ; 2 uses
  %i.h = load i8, ptr %i.g, align 1, !noundef !5
  %i.i = zext i8 %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr @21, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1, !noundef !5
  %i.l = and i8 %i.k, 1
  %i.m = icmp eq i8 %i.l, 0
  br i1 %i.m, label %.loopexit, label %.lr.ph30

.preheader:                                       ; preds = %bb.o, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr95, %tailrecurse ], [ %i.cj, %bb.o ] ; 3 uses
  %i.n = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.n, label %.lr.ph152, label %.loopexit

.lr.ph:                                           ; preds = %bb.o
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cj ; 2 uses
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @21, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  %i.t = and i8 %i.s, 1
  %i.u = icmp eq i8 %i.t, 0
  br i1 %i.u, label %.loopexit, label %.lr.ph30

.loopexit:                                        ; preds = %bb.n, %.lr.ph, %.lr.ph152, %.lr.ph.preheader, %.preheader, %bb.c, %bb.e, %bb.g, %bb.i, %bb.k, %bb.m
  %.sroa.0.2 = phi i64 [ %i.cb, %bb.m ], [ %i.bt, %bb.k ], [ %.tr95, %.lr.ph.preheader ], [ %i.an, %bb.c ], [ %i.av, %bb.e ], [ %i.bd, %bb.g ], [ %i.bl, %bb.i ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.1151, %.lr.ph152 ], [ %i.af, %bb.n ], [ %i.cj, %.lr.ph ] ; 19 uses
  %i.v = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.v, label %bb.p, label %.loopexit.thread.a

.lr.ph152:                                        ; preds = %.preheader, %bb.b
  %.sroa.0.1151 = phi i64 [ %i.ad, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.1151
  %i.x = load i8, ptr %i.w, align 1, !noundef !5
  %i.y = zext i8 %i.x to i64
  %i.z = getelementptr inbounds nuw i8, ptr @21, i64 %i.y
  %i.aa = load i8, ptr %i.z, align 1, !noundef !5
  %i.ab = and i8 %i.aa, 1
  %i.ac = icmp eq i8 %i.ab, 0
  br i1 %i.ac, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph152
  %i.ad = add nuw i64 %.sroa.0.1151, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.ad, %i.b
  br i1 %exitcond.not, label %.loopexit.thread.a, label %.lr.ph152

.lr.ph30:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %i.ae = phi ptr [ %i.o, %.lr.ph ], [ %i.g, %.lr.ph.preheader ] ; 7 uses
  %.sroa.0.014929 = phi i64 [ %i.cj, %.lr.ph ], [ %.tr95, %.lr.ph.preheader ] ; 8 uses
  %i.af = phi i64 [ %i.ck, %.lr.ph ], [ %i.e, %.lr.ph.preheader ]
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  %i.ai = zext i8 %i.ah to i64
  %i.aj = getelementptr inbounds nuw i8, ptr @21, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !noundef !5
  %i.al = and i8 %i.ak, 1
  %i.am = icmp eq i8 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph30
  %i.an = add i64 %.sroa.0.014929, 1
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph30
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ae, i64 2
  %i.ap = load i8, ptr %i.ao, align 1, !noundef !5
  %i.aq = zext i8 %i.ap to i64
  %i.ar = getelementptr inbounds nuw i8, ptr @21, i64 %i.aq
  %i.as = load i8, ptr %i.ar, align 1, !noundef !5
  %i.at = and i8 %i.as, 1
  %i.au = icmp eq i8 %i.at, 0
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.av = add i64 %.sroa.0.014929, 2
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  %i.ax = load i8, ptr %i.aw, align 1, !noundef !5
  %i.ay = zext i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @21, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1, !noundef !5
  %i.bb = and i8 %i.ba, 1
  %i.bc = icmp eq i8 %i.bb, 0
  br i1 %i.bc, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.bd = add i64 %.sroa.0.014929, 3
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.be = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.bf = load i8, ptr %i.be, align 1, !noundef !5
  %i.bg = zext i8 %i.bf to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @21, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1, !noundef !5
  %i.bj = and i8 %i.bi, 1
  %i.bk = icmp eq i8 %i.bj, 0
  br i1 %i.bk, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.bl = add i64 %.sroa.0.014929, 4
  br label %.loopexit

bb.j:                                             ; preds = %bb.h
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ae, i64 5
  %i.bn = load i8, ptr %i.bm, align 1, !noundef !5
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr @21, i64 %i.bo
  %i.bq = load i8, ptr %i.bp, align 1, !noundef !5
  %i.br = and i8 %i.bq, 1
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bt = add i64 %.sroa.0.014929, 5
  br label %.loopexit

bb.l:                                             ; preds = %bb.j
  %i.bu = getelementptr inbounds nuw i8, ptr %i.ae, i64 6
  %i.bv = load i8, ptr %i.bu, align 1, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @21, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !noundef !5
  %i.bz = and i8 %i.by, 1
  %i.ca = icmp eq i8 %i.bz, 0
  br i1 %i.ca, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.cb = add i64 %.sroa.0.014929, 6
  br label %.loopexit

bb.n:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ae, i64 7
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !5
  %i.ce = zext i8 %i.cd to i64
  %i.cf = getelementptr inbounds nuw i8, ptr @21, i64 %i.ce
  %i.cg = load i8, ptr %i.cf, align 1, !noundef !5
  %i.ch = and i8 %i.cg, 1
  %i.ci = icmp eq i8 %i.ch, 0
  br i1 %i.ci, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cj = add i64 %.sroa.0.014929, 8              ; 4 uses
  %i.ck = add i64 %.sroa.0.014929, 15             ; 2 uses
  %i.cl = icmp ult i64 %i.ck, %i.b
  br i1 %i.cl, label %.lr.ph, label %.preheader

bb.p:                                             ; preds = %.loopexit
  %i.cm = add nuw i64 %.sroa.0.2, 1               ; 12 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.2
  %i.co = load i8, ptr %i.cn, align 1, !noundef !5
  %i.cp = zext i8 %i.co to i64
  %i.cq = getelementptr inbounds nuw i8, ptr @22, i64 %i.cp
  %i.cr = load i8, ptr %i.cq, align 1, !range !8, !noundef !5
  switch i8 %i.cr, label %default.unreachable199 [
    i8 0, label %.loopexit.thread.a
    i8 1, label %bb.q
    i8 2, label %bb.t
    i8 3, label %bb.w
    i8 4, label %bb.z
    i8 5, label %bb.aa
    i8 6, label %bb.ab
    i8 7, label %bb.ac
    i8 8, label %bb.ag
  ]

default.unreachable199:                           ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult i64 %i.cm, %i.b
  br i1 %i.cs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ct = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.cu = load i8, ptr %i.ct, align 1, !noalias !4523, !noundef !5
  %i.cv = add i8 %i.cu, 96
  %or.cond.i = icmp ult i8 %i.cv, 10
  br i1 %or.cond.i, label %tailrecurse.backedge, label %bb.s

tailrecurse.backedge:                             ; preds = %bb.x, %bb.u, %bb.r
  %.tr95.be = add nuw i64 %.sroa.0.2, 2
  br label %tailrecurse

bb.s:                                             ; preds = %bb.r, %bb.q
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cx = load i64, ptr %i.cw, align 8, !alias.scope !4524, !noalias !4525, !noundef !5 ; 2 uses
  %i.cy = sub nuw i64 %.sroa.0.2, %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cx
  store i64 70, ptr %0, align 8, !noalias !4526
  %.sroa.465.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %.sroa.465.0..sroa_idx, align 8, !noalias !4526
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cy, ptr %.sroa.566.0..sroa_idx, align 8, !noalias !4526
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.t:                                             ; preds = %bb.p
  %i.da = icmp ult i64 %i.cm, %i.b
  br i1 %i.da, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dc = load i8, ptr %i.db, align 1, !noalias !4527, !noundef !5
  %i.dd = add i8 %i.dc, 80
  %or.cond.i43 = icmp ult i8 %i.dd, 10
  br i1 %or.cond.i43, label %tailrecurse.backedge, label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load i64, ptr %i.de, align 8, !alias.scope !4528, !noalias !4529, !noundef !5 ; 2 uses
  %i.dg = sub nuw i64 %.sroa.0.2, %i.df
  %i.dh = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.df
  store i64 70, ptr %0, align 8, !noalias !4530
  %.sroa.474.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %.sroa.474.0..sroa_idx, align 8, !noalias !4530
  %.sroa.575.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dg, ptr %.sroa.575.0..sroa_idx, align 8, !noalias !4530
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.w:                                             ; preds = %bb.p
  %i.di = icmp ult i64 %i.cm, %i.b
  br i1 %i.di, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dk = load i8, ptr %i.dj, align 1, !noalias !4531, !noundef !5
  %or.cond.i44 = icmp slt i8 %i.dk, -118
  br i1 %or.cond.i44, label %tailrecurse.backedge, label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dm = load i64, ptr %i.dl, align 8, !alias.scope !4532, !noalias !4533, !noundef !5 ; 2 uses
  %i.dn = sub nuw i64 %.sroa.0.2, %i.dm
  %i.do = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dm
  store i64 70, ptr %0, align 8, !noalias !4534
  %.sroa.483.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.do, ptr %.sroa.483.0..sroa_idx, align 8, !noalias !4534
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dn, ptr %.sroa.584.0..sroa_idx, align 8, !noalias !4534
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.z:                                             ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state233(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.aa:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state234(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.ab:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state235(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.ac:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  %i.dp = icmp ult i64 %i.cm, %i.b
  br i1 %i.dp, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.dq = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.cm
  %i.dr = load i8, ptr %i.dq, align 1, !noalias !4535, !noundef !5
  %i.ds = icmp eq i8 %i.dr, -68
  br i1 %i.ds, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.dt = add nuw i64 %.sroa.0.2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state371(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dt)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !4536, !noalias !4537, !noundef !5 ; 2 uses
  %i.dw = sub nuw i64 %.sroa.0.2, %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dv
  store i64 70, ptr %0, align 8, !noalias !4538
  %.sroa.492.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dx, ptr %.sroa.492.0..sroa_idx, align 8, !noalias !4538
  %.sroa.593.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.dw, ptr %.sroa.593.0..sroa_idx, align 8, !noalias !4538
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.ag:                                            ; preds = %bb.p
  store i64 %.sroa.0.2, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state237(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.cm)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

.loopexit.thread.a:                               ; preds = %bb.p, %.loopexit, %bb.b
  %.sroa.0.2201 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.2, %bb.p ] ; 2 uses
  store i64 %.sroa.0.2201, ptr %i.c, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load i64, ptr %i.dy, align 8, !alias.scope !4539, !noalias !4540, !noundef !5 ; 2 uses
  %i.ea = sub nuw i64 %.sroa.0.2201, %i.dz
  %i.eb = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.dz
  store i64 70, ptr %0, align 8
  %.sroa.456.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.eb, ptr %.sroa.456.0..sroa_idx, align 8
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.ea, ptr %.sroa.557.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit: ; preds = %bb.af, %bb.ae, %bb.y, %bb.v, %bb.s, %bb.z, %bb.aa, %bb.ab, %bb.ag, %.loopexit.thread.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 96
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state228(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4544, !noalias !4545, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4544, !noalias !4545, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 70, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state231(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %i.f = add i8 %i.e, 80
  %or.cond = icmp ult i8 %i.f, 10
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state228(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.g)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !4549, !noalias !4550, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !4549, !noalias !4550, !noundef !5
  %i.l = sub nuw i64 %i.k, %i.i
  %i.m = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.i
  store i64 70, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.m, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state232(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.e = load i8, ptr %i.d, align 1, !noundef !5
  %or.cond = icmp slt i8 %i.e, -118
  br i1 %or.cond, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state228(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.f)
  br label %bb.e

bb.d:                                             ; preds = %bb.a, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !4554, !noalias !4555, !noundef !5 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !4554, !noalias !4555, !noundef !5
  %i.k = sub nuw i64 %i.j, %i.h
  %i.l = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.h
  store i64 70, ptr %0, align 8
  %.sroa.417.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %.sroa.417.0..sroa_idx, align 8
  %.sroa.518.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.k, ptr %.sroa.518.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state233(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 4 uses
  %i.c = icmp ult i64 %2, %i.b
  %.pre = load ptr, ptr %1, align 8               ; 8 uses
  br i1 %i.c, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.d = add nuw i64 %2, 1                        ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.pre, i64 %2
  %i.f = load i8, ptr %i.e, align 1, !noundef !5
  %i.g = zext i8 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr @24, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !range !11, !noundef !5
  switch i8 %i.i, label %default.unreachable60 [
    i8 0, label %bb.o
    i8 1, label %bb.c
    i8 2, label %bb.g
    i8 3, label %bb.k
  ]

default.unreachable60:                            ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = icmp ult i64 %i.d, %i.b
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.l = load i8, ptr %i.k, align 1, !noalias !4577, !noundef !5
  %i.m = add i8 %i.l, 96
  %or.cond.i = icmp ult i8 %i.m, 10
  br i1 %or.cond.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state228(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.n)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.f:                                             ; preds = %bb.d, %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !4578, !noalias !4579, !noundef !5 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !4578, !noalias !4579, !noundef !5
  %i.s = sub nuw i64 %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.p
  store i64 70, ptr %0, align 8, !noalias !4580
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.t, ptr %.sroa.438.0..sroa_idx, align 8, !noalias !4580
  %.sroa.539.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.s, ptr %.sroa.539.0..sroa_idx, align 8, !noalias !4580
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230.exit

bb.g:                                             ; preds = %bb.b
  %i.u = icmp ult i64 %i.d, %i.b
  br i1 %i.u, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.w = load i8, ptr %i.v, align 1, !noalias !4581, !noundef !5
  %i.x = add i8 %i.w, 112
  %or.cond.i18 = icmp ult i8 %i.x, 10
  br i1 %or.cond.i18, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.y = add nuw i64 %2, 2
end_hunk_2
begin_hunk_3_@_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state237:bb.a
  %i.an = zext i8 %i.am to i64
  %i.ao = getelementptr inbounds nuw i8, ptr @80, i64 %i.an
  %i.ap = load i8, ptr %i.ao, align 1, !range !19, !noalias !4764, !noundef !5
  switch i8 %i.ap, label %default.unreachable113 [
    i8 0, label %bb.x
    i8 1, label %bb.t
    i8 2, label %bb.u
    i8 3, label %bb.v
    i8 4, label %bb.w
  ]

bb.t:                                             ; preds = %bb.s
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state230(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ak)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.u:                                             ; preds = %bb.s
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state231(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ak)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.v:                                             ; preds = %bb.s
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state232(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ak)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.w:                                             ; preds = %bb.s
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state371(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ak)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.x:                                             ; preds = %bb.s, %bb.r
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !4765, !noalias !4766, !noundef !5 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !4765, !noalias !4766, !noundef !5
  %i.au = sub nuw i64 %i.at, %i.ar
  %i.av = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ar
  store i64 70, ptr %0, align 8, !noalias !4767
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.av, ptr %.sroa.473.0..sroa_idx, align 8, !noalias !4767
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.au, ptr %.sroa.574.0..sroa_idx, align 8, !noalias !4767
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.y:                                             ; preds = %bb.b
  %i.aw = icmp ult i64 %i.d, %i.b
  br i1 %i.aw, label %bb.z, label %bb.ab

bb.z:                                             ; preds = %bb.y
  %i.ax = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.ay = load i8, ptr %i.ax, align 1, !noalias !4768, !noundef !5
  %i.az = icmp eq i8 %i.ay, -77
  br i1 %i.az, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.ba = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state231(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ba)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.ab:                                            ; preds = %bb.z, %bb.y
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !alias.scope !4769, !noalias !4770, !noundef !5 ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !4769, !noalias !4770, !noundef !5
  %i.bf = sub nuw i64 %i.be, %i.bc
  %i.bg = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bc
  store i64 70, ptr %0, align 8, !noalias !4771
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bg, ptr %.sroa.482.0..sroa_idx, align 8, !noalias !4771
  %.sroa.583.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bf, ptr %.sroa.583.0..sroa_idx, align 8, !noalias !4771
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.ac:                                            ; preds = %bb.b
  %i.bh = icmp ult i64 %i.d, %i.b
  br i1 %i.bh, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  %i.bi = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.bj = load i8, ptr %i.bi, align 1, !noalias !4772, !noundef !5
  %i.bk = icmp eq i8 %i.bj, -97
  br i1 %i.bk, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.bl = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state372(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bl)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.af:                                            ; preds = %bb.ad, %bb.ac
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bn = load i64, ptr %i.bm, align 8, !alias.scope !4773, !noalias !4774, !noundef !5 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !4773, !noalias !4774, !noundef !5
  %i.bq = sub nuw i64 %i.bp, %i.bn
  %i.br = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.bn
  store i64 70, ptr %0, align 8, !noalias !4775
  %.sroa.491.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.br, ptr %.sroa.491.0..sroa_idx, align 8, !noalias !4775
  %.sroa.592.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bq, ptr %.sroa.592.0..sroa_idx, align 8, !noalias !4775
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.ag:                                            ; preds = %bb.b
  %i.bs = icmp ult i64 %i.d, %i.b
  br i1 %i.bs, label %bb.ah, label %bb.am

bb.ah:                                            ; preds = %bb.ag
  %i.bt = add nuw i64 %2, 2                       ; 4 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.bv = load i8, ptr %i.bu, align 1, !noalias !4776, !noundef !5
  %i.bw = zext i8 %i.bv to i64
  %i.bx = getelementptr inbounds nuw i8, ptr @81, i64 %i.bw
  %i.by = load i8, ptr %i.bx, align 1, !range !19, !noalias !4776, !noundef !5
  switch i8 %i.by, label %default.unreachable113 [
    i8 0, label %bb.am
    i8 1, label %bb.ai
    i8 2, label %bb.aj
    i8 3, label %bb.ak
    i8 4, label %bb.al
  ]

bb.ai:                                            ; preds = %bb.ah
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state231(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bt)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.aj:                                            ; preds = %bb.ah
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state232(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bt)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.ak:                                            ; preds = %bb.ah
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state370(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bt)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.al:                                            ; preds = %bb.ah
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state371(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.bt)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.am:                                            ; preds = %bb.ah, %bb.ag
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ca = load i64, ptr %i.bz, align 8, !alias.scope !4777, !noalias !4778, !noundef !5 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !4777, !noalias !4778, !noundef !5
  %i.cd = sub nuw i64 %i.cc, %i.ca
  %i.ce = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.ca
  store i64 70, ptr %0, align 8, !noalias !4779
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ce, ptr %.sroa.4100.0..sroa_idx, align 8, !noalias !4779
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cd, ptr %.sroa.5101.0..sroa_idx, align 8, !noalias !4779
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.an:                                            ; preds = %bb.b
  %i.cf = icmp ult i64 %i.d, %i.b
  br i1 %i.cf, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.cg = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.d
  %i.ch = load i8, ptr %i.cg, align 1, !noalias !4780, !noundef !5
  %i.ci = icmp eq i8 %i.ch, -81
  br i1 %i.ci, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.cj = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state231(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.cj)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.aq:                                            ; preds = %bb.ao, %bb.an
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cl = load i64, ptr %i.ck, align 8, !alias.scope !4781, !noalias !4782, !noundef !5 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !4781, !noalias !4782, !noundef !5
  %i.co = sub nuw i64 %i.cn, %i.cl
  %i.cp = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.cl
  store i64 70, ptr %0, align 8, !noalias !4783
  %.sroa.4109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cp, ptr %.sroa.4109.0..sroa_idx, align 8, !noalias !4783
  %.sroa.5110.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.co, ptr %.sroa.5110.0..sroa_idx, align 8, !noalias !4783
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

bb.ar:                                            ; preds = %bb.b, %bb.a
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !alias.scope !4784, !noalias !4785, !noundef !5 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ct = load i64, ptr %i.cs, align 8, !alias.scope !4784, !noalias !4785, !noundef !5
  %i.cu = sub nuw i64 %i.ct, %i.cr
  %i.cv = getelementptr inbounds nuw i8, ptr %.pre, i64 %i.cr
  store i64 70, ptr %0, align 8
  %.sroa.446.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cv, ptr %.sroa.446.0..sroa_idx, align 8
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.cu, ptr %.sroa.547.0..sroa_idx, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state363.exit: ; preds = %bb.aq, %bb.ap, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.af, %bb.ae, %bb.ab, %bb.aa, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.h, %bb.g, %bb.f, %bb.e, %bb.ar
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state239(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !5   ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %3, %bb.a
  %.tr41 = phi i64 [ %2, %bb.a ], [ %4, %3 ]      ; 3 uses
  %i.e = add i64 %.tr41, 7                        ; 2 uses
  %i.f = icmp ult i64 %i.e, %i.b
  br i1 %i.f, label %.lr.ph, label %.preheader

.preheader:                                       ; preds = %bb.p, %tailrecurse
  %.sroa.0.0.lcssa = phi i64 [ %.tr41, %tailrecurse ], [ %i.ai, %bb.p ] ; 3 uses
  %i.g = icmp ult i64 %.sroa.0.0.lcssa, %i.b
  br i1 %i.g, label %.lr.ph64, label %.loopexit

.lr.ph:                                           ; preds = %tailrecurse, %bb.p
  %i.h = phi i64 [ %i.aj, %bb.p ], [ %i.e, %tailrecurse ]
  %.sroa.0.061 = phi i64 [ %i.ai, %bb.p ], [ %.tr41, %tailrecurse ] ; 10 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.061 ; 8 uses
  %i.j = load i8, ptr %i.i, align 1, !noundef !5
  switch i8 %i.j, label %.loopexit [
    i8 32, label %bb.c
    i8 9, label %bb.c
  ]

.loopexit:                                        ; preds = %.lr.ph, %bb.o, %.lr.ph64, %.preheader, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.n
  %.sroa.0.2 = phi i64 [ %i.af, %bb.n ], [ %i.ac, %bb.l ], [ %.sroa.0.163, %.lr.ph64 ], [ %i.q, %bb.d ], [ %i.t, %bb.f ], [ %i.w, %bb.h ], [ %i.z, %bb.j ], [ %.sroa.0.0.lcssa, %.preheader ], [ %.sroa.0.061, %.lr.ph ], [ %i.h, %bb.o ] ; 8 uses
  %i.k = icmp ult i64 %.sroa.0.2, %i.b
  br i1 %i.k, label %bb.q, label %.loopexit.thread.a

.lr.ph64:                                         ; preds = %.preheader, %bb.b
  %.sroa.0.163 = phi i64 [ %i.n, %bb.b ], [ %.sroa.0.0.lcssa, %.preheader ] ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.163
  %i.m = load i8, ptr %i.l, align 1, !noundef !5
  switch i8 %i.m, label %.loopexit [
    i8 32, label %bb.b
    i8 9, label %bb.b
  ]

bb.b:                                             ; preds = %.lr.ph64, %.lr.ph64
  %i.n = add nuw i64 %.sroa.0.163, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %i.b
  br i1 %exitcond.not, label %.loopexit.thread.a, label %.lr.ph64

bb.c:                                             ; preds = %.lr.ph, %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  %i.p = load i8, ptr %i.o, align 1, !noundef !5
  switch i8 %i.p, label %bb.d [
    i8 32, label %bb.e
    i8 9, label %bb.e
  ]

bb.d:                                             ; preds = %bb.c
  %i.q = add i64 %.sroa.0.061, 1
  br label %.loopexit

bb.e:                                             ; preds = %bb.c, %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.s = load i8, ptr %i.r, align 1, !noundef !5
  switch i8 %i.s, label %bb.f [
    i8 32, label %bb.g
    i8 9, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  %i.t = add i64 %.sroa.0.061, 2
  br label %.loopexit

bb.g:                                             ; preds = %bb.e, %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  %i.v = load i8, ptr %i.u, align 1, !noundef !5
  switch i8 %i.v, label %bb.h [
    i8 32, label %bb.i
    i8 9, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.w = add i64 %.sroa.0.061, 3
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  %i.y = load i8, ptr %i.x, align 1, !noundef !5
  switch i8 %i.y, label %bb.j [
    i8 32, label %bb.k
    i8 9, label %bb.k
  ]

bb.j:                                             ; preds = %bb.i
  %i.z = add i64 %.sroa.0.061, 4
  br label %.loopexit

bb.k:                                             ; preds = %bb.i, %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 5
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !5
  switch i8 %i.ab, label %bb.l [
    i8 32, label %bb.m
    i8 9, label %bb.m
  ]

bb.l:                                             ; preds = %bb.k
  %i.ac = add i64 %.sroa.0.061, 5
  br label %.loopexit

bb.m:                                             ; preds = %bb.k, %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 6
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !5
  switch i8 %i.ae, label %bb.n [
    i8 32, label %bb.o
    i8 9, label %bb.o
  ]

bb.n:                                             ; preds = %bb.m
  %i.af = add i64 %.sroa.0.061, 6
  br label %.loopexit

bb.o:                                             ; preds = %bb.m, %bb.m
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 7
  %i.ah = load i8, ptr %i.ag, align 1, !noundef !5
  switch i8 %i.ah, label %.loopexit [
    i8 32, label %bb.p
    i8 9, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.ai = add i64 %.sroa.0.061, 8                 ; 2 uses
  %i.aj = add i64 %.sroa.0.061, 15                ; 2 uses
  %i.ak = icmp ult i64 %i.aj, %i.b
  br i1 %i.ak, label %.lr.ph, label %.preheader

bb.q:                                             ; preds = %.loopexit
  %i.al = add nuw i64 %.sroa.0.2, 1               ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %.sroa.0.2
  %i.an = load i8, ptr %i.am, align 1, !noundef !5
  %i.ao = zext i8 %i.an to i64
  %i.ap = getelementptr inbounds nuw i8, ptr @63, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !range !23, !noundef !5
  switch i8 %i.aq, label %default.unreachable1089 [
    i8 0, label %.loopexit.thread.a
    i8 1, label %bb.r
    i8 2, label %bb.u
  ]

default.unreachable1089:                          ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ar = icmp ult i64 %i.al, %i.b
  br i1 %i.ar, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.at = load i8, ptr %i.as, align 1, !noalias !4789, !noundef !5
  %i.au = icmp eq i8 %i.at, -96
  br i1 %i.au, label %3, label %bb.t

3:                                                ; preds = %bb.s
  %4 = add nuw i64 %.sroa.0.2, 2
  br label %tailrecurse

bb.t:                                             ; preds = %bb.s, %bb.r
  store i64 %.sroa.0.2, ptr %i.c, align 8
  store i64 79, ptr %0, align 8, !noalias !4790
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state240.exit

bb.u:                                             ; preds = %bb.q
  store i64 %.sroa.0.2, ptr %i.c, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state241(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.al, i8 noundef 79)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state240.exit

.loopexit.thread.a:                               ; preds = %bb.q, %.loopexit, %bb.b
  %.sroa.0.291 = phi i64 [ %i.b, %bb.b ], [ %.sroa.0.2, %.loopexit ], [ %.sroa.0.2, %bb.q ]
  store i64 %.sroa.0.291, ptr %i.c, align 8
  store i64 79, ptr %0, align 8
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state240.exit

_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state240.exit: ; preds = %bb.t, %bb.u, %.loopexit.thread.a
  ret void
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state240(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 -1, 80) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = icmp ult i64 %2, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %2
  %i.g = load i8, ptr %i.f, align 1, !noundef !5
  %i.h = icmp eq i8 %i.g, -96
  br i1 %i.h, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, i8 noundef %3) #14
  %i.i = load i64, ptr %i.a, align 8, !range !10, !noundef !5
  %i.j = tail call i64 @llvm.usub.sat.i64(i64 %i.i, i64 82)
  switch i64 %i.j, label %default.unreachable22 [
    i64 0, label %bb.f
    i64 1, label %bb.g
    i64 2, label %bb.h
    i64 3, label %bb.i
  ]

bb.d:                                             ; preds = %bb.b
  %i.k = add nuw i64 %2, 1
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state239(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  ret void

default.unreachable22:                            ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.h:                                             ; preds = %bb.c
  store i64 -1, ptr %0, align 8
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = load i64, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.m, ptr %i.n, align 8
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state242(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %i.m)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state241(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, i8 noundef range(i8 -1, 80) %3) unnamed_addr #2 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !5 ; 3 uses
  %i.f = icmp ult i64 %2, %i.e
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %2
  %i.i = load i8, ptr %i.h, align 1, !noundef !5
  switch i8 %i.i, label %bb.c [
    i8 -128, label %bb.d
    i8 -127, label %bb.m
  ]

bb.c:                                             ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef align 8 dereferenceable(32) %1, i64 noundef %2, i8 noundef %3) #14
  %i.j = load i64, ptr %i.c, align 8, !range !10, !noundef !5
  %i.k = tail call i64 @llvm.usub.sat.i64(i64 %i.j, i64 82)
  switch i64 %i.k, label %default.unreachable85 [
    i64 0, label %bb.v
    i64 1, label %bb.w
    i64 2, label %bb.x
    i64 3, label %bb.y
  ]

bb.d:                                             ; preds = %bb.b
  %i.l = add nuw i64 %2, 1                        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4799)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4800)
  %i.m = icmp ult i64 %i.l, %i.e
  br i1 %i.m, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4801
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.l, i8 noundef range(i8 -1, 80) %3) #14, !noalias !4799, !inline_history !4794
  %i.n = load i64, ptr %i.b, align 8, !range !10, !noalias !4801, !noundef !5
  %i.o = tail call i64 @llvm.usub.sat.i64(i64 %i.n, i64 82)
  switch i64 %i.o, label %default.unreachable85 [
    i64 0, label %bb.h
    i64 1, label %bb.i
    i64 2, label %bb.j
    i64 3, label %bb.k
  ]

bb.f:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.l
  %i.q = load i8, ptr %i.p, align 1, !noalias !4801, !noundef !5
  %i.r = zext i8 %i.q to i64
  %i.s = getelementptr inbounds nuw i8, ptr @62, i64 %i.r
  %i.t = load i8, ptr %i.s, align 1, !noalias !4801, !noundef !5
  %i.u = icmp sgt i8 %i.t, -1
  br i1 %i.u, label %bb.e, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state239(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.v)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state295.exit

bb.h:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !4800
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8, !alias.scope !4799, !noalias !4800
  br label %bb.l

bb.j:                                             ; preds = %bb.e
  store i64 -1, ptr %0, align 8, !alias.scope !4799, !noalias !4800
  br label %bb.l

bb.k:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load i64, ptr %i.w, align 8, !alias.scope !4800, !noalias !4799, !noundef !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.x, ptr %i.y, align 8, !alias.scope !4800, !noalias !4799
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state242(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.x)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4801
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state295.exit

bb.m:                                             ; preds = %bb.b
  %i.z = add nuw i64 %2, 1                        ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4802)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4803)
  %i.aa = icmp ult i64 %i.z, %i.e
  br i1 %i.aa, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.z
  %i.ac = load i8, ptr %i.ab, align 1, !noalias !4804, !noundef !5
  %i.ad = icmp eq i8 %i.ac, -97
  br i1 %i.ad, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4804
  call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex11__get_action(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.z, i8 noundef range(i8 -1, 80) %3) #14, !noalias !4802, !inline_history !4798
  %i.ae = load i64, ptr %i.a, align 8, !range !10, !noalias !4804, !noundef !5
  %i.af = tail call i64 @llvm.usub.sat.i64(i64 %i.ae, i64 82)
  switch i64 %i.af, label %default.unreachable85 [
    i64 0, label %bb.q
    i64 1, label %bb.r
    i64 2, label %bb.s
    i64 3, label %bb.t
  ]

bb.p:                                             ; preds = %bb.n
  %i.ag = add nuw i64 %2, 2
  tail call fastcc void @_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state239(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.ag)
  br label %_RNvNvXs1_NtCsfF8zpZz1lvn_13yara_x_parser9tokenizerNtB7_11NormalTokenNtCscFnjbPKQfKU_5logos5Logos3lex8state295.exit

bb.q:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !4803
  br label %bb.u

bb.r:                                             ; preds = %bb.o
  store i64 -1, ptr %0, align 8, !alias.scope !4802, !noalias !4803
  br label %bb.u

bb.s:                                             ; preds = %bb.o
  store i64 -1, ptr %0, align 8, !alias.scope !4802, !noalias !4803
end_hunk_3
