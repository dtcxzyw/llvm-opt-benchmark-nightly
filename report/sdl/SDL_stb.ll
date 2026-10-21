Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 85
begin_hunk_0_@stbi__jpeg_load:bb.a
  %i.alh = phi i1 [ false, %stbi__decode_jpeg_image.exit.i ], [ true, %bb.fp ], [ false, %bb.fq ], [ %.not294.i, %bb.fr ] ; 4 uses
  %i.ali = icmp samesign ugt i32 %i.akx, 2        ; 2 uses
  %or.cond3.not297.i = select i1 %i.aky, i1 true, i1 %i.ali
  %or.cond5.i = select i1 %or.cond3.not297.i, i1 true, i1 %i.alh
  %..i = select i1 %or.cond5.i, i32 %i.akv, i32 1 ; 2 uses
  %i.alj = icmp slt i32 %..i, 1
  br i1 %i.alj, label %bb.ft, label %bb.gb

bb.ft:                                            ; preds = %bb.fs
  %i.alk = icmp sgt i32 %i.akv, 0
  br i1 %i.alk, label %.lr.ph.i.i313.i, label %load_jpeg_image.exit

.lr.ph.i.i313.i:                                  ; preds = %bb.ft
  %wide.trip.count.i.i314.i = zext nneg i32 %i.akv to i64
  br label %bb.fu

bb.fu:                                            ; preds = %bb.ga, %.lr.ph.i.i313.i
  %indvars.iv.i.i315.i = phi i64 [ 0, %.lr.ph.i.i313.i ], [ %indvars.iv.next.i.i319.i, %bb.ga ] ; 2 uses
  %i.all = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i315.i ; 5 uses
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 56
  %i.aln = load ptr, ptr %i.alm, align 8          ; 2 uses
  %.not.i.i316.i = icmp eq ptr %i.aln, null
  br i1 %.not.i.i316.i, label %bb.fw, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  call void @SDL_free_REAL(ptr noundef nonnull %i.aln) #13
  %i.alo = getelementptr inbounds nuw i8, ptr %i.all, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.alo, i8 0, i64 16, i1 false)
  br label %bb.fw

bb.fw:                                            ; preds = %bb.fv, %bb.fu
  %i.alp = getelementptr inbounds nuw i8, ptr %i.all, i64 64 ; 2 uses
  %i.alq = load ptr, ptr %i.alp, align 8          ; 2 uses
  %.not28.i.i317.i = icmp eq ptr %i.alq, null
  br i1 %.not28.i.i317.i, label %bb.fy, label %bb.fx

bb.fx:                                            ; preds = %bb.fw
  call void @SDL_free_REAL(ptr noundef nonnull %i.alq) #13
  store ptr null, ptr %i.alp, align 8
  %i.alr = getelementptr inbounds nuw i8, ptr %i.all, i64 80
  store ptr null, ptr %i.alr, align 8
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.als = getelementptr inbounds nuw i8, ptr %i.all, i64 72 ; 2 uses
  %i.alt = load ptr, ptr %i.als, align 8          ; 2 uses
  %.not29.i.i318.i = icmp eq ptr %i.alt, null
  br i1 %.not29.i.i318.i, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  call void @SDL_free_REAL(ptr noundef nonnull %i.alt) #13
  store ptr null, ptr %i.als, align 8
  br label %bb.ga

bb.ga:                                            ; preds = %bb.fz, %bb.fy
  %indvars.iv.next.i.i319.i = add nuw nsw i64 %indvars.iv.i.i315.i, 1 ; 2 uses
  %exitcond.not.i.i320.i = icmp eq i64 %indvars.iv.next.i.i319.i, %wide.trip.count.i.i314.i
  br i1 %exitcond.not.i.i320.i, label %load_jpeg_image.exit, label %bb.fu, !llvm.loop !2

bb.gb:                                            ; preds = %bb.fs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.c, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %.not298.i = icmp eq ptr %5, null
  br i1 %.not298.i, label %.lr.ph.i, label %bb.gc

.lr.ph.i:                                         ; preds = %bb.gb
  %i.alu = getelementptr inbounds nuw i8, ptr %i.d, i64 18056
  %wide.trip.count.i = zext nneg i32 %..i to i64  ; 2 uses
  %.pre578.i = load i32, ptr %.pre.i, align 8
  br label %bb.hb

bb.gc:                                            ; preds = %bb.gb
  %i.alv = load i32, ptr %5, align 8              ; 3 uses
  %i.alw = load i32, ptr %.pre.i, align 8
  %.not304.i = icmp eq i32 %i.alv, %i.alw
  br i1 %.not304.i, label %bb.gd, label %bb.ge

bb.gd:                                            ; preds = %bb.gc
  %i.alx = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.aly = load i32, ptr %i.alx, align 4          ; 3 uses
  %i.alz = getelementptr inbounds nuw i8, ptr %.pre.i, i64 4
  %i.ama = load i32, ptr %i.alz, align 4
  %.not305.i = icmp eq i32 %i.aly, %i.ama
  br i1 %.not305.i, label %bb.gm, label %bb.ge

bb.ge:                                            ; preds = %bb.gd, %bb.gc
  %i.amb = icmp sgt i32 %i.akv, 0
  br i1 %i.amb, label %.lr.ph.i.i322.i, label %stbi__cleanup_jpeg.exit330.i

.lr.ph.i.i322.i:                                  ; preds = %bb.ge
  %wide.trip.count.i.i323.i = zext nneg i32 %i.akv to i64
  br label %bb.gf

bb.gf:                                            ; preds = %bb.gl, %.lr.ph.i.i322.i
  %indvars.iv.i.i324.i = phi i64 [ 0, %.lr.ph.i.i322.i ], [ %indvars.iv.next.i.i328.i, %bb.gl ] ; 2 uses
  %i.amc = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i324.i ; 5 uses
  %i.amd = getelementptr inbounds nuw i8, ptr %i.amc, i64 56
  %i.ame = load ptr, ptr %i.amd, align 8          ; 2 uses
  %.not.i.i325.i = icmp eq ptr %i.ame, null
  br i1 %.not.i.i325.i, label %bb.gh, label %bb.gg

bb.gg:                                            ; preds = %bb.gf
  call void @SDL_free_REAL(ptr noundef nonnull %i.ame) #13
  %i.amf = getelementptr inbounds nuw i8, ptr %i.amc, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amf, i8 0, i64 16, i1 false)
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gg, %bb.gf
  %i.amg = getelementptr inbounds nuw i8, ptr %i.amc, i64 64 ; 2 uses
  %i.amh = load ptr, ptr %i.amg, align 8          ; 2 uses
  %.not28.i.i326.i = icmp eq ptr %i.amh, null
  br i1 %.not28.i.i326.i, label %bb.gj, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  call void @SDL_free_REAL(ptr noundef nonnull %i.amh) #13
  store ptr null, ptr %i.amg, align 8
  %i.ami = getelementptr inbounds nuw i8, ptr %i.amc, i64 80
  store ptr null, ptr %i.ami, align 8
  br label %bb.gj

bb.gj:                                            ; preds = %bb.gi, %bb.gh
  %i.amj = getelementptr inbounds nuw i8, ptr %i.amc, i64 72 ; 2 uses
  %i.amk = load ptr, ptr %i.amj, align 8          ; 2 uses
  %.not29.i.i327.i = icmp eq ptr %i.amk, null
  br i1 %.not29.i.i327.i, label %bb.gl, label %bb.gk

bb.gk:                                            ; preds = %bb.gj
  call void @SDL_free_REAL(ptr noundef nonnull %i.amk) #13
  store ptr null, ptr %i.amj, align 8
  br label %bb.gl

bb.gl:                                            ; preds = %bb.gk, %bb.gj
  %indvars.iv.next.i.i328.i = add nuw nsw i64 %indvars.iv.i.i324.i, 1 ; 2 uses
  %exitcond.not.i.i329.i = icmp eq i64 %indvars.iv.next.i.i328.i, %wide.trip.count.i.i323.i
  br i1 %exitcond.not.i.i329.i, label %stbi__cleanup_jpeg.exit330.i, label %bb.gf, !llvm.loop !2

stbi__cleanup_jpeg.exit330.i:                     ; preds = %bb.gl, %bb.ge
  %i.aml = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13) #13 ; 0 uses
  br label %bb.iy

bb.gm:                                            ; preds = %bb.gd
  br i1 %i.alh, label %bb.gn, label %bb.gv

bb.gn:                                            ; preds = %bb.gm
  %i.amm = icmp sgt i32 %i.akv, 0
  br i1 %i.amm, label %.lr.ph.i.i331.i, label %stbi__cleanup_jpeg.exit339.i

.lr.ph.i.i331.i:                                  ; preds = %bb.gn
  %wide.trip.count.i.i332.i = zext nneg i32 %i.akv to i64
  br label %bb.go

bb.go:                                            ; preds = %bb.gu, %.lr.ph.i.i331.i
  %indvars.iv.i.i333.i = phi i64 [ 0, %.lr.ph.i.i331.i ], [ %indvars.iv.next.i.i337.i, %bb.gu ] ; 2 uses
  %i.amn = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i333.i ; 5 uses
  %i.amo = getelementptr inbounds nuw i8, ptr %i.amn, i64 56
  %i.amp = load ptr, ptr %i.amo, align 8          ; 2 uses
  %.not.i.i334.i = icmp eq ptr %i.amp, null
  br i1 %.not.i.i334.i, label %bb.gq, label %bb.gp

bb.gp:                                            ; preds = %bb.go
  call void @SDL_free_REAL(ptr noundef nonnull %i.amp) #13
  %i.amq = getelementptr inbounds nuw i8, ptr %i.amn, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.amq, i8 0, i64 16, i1 false)
  br label %bb.gq

bb.gq:                                            ; preds = %bb.gp, %bb.go
  %i.amr = getelementptr inbounds nuw i8, ptr %i.amn, i64 64 ; 2 uses
  %i.ams = load ptr, ptr %i.amr, align 8          ; 2 uses
  %.not28.i.i335.i = icmp eq ptr %i.ams, null
  br i1 %.not28.i.i335.i, label %bb.gs, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  call void @SDL_free_REAL(ptr noundef nonnull %i.ams) #13
  store ptr null, ptr %i.amr, align 8
  %i.amt = getelementptr inbounds nuw i8, ptr %i.amn, i64 80
  store ptr null, ptr %i.amt, align 8
  br label %bb.gs

bb.gs:                                            ; preds = %bb.gr, %bb.gq
  %i.amu = getelementptr inbounds nuw i8, ptr %i.amn, i64 72 ; 2 uses
  %i.amv = load ptr, ptr %i.amu, align 8          ; 2 uses
  %.not29.i.i336.i = icmp eq ptr %i.amv, null
  br i1 %.not29.i.i336.i, label %bb.gu, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @SDL_free_REAL(ptr noundef nonnull %i.amv) #13
  store ptr null, ptr %i.amu, align 8
  br label %bb.gu

bb.gu:                                            ; preds = %bb.gt, %bb.gs
  %indvars.iv.next.i.i337.i = add nuw nsw i64 %indvars.iv.i.i333.i, 1 ; 2 uses
  %exitcond.not.i.i338.i = icmp eq i64 %indvars.iv.next.i.i337.i, %wide.trip.count.i.i332.i
  br i1 %exitcond.not.i.i338.i, label %stbi__cleanup_jpeg.exit339.i, label %bb.go, !llvm.loop !2

stbi__cleanup_jpeg.exit339.i:                     ; preds = %bb.gu, %bb.gn
  %i.amw = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.14) #13 ; 0 uses
  br label %bb.iy

bb.gv:                                            ; preds = %bb.gm
  %i.amx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 5 uses
  %i.amy = load i32, ptr %i.amx, align 8
  %i.amz = icmp eq i32 %i.amy, %i.alv
  br i1 %i.amz, label %bb.gw, label %.preheader63.i.i

.preheader63.i.i:                                 ; preds = %bb.gv
  %.not.i340.i = icmp eq i32 %i.aly, 0
  br i1 %.not.i340.i, label %.loopexit64.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader63.i.i
  %i.ana = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.anb = getelementptr inbounds nuw i8, ptr %i.d, i64 18128
  br label %bb.gx

bb.gw:                                            ; preds = %bb.gv
  %i.anc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.and = load ptr, ptr %i.anc, align 8
  %i.ane = getelementptr inbounds nuw i8, ptr %i.d, i64 18128
  %i.anf = load ptr, ptr %i.ane, align 8
  %i.ang = mul i32 %i.aly, %i.alv
  %i.anh = zext i32 %i.ang to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.and, ptr align 1 %i.anf, i64 %i.anh, i1 false)
  %.pre.i.i = load ptr, ptr %i.d, align 8         ; 2 uses
  %.phi.trans.insert576.i = getelementptr inbounds nuw i8, ptr %.pre.i.i, i64 4
  %.pre577.i = load i32, ptr %.phi.trans.insert576.i, align 4
  br label %.loopexit64.i.i

bb.gx:                                            ; preds = %bb.gx, %.lr.ph.i.i
  %i.ani = phi ptr [ %.pre.i, %.lr.ph.i.i ], [ %i.anv, %bb.gx ]
  %.06065.i.i = phi i32 [ 0, %.lr.ph.i.i ], [ %i.anu, %bb.gx ] ; 3 uses
  %i.anj = load ptr, ptr %i.ana, align 8
  %i.ank = load i32, ptr %i.amx, align 8
  %i.anl = mul i32 %i.ank, %.06065.i.i
  %i.anm = zext i32 %i.anl to i64
  %i.ann = getelementptr inbounds nuw i8, ptr %i.anj, i64 %i.anm
  %i.ano = load ptr, ptr %i.anb, align 8
  %i.anp = load i32, ptr %i.ani, align 8          ; 2 uses
  %i.anq = mul i32 %i.anp, %.06065.i.i
  %i.anr = zext i32 %i.anq to i64
  %i.ans = getelementptr inbounds nuw i8, ptr %i.ano, i64 %i.anr
  %i.ant = zext i32 %i.anp to i64
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ann, ptr align 1 %i.ans, i64 %i.ant, i1 false)
  %i.anu = add nuw i32 %.06065.i.i, 1             ; 2 uses
  %i.anv = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.anw = getelementptr inbounds nuw i8, ptr %i.anv, i64 4
  %i.anx = load i32, ptr %i.anw, align 4          ; 2 uses
  %i.any = icmp ult i32 %i.anu, %i.anx
  br i1 %i.any, label %bb.gx, label %.loopexit64.i.i, !llvm.loop !69

.loopexit64.i.i:                                  ; preds = %bb.gx, %bb.gw, %.preheader63.i.i
  %i.anz = phi i32 [ %.pre577.i, %bb.gw ], [ 0, %.preheader63.i.i ], [ %i.anx, %bb.gx ]
  %i.aoa = phi ptr [ %.pre.i.i, %bb.gw ], [ %.pre.i, %.preheader63.i.i ], [ %i.anv, %bb.gx ] ; 6 uses
  %i.aob = getelementptr inbounds nuw i8, ptr %i.aoa, i64 8
  %i.aoc = load i32, ptr %i.aob, align 8
  %i.aod = icmp eq i32 %i.aoc, 3
  %i.aoe = add i32 %i.anz, 1
  %.not77.i.i = icmp ult i32 %i.aoe, 2            ; 2 uses
  br i1 %i.aod, label %bb.gy, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.loopexit64.i.i
  br i1 %.not77.i.i, label %output_jpeg_nv12.exit.i, label %.lr.ph67.i.i

.lr.ph67.i.i:                                     ; preds = %.preheader.i.i
  %i.aof = getelementptr inbounds nuw i8, ptr %5, i64 24
  br label %bb.ha

bb.gy:                                            ; preds = %.loopexit64.i.i
  br i1 %.not77.i.i, label %output_jpeg_nv12.exit.i, label %.lr.ph75.i.i

.lr.ph75.i.i:                                     ; preds = %bb.gy
  %i.aog = getelementptr inbounds nuw i8, ptr %i.d, i64 18056
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.d, i64 18276
  %i.aoi = getelementptr inbounds nuw i8, ptr %i.d, i64 18180
  %i.aoj = load <2 x i32>, ptr %i.aog, align 8
  %i.aok = shufflevector <2 x i32> %i.aoj, <2 x i32> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.aol = load <2 x i32>, ptr %i.aoh, align 4
  %i.aom = load <2 x i32>, ptr %i.aoi, align 4
  %i.aon = shufflevector <2 x i32> %i.aol, <2 x i32> %i.aom, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.aoo = sdiv <4 x i32> %i.aok, %i.aon          ; 3 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.d, i64 18224
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.d, i64 18204
  %i.aor = getelementptr inbounds nuw i8, ptr %i.d, i64 18320
  %i.aos = shufflevector <4 x i32> %i.aoo, <4 x i32> poison, <2 x i32> <i32 3, i32 1>
  %i.aot = sub <2 x i32> splat (i32 3), %i.aos    ; 2 uses
  %i.aou = getelementptr inbounds nuw i8, ptr %i.d, i64 18300 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.aow = extractelement <4 x i32> %i.aoo, i64 2
  %i.aox = sub i32 3, %i.aow
  %i.aoy = sext i32 %i.aox to i64
  %i.aoz = extractelement <4 x i32> %i.aoo, i64 0
  %i.apa = sub i32 3, %i.aoz
  %i.apb = sext i32 %i.apa to i64
  %.pre81.i.i = load ptr, ptr %i.aov, align 8
  %.pre83.i.i = load i32, ptr %i.amx, align 8
  %.pre85.i.i = load i32, ptr %i.aou, align 4
  %.pre80.i.i.a = load i32, ptr %i.aoa, align 8
  %i.apc = extractelement <2 x i32> %i.aot, i64 0
  %i.apd = extractelement <2 x i32> %i.aot, i64 1
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge.i.i, %.lr.ph75.i.i
  %7 = phi i32 [ %.pre80.i.i.a, %.lr.ph75.i.i ], [ %10, %._crit_edge.i.i ] ; 2 uses
  %8 = phi i32 [ %.pre85.i.i, %.lr.ph75.i.i ], [ %11, %._crit_edge.i.i ] ; 2 uses
  %9 = phi ptr [ %i.aoa, %.lr.ph75.i.i ], [ %12, %._crit_edge.i.i ]
  %i.ape = phi i32 [ %.pre83.i.i, %.lr.ph75.i.i ], [ %i.aqh, %._crit_edge.i.i ] ; 2 uses
  %i.apf = phi ptr [ %.pre81.i.i, %.lr.ph75.i.i ], [ %i.aqi, %._crit_edge.i.i ] ; 2 uses
  %.173.i.i = phi i32 [ 0, %.lr.ph75.i.i ], [ %i.aqj, %._crit_edge.i.i ] ; 4 uses
  %i.apg = add i32 %7, 1
  %.not78.i.i = icmp ult i32 %i.apg, 2
  br i1 %.not78.i.i, label %._crit_edge.i.i, label %.lr.ph72.preheader.i.i

.lr.ph72.preheader.i.i:                           ; preds = %bb.gz
  %i.aph = mul i32 %.173.i.i, %i.ape
  %i.api = zext i32 %i.aph to i64
  %i.apj = getelementptr inbounds nuw i8, ptr %i.apf, i64 %i.api
  %i.apk = load ptr, ptr %i.aor, align 8
  %i.apl = mul i32 %8, %i.apd
  %i.apm = mul i32 %i.apl, %.173.i.i
  %i.apn = zext i32 %i.apm to i64
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apk, i64 %i.apn
  %i.app = load ptr, ptr %i.aop, align 8
  %i.apq = mul i32 %.173.i.i, %i.apc
  %i.apr = load i32, ptr %i.aoq, align 4
  %i.aps = mul i32 %i.apq, %i.apr
  %i.apt = zext i32 %i.aps to i64
  %i.apu = getelementptr inbounds nuw i8, ptr %i.app, i64 %i.apt
  br label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i, %.lr.ph72.preheader.i.i
  %.071.i.i = phi ptr [ %i.apz, %.lr.ph72.i.i ], [ %i.apj, %.lr.ph72.preheader.i.i ] ; 3 uses
  %.05770.i.i = phi ptr [ %i.aqa, %.lr.ph72.i.i ], [ %i.apo, %.lr.ph72.preheader.i.i ] ; 2 uses
  %.05869.i.i = phi ptr [ %i.apx, %.lr.ph72.i.i ], [ %i.apu, %.lr.ph72.preheader.i.i ] ; 2 uses
  %.05968.i.i = phi i32 [ %i.aqb, %.lr.ph72.i.i ], [ 0, %.lr.ph72.preheader.i.i ]
  %i.apv = load i8, ptr %.05869.i.i, align 1
  %i.apw = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 1
  store i8 %i.apv, ptr %.071.i.i, align 1
  %i.apx = getelementptr inbounds i8, ptr %.05869.i.i, i64 %i.aoy
  %i.apy = load i8, ptr %.05770.i.i, align 1
  %i.apz = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 2
  store i8 %i.apy, ptr %i.apw, align 1
  %i.aqa = getelementptr inbounds i8, ptr %.05770.i.i, i64 %i.apb
  %i.aqb = add nuw nsw i32 %.05968.i.i, 1         ; 2 uses
  %i.aqc = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aqd = load i32, ptr %i.aqc, align 8          ; 2 uses
  %i.aqe = add i32 %i.aqd, 1
  %i.aqf = lshr i32 %i.aqe, 1
  %i.aqg = icmp samesign ult i32 %i.aqb, %i.aqf
  br i1 %i.aqg, label %.lr.ph72.i.i, label %._crit_edge.loopexit.i.i, !llvm.loop !70

._crit_edge.loopexit.i.i:                         ; preds = %.lr.ph72.i.i
  %.pre80.i.i = load ptr, ptr %i.aov, align 8
  %.pre82.i.i = load i32, ptr %i.amx, align 8
  %.pre84.i.i = load i32, ptr %i.aou, align 4
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %._crit_edge.loopexit.i.i, %bb.gz
  %10 = phi i32 [ %i.aqd, %._crit_edge.loopexit.i.i ], [ %7, %bb.gz ]
  %11 = phi i32 [ %.pre84.i.i, %._crit_edge.loopexit.i.i ], [ %8, %bb.gz ]
  %12 = phi ptr [ %i.aqc, %._crit_edge.loopexit.i.i ], [ %9, %bb.gz ] ; 3 uses
  %i.aqh = phi i32 [ %.pre82.i.i, %._crit_edge.loopexit.i.i ], [ %i.ape, %bb.gz ]
  %i.aqi = phi ptr [ %.pre80.i.i, %._crit_edge.loopexit.i.i ], [ %i.apf, %bb.gz ]
  %i.aqj = add nuw nsw i32 %.173.i.i, 1           ; 2 uses
  %i.aqk = getelementptr inbounds nuw i8, ptr %12, i64 4
  %i.aql = load i32, ptr %i.aqk, align 4
  %i.aqm = add i32 %i.aql, 1
  %i.aqn = lshr i32 %i.aqm, 1
  %i.aqo = icmp samesign ult i32 %i.aqj, %i.aqn
  br i1 %i.aqo, label %bb.gz, label %output_jpeg_nv12.exit.i, !llvm.loop !71

bb.ha:                                            ; preds = %bb.ha, %.lr.ph67.i.i
  %i.aqp = phi ptr [ %i.aoa, %.lr.ph67.i.i ], [ %i.ara, %bb.ha ]
  %.266.i.i = phi i32 [ 0, %.lr.ph67.i.i ], [ %i.aqz, %bb.ha ] ; 2 uses
  %i.aqq = load ptr, ptr %i.aof, align 8
  %i.aqr = load i32, ptr %i.amx, align 8
  %i.aqs = mul i32 %i.aqr, %.266.i.i
  %i.aqt = zext i32 %i.aqs to i64
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqq, i64 %i.aqt
  %i.aqv = load i32, ptr %i.aqp, align 8
  %i.aqw = add i32 %i.aqv, 1
  %i.aqx = and i32 %i.aqw, -2
  %i.aqy = zext i32 %i.aqx to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.aqu, i8 -128, i64 %i.aqy, i1 false)
  %i.aqz = add nuw nsw i32 %.266.i.i, 1           ; 2 uses
  %i.ara = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %i.ara, i64 4
  %i.arc = load i32, ptr %i.arb, align 4
  %i.ard = add i32 %i.arc, 1
  %i.are = lshr i32 %i.ard, 1
  %i.arf = icmp samesign ult i32 %i.aqz, %i.are
  br i1 %i.arf, label %bb.ha, label %output_jpeg_nv12.exit.i, !llvm.loop !72

output_jpeg_nv12.exit.i:                          ; preds = %bb.ha, %._crit_edge.i.i, %bb.gy, %.preheader.i.i
  %i.arg = phi ptr [ %12, %._crit_edge.i.i ], [ %i.aoa, %bb.gy ], [ %i.aoa, %.preheader.i.i ], [ %i.ara, %bb.ha ]
  %i.arh = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ari = load ptr, ptr %i.arh, align 8
  br label %.loopexit398.i

bb.hb:                                            ; preds = %.thread374.i, %.lr.ph.i
  %i.arj = phi i32 [ %.pre578.i, %.lr.ph.i ], [ %i.asn, %.thread374.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread374.i ] ; 3 uses
  %i.ark = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i ; 7 uses
  %i.arl = add i32 %i.arj, 3
  %i.arm = zext i32 %i.arl to i64
  %i.arn = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.arm) #13 ; 2 uses
  %i.aro = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.arp = getelementptr inbounds nuw i8, ptr %i.aro, i64 72
  store ptr %i.arn, ptr %i.arp, align 8
  %.not303.not.i = icmp eq ptr %i.arn, null
  br i1 %.not303.not.i, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %i.arq = load ptr, ptr %i.d, align 8
  %i.arr = getelementptr inbounds nuw i8, ptr %i.arq, i64 8
  %i.ars = load i32, ptr %i.arr, align 8          ; 2 uses
  %i.art = icmp sgt i32 %i.ars, 0
  br i1 %i.art, label %.lr.ph.i.i341.i, label %.thread375.i

.thread375.i:                                     ; preds = %bb.hc
  %i.aru = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph.i.i341.i:                                  ; preds = %bb.hc
  %wide.trip.count.i.i342.i = zext nneg i32 %i.ars to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hj, %.lr.ph.i.i341.i
  %indvars.iv.i.i343.i = phi i64 [ 0, %.lr.ph.i.i341.i ], [ %indvars.iv.next.i.i347.i, %bb.hj ] ; 2 uses
  %i.arv = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i343.i ; 5 uses
  %i.arw = getelementptr inbounds nuw i8, ptr %i.arv, i64 56
  %i.arx = load ptr, ptr %i.arw, align 8          ; 2 uses
  %.not.i.i344.i = icmp eq ptr %i.arx, null
  br i1 %.not.i.i344.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @SDL_free_REAL(ptr noundef nonnull %i.arx) #13
  %i.ary = getelementptr inbounds nuw i8, ptr %i.arv, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ary, i8 0, i64 16, i1 false)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.arz = getelementptr inbounds nuw i8, ptr %i.arv, i64 64 ; 2 uses
  %i.asa = load ptr, ptr %i.arz, align 8          ; 2 uses
  %.not28.i.i345.i = icmp eq ptr %i.asa, null
  br i1 %.not28.i.i345.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @SDL_free_REAL(ptr noundef nonnull %i.asa) #13
  store ptr null, ptr %i.arz, align 8
  %i.asb = getelementptr inbounds nuw i8, ptr %i.arv, i64 80
  store ptr null, ptr %i.asb, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.asc = getelementptr inbounds nuw i8, ptr %i.arv, i64 72 ; 2 uses
  %i.asd = load ptr, ptr %i.asc, align 8          ; 2 uses
  %.not29.i.i346.i = icmp eq ptr %i.asd, null
  br i1 %.not29.i.i346.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @SDL_free_REAL(ptr noundef nonnull %i.asd) #13
  store ptr null, ptr %i.asc, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %indvars.iv.next.i.i347.i = add nuw nsw i64 %indvars.iv.i.i343.i, 1 ; 2 uses
  %exitcond.not.i.i348.i = icmp eq i64 %indvars.iv.next.i.i347.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i.i348.i, label %bb.ho, label %bb.hd, !llvm.loop !2

bb.hk:                                            ; preds = %bb.hb
  %i.ase = getelementptr inbounds nuw i8, ptr %i.aro, i64 4
  %i.asf = getelementptr inbounds nuw i8, ptr %i.ark, i64 24
  %i.asg = load <2 x i32>, ptr %i.alu, align 8
  %i.ash = load <2 x i32>, ptr %i.ase, align 4
  %i.asi = sdiv <2 x i32> %i.asg, %i.ash          ; 3 uses
  store <2 x i32> %i.asi, ptr %i.asf, align 8
  %i.asj = extractelement <2 x i32> %i.asi, i64 1 ; 4 uses
  %i.ask = ashr i32 %i.asj, 1
  %i.asl = getelementptr inbounds nuw i8, ptr %i.ark, i64 36
  store i32 %i.ask, ptr %i.asl, align 4
  %i.asm = load ptr, ptr %i.d, align 8            ; 7 uses
  %i.asn = load i32, ptr %i.asm, align 8          ; 6 uses
  %i.aso = extractelement <2 x i32> %i.asi, i64 0 ; 3 uses
  %i.asp = add i32 %i.aso, -1
  %i.asq = add i32 %i.asp, %i.asn
  %i.asr = udiv i32 %i.asq, %i.aso
  %i.ass = getelementptr inbounds nuw i8, ptr %i.ark, i64 32
  store i32 %i.asr, ptr %i.ass, align 16
  %i.ast = getelementptr inbounds nuw i8, ptr %i.ark, i64 40
  store i32 0, ptr %i.ast, align 8
  %i.asu = getelementptr inbounds nuw i8, ptr %i.aro, i64 48
  %i.asv = load ptr, ptr %i.asu, align 8          ; 2 uses
  %i.asw = getelementptr inbounds nuw i8, ptr %i.ark, i64 16
  store ptr %i.asv, ptr %i.asw, align 16
  %i.asx = getelementptr inbounds nuw i8, ptr %i.ark, i64 8
  store ptr %i.asv, ptr %i.asx, align 8
  switch i32 %i.aso, label %.thread373.i [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %switch.selectcmp.i = icmp eq i32 %i.asj, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp779.i = icmp eq i32 %i.asj, 1
  %switch.select780.i = select i1 %switch.selectcmp779.i, ptr @resample_row_1, ptr %switch.select.i
  br label %.thread374.i

bb.hm:                                            ; preds = %bb.hk
  switch i32 %i.asj, label %.thread373.i [
    i32 1, label %.thread374.i
    i32 2, label %bb.hn
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.asy = load ptr, ptr %i.i, align 8
  br label %.thread374.i

.thread373.i:                                     ; preds = %bb.hm, %bb.hk
  br label %.thread374.i

bb.ho:                                            ; preds = %bb.hj
  %i.asz = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.thread374.i:                                     ; preds = %.thread373.i, %bb.hn, %bb.hm, %bb.hl
  %stbi__resample_row_v_2.sink.i = phi ptr [ %switch.select780.i, %bb.hl ], [ %i.asy, %bb.hn ], [ @stbi__resample_row_generic, %.thread373.i ], [ @stbi__resample_row_h_2, %bb.hm ]
  store ptr %stbi__resample_row_v_2.sink.i, ptr %i.ark, align 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hb, !llvm.loop !73

._crit_edge.i:                                    ; preds = %.thread374.i
  %.phi.trans.insert580.i = getelementptr inbounds nuw i8, ptr %i.asm, i64 4
  %.pre581.i = load i32, ptr %.phi.trans.insert580.i, align 4 ; 4 uses
  %or.cond.not.i.i.i.i = icmp sgt i32 %i.asn, -1
  br i1 %or.cond.not.i.i.i.i, label %bb.hp, label %stbi__malloc_mad3.exit.thread.i

bb.hp:                                            ; preds = %._crit_edge.i
  %i.ata = icmp eq i32 %i.asn, 0
  br i1 %i.ata, label %stbi__mul2sizes_valid.exit.thread15.i.i.i, label %stbi__mul2sizes_valid.exit.i.i.i

stbi__mul2sizes_valid.exit.i.i.i:                 ; preds = %bb.hp
  %i.atb = udiv i32 2147483647, %i.asn
  %.not23.i.i.i = icmp samesign ugt i32 %i.akx, %i.atb
  br i1 %.not23.i.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mul2sizes_valid.exit.thread15.i.i.i

stbi__mul2sizes_valid.exit.thread15.i.i.i:        ; preds = %stbi__mul2sizes_valid.exit.i.i.i, %bb.hp
  %i.atc = mul nuw nsw i32 %i.asn, %i.akx         ; 3 uses
  %i.atd = or i32 %.pre581.i, %i.atc
  %or.cond.not.i10.i.i.i = icmp sgt i32 %i.atd, -1
  br i1 %or.cond.not.i10.i.i.i, label %bb.hq, label %stbi__malloc_mad3.exit.thread.i

bb.hq:                                            ; preds = %stbi__mul2sizes_valid.exit.thread15.i.i.i
  %i.ate = icmp eq i32 %.pre581.i, 0
  br i1 %i.ate, label %stbi__mad3sizes_valid.exit.i.i, label %stbi__mul2sizes_valid.exit12.i.i.i

stbi__mul2sizes_valid.exit12.i.i.i:               ; preds = %bb.hq
  %i.atf = udiv i32 2147483647, %.pre581.i
  %.not.i.i350.i = icmp sgt i32 %i.atc, %i.atf
  br i1 %.not.i.i350.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__mad3sizes_valid.exit.i.i

stbi__mad3sizes_valid.exit.i.i:                   ; preds = %stbi__mul2sizes_valid.exit12.i.i.i, %bb.hq
  %i.atg = mul nuw nsw i32 %.pre581.i, %i.atc     ; 2 uses
  %.not9.i.i = icmp eq i32 %i.atg, 2147483647
  br i1 %.not9.i.i, label %stbi__malloc_mad3.exit.thread.i, label %stbi__malloc_mad3.exit.i

stbi__malloc_mad3.exit.i:                         ; preds = %stbi__mad3sizes_valid.exit.i.i
  %i.ath = add nsw i32 %i.atg, 1
  %i.ati = sext i32 %i.ath to i64
  %i.atj = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.ati) #13 ; 4 uses
  %.not299.i = icmp eq ptr %i.atj, null
  %.pre583.i = load ptr, ptr %i.d, align 8        ; 4 uses
  br i1 %.not299.i, label %stbi__malloc_mad3.exit.thread.i, label %.preheader397.i

.preheader397.i:                                  ; preds = %stbi__malloc_mad3.exit.i
  %i.atk = getelementptr inbounds nuw i8, ptr %.pre583.i, i64 4
  %i.atl = load i32, ptr %i.atk, align 4
  %.not.i = icmp eq i32 %i.atl, 0
  br i1 %.not.i, label %.loopexit398.i, label %.lr.ph477.i

.lr.ph477.i:                                      ; preds = %.preheader397.i
  %i.atm = getelementptr inbounds nuw i8, ptr %i.d, i64 18508 ; 2 uses
  %i.atn = icmp eq i32 %i.akx, 1                  ; 2 uses
  %i.ato = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 4 uses
  %i.atp = zext nneg i32 %i.akx to i64            ; 6 uses
  %i.atq = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 7 uses
  %i.atr = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 7 uses
  br label %.lr.ph444.preheader.i

stbi__malloc_mad3.exit.thread.i:                  ; preds = %stbi__malloc_mad3.exit.i, %stbi__mad3sizes_valid.exit.i.i, %stbi__mul2sizes_valid.exit12.i.i.i, %stbi__mul2sizes_valid.exit.thread15.i.i.i, %stbi__mul2sizes_valid.exit.i.i.i, %._crit_edge.i
  %i.ats = phi ptr [ %i.asm, %stbi__mul2sizes_valid.exit.thread15.i.i.i ], [ %i.asm, %._crit_edge.i ], [ %i.asm, %stbi__mul2sizes_valid.exit.i.i.i ], [ %i.asm, %stbi__mul2sizes_valid.exit12.i.i.i ], [ %i.asm, %stbi__mad3sizes_valid.exit.i.i ], [ %.pre583.i, %stbi__malloc_mad3.exit.i ]
  %i.att = getelementptr inbounds nuw i8, ptr %i.ats, i64 8
  %i.atu = load i32, ptr %i.att, align 8          ; 2 uses
end_hunk_0
