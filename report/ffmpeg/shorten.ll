Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/shorten?download=true
inline.NumInlined: 46
inline.NumDeleted: 15
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@shorten_decode_frame:bb.a

bb.ds:                                            ; preds = %._crit_edge705
  %i.ami = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.amj = sext i32 %i.ami to i64
  %i.amk = sdiv i64 %.0280.lcssa, %i.amj
  %i.aml = trunc i64 %i.amk to i32
  br label %.sink.split

bb.dt:                                            ; preds = %._crit_edge705
  %i.amm = load i32, ptr %i.ph, align 8, !tbaa !101 ; 2 uses
  %i.amn = icmp eq i32 %i.amm, 32
  br i1 %i.amn, label %.sink.split, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.amo = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.amp = sext i32 %i.amo to i64
  %i.amq = sdiv i64 %.0280.lcssa, %i.amp
  %i.amr = zext nneg i32 %i.amm to i64
  %i.ams = shl i64 %i.amq, %i.amr
  %i.amt = trunc i64 %i.ams to i32
  br label %.sink.split

.sink.split:                                      ; preds = %bb.du, %bb.dt, %bb.ds
  %.sink = phi i32 [ %i.aml, %bb.ds ], [ %i.amt, %bb.du ], [ 0, %bb.dt ]
  %i.amu = sext i32 %i.pt to i64
  %i.amv = getelementptr inbounds [8 x i8], ptr %i.pk, i64 %i.amu
  %i.amw = load ptr, ptr %i.amv, align 8, !tbaa !44
  %i.amx = getelementptr [4 x i8], ptr %i.amw, i64 %.lcssa630
  %i.amy = getelementptr i8, ptr %i.amx, i64 -4
  store i32 %.sink, ptr %i.amy, align 4, !tbaa !84
  br label %bb.dv

bb.dv:                                            ; preds = %.sink.split, %decode_subframe_lpc.exit.thread
  %i.amz = load i32, ptr %i.pl, align 4, !tbaa !93 ; 4 uses
  %i.ana = icmp sgt i32 %i.amz, 0
  br i1 %i.ana, label %.lr.ph709, label %.._crit_edge710_crit_edge

.._crit_edge710_crit_edge:                        ; preds = %bb.dv
  %.phi.trans.insert = sext i32 %i.pt to i64
  %.phi.trans.insert865 = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %.phi.trans.insert
  %.pre866 = load ptr, ptr %.phi.trans.insert865, align 8, !tbaa !44
  br label %._crit_edge710

.lr.ph709:                                        ; preds = %bb.dv
  %i.anb = sub nsw i32 0, %i.amz
  %i.anc = sext i32 %i.pt to i64
  %i.and = getelementptr inbounds [8 x i8], ptr %i.pm, i64 %i.anc
  %i.ane = load ptr, ptr %i.and, align 8, !tbaa !44 ; 12 uses
  %i.anf = sext i32 %i.anb to i64                 ; 2 uses
  %xtraiter1329 = and i32 %i.amz, 3               ; 2 uses
  %lcmp.mod1330.not = icmp eq i32 %xtraiter1329, 0
  br i1 %lcmp.mod1330.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph709, %.prol.preheader
  %indvars.iv851.prol = phi i64 [ %indvars.iv.next852.prol, %.prol.preheader ], [ %i.anf, %.lr.ph709 ] ; 3 uses
  %prol.iter = phi i32 [ %prol.iter.next, %.prol.preheader ], [ 0, %.lr.ph709 ]
  %i.ang = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.anh = sext i32 %i.ang to i64
  %i.ani = getelementptr [4 x i8], ptr %i.ane, i64 %indvars.iv851.prol
  %i.anj = getelementptr [4 x i8], ptr %i.ani, i64 %i.anh
  %i.ank = load i32, ptr %i.anj, align 4, !tbaa !84
  %i.anl = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %indvars.iv851.prol
  store i32 %i.ank, ptr %i.anl, align 4, !tbaa !84
  %indvars.iv.next852.prol = add nsw i64 %indvars.iv851.prol, 1 ; 2 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter1329
  br i1 %prol.iter.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !70

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph709
  %indvars.iv851.unr = phi i64 [ %i.anf, %.lr.ph709 ], [ %indvars.iv.next852.prol, %.prol.preheader ]
  %i.anm = icmp ult i32 %i.amz, 4
  br i1 %i.anm, label %._crit_edge710, label %.lr.ph709.new

.lr.ph709.new:                                    ; preds = %.prol.loopexit, %.lr.ph709.new
  %indvars.iv851 = phi i64 [ %indvars.iv.next852.3, %.lr.ph709.new ], [ %indvars.iv851.unr, %.prol.loopexit ] ; 6 uses
  %i.ann = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.ano = sext i32 %i.ann to i64
  %i.anp = getelementptr [4 x i8], ptr %i.ane, i64 %indvars.iv851
  %i.anq = getelementptr [4 x i8], ptr %i.anp, i64 %i.ano
  %i.anr = load i32, ptr %i.anq, align 4, !tbaa !84
  %i.ans = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %indvars.iv851
  store i32 %i.anr, ptr %i.ans, align 4, !tbaa !84
  %indvars.iv.next852 = add nsw i64 %indvars.iv851, 1 ; 2 uses
  %i.ant = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.anu = sext i32 %i.ant to i64
  %i.anv = getelementptr [4 x i8], ptr %i.ane, i64 %indvars.iv.next852
  %i.anw = getelementptr [4 x i8], ptr %i.anv, i64 %i.anu
  %i.anx = load i32, ptr %i.anw, align 4, !tbaa !84
  %i.any = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %indvars.iv.next852
  store i32 %i.anx, ptr %i.any, align 4, !tbaa !84
  %indvars.iv.next852.1 = add nsw i64 %indvars.iv851, 2 ; 2 uses
  %i.anz = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.aoa = sext i32 %i.anz to i64
  %i.aob = getelementptr [4 x i8], ptr %i.ane, i64 %indvars.iv.next852.1
  %i.aoc = getelementptr [4 x i8], ptr %i.aob, i64 %i.aoa
  %i.aod = load i32, ptr %i.aoc, align 4, !tbaa !84
  %i.aoe = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %indvars.iv.next852.1
  store i32 %i.aod, ptr %i.aoe, align 4, !tbaa !84
  %indvars.iv.next852.2 = add nsw i64 %indvars.iv851, 3 ; 2 uses
  %i.aof = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.aog = sext i32 %i.aof to i64
  %i.aoh = getelementptr [4 x i8], ptr %i.ane, i64 %indvars.iv.next852.2
  %i.aoi = getelementptr [4 x i8], ptr %i.aoh, i64 %i.aog
  %i.aoj = load i32, ptr %i.aoi, align 4, !tbaa !84
  %i.aok = getelementptr inbounds [4 x i8], ptr %i.ane, i64 %indvars.iv.next852.2
  store i32 %i.aoj, ptr %i.aok, align 4, !tbaa !84
  %indvars.iv.next852.3 = add nsw i64 %indvars.iv851, 4 ; 2 uses
  %i.aol = and i64 %indvars.iv.next852.3, 4294967295
  %exitcond854.not.3 = icmp eq i64 %i.aol, 0
  br i1 %exitcond854.not.3, label %._crit_edge710, label %.lr.ph709.new, !llvm.loop !71

._crit_edge710:                                   ; preds = %.prol.loopexit, %.lr.ph709.new, %.._crit_edge710_crit_edge
  %i.aom = phi ptr [ %.pre866, %.._crit_edge710_crit_edge ], [ %i.ane, %.lr.ph709.new ], [ %i.ane, %.prol.loopexit ] ; 2 uses
  %i.aon = load i32, ptr %i.ph, align 8, !tbaa !101
  switch i32 %i.aon, label %.preheader.i [
    i32 32, label %.preheader13.i
    i32 0, label %fix_bitshift.exit
  ]

.preheader13.i:                                   ; preds = %._crit_edge710
  %i.aoo = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.aop = icmp sgt i32 %i.aoo, 0
  br i1 %i.aop, label %.lr.ph.i390, label %fix_bitshift.exit

.preheader.i:                                     ; preds = %._crit_edge710
  %i.aoq = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.aor = icmp sgt i32 %i.aoq, 0
  br i1 %i.aor, label %.lr.ph17.i, label %fix_bitshift.exit

.lr.ph.i390:                                      ; preds = %.preheader13.i, %.lr.ph.i390
  %indvars.iv.i391 = phi i64 [ %indvars.iv.next.i392, %.lr.ph.i390 ], [ 0, %.preheader13.i ] ; 2 uses
  %i.aos = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %indvars.iv.i391
  store i32 0, ptr %i.aos, align 4, !tbaa !84
  %indvars.iv.next.i392 = add nuw nsw i64 %indvars.iv.i391, 1 ; 2 uses
  %i.aot = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.aou = sext i32 %i.aot to i64
  %i.aov = icmp slt i64 %indvars.iv.next.i392, %i.aou
  br i1 %i.aov, label %.lr.ph.i390, label %fix_bitshift.exit, !llvm.loop !72

.lr.ph17.i:                                       ; preds = %.preheader.i, %.lr.ph17.i
  %indvars.iv20.i = phi i64 [ %indvars.iv.next21.i, %.lr.ph17.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.aow = load i32, ptr %i.ph, align 8, !tbaa !101
  %i.aox = getelementptr inbounds nuw [4 x i8], ptr %i.aom, i64 %indvars.iv20.i ; 2 uses
  %i.aoy = load i32, ptr %i.aox, align 4, !tbaa !84
  %i.aoz = shl i32 %i.aoy, %i.aow
  store i32 %i.aoz, ptr %i.aox, align 4, !tbaa !84
  %indvars.iv.next21.i = add nuw nsw i64 %indvars.iv20.i, 1 ; 2 uses
  %i.apa = load i32, ptr %i.pg, align 8, !tbaa !88
  %i.apb = sext i32 %i.apa to i64
  %i.apc = icmp slt i64 %indvars.iv.next21.i, %i.apb
  br i1 %i.apc, label %.lr.ph17.i, label %fix_bitshift.exit, !llvm.loop !73

fix_bitshift.exit:                                ; preds = %.lr.ph.i390, %.lr.ph17.i, %._crit_edge710, %.preheader13.i, %.preheader.i
  %i.apd = load i32, ptr %i.pd, align 4, !tbaa !100
  %i.ape = add nsw i32 %i.apd, 1                  ; 2 uses
  store i32 %i.ape, ptr %i.pd, align 4, !tbaa !100
  %i.apf = load i32, ptr %i.pe, align 8, !tbaa !42
  %i.apg = icmp eq i32 %i.ape, %i.apf
  br i1 %i.apg, label %bb.dw, label %.thread530

bb.dw:                                            ; preds = %fix_bitshift.exit
  %i.aph = load i32, ptr %i.pg, align 8, !tbaa !88
  store i32 %i.aph, ptr %i.po, align 8, !tbaa !108
  %i.api = tail call i32 @ff_get_buffer(ptr noundef %0, ptr noundef %1, i32 noundef 0) #9 ; 2 uses
  %i.apj = icmp sgt i32 %i.api, -1
  br i1 %i.apj, label %.preheader, label %read_header.exit.thread

.preheader:                                       ; preds = %bb.dw
  %i.apk = load i32, ptr %i.pe, align 8, !tbaa !42
  %.not736 = icmp eq i32 %i.apk, 0
  br i1 %.not736, label %._crit_edge720, label %.lr.ph719

.lr.ph719:                                        ; preds = %.preheader, %bb.ed
  %indvars.iv858 = phi i64 [ %indvars.iv.next859, %bb.ed ], [ 0, %.preheader ] ; 4 uses
  %i.apl = load i32, ptr %i.pg, align 8, !tbaa !88 ; 3 uses
  %i.apm = icmp sgt i32 %i.apl, 0
  br i1 %i.apm, label %.lr.ph715, label %._crit_edge716

.lr.ph715:                                        ; preds = %.lr.ph719
  %i.apn = load ptr, ptr %i.pp, align 8, !tbaa !109
  %i.apo = getelementptr inbounds nuw [8 x i8], ptr %i.apn, i64 %indvars.iv858
  %i.app = load ptr, ptr %i.apo, align 8, !tbaa !110 ; 2 uses
  %i.apq = getelementptr inbounds nuw [8 x i8], ptr %i.pm, i64 %indvars.iv858 ; 2 uses
  br label %bb.dx

bb.dx:                                            ; preds = %.lr.ph715, %bb.ea
  %i.apr = phi i32 [ %i.apl, %.lr.ph715 ], [ %i.aqe, %bb.ea ] ; 2 uses
  %indvars.iv855 = phi i64 [ 0, %.lr.ph715 ], [ %indvars.iv.next856, %bb.ea ] ; 3 uses
  %.0277713 = phi ptr [ %i.app, %.lr.ph715 ], [ %.1, %bb.ea ] ; 4 uses
  %.0278712 = phi ptr [ %i.app, %.lr.ph715 ], [ %.1279, %bb.ea ] ; 4 uses
  %i.aps = load i32, ptr %i.pq, align 8, !tbaa !90
  switch i32 %i.aps, label %bb.ea [
    i32 2, label %bb.dy
    i32 3, label %bb.dz
    i32 5, label %bb.dz
  ]

bb.dy:                                            ; preds = %bb.dx
  %i.apt = load ptr, ptr %i.apq, align 8, !tbaa !44
  %i.apu = getelementptr inbounds nuw [4 x i8], ptr %i.apt, i64 %indvars.iv855
  %i.apv = load i32, ptr %i.apu, align 4, !tbaa !84
  %4 = tail call i32 @llvm.smax.i32(i32 %i.apv, i32 0)
  %.0.i548 = tail call i32 @llvm.umin.i32(i32 %4, i32 255)
  %i.apw = trunc nuw i32 %.0.i548 to i8
  %i.apx = getelementptr inbounds nuw i8, ptr %.0278712, i64 1
  store i8 %i.apw, ptr %.0278712, align 1, !tbaa !40
  %.pre867 = load i32, ptr %i.pg, align 8, !tbaa !88
  br label %bb.ea

bb.dz:                                            ; preds = %bb.dx, %bb.dx
  %i.apy = load ptr, ptr %i.apq, align 8, !tbaa !44
  %i.apz = getelementptr inbounds nuw [4 x i8], ptr %i.apy, i64 %indvars.iv855
  %i.aqa = load i32, ptr %i.apz, align 4, !tbaa !84
  %i.aqb = tail call i32 @llvm.smax.i32(i32 %i.aqa, i32 -32768)
  %i.aqc = tail call i32 @llvm.smin.i32(i32 %i.aqb, i32 32767)
  %.0.i346 = trunc nsw i32 %i.aqc to i16
  %i.aqd = getelementptr inbounds nuw i8, ptr %.0277713, i64 2
  store i16 %.0.i346, ptr %.0277713, align 2, !tbaa !112
  br label %bb.ea

bb.ea:                                            ; preds = %bb.dx, %bb.dy, %bb.dz
  %i.aqe = phi i32 [ %i.apr, %bb.dx ], [ %.pre867, %bb.dy ], [ %i.apr, %bb.dz ] ; 3 uses
  %.1279 = phi ptr [ %.0278712, %bb.dx ], [ %i.apx, %bb.dy ], [ %.0278712, %bb.dz ]
  %.1 = phi ptr [ %.0277713, %bb.dx ], [ %.0277713, %bb.dy ], [ %i.aqd, %bb.dz ]
  %indvars.iv.next856 = add nuw nsw i64 %indvars.iv855, 1 ; 2 uses
  %i.aqf = sext i32 %i.aqe to i64
  %i.aqg = icmp slt i64 %indvars.iv.next856, %i.aqf
  br i1 %i.aqg, label %bb.dx, label %._crit_edge716, !llvm.loop !74

._crit_edge716:                                   ; preds = %bb.ea, %.lr.ph719
  %.lcssa631 = phi i32 [ %i.apl, %.lr.ph719 ], [ %i.aqe, %bb.ea ]
  %i.aqh = load i32, ptr %i.pr, align 4, !tbaa !45
  %.not338 = icmp eq i32 %i.aqh, 0
  br i1 %.not338, label %bb.ed, label %bb.eb

bb.eb:                                            ; preds = %._crit_edge716
  %i.aqi = load i32, ptr %i.pq, align 8, !tbaa !90
  %.not339 = icmp eq i32 %i.aqi, 2
  br i1 %.not339, label %bb.ed, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.aqj = load ptr, ptr %i.ps, align 8, !tbaa !113
  %i.aqk = load ptr, ptr %i.pp, align 8, !tbaa !109
  %i.aql = getelementptr inbounds nuw [8 x i8], ptr %i.aqk, i64 %indvars.iv858
  %i.aqm = load ptr, ptr %i.aql, align 8, !tbaa !114 ; 2 uses
  tail call void %i.aqj(ptr noundef %i.aqm, ptr noundef %i.aqm, i32 noundef %.lcssa631) #9
  br label %bb.ed

bb.ed:                                            ; preds = %._crit_edge716, %bb.eb, %bb.ec
  %indvars.iv.next859 = add nuw nsw i64 %indvars.iv858, 1 ; 2 uses
  %i.aqn = load i32, ptr %i.pe, align 8, !tbaa !42
  %i.aqo = zext i32 %i.aqn to i64
  %i.aqp = icmp samesign ult i64 %indvars.iv.next859, %i.aqo
  br i1 %i.aqp, label %.lr.ph719, label %._crit_edge720, !llvm.loop !75

._crit_edge720:                                   ; preds = %bb.ed, %.preheader
  store i32 1, ptr %2, align 4, !tbaa !84
  br label %.thread530

.thread530:                                       ; preds = %._crit_edge720, %bb.ca, %fix_bitshift.exit, %.loopexit, %.thread523
  %i.aqq = load i32, ptr %i.pd, align 4, !tbaa !100 ; 2 uses
  %i.aqr = load i32, ptr %i.pe, align 8, !tbaa !42
  %i.aqs = icmp ult i32 %i.aqq, %i.aqr
  br i1 %i.aqs, label %bb.bt, label %.thread539

.thread539:                                       ; preds = %.thread530, %.loopexit, %bb.bs, %.thread521, %.loopexit572, %bb.bu
  %i.aqt = load i32, ptr %i.pd, align 4, !tbaa !100
  %i.aqu = load i32, ptr %i.pe, align 8, !tbaa !42
  %i.aqv = icmp ult i32 %i.aqt, %i.aqu
  br i1 %i.aqv, label %.sink.split1048, label %bb.ee

.sink.split1048:                                  ; preds = %.thread539, %bb.bp
  store i32 0, ptr %2, align 4, !tbaa !84
  br label %bb.ee

bb.ee:                                            ; preds = %.sink.split1048, %.thread539
  %.val348 = load i32, ptr %i.be, align 8, !tbaa !39 ; 2 uses
  %i.aqw = srem i32 %.val348, 8
  store i32 %i.aqw, ptr %i.bf, align 4, !tbaa !85
  %i.aqx = sdiv i32 %.val348, 8                   ; 5 uses
  %i.aqy = icmp sgt i32 %i.aqx, %i.at
  br i1 %i.aqy, label %bb.ef, label %bb.eg

bb.ef:                                            ; preds = %bb.ee
  %i.aqz = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.ara = sub nsw i32 %i.aqx, %i.at
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aqz, i32 noundef 16, ptr noundef nonnull @.str.9, i32 noundef %i.ara) #9
  store i32 0, ptr %i.q, align 8, !tbaa !82
  store i32 0, ptr %i.t, align 4, !tbaa !83
  br label %read_header.exit.thread

bb.eg:                                            ; preds = %bb.ee
  %i.arb = load i32, ptr %i.q, align 8, !tbaa !82 ; 2 uses
  %.not341 = icmp eq i32 %i.arb, 0
  br i1 %.not341, label %read_header.exit.thread, label %bb.eh

bb.eh:                                            ; preds = %bb.eg
  %i.arc = load i32, ptr %i.t, align 4, !tbaa !83
  %i.ard = add nsw i32 %i.arc, %i.aqx
  store i32 %i.ard, ptr %i.t, align 4, !tbaa !83
  %i.are = sub nsw i32 %i.arb, %i.aqx
  store i32 %i.are, ptr %i.q, align 8, !tbaa !82
  br label %read_header.exit.thread

read_header.exit.thread:                          ; preds = %bb.bi, %bb.bh, %bb.dw, %decode_subframe_lpc.exit, %bb.cv, %bb.cp, %bb.cn, %.loopexit574, %.loopexit576, %bb.be, %bb.bg, %bb.y, %bb.aa, %bb.ac, %init_offset.exit.i, %bb.w, %bb.bb, %bb.az, %bb.p, %bb.at, %bb.an, %allocate_buffers.exit.i, %bb.ba, %bb.r, %bb.n, %.thread504, %.thread, %bb.eg, %bb.k, %bb.eh, %bb.ef, %bb.br, %bb.j
  %.12 = phi i32 [ %., %bb.j ], [ -12, %.thread ], [ %i.pc, %bb.br ], [ -1094995529, %bb.n ], [ -1094995529, %bb.ef ], [ %., %bb.eh ], [ %i.aqx, %bb.eg ], [ -1094995529, %bb.k ], [ -12, %.thread504 ], [ %.069.ph.i, %decode_subframe_lpc.exit ], [ %i.api, %bb.dw ], [ -1094995529, %bb.be ], [ -1094995529, %bb.bg ], [ -1094995529, %bb.y ], [ -1094995529, %bb.aa ], [ -1094995529, %bb.ac ], [ -1163346256, %init_offset.exit.i ], [ -22, %bb.w ], [ -1163346256, %bb.bb ], [ %i.md, %bb.az ], [ -1094995529, %bb.p ], [ -1094995529, %bb.at ], [ -1094995529, %bb.an ], [ %i.nq, %allocate_buffers.exit.i ], [ %i.mf, %bb.ba ], [ -1094995529, %bb.r ], [ -1163346256, %bb.cn ], [ -1094995529, %.loopexit574 ], [ -1094995529, %.loopexit576 ], [ -1094995529, %bb.cv ], [ -22, %bb.cp ], [ %i.mv, %bb.bh ], [ %i.nc, %bb.bi ]
  ret i32 %.12
}

; Function Attrs: cold nounwind optsize uwtable
define internal noundef i32 @shorten_decode_close(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !30   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr null, ptr %i.h, align 8, !tbaa !44
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.i) #9
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %indvars.iv
  tail call void @av_freep(ptr noundef nonnull %i.j) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.k = load i32, ptr %i.c, align 8, !tbaa !42
  %i.l = zext i32 %i.k to i64
  %i.m = icmp samesign ult i64 %indvars.iv.next, %i.l
  br i1 %i.m, label %bb.b, label %._crit_edge, !llvm.loop !115

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  tail call void @av_freep(ptr noundef nonnull %i.n) #9
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  tail call void @av_freep(ptr noundef nonnull %i.o) #9
  ret i32 0
}

declare void @ff_bswapdsp_init(ptr noundef) local_unnamed_addr #2

declare ptr @av_fast_realloc(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @av_log(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: inlinehint nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i32 @get_uint(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, 280) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16656
  %i.b = load i32, ptr %i.a, align 8, !tbaa !41
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !39   ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load i32, ptr %i.f, align 8, !tbaa !38   ; 5 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !36   ; 3 uses
  %i.i = lshr i32 %i.e, 3
  %i.j = zext nneg i32 %i.i to i64
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.j
  %i.l = load i32, ptr %i.k, align 1, !tbaa !40
  %i.m = tail call i32 @llvm.bswap.i32(i32 %i.l)
  %i.n = and i32 %i.e, 7
  %i.o = shl i32 %i.m, %i.n                       ; 6 uses
  %.not.i.i = icmp ult i32 %i.o, 65536            ; 2 uses
  %i.p = lshr i32 %i.o, 16
  %spec.select.i.i = select i1 %.not.i.i, i32 %i.o, i32 %i.p ; 3 uses
  %spec.select12.i.i = select i1 %.not.i.i, i32 0, i32 16 ; 2 uses
  %.not11.i.i = icmp samesign ult i32 %spec.select.i.i, 256 ; 2 uses
  %i.q = lshr i32 %spec.select.i.i, 8
  %i.r = or disjoint i32 %spec.select12.i.i, 8
  %.110.i.i = select i1 %.not11.i.i, i32 %spec.select.i.i, i32 %i.q
  %.1.i.i = select i1 %.not11.i.i, i32 %spec.select12.i.i, i32 %i.r
  %i.s = zext nneg i32 %.110.i.i to i64
  %i.t = getelementptr inbounds nuw i8, ptr @ff_log2_tab, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !40
  %i.v = zext i8 %i.u to i32
  %i.w = add nuw nsw i32 %.1.i.i, %i.v            ; 4 uses
  %i.x = icmp samesign ugt i32 %i.w, 8
  br i1 %i.x, label %bb.c, label %.preheader127.i

.preheader127.i:                                  ; preds = %bb.b
  %i.y = icmp ult i32 %i.o, 128
  br i1 %i.y, label %.lr.ph.i, label %.preheader.i

.lr.ph.i:                                         ; preds = %.preheader127.i
end_hunk_0
