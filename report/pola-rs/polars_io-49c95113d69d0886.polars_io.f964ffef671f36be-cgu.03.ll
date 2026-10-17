Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.03?download=true
inline.NumInlined: 3287
inline.NumDeleted: 1477
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
  %i.by = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.bz = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %exitcond.not.not.i252.not = icmp eq i64 %4, 0
  br i1 %exitcond.not.not.i252.not, label %.split.i, label %.outer.split.i.preheader, !dbg !41440

bb.aa:                                            ; preds = %bb.z
  %i.ca = extractvalue { i64, i64 } %i.bw, 0, !dbg !41438
  %i.cb = icmp eq i64 %i.ca, 1, !dbg !41438
  br i1 %i.cb, label %bb.ab, label %bb.u, !dbg !41438

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !dbg !41441, !noalias !41315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !dbg !41441, !noalias !41315
  store ptr %i.ah, ptr %i.w, align 8, !dbg !41442, !noalias !41315
  %i.cc = getelementptr inbounds nuw i8, ptr %i.w, i64 8, !dbg !41442
  store i64 4096, ptr %i.cc, align 8, !dbg !41442, !noalias !41315
  %i.cd = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !41442
  store i64 4096, ptr %i.cd, align 8, !dbg !41442, !noalias !41315
  %i.ce = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.ac unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41443, !noalias !41314 ; 2 uses

bb.ac:                                            ; preds = %bb.ab
  %i.cf = extractvalue { i64, ptr } %i.ce, 0, !dbg !41443 ; 2 uses
  %i.cg = extractvalue { i64, ptr } %i.ce, 1, !dbg !41443 ; 2 uses
  store i64 %i.cf, ptr %i.x, align 8, !dbg !41443, !noalias !41315
  %i.ch = getelementptr inbounds nuw i8, ptr %i.x, i64 8, !dbg !41443 ; 2 uses
  store ptr %i.cg, ptr %i.ch, align 8, !dbg !41443, !noalias !41315
  %i.ci = trunc nuw i64 %i.cf to i1, !dbg !41444
  br i1 %i.ci, label %bb.ad, label %bb.ae, !dbg !41445

bb.ad:                                            ; preds = %bb.ac
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ch)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41446, !noalias !41314

bb.ae:                                            ; preds = %bb.ac
  %i.cj = icmp eq ptr %i.cg, null, !dbg !41444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !41447, !noalias !41315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41448, !noalias !41315
  br i1 %i.cj, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, label %.lr.ph.i.i, !dbg !41449

bb.af:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !dbg !41447, !noalias !41315
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41450, !alias.scope !41314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !dbg !41448, !noalias !41315
  br label %bb.ag, !dbg !41451

bb.ag:                                            ; preds = %bb.az, %bb.af, %bb.y
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i unwind label %bb.ah, !dbg !41452, !noalias !41314

bb.ah:                                            ; preds = %bb.ag
  %i.ck = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.body unwind label %bb.ai, !dbg !41453, !noalias !41314

bb.ai:                                            ; preds = %bb.ah
  %i.cl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41452, !noalias !41314
  unreachable, !dbg !41452

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i: ; preds = %bb.ag
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa)
          to label %.noexc15 unwind label %bb.cw, !dbg !41454

.noexc15:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !41427, !noalias !41315
  br label %bb.cx, !dbg !41420

.lr.ph.i.i:                                       ; preds = %bb.ae
  %i.cm = load ptr, ptr %i.az, align 8, !dbg !41455, !noalias !41315, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.cn = load i64, ptr %i.ba, align 8, !dbg !41456, !noalias !41315, !noundef !1321 ; 3 uses
  %..i = select i1 %6, i8 %7, i8 34, !dbg !41457  ; 2 uses
  %i.co = icmp eq i64 %i.cn, 0, !dbg !41458       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i, label %.lr.ph.split.i.preheader.i

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.i.i
  br i1 %i.co, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.i.i.i.i, !dbg !41458

.lr.ph.split.us.i.preheader.i:                    ; preds = %.lr.ph.i.i
  br i1 %i.co, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i, !dbg !41458

.lr.ph.i:                                         ; preds = %.lr.ph.split.us.i.preheader.i, %.lr.ph.split.us.i.i
  %i.cp = phi ptr [ %i.dp, %.lr.ph.split.us.i.i ], [ %i.cm, %.lr.ph.split.us.i.preheader.i ] ; 6 uses
  %.sroa.0.014.us.i85.i = phi i64 [ %i.dq, %.lr.ph.split.us.i.i ], [ 0, %.lr.ph.split.us.i.preheader.i ] ; 5 uses
  %i.cq = phi i64 [ %i.do, %.lr.ph.split.us.i.i ], [ %i.cn, %.lr.ph.split.us.i.preheader.i ] ; 2 uses
  %i.cr = load i8, ptr %i.cp, align 1, !dbg !41459, !noalias !41328, !noundef !1321
  %i.cs = icmp eq i8 %i.cr, %..i, !dbg !41460
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.cq, !dbg !41461 ; 2 uses
  br i1 %i.cs, label %.lr.ph.i.us.i.i, label %.lr.ph.i.i.us.i.i, !dbg !41460

.lr.ph.i.i.us.i.i:                                ; preds = %.lr.ph.i, %bb.aj
  %.sroa.02.012.i.i.us.i.i = phi i64 [ %i.cy, %bb.aj ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.cu = phi ptr [ %i.cx, %bb.aj ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %.val7.i.i.us.i.i = load i8, ptr %i.cu, align 1, !dbg !41462, !noalias !41329, !noundef !1321 ; 2 uses
  %i.cv = icmp eq i8 %.val7.i.i.us.i.i, %5, !dbg !41463
  %i.cw = icmp eq i8 %.val7.i.i.us.i.i, %8
  %or.cond.i.i.us.i.i = or i1 %i.cv, %i.cw, !dbg !41463
  br i1 %or.cond.i.i.us.i.i, label %bb.ak, label %bb.aj, !dbg !41463

bb.aj:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cu, i64 1, !dbg !41464 ; 2 uses
  %i.cy = add nuw i64 %.sroa.02.012.i.i.us.i.i, 1, !dbg !41465
  %i.cz = icmp eq ptr %i.cx, %i.ct, !dbg !41466
  br i1 %i.cz, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i.i.us.i.i, !dbg !41467

bb.ak:                                            ; preds = %.lr.ph.i.i.us.i.i
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 %.sroa.02.012.i.i.us.i.i, !dbg !41468
  %i.db = load i8, ptr %i.da, align 1, !dbg !41469, !noalias !41328, !noundef !1321
  %i.dc = icmp eq i8 %i.db, %8, !dbg !41469
  br i1 %i.dc, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.split.us.i.i, !dbg !41469

.lr.ph.i.us.i.i:                                  ; preds = %.lr.ph.i, %bb.am
  %.sroa.05.053.i.us.i.i = phi i8 [ %spec.select.i.us.i.i, %bb.am ], [ 0, %.lr.ph.i ] ; 2 uses
  %.sroa.09.052.i.us.i.i = phi i32 [ %i.dj, %bb.am ], [ 0, %.lr.ph.i ] ; 3 uses
  %.sroa.012.051.i.us.i.i = phi ptr [ %i.dd, %bb.am ], [ %i.cp, %.lr.ph.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i, i64 1, !dbg !41470 ; 2 uses
  %i.de = load i8, ptr %.sroa.012.051.i.us.i.i, align 1, !dbg !41471, !noalias !41328, !noundef !1321 ; 3 uses
  %i.df = icmp eq i8 %i.de, %..i, !dbg !41472
  %i.dg = zext i1 %i.df to i8, !dbg !41472        ; 2 uses
  %spec.select.i.us.i.i = xor i8 %.sroa.05.053.i.us.i.i, %i.dg, !dbg !41472
  %.not.i.us.i.i = icmp eq i8 %.sroa.05.053.i.us.i.i, %i.dg, !dbg !41473
  br i1 %.not.i.us.i.i, label %bb.al, label %bb.am, !dbg !41473

bb.al:                                            ; preds = %.lr.ph.i.us.i.i
  %i.dh = icmp eq i8 %i.de, %5, !dbg !41474
  %i.di = icmp eq i8 %i.de, %8                    ; 2 uses
  %or.cond.i.us.i.i = or i1 %i.dh, %i.di, !dbg !41474
  br i1 %or.cond.i.us.i.i, label %bb.an, label %bb.am, !dbg !41474

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.us.i.i
  %i.dj = add i32 %.sroa.09.052.i.us.i.i, 1, !dbg !41475
  %i.dk = icmp eq ptr %i.dd, %i.ct, !dbg !41476
  br i1 %i.dk, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i.us.i.i, !dbg !41477

bb.an:                                            ; preds = %bb.al
  %i.dl = icmp eq i32 %.sroa.09.052.i.us.i.i, 0
  %or.cond.i.i = select i1 %i.di, i1 true, i1 %i.dl, !dbg !41478
  br i1 %or.cond.i.i, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %bb.ao, !dbg !41478

bb.ao:                                            ; preds = %bb.an
  %i.dm = zext i32 %.sroa.09.052.i.us.i.i to i64, !dbg !41479
  br label %.lr.ph.split.us.i.i, !dbg !41480

.lr.ph.split.us.i.i:                              ; preds = %bb.ao, %bb.ak
  %.sroa.016.0.i.us.i.i = phi i64 [ %i.dm, %bb.ao ], [ %.sroa.02.012.i.i.us.i.i, %bb.ak ], !dbg !41481
  %i.dn = add nuw i64 %.sroa.016.0.i.us.i.i, 1, !dbg !41482 ; 2 uses
  %i.do = sub nuw i64 %i.cq, %i.dn, !dbg !41483   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.cp, i64 %i.dn, !dbg !41484
  %i.dq = add i64 %.sroa.0.014.us.i85.i, 1, !dbg !41485 ; 2 uses
  %i.dr = icmp eq i64 %i.do, 0, !dbg !41458
  br i1 %i.dr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i, label %.lr.ph.i, !dbg !41458

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i.preheader.i, %.lr.ph.split.i.i
  %i.ds = phi ptr [ %i.eg, %.lr.ph.split.i.i ], [ %i.cm, %.lr.ph.split.i.preheader.i ] ; 4 uses
  %.sroa.0.014.i83.i = phi i64 [ %i.eh, %.lr.ph.split.i.i ], [ 0, %.lr.ph.split.i.preheader.i ] ; 3 uses
  %i.dt = phi i64 [ %i.ef, %.lr.ph.split.i.i ], [ %i.cn, %.lr.ph.split.i.preheader.i ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.dt, !dbg !41486
  br label %bb.ap, !dbg !41467

bb.ap:                                            ; preds = %bb.aq, %.lr.ph.i.i.i.i
  %.sroa.02.012.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.dz, %bb.aq ] ; 3 uses
  %i.dv = phi ptr [ %i.ds, %.lr.ph.i.i.i.i ], [ %i.dy, %bb.aq ] ; 2 uses
  %.val7.i.i.i.i = load i8, ptr %i.dv, align 1, !dbg !41462, !noalias !41329, !noundef !1321 ; 2 uses
  %i.dw = icmp eq i8 %.val7.i.i.i.i, %5, !dbg !41463
  %i.dx = icmp eq i8 %.val7.i.i.i.i, %8
  %or.cond.i.i.i.i = or i1 %i.dw, %i.dx, !dbg !41463
  br i1 %or.cond.i.i.i.i, label %bb.ar, label %bb.aq, !dbg !41463

bb.aq:                                            ; preds = %bb.ap
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 1, !dbg !41464 ; 2 uses
  %i.dz = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !41465
  %i.ea = icmp eq ptr %i.dy, %i.du, !dbg !41466
  br i1 %i.ea, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %bb.ap, !dbg !41467

bb.ar:                                            ; preds = %bb.ap
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ds, i64 %.sroa.02.012.i.i.i.i, !dbg !41468
  %i.ec = load i8, ptr %i.eb, align 1, !dbg !41469, !noalias !41328, !noundef !1321
  %i.ed = icmp eq i8 %i.ec, %8, !dbg !41469
  br i1 %i.ed, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.split.i.i, !dbg !41469

.lr.ph.split.i.i:                                 ; preds = %bb.ar
  %i.ee = add nuw i64 %.sroa.02.012.i.i.i.i, 1, !dbg !41482 ; 2 uses
  %i.ef = sub nuw i64 %i.dt, %i.ee, !dbg !41483   ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ds, i64 %i.ee, !dbg !41484
  %i.eh = add i64 %.sroa.0.014.i83.i, 1, !dbg !41485 ; 2 uses
  %i.ei = icmp eq i64 %i.ef, 0, !dbg !41458
  br i1 %i.ei, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i, label %.lr.ph.i.i.i.i, !dbg !41458

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i: ; preds = %.lr.ph.split.us.i.i, %bb.an, %bb.ak, %bb.aj, %bb.am, %.lr.ph.split.us.i.preheader.i
  %.sroa.0.014.us.i76.i = phi i64 [ %.sroa.0.014.us.i85.i, %bb.aj ], [ %.sroa.0.014.us.i85.i, %bb.am ], [ 0, %.lr.ph.split.us.i.preheader.i ], [ %.sroa.0.014.us.i85.i, %bb.ak ], [ %i.dq, %.lr.ph.split.us.i.i ], [ %.sroa.0.014.us.i85.i, %bb.an ]
  %i.ej = add i64 %.sroa.0.014.us.i76.i, 1, !dbg !41485
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, !dbg !41487

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i: ; preds = %.lr.ph.split.i.i, %bb.ar, %bb.aq, %.lr.ph.split.i.preheader.i
  %.sroa.0.014.i79.i = phi i64 [ %.sroa.0.014.i83.i, %bb.aq ], [ 0, %.lr.ph.split.i.preheader.i ], [ %i.eh, %.lr.ph.split.i.i ], [ %.sroa.0.014.i83.i, %bb.ar ]
  %i.ek = add i64 %.sroa.0.014.i79.i, 1, !dbg !41485
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, !dbg !41487

.outer.split.i.a:                                 ; preds = %bb.ay, %.outer.split.i.preheader
  %i.el = load i64, ptr %i.ba, align 8, !dbg !41488, !noalias !41315, !noundef !1321 ; 4 uses
  %i.em = icmp ugt i64 %i.ey, %i.el, !dbg !41489
  br i1 %i.em, label %bb.at, label %bb.as, !dbg !41489, !prof !1333

.split.i:                                         ; preds = %.outer.i, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i
  %.sroa.023.0.ph.i173 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ], [ %i.ex, %.outer.i ] ; 2 uses
  %i.en = load i64, ptr %i.ba, align 8, !noalias !41315
  %i.eo = icmp ugt i64 %.sroa.023.0.ph.i173, %i.en
  br i1 %i.eo, label %.split.i.thread, label %bb.ba, !dbg !41490

bb.as:                                            ; preds = %.outer.split.i.a
  %i.ep = load ptr, ptr %i.az, align 8, !dbg !41491, !noalias !41315, !nonnull !1321, !noundef !1321
  %i.eq = sub nuw i64 %i.el, %i.ey, !dbg !41492
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.ey, !dbg !41493
  %i.es = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.er, i64 noundef %i.eq, i64 noundef 1, i64 %.sroa.019.0.i, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.au unwind label %.loopexit.i, !dbg !41494, !noalias !41314 ; 2 uses

bb.at:                                            ; preds = %.outer.split.i.a
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ey, i64 noundef %i.el, i64 noundef %i.el, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.bb unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41495, !noalias !41314

bb.au:                                            ; preds = %bb.as
  %i.et = extractvalue { i64, i64 } %i.es, 0, !dbg !41494
  %i.eu = trunc nuw i64 %i.et to i1, !dbg !41496
  br i1 %i.eu, label %.outer.i, label %bb.av, !dbg !41496

.outer.i:                                         ; preds = %bb.au
  %i.ev = extractvalue { i64, i64 } %i.es, 1, !dbg !41494
  %i.ew = add nuw i64 %.sroa.020.0.ph.i254, 1, !dbg !41497 ; 2 uses
  %i.ex = add i64 %i.ev, %.sroa.023.0.ph.i253, !dbg !41498 ; 2 uses
  %exitcond.not.not.i.not = icmp eq i64 %i.ew, %4
  br i1 %exitcond.not.not.i.not, label %.split.i, label %.outer.split.i.preheader, !dbg !41440

.outer.split.i.preheader:                         ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i, %.outer.i
  %.sroa.020.0.ph.i254 = phi i64 [ %i.ew, %.outer.i ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ]
  %.sroa.023.0.ph.i253 = phi i64 [ %i.ex, %.outer.i ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i ] ; 2 uses
  %i.ey = add i64 %.sroa.023.0.ph.i253, 1, !dbg !41440 ; 4 uses
  br label %.outer.split.i.a, !dbg !41440

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !dbg !41499, !noalias !41315
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !dbg !41499, !noalias !41315
  store ptr %i.ah, ptr %i.u, align 8, !dbg !41500, !noalias !41315
  store i64 4096, ptr %i.bx, align 8, !dbg !41500, !noalias !41315
  store i64 4096, ptr %i.by, align 8, !dbg !41500, !noalias !41315
  %i.ez = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aa, i64 noundef 0, i64 undef)
          to label %bb.aw unwind label %.loopexit.i, !dbg !41501, !noalias !41314 ; 2 uses

bb.aw:                                            ; preds = %bb.av
  %i.fa = extractvalue { i64, ptr } %i.ez, 0, !dbg !41501 ; 2 uses
  %i.fb = extractvalue { i64, ptr } %i.ez, 1, !dbg !41501 ; 2 uses
  store i64 %i.fa, ptr %i.v, align 8, !dbg !41501, !noalias !41315
  store ptr %i.fb, ptr %i.bz, align 8, !dbg !41501, !noalias !41315
  %i.fc = trunc nuw i64 %i.fa to i1, !dbg !41502
  br i1 %i.fc, label %bb.ax, label %bb.ay, !dbg !41503

bb.ax:                                            ; preds = %bb.aw
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.bz)
          to label %bb.az unwind label %.loopexit.split-lp.loopexit.split-lp.i, !dbg !41504, !noalias !41314

bb.ay:                                            ; preds = %bb.aw
  %i.fd = icmp eq ptr %i.fb, null, !dbg !41502
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41505, !noalias !41315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !41506, !noalias !41315
  br i1 %i.fd, label %.split.i.thread, label %.outer.split.i.a, !dbg !41507

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !dbg !41505, !noalias !41315
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41508, !alias.scope !41314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !dbg !41506, !noalias !41315
  br label %bb.ag, !dbg !41435

.split.i.thread:                                  ; preds = %bb.ay, %bb.ba, %.split.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ad, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false), !dbg !41509, !noalias !41315
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !dbg !41427, !noalias !41315
  br label %bb.s, !dbg !41510

bb.ba:                                            ; preds = %.split.i
  store i64 %.sroa.023.0.ph.i173, ptr %i.ba, align 8, !dbg !41511, !noalias !41315
  br label %.split.i.thread, !dbg !41512

bb.bb:                                            ; preds = %bb.at
  unreachable

bb.bc:                                            ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !41513
  call void @_RNvMs2_NtNtCs9VoZUfg37wD_6flate24zlib4readINtB5_11ZlibDecoderRShE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.ag, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !41514
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41337), !dbg !41515
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !dbg !41516
  %i.fe = trunc nuw i64 %3 to i1, !dbg !41516
  br i1 %i.fe, label %bb.bd, label %bb.be, !dbg !41516

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !41517, !noalias !41338
  store i64 0, ptr %i.q, align 8, !dbg !41518, !noalias !41338
  %i.ff = getelementptr inbounds nuw i8, ptr %i.q, i64 8, !dbg !41518 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.ff, align 8, !dbg !41518, !noalias !41338
  %i.fg = getelementptr inbounds nuw i8, ptr %i.q, i64 16, !dbg !41518 ; 6 uses
  store i64 0, ptr %i.fg, align 8, !dbg !41518, !noalias !41338
  %i.fh = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.fi = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.fj = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  br label %bb.bo, !dbg !41519

bb.be:                                            ; preds = %bb.bc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !dbg !41520, !noalias !41338
  store i64 0, ptr %i.s, align 8, !dbg !41521, !noalias !41338
  %i.fk = getelementptr inbounds nuw i8, ptr %i.s, i64 8, !dbg !41521
  store ptr inttoptr (i64 1 to ptr), ptr %i.fk, align 8, !dbg !41521, !noalias !41338
  %i.fl = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !41521
  store i64 0, ptr %i.fl, align 8, !dbg !41521, !noalias !41338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !dbg !41522, !noalias !41338
  %i.fm = invoke { i64, ptr } @_RNvYINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShENtNtCsh8eZTKRCwoO_3std2io4Read11read_to_endCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.ag, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.bg unwind label %bb.bf, !dbg !41523, !noalias !41337 ; 2 uses

bb.bf:                                            ; preds = %bb.bh, %bb.be
  %i.fn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.s) #35
          to label %.body67 unwind label %bb.bn, !dbg !41524, !noalias !41337

bb.bg:                                            ; preds = %bb.be
  %i.fo = extractvalue { i64, ptr } %i.fm, 0, !dbg !41522 ; 2 uses
  %i.fp = extractvalue { i64, ptr } %i.fm, 1, !dbg !41522
  store i64 %i.fo, ptr %i.r, align 8, !dbg !41522, !noalias !41338
  %i.fq = getelementptr inbounds nuw i8, ptr %i.r, i64 8, !dbg !41522 ; 2 uses
  store ptr %i.fp, ptr %i.fq, align 8, !dbg !41522, !noalias !41338
  %i.fr = trunc nuw i64 %i.fo to i1, !dbg !41525
  br i1 %i.fr, label %bb.bh, label %bb.bi, !dbg !41526

bb.bh:                                            ; preds = %bb.bg
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fq)
          to label %bb.bj unwind label %bb.bf, !dbg !41527, !noalias !41337

bb.bi:                                            ; preds = %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41528, !noalias !41338
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.s, i64 24, i1 false), !dbg !41529, !noalias !41338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41524, !noalias !41338
  br label %bb.bm, !dbg !41524

bb.bj:                                            ; preds = %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !dbg !41528, !noalias !41338
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41530, !alias.scope !41337
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i18 unwind label %bb.bk, !dbg !41531, !noalias !41337

bb.bk:                                            ; preds = %bb.bj
  %i.fs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.body67 unwind label %bb.bl, !dbg !41532, !noalias !41337

bb.bl:                                            ; preds = %bb.bk
  %i.ft = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41531, !noalias !41337
  unreachable, !dbg !41531

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i18: ; preds = %bb.bj
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %.noexc69 unwind label %bb.dd, !dbg !41533

.noexc69:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !dbg !41524, !noalias !41338
  br label %bb.de, !dbg !41534

bb.bm:                                            ; preds = %.split.i41.thread, %bb.bi
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !41535, !noalias !41341
  br label %bb.de, !dbg !41536

bb.bn:                                            ; preds = %.loopexit.split-lp.i21, %bb.bf
  %i.fu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41537, !noalias !41337
  unreachable, !dbg !41537

bb.bo:                                            ; preds = %bb.bu, %bb.bd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !41538, !noalias !41338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !41538, !noalias !41338
  store ptr %i.ag, ptr %i.o, align 8, !dbg !41539, !noalias !41338
  store i64 4096, ptr %i.fh, align 8, !dbg !41539, !noalias !41338
  store i64 4096, ptr %i.fi, align 8, !dbg !41539, !noalias !41338
  %i.fv = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.bp unwind label %.loopexit.split-lp.loopexit.i19, !dbg !41540, !noalias !41337 ; 2 uses

.loopexit.i44:                                    ; preds = %bb.cp, %bb.cm
  %lpad.loopexit.i45 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i21

.loopexit.split-lp.loopexit.i19:                  ; preds = %bb.bt, %bb.bo
  %lpad.loopexit52.i20 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i21

.loopexit.split-lp.loopexit.split-lp.i23:         ; preds = %bb.cr, %bb.cn, %bb.bx, %bb.bv, %bb.bq
  %lpad.loopexit.split-lp53.i24 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i21

.loopexit.split-lp.i21:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i23, %.loopexit.split-lp.loopexit.i19, %.loopexit.i44
  %lpad.phi.i22 = phi { ptr, i32 } [ %lpad.loopexit.i45, %.loopexit.i44 ], [ %lpad.loopexit52.i20, %.loopexit.split-lp.loopexit.i19 ], [ %lpad.loopexit.split-lp53.i24, %.loopexit.split-lp.loopexit.split-lp.i23 ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.q) #35
          to label %.body67 unwind label %bb.bn, !dbg !41541, !noalias !41337

bb.bp:                                            ; preds = %bb.bo
  %i.fw = extractvalue { i64, ptr } %i.fv, 0, !dbg !41540 ; 2 uses
  %i.fx = extractvalue { i64, ptr } %i.fv, 1, !dbg !41540 ; 2 uses
  store i64 %i.fw, ptr %i.p, align 8, !dbg !41540, !noalias !41338
  store ptr %i.fx, ptr %i.fj, align 8, !dbg !41540, !noalias !41338
  %i.fy = trunc nuw i64 %i.fw to i1, !dbg !41542
  br i1 %i.fy, label %bb.bq, label %bb.br, !dbg !41543

bb.bq:                                            ; preds = %bb.bp
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.fj)
          to label %bb.bs unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41544, !noalias !41337

bb.br:                                            ; preds = %bb.bp
  %i.fz = icmp eq ptr %i.fx, null, !dbg !41542
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41545, !noalias !41338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41546, !noalias !41338
  br i1 %i.fz, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, label %bb.bt, !dbg !41547

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !41545, !noalias !41338
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41548, !alias.scope !41337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !41546, !noalias !41338
  br label %bb.ca, !dbg !41549

bb.bt:                                            ; preds = %bb.br
  %i.ga = load ptr, ptr %i.ff, align 8, !dbg !41550, !noalias !41338, !nonnull !1321, !noundef !1321
  %i.gb = load i64, ptr %i.fg, align 8, !dbg !41551, !noalias !41338, !noundef !1321
  %i.gc = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser24next_line_position_naive(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ga, i64 noundef %i.gb, i8 noundef %8)
          to label %bb.bu unwind label %.loopexit.split-lp.loopexit.i19, !dbg !41552, !noalias !41337

_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35: ; preds = %bb.br, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, %bb.by
  %.sroa.019.0.i36 = phi i64 [ %i.ip, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55 ], [ 0, %bb.by ], [ %i.iq, %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33 ], [ 0, %bb.br ], !dbg !41553
  %i.gd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.gf = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %exitcond.not.not.i40246.not = icmp eq i64 %4, 0
  br i1 %exitcond.not.not.i40246.not, label %.split.i41, label %.outer.split.i43.preheader, !dbg !41554

bb.bu:                                            ; preds = %bb.bt
  %i.gg = extractvalue { i64, i64 } %i.gc, 0, !dbg !41552
  %i.gh = icmp eq i64 %i.gg, 1, !dbg !41552
  br i1 %i.gh, label %bb.bv, label %bb.bo, !dbg !41552

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !dbg !41555, !noalias !41338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !41555, !noalias !41338
  store ptr %i.ag, ptr %i.m, align 8, !dbg !41556, !noalias !41338
  %i.gi = getelementptr inbounds nuw i8, ptr %i.m, i64 8, !dbg !41556
  store i64 4096, ptr %i.gi, align 8, !dbg !41556, !noalias !41338
  %i.gj = getelementptr inbounds nuw i8, ptr %i.m, i64 16, !dbg !41556
  store i64 4096, ptr %i.gj, align 8, !dbg !41556, !noalias !41338
  %i.gk = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.bw unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41557, !noalias !41337 ; 2 uses

bb.bw:                                            ; preds = %bb.bv
  %i.gl = extractvalue { i64, ptr } %i.gk, 0, !dbg !41557 ; 2 uses
  %i.gm = extractvalue { i64, ptr } %i.gk, 1, !dbg !41557 ; 2 uses
  store i64 %i.gl, ptr %i.n, align 8, !dbg !41557, !noalias !41338
  %i.gn = getelementptr inbounds nuw i8, ptr %i.n, i64 8, !dbg !41557 ; 2 uses
  store ptr %i.gm, ptr %i.gn, align 8, !dbg !41557, !noalias !41338
  %i.go = trunc nuw i64 %i.gl to i1, !dbg !41558
  br i1 %i.go, label %bb.bx, label %bb.by, !dbg !41559

bb.bx:                                            ; preds = %bb.bw
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gn)
          to label %bb.bz unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41560, !noalias !41337

bb.by:                                            ; preds = %bb.bw
  %i.gp = icmp eq ptr %i.gm, null, !dbg !41558
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41561, !noalias !41338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41562, !noalias !41338
  br i1 %i.gp, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, label %.lr.ph.i.i25, !dbg !41563

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !dbg !41561, !noalias !41338
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41564, !alias.scope !41337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !41562, !noalias !41338
  br label %bb.ca, !dbg !41565

bb.ca:                                            ; preds = %bb.ct, %bb.bz, %bb.bs
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46 unwind label %bb.cb, !dbg !41566, !noalias !41337

bb.cb:                                            ; preds = %bb.ca
  %i.gq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.body67 unwind label %bb.cc, !dbg !41567, !noalias !41337

bb.cc:                                            ; preds = %bb.cb
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41566, !noalias !41337
  unreachable, !dbg !41566

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46: ; preds = %bb.ca
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %.noexc70 unwind label %bb.dd, !dbg !41568

.noexc70:                                         ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41541, !noalias !41338
  br label %bb.de, !dbg !41534

.lr.ph.i.i25:                                     ; preds = %bb.by
  %i.gs = load ptr, ptr %i.ff, align 8, !dbg !41569, !noalias !41338, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.gt = load i64, ptr %i.fg, align 8, !dbg !41570, !noalias !41338, !noundef !1321 ; 3 uses
  %..i26 = select i1 %6, i8 %7, i8 34, !dbg !41571 ; 2 uses
  %i.gu = icmp eq i64 %i.gt, 0, !dbg !41572       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i48, label %.lr.ph.split.i.preheader.i27

.lr.ph.split.i.preheader.i27:                     ; preds = %.lr.ph.i.i25
  br i1 %i.gu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %.lr.ph.i.i.i.i28, !dbg !41572

.lr.ph.split.us.i.preheader.i48:                  ; preds = %.lr.ph.i.i25
  br i1 %i.gu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i49, !dbg !41572

.lr.ph.i49:                                       ; preds = %.lr.ph.split.us.i.preheader.i48, %.lr.ph.split.us.i.i57
  %i.gv = phi ptr [ %i.hv, %.lr.ph.split.us.i.i57 ], [ %i.gs, %.lr.ph.split.us.i.preheader.i48 ] ; 6 uses
  %.sroa.0.014.us.i85.i50 = phi i64 [ %i.hw, %.lr.ph.split.us.i.i57 ], [ 0, %.lr.ph.split.us.i.preheader.i48 ] ; 5 uses
  %i.gw = phi i64 [ %i.hu, %.lr.ph.split.us.i.i57 ], [ %i.gt, %.lr.ph.split.us.i.preheader.i48 ] ; 2 uses
  %i.gx = load i8, ptr %i.gv, align 1, !dbg !41573, !noalias !41351, !noundef !1321
  %i.gy = icmp eq i8 %i.gx, %..i26, !dbg !41574
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.gw, !dbg !41575 ; 2 uses
  br i1 %i.gy, label %.lr.ph.i.us.i.i59, label %.lr.ph.i.i.us.i.i51, !dbg !41574

.lr.ph.i.i.us.i.i51:                              ; preds = %.lr.ph.i49, %bb.cd
  %.sroa.02.012.i.i.us.i.i52 = phi i64 [ %i.he, %bb.cd ], [ 0, %.lr.ph.i49 ] ; 3 uses
  %i.ha = phi ptr [ %i.hd, %bb.cd ], [ %i.gv, %.lr.ph.i49 ] ; 2 uses
  %.val7.i.i.us.i.i53 = load i8, ptr %i.ha, align 1, !dbg !41576, !noalias !41352, !noundef !1321 ; 2 uses
  %i.hb = icmp eq i8 %.val7.i.i.us.i.i53, %5, !dbg !41577
  %i.hc = icmp eq i8 %.val7.i.i.us.i.i53, %8
  %or.cond.i.i.us.i.i54 = or i1 %i.hb, %i.hc, !dbg !41577
  br i1 %or.cond.i.i.us.i.i54, label %bb.ce, label %bb.cd, !dbg !41577

bb.cd:                                            ; preds = %.lr.ph.i.i.us.i.i51
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 1, !dbg !41578 ; 2 uses
  %i.he = add nuw i64 %.sroa.02.012.i.i.us.i.i52, 1, !dbg !41579
  %i.hf = icmp eq ptr %i.hd, %i.gz, !dbg !41580
  br i1 %i.hf, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i.i.us.i.i51, !dbg !41581

bb.ce:                                            ; preds = %.lr.ph.i.i.us.i.i51
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gv, i64 %.sroa.02.012.i.i.us.i.i52, !dbg !41582
  %i.hh = load i8, ptr %i.hg, align 1, !dbg !41583, !noalias !41351, !noundef !1321
  %i.hi = icmp eq i8 %i.hh, %8, !dbg !41583
  br i1 %i.hi, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.split.us.i.i57, !dbg !41583

.lr.ph.i.us.i.i59:                                ; preds = %.lr.ph.i49, %bb.cg
  %.sroa.05.053.i.us.i.i60 = phi i8 [ %spec.select.i.us.i.i63, %bb.cg ], [ 0, %.lr.ph.i49 ] ; 2 uses
  %.sroa.09.052.i.us.i.i61 = phi i32 [ %i.hp, %bb.cg ], [ 0, %.lr.ph.i49 ] ; 3 uses
  %.sroa.012.051.i.us.i.i62 = phi ptr [ %i.hj, %bb.cg ], [ %i.gv, %.lr.ph.i49 ] ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i62, i64 1, !dbg !41584 ; 2 uses
  %i.hk = load i8, ptr %.sroa.012.051.i.us.i.i62, align 1, !dbg !41585, !noalias !41351, !noundef !1321 ; 3 uses
  %i.hl = icmp eq i8 %i.hk, %..i26, !dbg !41586
  %i.hm = zext i1 %i.hl to i8, !dbg !41586        ; 2 uses
  %spec.select.i.us.i.i63 = xor i8 %.sroa.05.053.i.us.i.i60, %i.hm, !dbg !41586
  %.not.i.us.i.i64 = icmp eq i8 %.sroa.05.053.i.us.i.i60, %i.hm, !dbg !41587
  br i1 %.not.i.us.i.i64, label %bb.cf, label %bb.cg, !dbg !41587

bb.cf:                                            ; preds = %.lr.ph.i.us.i.i59
  %i.hn = icmp eq i8 %i.hk, %5, !dbg !41588
  %i.ho = icmp eq i8 %i.hk, %8                    ; 2 uses
  %or.cond.i.us.i.i65 = or i1 %i.hn, %i.ho, !dbg !41588
  br i1 %or.cond.i.us.i.i65, label %bb.ch, label %bb.cg, !dbg !41588

bb.cg:                                            ; preds = %bb.cf, %.lr.ph.i.us.i.i59
  %i.hp = add i32 %.sroa.09.052.i.us.i.i61, 1, !dbg !41589
  %i.hq = icmp eq ptr %i.hj, %i.gz, !dbg !41590
  br i1 %i.hq, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i.us.i.i59, !dbg !41591

bb.ch:                                            ; preds = %bb.cf
  %i.hr = icmp eq i32 %.sroa.09.052.i.us.i.i61, 0
  %or.cond.i.i66 = select i1 %i.ho, i1 true, i1 %i.hr, !dbg !41592
  br i1 %or.cond.i.i66, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %bb.ci, !dbg !41592

bb.ci:                                            ; preds = %bb.ch
  %i.hs = zext i32 %.sroa.09.052.i.us.i.i61 to i64, !dbg !41593
  br label %.lr.ph.split.us.i.i57, !dbg !41594

.lr.ph.split.us.i.i57:                            ; preds = %bb.ci, %bb.ce
  %.sroa.016.0.i.us.i.i58 = phi i64 [ %i.hs, %bb.ci ], [ %.sroa.02.012.i.i.us.i.i52, %bb.ce ], !dbg !41595
  %i.ht = add nuw i64 %.sroa.016.0.i.us.i.i58, 1, !dbg !41596 ; 2 uses
  %i.hu = sub nuw i64 %i.gw, %i.ht, !dbg !41597   ; 2 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gv, i64 %i.ht, !dbg !41598
  %i.hw = add i64 %.sroa.0.014.us.i85.i50, 1, !dbg !41599 ; 2 uses
  %i.hx = icmp eq i64 %i.hu, 0, !dbg !41572
  br i1 %i.hx, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55, label %.lr.ph.i49, !dbg !41572

.lr.ph.i.i.i.i28:                                 ; preds = %.lr.ph.split.i.preheader.i27, %.lr.ph.split.i.i47
  %i.hy = phi ptr [ %i.im, %.lr.ph.split.i.i47 ], [ %i.gs, %.lr.ph.split.i.preheader.i27 ] ; 4 uses
  %.sroa.0.014.i83.i29 = phi i64 [ %i.in, %.lr.ph.split.i.i47 ], [ 0, %.lr.ph.split.i.preheader.i27 ] ; 3 uses
  %i.hz = phi i64 [ %i.il, %.lr.ph.split.i.i47 ], [ %i.gt, %.lr.ph.split.i.preheader.i27 ] ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.hz, !dbg !41600
  br label %bb.cj, !dbg !41581

bb.cj:                                            ; preds = %bb.ck, %.lr.ph.i.i.i.i28
  %.sroa.02.012.i.i.i.i30 = phi i64 [ 0, %.lr.ph.i.i.i.i28 ], [ %i.if, %bb.ck ] ; 3 uses
  %i.ib = phi ptr [ %i.hy, %.lr.ph.i.i.i.i28 ], [ %i.ie, %bb.ck ] ; 2 uses
  %.val7.i.i.i.i31 = load i8, ptr %i.ib, align 1, !dbg !41576, !noalias !41352, !noundef !1321 ; 2 uses
  %i.ic = icmp eq i8 %.val7.i.i.i.i31, %5, !dbg !41577
  %i.id = icmp eq i8 %.val7.i.i.i.i31, %8
  %or.cond.i.i.i.i32 = or i1 %i.ic, %i.id, !dbg !41577
  br i1 %or.cond.i.i.i.i32, label %bb.cl, label %bb.ck, !dbg !41577

bb.ck:                                            ; preds = %bb.cj
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ib, i64 1, !dbg !41578 ; 2 uses
  %i.if = add nuw i64 %.sroa.02.012.i.i.i.i30, 1, !dbg !41579
  %i.ig = icmp eq ptr %i.ie, %i.ia, !dbg !41580
  br i1 %i.ig, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %bb.cj, !dbg !41581

bb.cl:                                            ; preds = %bb.cj
  %i.ih = getelementptr inbounds nuw i8, ptr %i.hy, i64 %.sroa.02.012.i.i.i.i30, !dbg !41582
  %i.ii = load i8, ptr %i.ih, align 1, !dbg !41583, !noalias !41351, !noundef !1321
  %i.ij = icmp eq i8 %i.ii, %8, !dbg !41583
  br i1 %i.ij, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %.lr.ph.split.i.i47, !dbg !41583

.lr.ph.split.i.i47:                               ; preds = %bb.cl
  %i.ik = add nuw i64 %.sroa.02.012.i.i.i.i30, 1, !dbg !41596 ; 2 uses
  %i.il = sub nuw i64 %i.hz, %i.ik, !dbg !41597   ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.hy, i64 %i.ik, !dbg !41598
  %i.in = add i64 %.sroa.0.014.i83.i29, 1, !dbg !41599 ; 2 uses
  %i.io = icmp eq i64 %i.il, 0, !dbg !41572
  br i1 %i.io, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33, label %.lr.ph.i.i.i.i28, !dbg !41572

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i55: ; preds = %.lr.ph.split.us.i.i57, %bb.ch, %bb.ce, %bb.cd, %bb.cg, %.lr.ph.split.us.i.preheader.i48
  %.sroa.0.014.us.i76.i56 = phi i64 [ %.sroa.0.014.us.i85.i50, %bb.cd ], [ %.sroa.0.014.us.i85.i50, %bb.cg ], [ 0, %.lr.ph.split.us.i.preheader.i48 ], [ %.sroa.0.014.us.i85.i50, %bb.ce ], [ %i.hw, %.lr.ph.split.us.i.i57 ], [ %.sroa.0.014.us.i85.i50, %bb.ch ]
  %i.ip = add i64 %.sroa.0.014.us.i76.i56, 1, !dbg !41599
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, !dbg !41601

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i33: ; preds = %.lr.ph.split.i.i47, %bb.cl, %bb.ck, %.lr.ph.split.i.preheader.i27
  %.sroa.0.014.i79.i34 = phi i64 [ %.sroa.0.014.i83.i29, %bb.ck ], [ 0, %.lr.ph.split.i.preheader.i27 ], [ %i.in, %.lr.ph.split.i.i47 ], [ %.sroa.0.014.i83.i29, %bb.cl ]
  %i.iq = add i64 %.sroa.0.014.i79.i34, 1, !dbg !41599
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, !dbg !41601

.outer.split.i43:                                 ; preds = %bb.cs, %.outer.split.i43.preheader
  %i.ir = load i64, ptr %i.fg, align 8, !dbg !41602, !noalias !41338, !noundef !1321 ; 4 uses
  %i.is = icmp ugt i64 %i.je, %i.ir, !dbg !41603
  br i1 %i.is, label %bb.cn, label %bb.cm, !dbg !41603, !prof !1333

.split.i41:                                       ; preds = %.outer.i37, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35
  %.sroa.023.0.ph.i38203 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35 ], [ %i.jd, %.outer.i37 ] ; 2 uses
  %i.it = load i64, ptr %i.fg, align 8, !noalias !41338
  %i.iu = icmp ugt i64 %.sroa.023.0.ph.i38203, %i.it
  br i1 %i.iu, label %.split.i41.thread, label %bb.cu, !dbg !41604

bb.cm:                                            ; preds = %.outer.split.i43
  %i.iv = load ptr, ptr %i.ff, align 8, !dbg !41605, !noalias !41338, !nonnull !1321, !noundef !1321
  %i.iw = sub nuw i64 %i.ir, %i.je, !dbg !41606
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iv, i64 %i.je, !dbg !41607
  %i.iy = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ix, i64 noundef %i.iw, i64 noundef 1, i64 %.sroa.019.0.i36, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.co unwind label %.loopexit.i44, !dbg !41608, !noalias !41337 ; 2 uses

bb.cn:                                            ; preds = %.outer.split.i43
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.je, i64 noundef %i.ir, i64 noundef %i.ir, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.cv unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41609, !noalias !41337

bb.co:                                            ; preds = %bb.cm
  %i.iz = extractvalue { i64, i64 } %i.iy, 0, !dbg !41608
  %i.ja = trunc nuw i64 %i.iz to i1, !dbg !41610
  br i1 %i.ja, label %.outer.i37, label %bb.cp, !dbg !41610

.outer.i37:                                       ; preds = %bb.co
  %i.jb = extractvalue { i64, i64 } %i.iy, 1, !dbg !41608
  %i.jc = add nuw i64 %.sroa.020.0.ph.i39248, 1, !dbg !41611 ; 2 uses
  %i.jd = add i64 %i.jb, %.sroa.023.0.ph.i38247, !dbg !41612 ; 2 uses
  %exitcond.not.not.i40.not = icmp eq i64 %i.jc, %4
  br i1 %exitcond.not.not.i40.not, label %.split.i41, label %.outer.split.i43.preheader, !dbg !41554

.outer.split.i43.preheader:                       ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35, %.outer.i37
  %.sroa.020.0.ph.i39248 = phi i64 [ %i.jc, %.outer.i37 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35 ]
  %.sroa.023.0.ph.i38247 = phi i64 [ %i.jd, %.outer.i37 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i35 ] ; 2 uses
  %i.je = add i64 %.sroa.023.0.ph.i38247, 1, !dbg !41554 ; 4 uses
  br label %.outer.split.i43, !dbg !41554

bb.cp:                                            ; preds = %bb.co
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !41613, !noalias !41338
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !41613, !noalias !41338
  store ptr %i.ag, ptr %i.k, align 8, !dbg !41614, !noalias !41338
  store i64 4096, ptr %i.gd, align 8, !dbg !41614, !noalias !41338
  store i64 4096, ptr %i.ge, align 8, !dbg !41614, !noalias !41338
  %i.jf = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q, i64 noundef 0, i64 undef)
          to label %bb.cq unwind label %.loopexit.i44, !dbg !41615, !noalias !41337 ; 2 uses

bb.cq:                                            ; preds = %bb.cp
  %i.jg = extractvalue { i64, ptr } %i.jf, 0, !dbg !41615 ; 2 uses
  %i.jh = extractvalue { i64, ptr } %i.jf, 1, !dbg !41615 ; 2 uses
  store i64 %i.jg, ptr %i.l, align 8, !dbg !41615, !noalias !41338
  store ptr %i.jh, ptr %i.gf, align 8, !dbg !41615, !noalias !41338
  %i.ji = trunc nuw i64 %i.jg to i1, !dbg !41616
  br i1 %i.ji, label %bb.cr, label %bb.cs, !dbg !41617

bb.cr:                                            ; preds = %bb.cq
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.gf)
          to label %bb.ct unwind label %.loopexit.split-lp.loopexit.split-lp.i23, !dbg !41618, !noalias !41337

bb.cs:                                            ; preds = %bb.cq
  %i.jj = icmp eq ptr %i.jh, null, !dbg !41616
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41619, !noalias !41338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41620, !noalias !41338
  br i1 %i.jj, label %.split.i41.thread, label %.outer.split.i43, !dbg !41621

bb.ct:                                            ; preds = %bb.cr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !41619, !noalias !41338
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41622, !alias.scope !41337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !41620, !noalias !41338
  br label %bb.ca, !dbg !41549

.split.i41.thread:                                ; preds = %bb.cs, %bb.cu, %.split.i41
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !41623, !noalias !41338
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !41541, !noalias !41338
  br label %bb.bm, !dbg !41624

bb.cu:                                            ; preds = %.split.i41
  store i64 %.sroa.023.0.ph.i38203, ptr %i.fg, align 8, !dbg !41625, !noalias !41338
  br label %.split.i41.thread, !dbg !41626

bb.cv:                                            ; preds = %bb.cn
  unreachable

_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !41627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !41359
  call void @_RNvMs_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB4_7DecoderRShE15with_dictionaryCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ae, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !41628
  %i.jk = load i64, ptr %i.ae, align 8, !dbg !41629, !range !1532, !noundef !1321 ; 2 uses
  %i.jl = icmp eq i64 %i.jk, 2, !dbg !41629
  %i.jm = getelementptr inbounds nuw i8, ptr %i.ae, i64 8, !dbg !41630 ; 2 uses
  br i1 %i.jl, label %bb.fa, label %bb.dg, !dbg !41631

bb.cw:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i
  %i.jn = landingpad { ptr, i32 }
          cleanup
  br label %.body, !dbg !41632

.body:                                            ; preds = %bb.l, %bb.q, %.loopexit.split-lp.i, %bb.ah, %bb.cw
  %eh.lpad-body = phi { ptr, i32 } [ %i.jn, %bb.cw ], [ %i.bh, %bb.l ], [ %i.bm, %bb.q ], [ %lpad.phi.i, %.loopexit.split-lp.i ], [ %i.ck, %bb.ah ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(320) %i.ah) #35
          to label %common.resume unwind label %bb.dc, !dbg !41632

bb.cx:                                            ; preds = %.noexc15, %bb.s, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !41633
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCs9VoZUfg37wD_6flate22gz7bufread7GzStateECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.ah)
          to label %bb.cz unwind label %bb.cy, !dbg !41634

bb.cy:                                            ; preds = %bb.cx
  %i.jo = landingpad { ptr, i32 }
          cleanup
  %i.jp = getelementptr inbounds nuw i8, ptr %i.ah, i64 104, !dbg !41634
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs9VoZUfg37wD_6flate23crc9CrcReaderINtNtNtBL_7deflate7bufread14DeflateDecoderINtNtBL_9bufreader9BufReaderRShEEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(208) %i.jp) #35
          to label %common.resume unwind label %bb.db, !dbg !41634

bb.cz:                                            ; preds = %bb.cx
  call void @llvm.experimental.noalias.scope.decl(metadata !41361), !dbg !41634
  call void @llvm.experimental.noalias.scope.decl(metadata !41362), !dbg !41635
  %i.jq = getelementptr inbounds nuw i8, ptr %i.ah, i64 128, !dbg !41636
  %.val1.i.i.i.i.i = load i64, ptr %i.jq, align 8, !dbg !41636, !alias.scope !41363, !noundef !1321 ; 2 uses
  %i.jr = icmp eq i64 %.val1.i.i.i.i.i, 0, !dbg !41637
  br i1 %i.jr, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, label %bb.da, !dbg !41637

bb.da:                                            ; preds = %bb.cz
  %i.js = getelementptr inbounds nuw i8, ptr %i.ah, i64 120, !dbg !41636
  %.val.i.i.i.i.i = load ptr, ptr %i.js, align 8, !dbg !41636, !alias.scope !41363, !nonnull !1321, !noundef !1321
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef range(i64 1, 0) %.val1.i.i.i.i.i, i64 noundef 1) #39, !dbg !41638, !noalias !41364
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, !dbg !41639

bb.db:                                            ; preds = %bb.cy
  %i.jt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41634
  unreachable, !dbg !41634

common.resume:                                    ; preds = %.body, %.body67, %bb.fd, %.body122, %bb.cy
  %common.resume.op = phi { ptr, i32 } [ %i.jo, %bb.cy ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body68, %.body67 ], [ %eh.lpad-body123, %bb.fd ], [ %eh.lpad-body123, %.body122 ]
  resume { ptr, i32 } %common.resume.op, !dbg !41640

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.cz, %bb.da
  %i.ju = getelementptr inbounds nuw i8, ptr %i.ah, i64 168, !dbg !41641
  call void @_RNvXs1_NtCs55Ru6MrNffN_7zlib_rs6stableNtB5_7InflateNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ju), !dbg !41642
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !dbg !41632
  br label %bb.fb, !dbg !41632

bb.dc:                                            ; preds = %bb.fd, %.body67, %.body
  %i.jv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41643
  unreachable, !dbg !41643

bb.dd:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i46, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i18
  %i.jw = landingpad { ptr, i32 }
          cleanup
  br label %.body67, !dbg !41644

.body67:                                          ; preds = %bb.bf, %bb.bk, %.loopexit.split-lp.i21, %bb.cb, %bb.dd
  %eh.lpad-body68 = phi { ptr, i32 } [ %i.jw, %bb.dd ], [ %i.fn, %bb.bf ], [ %i.fs, %bb.bk ], [ %lpad.phi.i22, %.loopexit.split-lp.i21 ], [ %i.gq, %bb.cb ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(192) %i.ag) #35
          to label %common.resume unwind label %bb.dc, !dbg !41644

bb.de:                                            ; preds = %.noexc70, %bb.bm, %.noexc69
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !dbg !41645
  call void @llvm.experimental.noalias.scope.decl(metadata !41365), !dbg !41644
  call void @llvm.experimental.noalias.scope.decl(metadata !41366), !dbg !41646
  %i.jx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24, !dbg !41647
  %.val1.i.i = load i64, ptr %i.jx, align 8, !dbg !41647, !alias.scope !41367, !noundef !1321 ; 2 uses
  %i.jy = icmp eq i64 %.val1.i.i, 0, !dbg !41648
  br i1 %i.jy, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io.exit, label %bb.df, !dbg !41648

bb.df:                                            ; preds = %bb.de
  %i.jz = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !41647
  %.val.i.i = load ptr, ptr %i.jz, align 8, !dbg !41647, !alias.scope !41367, !nonnull !1321, !noundef !1321
  call void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef range(i64 1, 0) %.val1.i.i, i64 noundef 1) #39, !dbg !41649, !noalias !41367
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io.exit, !dbg !41650

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.de, %bb.df
  %i.ka = getelementptr inbounds nuw i8, ptr %i.ag, i64 64, !dbg !41651
  call void @_RNvXs1_NtCs55Ru6MrNffN_7zlib_rs6stableNtB5_7InflateNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.ka), !dbg !41652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !41644
  br label %bb.fb, !dbg !41644

bb.dg:                                            ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.af, i64 8, !dbg !41653 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.411.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.jm, i64 32, i1 false), !dbg !41654
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !41655
  store i64 %i.jk, ptr %i.af, align 8, !dbg !41653
  tail call void @llvm.experimental.noalias.scope.decl(metadata !41368), !dbg !41656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !41657
  %i.kb = trunc nuw i64 %3 to i1, !dbg !41657
  br i1 %i.kb, label %bb.dh, label %bb.di, !dbg !41657

bb.dh:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !41658, !noalias !41369
  store i64 0, ptr %i.g, align 8, !dbg !41659, !noalias !41369
  %i.kc = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !41659 ; 4 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.kc, align 8, !dbg !41659, !noalias !41369
  %i.kd = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !41659 ; 6 uses
  store i64 0, ptr %i.kd, align 8, !dbg !41659, !noalias !41369
  %i.ke = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.kg = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  br label %bb.ds, !dbg !41660

bb.di:                                            ; preds = %bb.dg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !41661, !noalias !41369
  store i64 0, ptr %i.i, align 8, !dbg !41662, !noalias !41369
  %i.kh = getelementptr inbounds nuw i8, ptr %i.i, i64 8, !dbg !41662
  store ptr inttoptr (i64 1 to ptr), ptr %i.kh, align 8, !dbg !41662, !noalias !41369
  %i.ki = getelementptr inbounds nuw i8, ptr %i.i, i64 16, !dbg !41662
  store i64 0, ptr %i.ki, align 8, !dbg !41662, !noalias !41369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !41663, !noalias !41369
  %i.kj = invoke { i64, ptr } @_RNvYINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShENtNtCsh8eZTKRCwoO_3std2io4Read11read_to_endCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.af, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %bb.dk unwind label %bb.dj, !dbg !41664, !noalias !41368 ; 2 uses

bb.dj:                                            ; preds = %bb.dl, %bb.di
  %i.kk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(24) %i.i) #35
          to label %.body122 unwind label %bb.dr, !dbg !41665, !noalias !41368

bb.dk:                                            ; preds = %bb.di
  %i.kl = extractvalue { i64, ptr } %i.kj, 0, !dbg !41663 ; 2 uses
  %i.km = extractvalue { i64, ptr } %i.kj, 1, !dbg !41663
  store i64 %i.kl, ptr %i.h, align 8, !dbg !41663, !noalias !41369
  %i.kn = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !41663 ; 2 uses
  store ptr %i.km, ptr %i.kn, align 8, !dbg !41663, !noalias !41369
  %i.ko = trunc nuw i64 %i.kl to i1, !dbg !41666
  br i1 %i.ko, label %bb.dl, label %bb.dm, !dbg !41667

bb.dl:                                            ; preds = %bb.dk
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.kn)
          to label %bb.dn unwind label %bb.dj, !dbg !41668, !noalias !41368

bb.dm:                                            ; preds = %bb.dk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !41669, !noalias !41369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !dbg !41670, !noalias !41369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !41665, !noalias !41369
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read5utils10decompress:bb.a
  %i.lb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %exitcond.not.not.i95241.not = icmp eq i64 %4, 0
  br i1 %exitcond.not.not.i95241.not, label %.split.i96, label %.outer.split.i98.preheader, !dbg !41695

bb.dy:                                            ; preds = %bb.dx
  %i.ld = extractvalue { i64, i64 } %i.kz, 0, !dbg !41693
  %i.le = icmp eq i64 %i.ld, 1, !dbg !41693
  br i1 %i.le, label %bb.dz, label %bb.ds, !dbg !41693

bb.dz:                                            ; preds = %bb.dy
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !41696, !noalias !41369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !41696, !noalias !41369
  store ptr %i.af, ptr %i.c, align 8, !dbg !41697, !noalias !41369
  %i.lf = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !41697
  store i64 4096, ptr %i.lf, align 8, !dbg !41697, !noalias !41369
  %i.lg = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !41697
  store i64 4096, ptr %i.lg, align 8, !dbg !41697, !noalias !41369
  %i.lh = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.ea unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41698, !noalias !41368 ; 2 uses

bb.ea:                                            ; preds = %bb.dz
  %i.li = extractvalue { i64, ptr } %i.lh, 0, !dbg !41698 ; 2 uses
  %i.lj = extractvalue { i64, ptr } %i.lh, 1, !dbg !41698 ; 2 uses
  store i64 %i.li, ptr %i.d, align 8, !dbg !41698, !noalias !41369
  %i.lk = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !41698 ; 2 uses
  store ptr %i.lj, ptr %i.lk, align 8, !dbg !41698, !noalias !41369
  %i.ll = trunc nuw i64 %i.li to i1, !dbg !41699
  br i1 %i.ll, label %bb.eb, label %bb.ec, !dbg !41700

bb.eb:                                            ; preds = %bb.ea
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lk)
          to label %bb.ed unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41701, !noalias !41368

bb.ec:                                            ; preds = %bb.ea
  %i.lm = icmp eq ptr %i.lj, null, !dbg !41699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41702, !noalias !41369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41703, !noalias !41369
  br i1 %i.lm, label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, label %.lr.ph.i.i80, !dbg !41704

bb.ed:                                            ; preds = %bb.eb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !41702, !noalias !41369
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41705, !alias.scope !41368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !41703, !noalias !41369
  br label %bb.ee, !dbg !41706

bb.ee:                                            ; preds = %bb.ex, %bb.ed, %bb.dw
  invoke void @_RNvXso_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101 unwind label %bb.ef, !dbg !41707, !noalias !41368

bb.ef:                                            ; preds = %bb.ee
  %i.ln = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body122 unwind label %bb.eg, !dbg !41708, !noalias !41368

bb.eg:                                            ; preds = %bb.ef
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #37, !dbg !41707, !noalias !41368
  unreachable, !dbg !41707

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101: ; preds = %bb.ee
  invoke void @_RNvXs1_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.noexc125 unwind label %bb.fc, !dbg !41709

.noexc125:                                        ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41682, !noalias !41369
  br label %bb.fe, !dbg !41675

.lr.ph.i.i80:                                     ; preds = %bb.ec
  %i.lp = load ptr, ptr %i.kc, align 8, !dbg !41710, !noalias !41369, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.lq = load i64, ptr %i.kd, align 8, !dbg !41711, !noalias !41369, !noundef !1321 ; 3 uses
  %..i81 = select i1 %6, i8 %7, i8 34, !dbg !41712 ; 2 uses
  %i.lr = icmp eq i64 %i.lq, 0, !dbg !41713       ; 2 uses
  br i1 %6, label %.lr.ph.split.us.i.preheader.i103, label %.lr.ph.split.i.preheader.i82

.lr.ph.split.i.preheader.i82:                     ; preds = %.lr.ph.i.i80
  br i1 %i.lr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %.lr.ph.i.i.i.i83, !dbg !41713

.lr.ph.split.us.i.preheader.i103:                 ; preds = %.lr.ph.i.i80
  br i1 %i.lr, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i104, !dbg !41713

.lr.ph.i104:                                      ; preds = %.lr.ph.split.us.i.preheader.i103, %.lr.ph.split.us.i.i112
  %i.ls = phi ptr [ %i.ms, %.lr.ph.split.us.i.i112 ], [ %i.lp, %.lr.ph.split.us.i.preheader.i103 ] ; 6 uses
  %.sroa.0.014.us.i85.i105 = phi i64 [ %i.mt, %.lr.ph.split.us.i.i112 ], [ 0, %.lr.ph.split.us.i.preheader.i103 ] ; 5 uses
  %i.lt = phi i64 [ %i.mr, %.lr.ph.split.us.i.i112 ], [ %i.lq, %.lr.ph.split.us.i.preheader.i103 ] ; 2 uses
  %i.lu = load i8, ptr %i.ls, align 1, !dbg !41714, !noalias !41382, !noundef !1321
  %i.lv = icmp eq i8 %i.lu, %..i81, !dbg !41715
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.lt, !dbg !41716 ; 2 uses
  br i1 %i.lv, label %.lr.ph.i.us.i.i114, label %.lr.ph.i.i.us.i.i106, !dbg !41715

.lr.ph.i.i.us.i.i106:                             ; preds = %.lr.ph.i104, %bb.eh
  %.sroa.02.012.i.i.us.i.i107 = phi i64 [ %i.mb, %bb.eh ], [ 0, %.lr.ph.i104 ] ; 3 uses
  %i.lx = phi ptr [ %i.ma, %bb.eh ], [ %i.ls, %.lr.ph.i104 ] ; 2 uses
  %.val7.i.i.us.i.i108 = load i8, ptr %i.lx, align 1, !dbg !41717, !noalias !41383, !noundef !1321 ; 2 uses
  %i.ly = icmp eq i8 %.val7.i.i.us.i.i108, %5, !dbg !41718
  %i.lz = icmp eq i8 %.val7.i.i.us.i.i108, %8
  %or.cond.i.i.us.i.i109 = or i1 %i.ly, %i.lz, !dbg !41718
  br i1 %or.cond.i.i.us.i.i109, label %bb.ei, label %bb.eh, !dbg !41718

bb.eh:                                            ; preds = %.lr.ph.i.i.us.i.i106
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lx, i64 1, !dbg !41719 ; 2 uses
  %i.mb = add nuw i64 %.sroa.02.012.i.i.us.i.i107, 1, !dbg !41720
  %i.mc = icmp eq ptr %i.ma, %i.lw, !dbg !41721
  br i1 %i.mc, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i.i.us.i.i106, !dbg !41722

bb.ei:                                            ; preds = %.lr.ph.i.i.us.i.i106
  %i.md = getelementptr inbounds nuw i8, ptr %i.ls, i64 %.sroa.02.012.i.i.us.i.i107, !dbg !41723
  %i.me = load i8, ptr %i.md, align 1, !dbg !41724, !noalias !41382, !noundef !1321
  %i.mf = icmp eq i8 %i.me, %8, !dbg !41724
  br i1 %i.mf, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.split.us.i.i112, !dbg !41724

.lr.ph.i.us.i.i114:                               ; preds = %.lr.ph.i104, %bb.ek
  %.sroa.05.053.i.us.i.i115 = phi i8 [ %spec.select.i.us.i.i118, %bb.ek ], [ 0, %.lr.ph.i104 ] ; 2 uses
  %.sroa.09.052.i.us.i.i116 = phi i32 [ %i.mm, %bb.ek ], [ 0, %.lr.ph.i104 ] ; 3 uses
  %.sroa.012.051.i.us.i.i117 = phi ptr [ %i.mg, %bb.ek ], [ %i.ls, %.lr.ph.i104 ] ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %.sroa.012.051.i.us.i.i117, i64 1, !dbg !41725 ; 2 uses
  %i.mh = load i8, ptr %.sroa.012.051.i.us.i.i117, align 1, !dbg !41726, !noalias !41382, !noundef !1321 ; 3 uses
  %i.mi = icmp eq i8 %i.mh, %..i81, !dbg !41727
  %i.mj = zext i1 %i.mi to i8, !dbg !41727        ; 2 uses
  %spec.select.i.us.i.i118 = xor i8 %.sroa.05.053.i.us.i.i115, %i.mj, !dbg !41727
  %.not.i.us.i.i119 = icmp eq i8 %.sroa.05.053.i.us.i.i115, %i.mj, !dbg !41728
  br i1 %.not.i.us.i.i119, label %bb.ej, label %bb.ek, !dbg !41728

bb.ej:                                            ; preds = %.lr.ph.i.us.i.i114
  %i.mk = icmp eq i8 %i.mh, %5, !dbg !41729
  %i.ml = icmp eq i8 %i.mh, %8                    ; 2 uses
  %or.cond.i.us.i.i120 = or i1 %i.mk, %i.ml, !dbg !41729
  br i1 %or.cond.i.us.i.i120, label %bb.el, label %bb.ek, !dbg !41729

bb.ek:                                            ; preds = %bb.ej, %.lr.ph.i.us.i.i114
  %i.mm = add i32 %.sroa.09.052.i.us.i.i116, 1, !dbg !41730
  %i.mn = icmp eq ptr %i.mg, %i.lw, !dbg !41731
  br i1 %i.mn, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i.us.i.i114, !dbg !41732

bb.el:                                            ; preds = %bb.ej
  %i.mo = icmp eq i32 %.sroa.09.052.i.us.i.i116, 0
  %or.cond.i.i121 = select i1 %i.ml, i1 true, i1 %i.mo, !dbg !41733
  br i1 %or.cond.i.i121, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %bb.em, !dbg !41733

bb.em:                                            ; preds = %bb.el
  %i.mp = zext i32 %.sroa.09.052.i.us.i.i116 to i64, !dbg !41734
  br label %.lr.ph.split.us.i.i112, !dbg !41735

.lr.ph.split.us.i.i112:                           ; preds = %bb.em, %bb.ei
  %.sroa.016.0.i.us.i.i113 = phi i64 [ %i.mp, %bb.em ], [ %.sroa.02.012.i.i.us.i.i107, %bb.ei ], !dbg !41736
  %i.mq = add nuw i64 %.sroa.016.0.i.us.i.i113, 1, !dbg !41737 ; 2 uses
  %i.mr = sub nuw i64 %i.lt, %i.mq, !dbg !41738   ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %i.ls, i64 %i.mq, !dbg !41739
  %i.mt = add i64 %.sroa.0.014.us.i85.i105, 1, !dbg !41740 ; 2 uses
  %i.mu = icmp eq i64 %i.mr, 0, !dbg !41713
  br i1 %i.mu, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110, label %.lr.ph.i104, !dbg !41713

.lr.ph.i.i.i.i83:                                 ; preds = %.lr.ph.split.i.preheader.i82, %.lr.ph.split.i.i102
  %i.mv = phi ptr [ %i.nj, %.lr.ph.split.i.i102 ], [ %i.lp, %.lr.ph.split.i.preheader.i82 ] ; 4 uses
  %.sroa.0.014.i83.i84 = phi i64 [ %i.nk, %.lr.ph.split.i.i102 ], [ 0, %.lr.ph.split.i.preheader.i82 ] ; 3 uses
  %i.mw = phi i64 [ %i.ni, %.lr.ph.split.i.i102 ], [ %i.lq, %.lr.ph.split.i.preheader.i82 ] ; 2 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.mw, !dbg !41741
  br label %bb.en, !dbg !41722

bb.en:                                            ; preds = %bb.eo, %.lr.ph.i.i.i.i83
  %.sroa.02.012.i.i.i.i85 = phi i64 [ 0, %.lr.ph.i.i.i.i83 ], [ %i.nc, %bb.eo ] ; 3 uses
  %i.my = phi ptr [ %i.mv, %.lr.ph.i.i.i.i83 ], [ %i.nb, %bb.eo ] ; 2 uses
  %.val7.i.i.i.i86 = load i8, ptr %i.my, align 1, !dbg !41717, !noalias !41383, !noundef !1321 ; 2 uses
  %i.mz = icmp eq i8 %.val7.i.i.i.i86, %5, !dbg !41718
  %i.na = icmp eq i8 %.val7.i.i.i.i86, %8
  %or.cond.i.i.i.i87 = or i1 %i.mz, %i.na, !dbg !41718
  br i1 %or.cond.i.i.i.i87, label %bb.ep, label %bb.eo, !dbg !41718

bb.eo:                                            ; preds = %bb.en
  %i.nb = getelementptr inbounds nuw i8, ptr %i.my, i64 1, !dbg !41719 ; 2 uses
  %i.nc = add nuw i64 %.sroa.02.012.i.i.i.i85, 1, !dbg !41720
  %i.nd = icmp eq ptr %i.nb, %i.mx, !dbg !41721
  br i1 %i.nd, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %bb.en, !dbg !41722

bb.ep:                                            ; preds = %bb.en
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mv, i64 %.sroa.02.012.i.i.i.i85, !dbg !41723
  %i.nf = load i8, ptr %i.ne, align 1, !dbg !41724, !noalias !41382, !noundef !1321
  %i.ng = icmp eq i8 %i.nf, %8, !dbg !41724
  br i1 %i.ng, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %.lr.ph.split.i.i102, !dbg !41724

.lr.ph.split.i.i102:                              ; preds = %bb.ep
  %i.nh = add nuw i64 %.sroa.02.012.i.i.i.i85, 1, !dbg !41737 ; 2 uses
  %i.ni = sub nuw i64 %i.mw, %i.nh, !dbg !41738   ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mv, i64 %i.nh, !dbg !41739
  %i.nk = add i64 %.sroa.0.014.i83.i84, 1, !dbg !41740 ; 2 uses
  %i.nl = icmp eq i64 %i.ni, 0, !dbg !41713
  br i1 %i.nl, label %_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88, label %.lr.ph.i.i.i.i83, !dbg !41713

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit.i.i110: ; preds = %.lr.ph.split.us.i.i112, %bb.el, %bb.ei, %bb.eh, %bb.ek, %.lr.ph.split.us.i.preheader.i103
  %.sroa.0.014.us.i76.i111 = phi i64 [ %.sroa.0.014.us.i85.i105, %bb.eh ], [ %.sroa.0.014.us.i85.i105, %bb.ek ], [ 0, %.lr.ph.split.us.i.preheader.i103 ], [ %.sroa.0.014.us.i85.i105, %bb.ei ], [ %i.mt, %.lr.ph.split.us.i.i112 ], [ %.sroa.0.014.us.i85.i105, %bb.el ]
  %i.nm = add i64 %.sroa.0.014.us.i76.i111, 1, !dbg !41740
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, !dbg !41742

_RNvXs_NtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5innerNtB4_11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next.exit.loopexit17.i.i88: ; preds = %.lr.ph.split.i.i102, %bb.ep, %bb.eo, %.lr.ph.split.i.preheader.i82
  %.sroa.0.014.i79.i89 = phi i64 [ %.sroa.0.014.i83.i84, %bb.eo ], [ 0, %.lr.ph.split.i.preheader.i82 ], [ %i.nk, %.lr.ph.split.i.i102 ], [ %.sroa.0.014.i83.i84, %bb.ep ]
  %i.nn = add i64 %.sroa.0.014.i79.i89, 1, !dbg !41740
  br label %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, !dbg !41742

.outer.split.i98:                                 ; preds = %bb.ew, %.outer.split.i98.preheader
  %i.no = load i64, ptr %i.kd, align 8, !dbg !41743, !noalias !41369, !noundef !1321 ; 4 uses
  %i.np = icmp ugt i64 %i.ob, %i.no, !dbg !41744
  br i1 %i.np, label %bb.er, label %bb.eq, !dbg !41744, !prof !1333

.split.i96:                                       ; preds = %.outer.i92, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90
  %.sroa.023.0.ph.i93233 = phi i64 [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90 ], [ %i.oa, %.outer.i92 ] ; 2 uses
  %i.nq = load i64, ptr %i.kd, align 8, !noalias !41369
  %i.nr = icmp ugt i64 %.sroa.023.0.ph.i93233, %i.nq
  br i1 %i.nr, label %.split.i96.thread, label %bb.ey, !dbg !41745

bb.eq:                                            ; preds = %.outer.split.i98
  %i.ns = load ptr, ptr %i.kc, align 8, !dbg !41746, !noalias !41369, !nonnull !1321, !noundef !1321
  %i.nt = sub nuw i64 %i.no, %i.ob, !dbg !41747
  %i.nu = getelementptr inbounds nuw i8, ptr %i.ns, i64 %i.ob, !dbg !41748
  %i.nv = invoke { i64, i64 } @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser18next_line_position(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.nu, i64 noundef %i.nt, i64 noundef 1, i64 %.sroa.019.0.i91, i8 noundef %5, i1 noundef zeroext %6, i8 %7, i8 noundef %8)
          to label %bb.es unwind label %.loopexit.i99, !dbg !41749, !noalias !41368 ; 2 uses

bb.er:                                            ; preds = %.outer.split.i98
  invoke void @_RNvNtNtCscgRAwXFJnXP_4core5slice5index16slice_index_fail(i64 noundef %i.ob, i64 noundef %i.no, i64 noundef %i.no, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #36
          to label %bb.ez unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41750, !noalias !41368

bb.es:                                            ; preds = %bb.eq
  %i.nw = extractvalue { i64, i64 } %i.nv, 0, !dbg !41749
  %i.nx = trunc nuw i64 %i.nw to i1, !dbg !41751
  br i1 %i.nx, label %.outer.i92, label %bb.et, !dbg !41751

.outer.i92:                                       ; preds = %bb.es
  %i.ny = extractvalue { i64, i64 } %i.nv, 1, !dbg !41749
  %i.nz = add nuw i64 %.sroa.020.0.ph.i94243, 1, !dbg !41752 ; 2 uses
  %i.oa = add i64 %i.ny, %.sroa.023.0.ph.i93242, !dbg !41753 ; 2 uses
  %exitcond.not.not.i95.not = icmp eq i64 %i.nz, %4
  br i1 %exitcond.not.not.i95.not, label %.split.i96, label %.outer.split.i98.preheader, !dbg !41695

.outer.split.i98.preheader:                       ; preds = %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90, %.outer.i92
  %.sroa.020.0.ph.i94243 = phi i64 [ %i.nz, %.outer.i92 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90 ]
  %.sroa.023.0.ph.i93242 = phi i64 [ %i.oa, %.outer.i92 ], [ 0, %_RINvYNtNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read11splitfields5inner11SplitFieldsNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4foldjNCNvYB3_B1g_5count0EBd_.exit.i90 ] ; 2 uses
  %i.ob = add i64 %.sroa.023.0.ph.i93242, 1, !dbg !41695 ; 4 uses
  br label %.outer.split.i98, !dbg !41695

bb.et:                                            ; preds = %bb.es
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !41754, !noalias !41369
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41754, !noalias !41369
  store ptr %i.af, ptr %i.a, align 8, !dbg !41755, !noalias !41369
  store i64 4096, ptr %i.la, align 8, !dbg !41755, !noalias !41369
  store i64 4096, ptr %i.lb, align 8, !dbg !41755, !noalias !41369
  %i.oc = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtB2_4TakeQINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g, i64 noundef 0, i64 undef)
          to label %bb.eu unwind label %.loopexit.i99, !dbg !41756, !noalias !41368 ; 2 uses

bb.eu:                                            ; preds = %bb.et
  %i.od = extractvalue { i64, ptr } %i.oc, 0, !dbg !41756 ; 2 uses
  %i.oe = extractvalue { i64, ptr } %i.oc, 1, !dbg !41756 ; 2 uses
  store i64 %i.od, ptr %i.b, align 8, !dbg !41756, !noalias !41369
  store ptr %i.oe, ptr %i.lc, align 8, !dbg !41756, !noalias !41369
  %i.of = trunc nuw i64 %i.od to i1, !dbg !41757
  br i1 %i.of, label %bb.ev, label %bb.ew, !dbg !41758

bb.ev:                                            ; preds = %bb.eu
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.lc)
          to label %bb.ex unwind label %.loopexit.split-lp.loopexit.split-lp.i78, !dbg !41759, !noalias !41368

bb.ew:                                            ; preds = %bb.eu
  %i.og = icmp eq ptr %i.oe, null, !dbg !41757
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41760, !noalias !41369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41761, !noalias !41369
  br i1 %i.og, label %.split.i96.thread, label %.outer.split.i98, !dbg !41762

bb.ex:                                            ; preds = %bb.ev
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !41760, !noalias !41369
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41763, !alias.scope !41368
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41761, !noalias !41369
  br label %bb.ee, !dbg !41690

.split.i96.thread:                                ; preds = %bb.ew, %bb.ey, %.split.i96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !41764, !noalias !41369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !41682, !noalias !41369
  br label %bb.dq, !dbg !41765

bb.ey:                                            ; preds = %.split.i96
  store i64 %.sroa.023.0.ph.i93233, ptr %i.kd, align 8, !dbg !41766, !noalias !41369
  br label %.split.i96.thread, !dbg !41767

bb.ez:                                            ; preds = %bb.er
  unreachable

bb.fa:                                            ; preds = %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit
  call void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.jm), !dbg !41768
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !dbg !41655
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41769
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41770
  br label %bb.fb, !dbg !41771

bb.fb:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io.exit, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127, %bb.h, %bb.fa
  ret void, !dbg !41772

bb.fc:                                            ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit46.i101, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io.exit.i73
  %i.oh = landingpad { ptr, i32 }
          cleanup
  br label %.body122, !dbg !41770

.body122:                                         ; preds = %bb.dj, %bb.do, %.loopexit.split-lp.i76, %bb.ef, %bb.fc
  %eh.lpad-body123 = phi { ptr, i32 } [ %i.oh, %bb.fc ], [ %i.kk, %bb.dj ], [ %i.kp, %bb.do ], [ %lpad.phi.i77, %.loopexit.split-lp.i76 ], [ %i.ln, %bb.ef ] ; 2 uses
  %i.oi = load i64, ptr %i.af, align 8, !dbg !41773, !range !1368, !alias.scope !41393, !noundef !1321
  %i.oj = icmp eq i64 %i.oi, 0, !dbg !41773
  br i1 %i.oj, label %bb.fd, label %common.resume, !dbg !41773

bb.fd:                                            ; preds = %.body122
  invoke void @_RNvXs6_CslcGXmMsZ7N2_9zstd_safeNtB5_4DCtxNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx)
          to label %common.resume unwind label %bb.dc, !dbg !41774

bb.fe:                                            ; preds = %.noexc125, %bb.dq, %.noexc124
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !41775
  %i.ok = load i64, ptr %i.af, align 8, !dbg !41776, !range !1368, !alias.scope !41394, !noundef !1321
  %i.ol = icmp eq i64 %i.ok, 0, !dbg !41776
  br i1 %i.ol, label %bb.ff, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127, !dbg !41776

bb.ff:                                            ; preds = %bb.fe
  call void @_RNvXs6_CslcGXmMsZ7N2_9zstd_safeNtB5_4DCtxNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.411.0..sroa_idx), !dbg !41777
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127, !dbg !41776

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsi0YuHEPkLKL_4zstd6stream4read7DecoderRShEECslpwjCj2YNBy_9polars_io.exit127: ; preds = %bb.fe, %bb.ff
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !dbg !41770
  br label %bb.fb, !dbg !41770
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store3awsNtB5_8AmazonS3NtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41778 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41781
  store ptr %0, ptr %i.a, align 8, !dbg !41781
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @242, i64 noundef 8, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @241), !dbg !41782
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41783
  ret i1 %i.b, !dbg !41784
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store3gcpNtB5_18GoogleCloudStorageNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41785 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41789
  store ptr %0, ptr %i.a, align 8, !dbg !41789
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @245, i64 noundef 18, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @244), !dbg !41790
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41791
  ret i1 %i.b, !dbg !41792
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs0_NtCs8RKTHBS4OBx_12object_store5azureNtB5_14MicrosoftAzureNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #7 !dbg !41793 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41797
  store ptr %0, ptr %i.a, align 8, !dbg !41797
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @247, i64 noundef 14, ptr noalias noundef nonnull readonly captures(address, read_provenance) @243, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @246), !dbg !41798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41799
  ret i1 %i.b, !dbg !41800
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CowINtNtB7_4sync3ArcDNtCs8RKTHBS4OBx_12object_store11ObjectStoreEL_EENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 !dbg !1023 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !dbg !41801, !noundef !1321
  %.not = icmp eq ptr %i.a, null, !dbg !41801
  br i1 %.not, label %bb.c, label %bb.b, !dbg !41802

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { ptr, ptr } @_RNvXNtCsgZ49sUHp3tW_5alloc6borrowINtNtB4_4sync3ArcDNtCs8RKTHBS4OBx_12object_store11ObjectStoreEL_ENtB2_7ToOwned8to_ownedCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1), !dbg !41803 ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0, !dbg !41803
  %i.d = extractvalue { ptr, ptr } %i.b, 1, !dbg !41803
  br label %bb.d, !dbg !41804

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !41805
  %i.f = load ptr, ptr %i.e, align 8, !dbg !41805, !nonnull !1321, !align !1520, !noundef !1321
  br label %bb.d, !dbg !41806

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink1 = phi ptr [ %i.f, %bb.c ], [ %i.d, %bb.b ], !dbg !41807
  %.sink = phi ptr [ null, %bb.c ], [ %i.c, %bb.b ], !dbg !41807
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41807
  store ptr %.sink1, ptr %i.g, align 8, !dbg !41807
  store ptr %.sink, ptr %0, align 8, !dbg !41807
  ret void, !dbg !41808
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs0_NtCsgZ49sUHp3tW_5alloc6borrowINtB5_3CoweENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 !dbg !41809 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %1, align 8, !dbg !41833, !range !1344, !noundef !1321
  %.not = icmp eq i64 %i.b, -9223372036854775808, !dbg !41833
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !41834
  %i.d = load ptr, ptr %i.c, align 8, !dbg !41834, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !41834
  %i.f = load i64, ptr %i.e, align 8, !dbg !41834, !noundef !1321 ; 6 uses
  br i1 %.not, label %bb.e, label %bb.b, !dbg !41835

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !41836, !noalias !41831
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.f, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !41836, !noalias !41831
  %i.g = load i64, ptr %i.a, align 8, !dbg !41836, !range !1368, !noalias !41831, !noundef !1321
  %i.h = trunc nuw i64 %i.g to i1, !dbg !41837
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !41838
  %i.j = load i64, ptr %i.i, align 8, !dbg !41838, !range !1344, !noalias !41831, !noundef !1321 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !41838 ; 2 uses
  br i1 %i.h, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i, !dbg !41837, !prof !1333

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %i.k, align 8, !dbg !41839, !noalias !41831
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #36, !dbg !41840, !noalias !41831
  unreachable, !dbg !41840

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i: ; preds = %bb.b
  %i.m = load ptr, ptr %i.k, align 8, !dbg !41841, !noalias !41831, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.n = icmp ule i64 %i.f, %i.j, !dbg !41842
  tail call void @llvm.assume(i1 %i.n), !dbg !41843
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !41844, !noalias !41831
  %.not.i.i = icmp eq i64 %i.f, 0, !dbg !41845
  br i1 %.not.i.i, label %_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit, label %bb.d, !dbg !41845

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.m, ptr nonnull readonly align 1 %i.d, i64 range(i64 0, -9223372036854775808) %i.f, i1 false), !dbg !41846, !noalias !41832
  br label %_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit, !dbg !41847

_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned.exit: ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i, %bb.d
  store i64 %i.j, ptr %0, align 8, !dbg !41848
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41848
  store ptr %i.m, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !41848
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41848
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !41848
  br label %bb.f, !dbg !41849

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !41850
  store ptr %i.d, ptr %i.o, align 8, !dbg !41850
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !41850
  store i64 %i.f, ptr %i.p, align 8, !dbg !41850
  store i64 -9223372036854775808, ptr %0, align 8, !dbg !41850
  br label %bb.f, !dbg !41851
end_hunk_1
