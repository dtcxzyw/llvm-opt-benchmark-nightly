Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/hid-input?download=true
inline.NumInlined: 131
inline.NumDeleted: 43
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 6
begin_hunk_0_@hidinput_count_leds:bb.a
  %.225.epil.init = phi i32 [ %.127, %.lr.ph ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod46 = trunc i32 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod46)
  %i.ah = sext i32 %.02226.epil.init to i64       ; 2 uses
  %i.ai = getelementptr [28 x i8], ptr %i.k, i64 %i.ah
  %i.aj = getelementptr i8, ptr %i.ai, i64 16
  %i.ak = load i8, ptr %i.aj, align 4
  %i.al = icmp eq i8 %i.ak, 17
  br i1 %i.al, label %bb.h, label %._crit_edge

bb.h:                                             ; preds = %.epil.preheader
  %i.am = load ptr, ptr %i.l, align 8
  %i.an = getelementptr [4 x i8], ptr %i.am, i64 %i.ah
  %i.ao = load i32, ptr %i.an, align 4
  %.not24.epil = icmp ne i32 %i.ao, 0
  %i.ap = zext i1 %.not24.epil to i32
  %spec.select.epil = add i32 %.225.epil.init, %i.ap
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %bb.b
  %.2.lcssa = phi i32 [ %.127, %bb.b ], [ %.3.1, %._crit_edge.loopexit.unr-lcssa ], [ %.225.epil.init, %.epil.preheader ], [ %spec.select.epil, %bb.h ] ; 2 uses
  %i.aq = add nuw i32 %.02128, 1                  ; 2 uses
  %exitcond39.not = icmp eq i32 %i.aq, %i.c
  br i1 %exitcond39.not, label %.loopexit, label %bb.b, !llvm.loop !39

._crit_edge35:                                    ; preds = %.loopexit, %bb.a
  %.023.lcssa = phi i32 [ 0, %bb.a ], [ %.1.lcssa, %.loopexit ]
  ret i32 %.023.lcssa
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -1, 1) i32 @hidinput_connect(ptr noundef %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 7104
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr i8, ptr %0, i64 7184       ; 12 uses
  store volatile ptr %i.c, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %0, i64 7192       ; 3 uses
  store volatile ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr i8, ptr %0, i64 6296       ; 2 uses
  store i64 4503599625273344, ptr %i.e, align 8
  %i.f = getelementptr i8, ptr %0, i64 6304       ; 3 uses
  store volatile ptr %i.f, ptr %i.f, align 8
  %i.g = getelementptr i8, ptr %0, i64 6312
  store volatile ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr i8, ptr %0, i64 6320
  store ptr @hidinput_led_worker, ptr %i.h, align 8
  %i.i = getelementptr i8, ptr %0, i64 7160       ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, -5
  store i64 %i.k, ptr %i.i, align 8
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %.preheader, label %bb.f

.preheader:                                       ; preds = %bb.a
  %i.l = getelementptr i8, ptr %0, i64 48
  %i.m = load i32, ptr %i.l, align 8              ; 3 uses
  %.not183 = icmp eq i32 %i.m, 0
  br i1 %.not183, label %.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.n = getelementptr i8, ptr %0, i64 40
  %i.o = load ptr, ptr %i.n, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %.086156 = phi i32 [ 0, %.lr.ph ], [ %i.x, %bb.e ] ; 3 uses
  %i.p = sext i32 %.086156 to i64
  %i.q = getelementptr [16 x i8], ptr %i.o, i64 %i.p ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 4
  %i.s = load i32, ptr %i.r, align 4
  %switch = icmp ult i32 %i.s, 2
  br i1 %switch, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %i.q, i64 8
  %i.u = load i32, ptr %i.t, align 4              ; 3 uses
  %i.v = add i32 %i.u, -65536
  %or.cond = icmp ult i32 %i.v, 9
  %i.w = add i32 %i.u, -851969
  %or.cond108 = icmp ult i32 %i.w, 6
  %or.cond142 = or i1 %or.cond, %or.cond108
  br i1 %or.cond142, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  switch i32 %i.u, label %bb.e [
    i32 65664, label %.thread
    i32 786433, label %.thread
    i32 65548, label %.thread
  ]

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.x = add nuw i32 %.086156, 1                  ; 2 uses
  %exitcond.not = icmp eq i32 %i.x, %i.m
  br i1 %exitcond.not, label %.thread.thread, label %bb.b, !llvm.loop !40

.thread:                                          ; preds = %bb.d, %bb.d, %bb.d, %bb.c
  %i.y = icmp eq i32 %.086156, %i.m
  br i1 %i.y, label %.thread.thread, label %bb.f

bb.f:                                             ; preds = %.thread, %bb.a
  %i.z = getelementptr i8, ptr %0, i64 4232       ; 3 uses
  %.040.i = load ptr, ptr %i.z, align 8           ; 2 uses
  %.not41.i = icmp eq ptr %.040.i, %i.z
  br i1 %.not41.i, label %report_features.exit, label %.preheader35.lr.ph.i

.preheader35.lr.ph.i:                             ; preds = %bb.f
  %i.aa = getelementptr i8, ptr %i.b, i64 136     ; 2 uses
  br label %.preheader35.i

.loopexit36.i:                                    ; preds = %.loopexit.i, %.preheader35.i
  %.0.i = load ptr, ptr %.042.i, align 8          ; 2 uses
  %.not.i = icmp eq ptr %.0.i, %i.z
  br i1 %.not.i, label %report_features.exit, label %.preheader35.i, !llvm.loop !41

.preheader35.i:                                   ; preds = %.loopexit36.i, %.preheader35.lr.ph.i
  %.042.i = phi ptr [ %.040.i, %.preheader35.lr.ph.i ], [ %.0.i, %.loopexit36.i ] ; 3 uses
  %i.ab = getelementptr i8, ptr %.042.i, i64 2120 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8            ; 2 uses
  %.not43.i = icmp eq i32 %i.ac, 0
  br i1 %.not43.i, label %.loopexit36.i, label %.lr.ph39.i

.lr.ph39.i:                                       ; preds = %.preheader35.i
  %i.ad = getelementptr i8, ptr %.042.i, i64 64
  br label %bb.g

bb.g:                                             ; preds = %.loopexit.i, %.lr.ph39.i
  %i.ae = phi i32 [ %i.ac, %.lr.ph39.i ], [ %i.ba, %.loopexit.i ] ; 3 uses
  %.03238.i = phi i32 [ 0, %.lr.ph39.i ], [ %i.bb, %.loopexit.i ] ; 2 uses
  %i.af = sext i32 %.03238.i to i64
  %i.ag = getelementptr [8 x i8], ptr %i.ad, i64 %i.af ; 2 uses
  %i.ah = load ptr, ptr %i.ag, align 8            ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 40
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %.loopexit.i, label %.preheader.i

.preheader.i:                                     ; preds = %bb.g
  %i.al = getelementptr i8, ptr %i.ah, i64 24
  %i.am = load i32, ptr %i.al, align 8
  %.not44.i = icmp eq i32 %i.am, 0
  br i1 %.not44.i, label %.loopexit.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %i.an = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %.loopexit.i, label %.lr.ph.split.i

.lr.ph.splitthread-pre-split.i:                   ; preds = %bb.i
  %.pr.i = load ptr, ptr %i.aa, align 8
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %.lr.ph.splitthread-pre-split.i
  %i.ap = phi ptr [ %.pr.i, %.lr.ph.splitthread-pre-split.i ], [ %i.an, %.lr.ph.i ] ; 2 uses
  %i.aq = phi ptr [ %i.av, %.lr.ph.splitthread-pre-split.i ], [ %i.ah, %.lr.ph.i ] ; 3 uses
  %.03137.i = phi i32 [ %i.aw, %.lr.ph.splitthread-pre-split.i ], [ 0, %.lr.ph.i ] ; 2 uses
  %.not34.i = icmp eq ptr %i.ap, null
  br i1 %.not34.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.ar = getelementptr i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8
  %i.at = sext i32 %.03137.i to i64
  %i.au = getelementptr [28 x i8], ptr %i.as, i64 %i.at
  tail call void %i.ap(ptr noundef %0, ptr noundef %i.aq, ptr noundef %i.au) #12, !inline_history !42
  %.pre.i = load ptr, ptr %i.ag, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %.lr.ph.split.i
  %i.av = phi ptr [ %i.aq, %.lr.ph.split.i ], [ %.pre.i, %bb.h ] ; 2 uses
  %i.aw = add nuw i32 %.03137.i, 1                ; 2 uses
  %i.ax = getelementptr i8, ptr %i.av, i64 24
  %i.ay = load i32, ptr %i.ax, align 8
  %i.az = icmp ult i32 %i.aw, %i.ay
  br i1 %i.az, label %.lr.ph.splitthread-pre-split.i, label %.loopexit.loopexit45.i, !llvm.loop !43

.loopexit.loopexit45.i:                           ; preds = %bb.i
  %.pre46.i = load i32, ptr %i.ab, align 8
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit45.i, %.lr.ph.i, %.preheader.i, %bb.g
  %i.ba = phi i32 [ %.pre46.i, %.loopexit.loopexit45.i ], [ %i.ae, %bb.g ], [ %i.ae, %.preheader.i ], [ %i.ae, %.lr.ph.i ] ; 2 uses
  %i.bb = add nuw i32 %.03238.i, 1                ; 2 uses
  %i.bc = icmp ult i32 %i.bb, %i.ba
  br i1 %i.bc, label %bb.g, label %.loopexit36.i, !llvm.loop !44

report_features.exit:                             ; preds = %.loopexit36.i, %bb.f
  %i.bd = getelementptr i8, ptr %0, i64 7172      ; 5 uses
  %i.be = getelementptr i8, ptr %0, i64 52        ; 2 uses
  %i.bf = getelementptr i8, ptr %0, i64 7216      ; 4 uses
  %i.bg = getelementptr i8, ptr %0, i64 7344
  %i.bh = getelementptr i8, ptr %0, i64 7408
  %i.bi = getelementptr i8, ptr %0, i64 56
  %i.bj = getelementptr i8, ptr %0, i64 60
  %i.bk = getelementptr i8, ptr %0, i64 64
  %i.bl = getelementptr i8, ptr %0, i64 68
  %i.bm = getelementptr i8, ptr %0, i64 6344      ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %report_features.exit, %.loopexit148
  %2 = phi i1 [ false, %report_features.exit ], [ true, %.loopexit148 ]
  %i.bn = phi i1 [ true, %report_features.exit ], [ false, %.loopexit148 ]
  %indvars.iv = phi i64 [ 0, %report_features.exit ], [ 1, %.loopexit148 ]
  %.085177 = phi ptr [ null, %report_features.exit ], [ %.5, %.loopexit148 ] ; 2 uses
  br i1 %2, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.bo = load i32, ptr %i.bd, align 4
  %i.bp = and i32 %i.bo, 65536
  %.not100 = icmp eq i32 %i.bp, 0
  br i1 %.not100, label %bb.l, label %.loopexit148.thread

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.bq = getelementptr [2072 x i8], ptr %0, i64 %indvars.iv
  %i.br = getelementptr i8, ptr %i.bq, i64 88     ; 3 uses
  %.083170 = load ptr, ptr %i.br, align 8         ; 2 uses
  %.not141171 = icmp eq ptr %.083170, %i.br
  br i1 %.not141171, label %.loopexit148, label %.lr.ph174

.lr.ph174:                                        ; preds = %bb.l, %bb.at
  %.083173 = phi ptr [ %.083, %bb.at ], [ %.083170, %bb.l ] ; 10 uses
  %.1172 = phi ptr [ %.4, %bb.at ], [ %.085177, %bb.l ] ; 2 uses
  %i.bs = getelementptr i8, ptr %.083173, i64 2120 ; 4 uses
  %i.bt = load i32, ptr %i.bs, align 8
  %.not102 = icmp eq i32 %i.bt, 0
  br i1 %.not102, label %bb.at, label %bb.m

bb.m:                                             ; preds = %.lr.ph174
  %i.bu = getelementptr i8, ptr %.083173, i64 56
  %i.bv = load i32, ptr %i.bu, align 8
  %.fr.i = freeze i32 %i.bv                       ; 5 uses
  %i.bw = load i32, ptr %i.bd, align 4
  %i.bx = zext i32 %i.bw to i64                   ; 2 uses
  %i.by = and i64 %i.bx, 64
  %.not103 = icmp eq i64 %i.by, 0
  br i1 %.not103, label %bb.r, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bz = getelementptr i8, ptr %.083173, i64 2128
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr i8, ptr %i.ca, i64 7184   ; 3 uses
  %.01417.i = load ptr, ptr %i.cb, align 8        ; 2 uses
  %.not18.i = icmp eq ptr %.01417.i, %i.cb
  br i1 %.not18.i, label %hidinput_match.exit.thread, label %.lr.ph.i110

.lr.ph.i110:                                      ; preds = %bb.n
  %i.cc = getelementptr i8, ptr %.083173, i64 48
  br label %bb.o

bb.o:                                             ; preds = %bb.q, %.lr.ph.i110
  %.01419.i = phi ptr [ %.01417.i, %.lr.ph.i110 ], [ %.014.i, %bb.q ] ; 3 uses
  %i.cd = getelementptr i8, ptr %.01419.i, i64 16
  %i.ce = load ptr, ptr %i.cd, align 8            ; 2 uses
  %.not16.i = icmp eq ptr %i.ce, null
  br i1 %.not16.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cf = getelementptr i8, ptr %i.ce, i64 48
  %i.cg = load i32, ptr %i.cf, align 8
  %i.ch = load i32, ptr %i.cc, align 8
  %i.ci = icmp eq i32 %i.cg, %i.ch
  br i1 %i.ci, label %hidinput_match.exit, label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.014.i = load ptr, ptr %.01419.i, align 8      ; 2 uses
  %.not.i111 = icmp eq ptr %.014.i, %i.cb
  br i1 %.not.i111, label %hidinput_match.exit.thread, label %bb.o, !llvm.loop !45

bb.r:                                             ; preds = %bb.m
  %i.cj = load i32, ptr %i.be, align 4
  %i.ck = icmp ult i32 %i.cj, 2
  %i.cl = and i64 %i.bx, 2048
  %.not104 = icmp eq i64 %i.cl, 0
  %or.cond109 = or i1 %.not104, %i.ck
  br i1 %or.cond109, label %hidinput_match.exit, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cm = getelementptr i8, ptr %.083173, i64 2128
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr i8, ptr %i.cn, i64 7184   ; 4 uses
  %.01719.i = load ptr, ptr %i.co, align 8        ; 3 uses
  %.not20.i = icmp eq ptr %.01719.i, %i.co
  br i1 %.not20.i, label %hidinput_match.exit.thread, label %.lr.ph.i113

.lr.ph.i113:                                      ; preds = %bb.s
  switch i32 %.fr.i, label %.lr.ph.split.i115 [
    i32 65664, label %.lr.ph.split.us.i.preheader
    i32 786433, label %.lr.ph.split.us.i.preheader
  ]

.lr.ph.split.us.i.preheader:                      ; preds = %.lr.ph.i113, %.lr.ph.i113
  br label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.split.us.i.preheader, %bb.t
  %.01721.us.i = phi ptr [ %.017.us.i, %bb.t ], [ %.01719.i, %.lr.ph.split.us.i.preheader ] ; 3 uses
  %i.cp = getelementptr i8, ptr %.01721.us.i, i64 56
  %i.cq = load i32, ptr %i.cp, align 8            ; 2 uses
  %i.cr = icmp eq i32 %i.cq, %.fr.i
  %i.cs = icmp eq i32 %i.cq, 65542
  %or.cond.i = or i1 %i.cr, %i.cs
  br i1 %or.cond.i, label %hidinput_match.exit, label %bb.t

bb.t:                                             ; preds = %.lr.ph.split.us.i
  %.017.us.i = load ptr, ptr %.01721.us.i, align 8 ; 2 uses
  %.not.us.i = icmp eq ptr %.017.us.i, %i.co
  br i1 %.not.us.i, label %hidinput_match.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !46

.lr.ph.split.i115:                                ; preds = %.lr.ph.i113, %bb.u
  %.01721.i = phi ptr [ %.017.i, %bb.u ], [ %.01719.i, %.lr.ph.i113 ] ; 3 uses
  %i.ct = getelementptr i8, ptr %.01721.i, i64 56
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = icmp eq i32 %i.cu, %.fr.i
  br i1 %i.cv, label %hidinput_match.exit, label %bb.u

bb.u:                                             ; preds = %.lr.ph.split.i115
  %.017.i = load ptr, ptr %.01721.i, align 8      ; 2 uses
  %.not.i116 = icmp eq ptr %.017.i, %i.co
  br i1 %.not.i116, label %hidinput_match.exit.thread, label %.lr.ph.split.i115, !llvm.loop !46

hidinput_match.exit:                              ; preds = %bb.p, %.lr.ph.split.us.i, %.lr.ph.split.i115, %bb.r
  %.2 = phi ptr [ %.1172, %bb.r ], [ %.01721.i, %.lr.ph.split.i115 ], [ %.01721.us.i, %.lr.ph.split.us.i ], [ %.01419.i, %bb.p ] ; 2 uses
  %.not105 = icmp eq ptr %.2, null
  br i1 %.not105, label %hidinput_match.exit.thread, label %.lr.ph67.i

hidinput_match.exit.thread:                       ; preds = %bb.q, %bb.t, %bb.u, %bb.s, %bb.n, %hidinput_match.exit
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @kmalloc_caches, i64 48), align 16
  %i.cx = tail call noalias noundef align 8 dereferenceable_or_null(64) ptr @__kmalloc_cache_noprof(ptr noundef %i.cw, i32 noundef 3520, i64 noundef 64) #15 ; 14 uses
  %i.cy = tail call ptr @input_allocate_device() #12 ; 17 uses
  %i.cz = icmp ne ptr %i.cx, null
  %i.da = icmp ne ptr %i.cy, null
  %or.cond.i117 = select i1 %i.cz, i1 %i.da, i1 false
  br i1 %or.cond.i117, label %bb.v, label %hidinput_allocate.exit.thread

bb.v:                                             ; preds = %hidinput_match.exit.thread
  %i.db = load i32, ptr %i.bd, align 4
  %i.dc = and i32 %i.db, 2048
  %.not.i118 = icmp eq i32 %i.dc, 0
  br i1 %.not.i118, label %bb.al, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.dd = load i32, ptr %i.be, align 4
  %i.de = icmp ugt i32 %i.dd, 1
  br i1 %i.de, label %bb.x, label %bb.al

bb.x:                                             ; preds = %bb.w
  switch i32 %.fr.i, label %bb.al [
    i32 65542, label %bb.ai
    i32 65543, label %bb.y
    i32 65538, label %bb.z
    i32 851970, label %bb.aa
    i32 852000, label %bb.ab
    i32 851972, label %bb.ac
    i32 851973, label %bb.ad
    i32 65664, label %bb.ae
    i32 786433, label %bb.af
    i32 65548, label %bb.ag
    i32 65550, label %bb.ah
  ]

bb.y:                                             ; preds = %bb.x
  br label %bb.ai

bb.z:                                             ; preds = %bb.x
  br label %bb.ai

bb.aa:                                            ; preds = %bb.x
  br label %bb.ai

bb.ab:                                            ; preds = %bb.x
  br label %bb.ai

bb.ac:                                            ; preds = %bb.x
  br label %bb.ai

bb.ad:                                            ; preds = %bb.x
  br label %bb.ai

bb.ae:                                            ; preds = %bb.x
  br label %bb.ai

bb.af:                                            ; preds = %bb.x
  br label %bb.ai

bb.ag:                                            ; preds = %bb.x
  br label %bb.ai

bb.ah:                                            ; preds = %bb.x
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x
  %.0.i119 = phi ptr [ @.str.10, %bb.ah ], [ @.str.9, %bb.ag ], [ @.str.1, %bb.y ], [ @.str.2, %bb.z ], [ @.str.3, %bb.aa ], [ @.str.4, %bb.ab ], [ @.str.5, %bb.ac ], [ @.str.6, %bb.ad ], [ @.str.7, %bb.ae ], [ @.str.8, %bb.af ], [ @.str, %bb.x ] ; 3 uses
  %i.df = tail call i64 @strlen(ptr noundef %i.bf) #12 ; 2 uses
  %i.dg = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i119) #12 ; 2 uses
  %i.dh = icmp ult i64 %i.df, %i.dg
  br i1 %i.dh, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.di = getelementptr i8, ptr %i.bf, i64 %i.df
  %i.dj = sub i64 0, %i.dg
  %i.dk = getelementptr i8, ptr %i.di, i64 %i.dj
  %i.dl = tail call i32 @strcmp(ptr noundef %i.dk, ptr noundef nonnull dereferenceable(1) %.0.i119) #12
  %.not68.i = icmp eq i32 %i.dl, 0
  br i1 %.not68.i, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
end_hunk_0
