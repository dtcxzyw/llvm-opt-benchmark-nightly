Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sdl/original/SDL_stb?download=true
inline.NumInlined: 380
inline.NumDeleted: 85
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 59
loop-unroll.NumUnrolled: 86
begin_hunk_0_@stbi__jpeg_load:bb.a
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
  %i.amx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 4 uses
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
  br i1 %i.any, label %bb.gx, label %.loopexit64.i.i, !llvm.loop !74

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
  %i.aoo = sdiv <4 x i32> %i.aok, %i.aon          ; 4 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.d, i64 18224
  %7 = extractelement <4 x i32> %i.aoo, i64 3
  %8 = sub i32 3, %7
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.d, i64 18204
  %i.aor = getelementptr inbounds nuw i8, ptr %i.d, i64 18320
  %9 = extractelement <4 x i32> %i.aoo, i64 1
  %10 = sub i32 3, %9
  %i.aos = getelementptr inbounds nuw i8, ptr %i.d, i64 18300
  %i.aot = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.aou = extractelement <4 x i32> %i.aoo, i64 2
  %i.aov = sub i32 3, %i.aou
  %i.aow = sext i32 %i.aov to i64
  %i.aox = extractelement <4 x i32> %i.aoo, i64 0
  %i.aoy = sub i32 3, %i.aox
  %i.aoz = sext i32 %i.aoy to i64
  %.pre80.i.i = load i32, ptr %i.aoa, align 8
  br label %bb.gz

bb.gz:                                            ; preds = %._crit_edge.i.i, %.lr.ph75.i.i
  %i.apa = phi i32 [ %.pre80.i.i, %.lr.ph75.i.i ], [ %i.aqg, %._crit_edge.i.i ] ; 2 uses
  %i.apb = phi ptr [ %i.aoa, %.lr.ph75.i.i ], [ %i.aqh, %._crit_edge.i.i ]
  %.173.i.i = phi i32 [ 0, %.lr.ph75.i.i ], [ %i.aqi, %._crit_edge.i.i ] ; 4 uses
  %i.apc = add i32 %i.apa, 1
  %.not78.i.i = icmp ult i32 %i.apc, 2
  br i1 %.not78.i.i, label %._crit_edge.i.i, label %.lr.ph72.preheader.i.i

.lr.ph72.preheader.i.i:                           ; preds = %bb.gz
  %i.apd = load ptr, ptr %i.aot, align 8
  %i.ape = load i32, ptr %i.amx, align 8
  %i.apf = mul i32 %i.ape, %.173.i.i
  %i.apg = zext i32 %i.apf to i64
  %i.aph = getelementptr inbounds nuw i8, ptr %i.apd, i64 %i.apg
  %i.api = load ptr, ptr %i.aor, align 8
  %i.apj = mul i32 %.173.i.i, %10
  %i.apk = load i32, ptr %i.aos, align 4
  %i.apl = mul i32 %i.apj, %i.apk
  %i.apm = zext i32 %i.apl to i64
  %i.apn = getelementptr inbounds nuw i8, ptr %i.api, i64 %i.apm
  %i.apo = load ptr, ptr %i.aop, align 8
  %i.app = mul i32 %.173.i.i, %8
  %i.apq = load i32, ptr %i.aoq, align 4
  %i.apr = mul i32 %i.app, %i.apq
  %i.aps = zext i32 %i.apr to i64
  %i.apt = getelementptr inbounds nuw i8, ptr %i.apo, i64 %i.aps
  br label %.lr.ph72.i.i

.lr.ph72.i.i:                                     ; preds = %.lr.ph72.i.i, %.lr.ph72.preheader.i.i
  %.071.i.i = phi ptr [ %i.apy, %.lr.ph72.i.i ], [ %i.aph, %.lr.ph72.preheader.i.i ] ; 3 uses
  %.05770.i.i = phi ptr [ %i.apz, %.lr.ph72.i.i ], [ %i.apn, %.lr.ph72.preheader.i.i ] ; 2 uses
  %.05869.i.i = phi ptr [ %i.apw, %.lr.ph72.i.i ], [ %i.apt, %.lr.ph72.preheader.i.i ] ; 2 uses
  %.05968.i.i = phi i32 [ %i.aqa, %.lr.ph72.i.i ], [ 0, %.lr.ph72.preheader.i.i ]
  %i.apu = load i8, ptr %.05869.i.i, align 1
  %i.apv = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 1
  store i8 %i.apu, ptr %.071.i.i, align 1
  %i.apw = getelementptr inbounds i8, ptr %.05869.i.i, i64 %i.aow
  %i.apx = load i8, ptr %.05770.i.i, align 1
  %i.apy = getelementptr inbounds nuw i8, ptr %.071.i.i, i64 2
  store i8 %i.apx, ptr %i.apv, align 1
  %i.apz = getelementptr inbounds i8, ptr %.05770.i.i, i64 %i.aoz
  %i.aqa = add nuw nsw i32 %.05968.i.i, 1         ; 2 uses
  %i.aqb = load ptr, ptr %i.d, align 8            ; 2 uses
  %i.aqc = load i32, ptr %i.aqb, align 8          ; 2 uses
  %i.aqd = add i32 %i.aqc, 1
  %i.aqe = lshr i32 %i.aqd, 1
  %i.aqf = icmp samesign ult i32 %i.aqa, %i.aqe
  br i1 %i.aqf, label %.lr.ph72.i.i, label %._crit_edge.i.i, !llvm.loop !75

._crit_edge.i.i:                                  ; preds = %.lr.ph72.i.i, %bb.gz
  %i.aqg = phi i32 [ %i.apa, %bb.gz ], [ %i.aqc, %.lr.ph72.i.i ]
  %i.aqh = phi ptr [ %i.apb, %bb.gz ], [ %i.aqb, %.lr.ph72.i.i ] ; 3 uses
  %i.aqi = add nuw nsw i32 %.173.i.i, 1           ; 2 uses
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqh, i64 4
  %i.aqk = load i32, ptr %i.aqj, align 4
  %i.aql = add i32 %i.aqk, 1
  %i.aqm = lshr i32 %i.aql, 1
  %i.aqn = icmp samesign ult i32 %i.aqi, %i.aqm
  br i1 %i.aqn, label %bb.gz, label %output_jpeg_nv12.exit.i, !llvm.loop !76

bb.ha:                                            ; preds = %bb.ha, %.lr.ph67.i.i
  %i.aqo = phi ptr [ %i.aoa, %.lr.ph67.i.i ], [ %i.aqz, %bb.ha ]
  %.266.i.i = phi i32 [ 0, %.lr.ph67.i.i ], [ %i.aqy, %bb.ha ] ; 2 uses
  %i.aqp = load ptr, ptr %i.aof, align 8
  %i.aqq = load i32, ptr %i.amx, align 8
  %i.aqr = mul i32 %i.aqq, %.266.i.i
  %i.aqs = zext i32 %i.aqr to i64
  %i.aqt = getelementptr inbounds nuw i8, ptr %i.aqp, i64 %i.aqs
  %i.aqu = load i32, ptr %i.aqo, align 8
  %i.aqv = add i32 %i.aqu, 1
  %i.aqw = and i32 %i.aqv, -2
  %i.aqx = zext i32 %i.aqw to i64
  call void @llvm.memset.p0.i64(ptr align 1 %i.aqt, i8 -128, i64 %i.aqx, i1 false)
  %i.aqy = add nuw nsw i32 %.266.i.i, 1           ; 2 uses
  %i.aqz = load ptr, ptr %i.d, align 8            ; 3 uses
  %i.ara = getelementptr inbounds nuw i8, ptr %i.aqz, i64 4
  %i.arb = load i32, ptr %i.ara, align 4
  %i.arc = add i32 %i.arb, 1
  %i.ard = lshr i32 %i.arc, 1
  %i.are = icmp samesign ult i32 %i.aqy, %i.ard
  br i1 %i.are, label %bb.ha, label %output_jpeg_nv12.exit.i, !llvm.loop !77

output_jpeg_nv12.exit.i:                          ; preds = %bb.ha, %._crit_edge.i.i, %bb.gy, %.preheader.i.i
  %i.arf = phi ptr [ %i.aqh, %._crit_edge.i.i ], [ %i.aoa, %bb.gy ], [ %i.aoa, %.preheader.i.i ], [ %i.aqz, %bb.ha ]
  %i.arg = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.arh = load ptr, ptr %i.arg, align 8
  br label %.loopexit398.i

bb.hb:                                            ; preds = %.thread374.i, %.lr.ph.i
  %i.ari = phi i32 [ %.pre578.i, %.lr.ph.i ], [ %i.asm, %.thread374.i ]
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %.thread374.i ] ; 3 uses
  %i.arj = getelementptr inbounds nuw [48 x i8], ptr %6, i64 %indvars.iv.i ; 7 uses
  %i.ark = add i32 %i.ari, 3
  %i.arl = zext i32 %i.ark to i64
  %i.arm = call noalias ptr @SDL_malloc_REAL(i64 noundef range(i64 -2147483648, 4294967296) %i.arl) #13 ; 2 uses
  %i.arn = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i ; 3 uses
  %i.aro = getelementptr inbounds nuw i8, ptr %i.arn, i64 72
  store ptr %i.arm, ptr %i.aro, align 8
  %.not303.not.i = icmp eq ptr %i.arm, null
  br i1 %.not303.not.i, label %bb.hc, label %bb.hk

bb.hc:                                            ; preds = %bb.hb
  %i.arp = load ptr, ptr %i.d, align 8
  %i.arq = getelementptr inbounds nuw i8, ptr %i.arp, i64 8
  %i.arr = load i32, ptr %i.arq, align 8          ; 2 uses
  %i.ars = icmp sgt i32 %i.arr, 0
  br i1 %i.ars, label %.lr.ph.i.i341.i, label %.thread375.i

.thread375.i:                                     ; preds = %bb.hc
  %i.art = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.lr.ph.i.i341.i:                                  ; preds = %bb.hc
  %wide.trip.count.i.i342.i = zext nneg i32 %i.arr to i64
  br label %bb.hd

bb.hd:                                            ; preds = %bb.hj, %.lr.ph.i.i341.i
  %indvars.iv.i.i343.i = phi i64 [ 0, %.lr.ph.i.i341.i ], [ %indvars.iv.next.i.i347.i, %bb.hj ] ; 2 uses
  %i.aru = getelementptr inbounds nuw [96 x i8], ptr %i.k, i64 %indvars.iv.i.i343.i ; 5 uses
  %i.arv = getelementptr inbounds nuw i8, ptr %i.aru, i64 56
  %i.arw = load ptr, ptr %i.arv, align 8          ; 2 uses
  %.not.i.i344.i = icmp eq ptr %i.arw, null
  br i1 %.not.i.i344.i, label %bb.hf, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @SDL_free_REAL(ptr noundef nonnull %i.arw) #13
  %i.arx = getelementptr inbounds nuw i8, ptr %i.aru, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.arx, i8 0, i64 16, i1 false)
  br label %bb.hf

bb.hf:                                            ; preds = %bb.he, %bb.hd
  %i.ary = getelementptr inbounds nuw i8, ptr %i.aru, i64 64 ; 2 uses
  %i.arz = load ptr, ptr %i.ary, align 8          ; 2 uses
  %.not28.i.i345.i = icmp eq ptr %i.arz, null
  br i1 %.not28.i.i345.i, label %bb.hh, label %bb.hg

bb.hg:                                            ; preds = %bb.hf
  call void @SDL_free_REAL(ptr noundef nonnull %i.arz) #13
  store ptr null, ptr %i.ary, align 8
  %i.asa = getelementptr inbounds nuw i8, ptr %i.aru, i64 80
  store ptr null, ptr %i.asa, align 8
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hg, %bb.hf
  %i.asb = getelementptr inbounds nuw i8, ptr %i.aru, i64 72 ; 2 uses
  %i.asc = load ptr, ptr %i.asb, align 8          ; 2 uses
  %.not29.i.i346.i = icmp eq ptr %i.asc, null
  br i1 %.not29.i.i346.i, label %bb.hj, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  call void @SDL_free_REAL(ptr noundef nonnull %i.asc) #13
  store ptr null, ptr %i.asb, align 8
  br label %bb.hj

bb.hj:                                            ; preds = %bb.hi, %bb.hh
  %indvars.iv.next.i.i347.i = add nuw nsw i64 %indvars.iv.i.i343.i, 1 ; 2 uses
  %exitcond.not.i.i348.i = icmp eq i64 %indvars.iv.next.i.i347.i, %wide.trip.count.i.i342.i
  br i1 %exitcond.not.i.i348.i, label %bb.ho, label %bb.hd, !llvm.loop !2

bb.hk:                                            ; preds = %bb.hb
  %i.asd = getelementptr inbounds nuw i8, ptr %i.arn, i64 4
  %i.ase = getelementptr inbounds nuw i8, ptr %i.arj, i64 24
  %i.asf = load <2 x i32>, ptr %i.alu, align 8
  %i.asg = load <2 x i32>, ptr %i.asd, align 4
  %i.ash = sdiv <2 x i32> %i.asf, %i.asg          ; 3 uses
  store <2 x i32> %i.ash, ptr %i.ase, align 8
  %i.asi = extractelement <2 x i32> %i.ash, i64 1 ; 4 uses
  %i.asj = ashr i32 %i.asi, 1
  %i.ask = getelementptr inbounds nuw i8, ptr %i.arj, i64 36
  store i32 %i.asj, ptr %i.ask, align 4
  %i.asl = load ptr, ptr %i.d, align 8            ; 7 uses
  %i.asm = load i32, ptr %i.asl, align 8          ; 6 uses
  %i.asn = extractelement <2 x i32> %i.ash, i64 0 ; 3 uses
  %i.aso = add i32 %i.asn, -1
  %i.asp = add i32 %i.aso, %i.asm
  %i.asq = udiv i32 %i.asp, %i.asn
  %i.asr = getelementptr inbounds nuw i8, ptr %i.arj, i64 32
  store i32 %i.asq, ptr %i.asr, align 16
  %i.ass = getelementptr inbounds nuw i8, ptr %i.arj, i64 40
  store i32 0, ptr %i.ass, align 8
  %i.ast = getelementptr inbounds nuw i8, ptr %i.arn, i64 48
  %i.asu = load ptr, ptr %i.ast, align 8          ; 2 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.arj, i64 16
  store ptr %i.asu, ptr %i.asv, align 16
  %i.asw = getelementptr inbounds nuw i8, ptr %i.arj, i64 8
  store ptr %i.asu, ptr %i.asw, align 8
  switch i32 %i.asn, label %.thread373.i [
    i32 1, label %bb.hl
    i32 2, label %bb.hm
  ]

bb.hl:                                            ; preds = %bb.hk
  %switch.selectcmp.i = icmp eq i32 %i.asi, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @stbi__resample_row_v_2, ptr @stbi__resample_row_generic
  %switch.selectcmp779.i = icmp eq i32 %i.asi, 1
  %switch.select780.i = select i1 %switch.selectcmp779.i, ptr @resample_row_1, ptr %switch.select.i
  br label %.thread374.i

bb.hm:                                            ; preds = %bb.hk
  switch i32 %i.asi, label %.thread373.i [
    i32 1, label %.thread374.i
    i32 2, label %bb.hn
  ]

bb.hn:                                            ; preds = %bb.hm
  %i.asx = load ptr, ptr %i.i, align 8
  br label %.thread374.i

.thread373.i:                                     ; preds = %bb.hm, %bb.hk
  br label %.thread374.i

bb.ho:                                            ; preds = %bb.hj
  %i.asy = call zeroext i1 (ptr, ...) @SDL_SetError_REAL(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10) #13 ; 0 uses
  br label %bb.iy

.thread374.i:                                     ; preds = %.thread373.i, %bb.hn, %bb.hm, %bb.hl
  %stbi__resample_row_v_2.sink.i = phi ptr [ %switch.select780.i, %bb.hl ], [ %i.asx, %bb.hn ], [ @stbi__resample_row_generic, %.thread373.i ], [ @stbi__resample_row_h_2, %bb.hm ]
  store ptr %stbi__resample_row_v_2.sink.i, ptr %i.arj, align 16
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %bb.hb, !llvm.loop !78

end_hunk_0
begin_hunk_1_@tdefl_compress_block:bb.a
  %i.ark = icmp ult i32 %i.ard, 56
  br i1 %i.ark, label %._crit_edge149.split.us.i, label %.lr.ph148.split.us.i

.lr.ph148.split.us.i:                             ; preds = %.lr.ph148.split.us.i.prol.loopexit, %.lr.ph148.split.us.i
  %i.arl = phi i32 [ %i.arm, %.lr.ph148.split.us.i ], [ %.unr362, %.lr.ph148.split.us.i.prol.loopexit ]
  %i.arm = add i32 %i.arl, -64                    ; 3 uses
  %i.arn = icmp ugt i32 %i.arm, 7
  br i1 %i.arn, label %.lr.ph148.split.us.i, label %._crit_edge149.split.us.i, !llvm.loop !322

._crit_edge149.split.us.i:                        ; preds = %.lr.ph148.split.us.i, %.lr.ph148.split.us.i.prol.loopexit
  %.lcssa295 = phi i32 [ %.lcssa295.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ 0, %.lr.ph148.split.us.i ]
  %.lcssa294 = phi i32 [ %.lcssa294.unr, %.lr.ph148.split.us.i.prol.loopexit ], [ %i.arm, %.lr.ph148.split.us.i ]
  store i32 %.lcssa295, ptr %i.aqt, align 8
  store i32 %.lcssa294, ptr %i.aqr, align 4
  br label %tdefl_compress_lz_codes.exit

.lr.ph148.split.i:                                ; preds = %.lr.ph148.i, %bb.et
  %i.aro = phi i32 [ %i.asa, %bb.et ], [ %i.aqv, %.lr.ph148.i ]
  %i.arp = phi i32 [ %i.arz, %bb.et ], [ %i.aqu, %.lr.ph148.i ] ; 2 uses
  %i.arq = phi ptr [ %i.arx, %bb.et ], [ %i.ara, %.lr.ph148.i ] ; 2 uses
  %i.arr = phi ptr [ %i.ary, %bb.et ], [ %i.aqz, %.lr.ph148.i ] ; 4 uses
  %i.ars = icmp ult ptr %i.arr, %i.arq
  br i1 %i.ars, label %bb.es, label %bb.et

bb.es:                                            ; preds = %.lr.ph148.split.i
  %i.art = trunc i32 %i.arp to i8
  %i.aru = getelementptr inbounds nuw i8, ptr %i.arr, i64 1
  store ptr %i.aru, ptr %i.aqx, align 8
  store i8 %i.art, ptr %i.arr, align 1
  %.pre190.i = load ptr, ptr %i.aqx, align 8
  %.pre192.i = load ptr, ptr %i.aqy, align 8
  %.pre194.i = load i32, ptr %i.aqt, align 8
  %.pre195.i = load i32, ptr %i.aqr, align 4
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %.lr.ph148.split.i
  %i.arv = phi i32 [ %.pre195.i, %bb.es ], [ %i.aro, %.lr.ph148.split.i ]
  %i.arw = phi i32 [ %.pre194.i, %bb.es ], [ %i.arp, %.lr.ph148.split.i ]
  %i.arx = phi ptr [ %.pre192.i, %bb.es ], [ %i.arq, %.lr.ph148.split.i ] ; 2 uses
  %i.ary = phi ptr [ %.pre190.i, %bb.es ], [ %i.arr, %.lr.ph148.split.i ] ; 2 uses
  %i.arz = lshr i32 %i.arw, 8                     ; 2 uses
  store i32 %i.arz, ptr %i.aqt, align 8
  %i.asa = add i32 %i.arv, -8                     ; 3 uses
  store i32 %i.asa, ptr %i.aqr, align 4
  %i.asb = icmp ugt i32 %i.asa, 7
  br i1 %i.asb, label %.lr.ph148.split.i, label %tdefl_compress_lz_codes.exit, !llvm.loop !323

tdefl_compress_lz_codes.exit:                     ; preds = %bb.et, %._crit_edge146.._crit_edge149_crit_edge.i, %._crit_edge149.split.us.i
  %i.asc = phi ptr [ %.pre199.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.ara, %._crit_edge149.split.us.i ], [ %i.arx, %bb.et ]
  %i.asd = phi ptr [ %.pre197.i, %._crit_edge146.._crit_edge149_crit_edge.i ], [ %i.aqz, %._crit_edge149.split.us.i ], [ %i.ary, %bb.et ]
  %i.ase = icmp ult ptr %i.asd, %i.asc
  %i.asf = zext i1 %i.ase to i32
  ret i32 %i.asf
}

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @tdefl_optimize_huffman_table(ptr nofree noundef nonnull captures(none) %0, i32 noundef range(i32 0, 3) %1, i32 noundef range(i32 19, 289) %2, i32 noundef range(i32 7, 16) %3, i32 noundef range(i32 0, 2) %4) unnamed_addr #7 {
bb.a:
  %i.a = alloca [512 x i32], align 16             ; 16 uses
  %i.b = alloca [256 x i32], align 16             ; 15 uses
  %i.c = alloca [33 x i32], align 16              ; 32 uses
  %i.d = alloca [33 x i32], align 16              ; 9 uses
  %5 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 9 uses
  %6 = alloca [288 x %struct.tdefl_sym_freq], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(132) %i.c, i8 0, i64 132, i1 false)
  %.not = icmp eq i32 %4, 0
  br i1 %.not, label %.new, label %.preheader97

.preheader97:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36682
  %i.f = zext nneg i32 %1 to i64
  %i.g = getelementptr inbounds nuw [288 x i8], ptr %i.e, i64 %i.f ; 5 uses
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %unroll_iter = and i64 %wide.trip.count, 508
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.preheader97
  %indvars.iv = phi i64 [ 0, %.preheader97 ], [ %indvars.iv.next.3, %bb.b ] ; 5 uses
  %niter = phi i64 [ 0, %.preheader97 ], [ %niter.next.3, %bb.b ]
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.i = load i8, ptr %i.h, align 1
  %i.j = zext i8 %i.i to i64
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.j ; 2 uses
  %i.l = load i32, ptr %i.k, align 4
  %i.m = add nsw i32 %i.l, 1
  store i32 %i.m, ptr %i.k, align 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 1
  %i.p = load i8, ptr %i.o, align 1
  %i.q = zext i8 %i.p to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.w = load i8, ptr %i.v, align 1
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 4
  %i.aa = add nsw i32 %i.z, 1
  store i32 %i.aa, ptr %i.y, align 4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 %indvars.iv
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 3
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i64
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ae ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = add nsw i32 %i.ag, 1
  store i32 %i.ah, ptr %i.af, align 4
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.b, !llvm.loop !5

.new:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 33226
  %i.aj = zext nneg i32 %1 to i64                 ; 3 uses
  %i.ak = getelementptr inbounds nuw [576 x i8], ptr %i.ai, i64 %i.aj ; 3 uses
  %wide.trip.count129 = zext nneg i32 %2 to i64   ; 2 uses
  %xtraiter196 = and i64 %wide.trip.count129, 1
  %unroll_iter201 = and i64 %wide.trip.count129, 510
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.new
  %indvars.iv126 = phi i64 [ 0, %.new ], [ %indvars.iv.next127.1, %bb.g ] ; 4 uses
  %.068104 = phi i32 [ 0, %.new ], [ %.1.1, %bb.g ] ; 3 uses
  %niter202 = phi i64 [ 0, %.new ], [ %niter202.next.1, %bb.g ]
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv126
  %i.am = load i16, ptr %i.al, align 2            ; 2 uses
  %.not79 = icmp eq i16 %i.am, 0
  br i1 %.not79, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.an = sext i32 %.068104 to i64
  %i.ao = getelementptr inbounds [4 x i8], ptr %5, i64 %i.an ; 2 uses
  store i16 %i.am, ptr %i.ao, align 4
  %i.ap = trunc i64 %indvars.iv126 to i16
  %i.aq = add nsw i32 %.068104, 1
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  store i16 %i.ap, ptr %i.ar, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.1 = phi i32 [ %i.aq, %bb.d ], [ %.068104, %bb.c ] ; 3 uses
  %indvars.iv.next127 = or disjoint i64 %indvars.iv126, 1 ; 2 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next127
  %i.at = load i16, ptr %i.as, align 2            ; 2 uses
  %.not79.1 = icmp eq i16 %i.at, 0
  br i1 %.not79.1, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.au = sext i32 %.1 to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %5, i64 %i.au ; 2 uses
  store i16 %i.at, ptr %i.av, align 4
  %i.aw = trunc i64 %indvars.iv.next127 to i16
  %i.ax = add nsw i32 %.1, 1
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 2
  store i16 %i.aw, ptr %i.ay, align 2
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.1 = phi i32 [ %i.ax, %bb.f ], [ %.1, %bb.e ] ; 5 uses
  %indvars.iv.next127.1 = add nuw nsw i64 %indvars.iv126, 2 ; 3 uses
  %niter202.next.1 = add nuw nsw i64 %niter202, 2 ; 2 uses
  %niter202.ncmp.1 = icmp eq i64 %niter202.next.1, %unroll_iter201
  br i1 %niter202.ncmp.1, label %.unr-lcssa, label %bb.c, !llvm.loop !324

.unr-lcssa:                                       ; preds = %bb.g
  %lcmp.mod198.not = icmp eq i64 %xtraiter196, 0
  br i1 %lcmp.mod198.not, label %.epilog-lcssa, label %.epil.preheader195

.epil.preheader195:                               ; preds = %.unr-lcssa
  %lcmp.mod200 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod200)
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.ak, i64 %indvars.iv.next127.1
  %i.ba = load i16, ptr %i.az, align 2            ; 2 uses
  %.not79.epil = icmp eq i16 %i.ba, 0
  br i1 %.not79.epil, label %.epilog-lcssa, label %bb.h

bb.h:                                             ; preds = %.epil.preheader195
  %i.bb = sext i32 %.1.1 to i64
  %i.bc = getelementptr inbounds [4 x i8], ptr %5, i64 %i.bb ; 2 uses
  store i16 %i.ba, ptr %i.bc, align 4
  %i.bd = trunc i64 %indvars.iv.next127.1 to i16
  %i.be = add nsw i32 %.1.1, 1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  store i16 %i.bd, ptr %i.bf, align 2
  br label %.epilog-lcssa

.epilog-lcssa:                                    ; preds = %.epil.preheader195, %bb.h, %.unr-lcssa
  %.1.lcssa = phi i32 [ %.1.1, %.unr-lcssa ], [ %i.be, %bb.h ], [ %.1.1, %.epil.preheader195 ] ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(2048) %i.a, i8 0, i64 2048, i1 false)
  %.not.i = icmp eq i32 %.1.lcssa, 0
  br i1 %.not.i, label %.critedge.preheader.split.split.i.preheader, label %.lr.ph.preheader.i

.critedge.preheader.split.split.i.preheader:      ; preds = %.epilog-lcssa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.j

.lr.ph.preheader.i:                               ; preds = %.epilog-lcssa
  %wide.trip.count.i = zext i32 %.1.lcssa to i64  ; 7 uses
  %i.bg = add nsw i64 %wide.trip.count.i, -1      ; 2 uses
  %xtraiter203 = and i64 %wide.trip.count.i, 1
  %i.bh = icmp eq i64 %i.bg, 0
  br i1 %i.bh, label %.lr.ph.i.epil.preheader, label %.lr.ph.preheader.i.new

.lr.ph.preheader.i.new:                           ; preds = %.lr.ph.preheader.i
  %unroll_iter207 = and i64 %wide.trip.count.i, 4294967294
  br label %.lr.ph.i

.preheader45.i.unr-lcssa:                         ; preds = %.lr.ph.i
  %lcmp.mod205.not = icmp eq i64 %xtraiter203, 0
  br i1 %lcmp.mod205.not, label %.preheader45.i, label %.lr.ph.i.epil.preheader

.lr.ph.i.epil.preheader:                          ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.preheader.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.preheader.i ], [ %indvars.iv.next.i.1, %.preheader45.i.unr-lcssa ]
  %lcmp.mod206 = trunc i32 %.1.lcssa to i1
  tail call void @llvm.assume(i1 %lcmp.mod206)
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i.epil.init
  %i.bj = load i16, ptr %i.bi, align 4
  %i.bk = zext i16 %i.bj to i32                   ; 2 uses
  %i.bl = and i32 %i.bk, 255
  %i.bm = zext nneg i32 %i.bl to i64
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bm ; 2 uses
  %i.bo = load i32, ptr %i.bn, align 4
  %i.bp = add i32 %i.bo, 1
  store i32 %i.bp, ptr %i.bn, align 4
  %i.bq = lshr i32 %i.bk, 8
  %i.br = zext nneg i32 %i.bq to i64
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.br
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1024 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4
  %i.bv = add i32 %i.bu, 1
  store i32 %i.bv, ptr %i.bt, align 4
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.i.unr-lcssa, %.lr.ph.i.epil.preheader
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1024
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 16
  %i.bw = freeze i32 %.pre.i
  %i.bx = icmp eq i32 %.1.lcssa, %i.bw
  %spec.select.i = select i1 %i.bx, i64 1, i64 2
  %xtraiter209 = and i64 %wide.trip.count.i, 1
  %i.by = icmp eq i64 %i.bg, 0
  %unroll_iter213 = and i64 %wide.trip.count.i, 4294967294
  %lcmp.mod211.not = icmp eq i64 %xtraiter209, 0
  %lcmp.mod212 = trunc i32 %.1.lcssa to i1
  br label %.critedge.preheader.split.split.us.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %indvars.iv.next.i.1, %.lr.ph.i ] ; 3 uses
  %niter208 = phi i64 [ 0, %.lr.ph.preheader.i.new ], [ %niter208.next.1, %.lr.ph.i ]
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.ca = load i16, ptr %i.bz, align 8
  %i.cb = zext i16 %i.ca to i32                   ; 2 uses
  %i.cc = and i32 %i.cb, 255
  %i.cd = zext nneg i32 %i.cc to i64
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cd ; 2 uses
  %i.cf = load i32, ptr %i.ce, align 4
  %i.cg = add i32 %i.cf, 1
  store i32 %i.cg, ptr %i.ce, align 4
  %i.ch = lshr i32 %i.cb, 8
  %i.ci = zext nneg i32 %i.ch to i64
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 1024 ; 2 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = add i32 %i.cl, 1
  store i32 %i.cm, ptr %i.ck, align 4
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv.i
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  %i.cp = load i16, ptr %i.co, align 4
  %i.cq = zext i16 %i.cp to i32                   ; 2 uses
  %i.cr = and i32 %i.cq, 255
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 4
  %i.cv = add i32 %i.cu, 1
  store i32 %i.cv, ptr %i.ct, align 4
  %i.cw = lshr i32 %i.cq, 8
  %i.cx = zext nneg i32 %i.cw to i64
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.cx
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 1024 ; 2 uses
  %i.da = load i32, ptr %i.cz, align 4
  %i.db = add i32 %i.da, 1
  store i32 %i.db, ptr %i.cz, align 4
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i, 2 ; 2 uses
  %niter208.next.1 = add i64 %niter208, 2         ; 2 uses
  %niter208.ncmp.1 = icmp eq i64 %niter208.next.1, %unroll_iter207
  br i1 %niter208.ncmp.1, label %.preheader45.i.unr-lcssa, label %.lr.ph.i, !llvm.loop !325

.critedge.preheader.split.split.us.i:             ; preds = %._crit_edge.us.i, %.preheader45.i
  %indvars.iv68.i = phi i64 [ 0, %.preheader45.i ], [ %indvars.iv.next69.i, %._crit_edge.us.i ] ; 2 uses
  %.03854.us.i = phi i32 [ 0, %.preheader45.i ], [ %i.fe, %._crit_edge.us.i ] ; 4 uses
  %.03953.us.i = phi ptr [ %6, %.preheader45.i ], [ %.04052.us.i, %._crit_edge.us.i ] ; 47 uses
  %.04052.us.i = phi ptr [ %5, %.preheader45.i ], [ %.03953.us.i, %._crit_edge.us.i ] ; 4 uses
  %.idx.i = shl nuw nsw i64 %indvars.iv68.i, 10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx.i ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.critedge.preheader.split.split.us.i
  %indvars.iv59.i = phi i64 [ 0, %.critedge.preheader.split.split.us.i ], [ %indvars.iv.next60.i.3, %bb.i ] ; 6 uses
  %.03748.us.i = phi i32 [ 0, %.critedge.preheader.split.split.us.i ], [ %i.ds, %bb.i ] ; 2 uses
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv59.i
  store i32 %.03748.us.i, ptr %i.dd, align 16
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv59.i
  %i.df = load i32, ptr %i.de, align 16
  %i.dg = add i32 %i.df, %.03748.us.i             ; 2 uses
  %indvars.iv.next60.i = or disjoint i64 %indvars.iv59.i, 1 ; 2 uses
  %i.dh = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i
  store i32 %i.dg, ptr %i.dh, align 4
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i
  %i.dj = load i32, ptr %i.di, align 4
  %i.dk = add i32 %i.dj, %i.dg                    ; 2 uses
  %indvars.iv.next60.i.1 = or disjoint i64 %indvars.iv59.i, 2 ; 2 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.1
  store i32 %i.dk, ptr %i.dl, align 8
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i.1
  %i.dn = load i32, ptr %i.dm, align 8
  %i.do = add i32 %i.dn, %i.dk                    ; 2 uses
  %indvars.iv.next60.i.2 = or disjoint i64 %indvars.iv59.i, 3 ; 2 uses
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next60.i.2
  store i32 %i.do, ptr %i.dp, align 4
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.dc, i64 %indvars.iv.next60.i.2
  %i.dr = load i32, ptr %i.dq, align 4
  %i.ds = add i32 %i.dr, %i.do
  %indvars.iv.next60.i.3 = add nuw nsw i64 %indvars.iv59.i, 4 ; 2 uses
  %exitcond62.not.i.3 = icmp eq i64 %indvars.iv.next60.i.3, 256
  br i1 %exitcond62.not.i.3, label %.preheader.us.i.preheader, label %bb.i, !llvm.loop !326

.preheader.us.i.preheader:                        ; preds = %bb.i
  br i1 %i.by, label %.preheader.us.i.epil.preheader, label %.preheader.us.i

.preheader.us.i:                                  ; preds = %.preheader.us.i.preheader, %.preheader.us.i
  %indvars.iv63.i = phi i64 [ %indvars.iv.next64.i.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ] ; 3 uses
  %niter214 = phi i64 [ %niter214.next.1, %.preheader.us.i ], [ 0, %.preheader.us.i.preheader ]
  %i.dt = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i ; 2 uses
  %i.du = load i16, ptr %i.dt, align 8
  %i.dv = zext i16 %i.du to i32
  %i.dw = lshr i32 %i.dv, %.03854.us.i
  %i.dx = and i32 %i.dw, 255
  %i.dy = zext nneg i32 %i.dx to i64
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.dy ; 2 uses
  %i.ea = load i32, ptr %i.dz, align 4            ; 2 uses
  %i.eb = add i32 %i.ea, 1
  store i32 %i.eb, ptr %i.dz, align 4
  %i.ec = zext i32 %i.ea to i64
  %i.ed = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ec
  %i.ee = load i32, ptr %i.dt, align 8
  store i32 %i.ee, ptr %i.ed, align 4
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i
  %i.eg = getelementptr inbounds nuw i8, ptr %i.ef, i64 4 ; 2 uses
  %i.eh = load i16, ptr %i.eg, align 4
  %i.ei = zext i16 %i.eh to i32
  %i.ej = lshr i32 %i.ei, %.03854.us.i
  %i.ek = and i32 %i.ej, 255
  %i.el = zext nneg i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.el ; 2 uses
  %i.en = load i32, ptr %i.em, align 4            ; 2 uses
  %i.eo = add i32 %i.en, 1
  store i32 %i.eo, ptr %i.em, align 4
  %i.ep = zext i32 %i.en to i64
  %i.eq = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.ep
  %i.er = load i32, ptr %i.eg, align 4
  store i32 %i.er, ptr %i.eq, align 4
  %indvars.iv.next64.i.1 = add nuw nsw i64 %indvars.iv63.i, 2 ; 2 uses
  %niter214.next.1 = add i64 %niter214, 2         ; 2 uses
  %niter214.ncmp.1 = icmp eq i64 %niter214.next.1, %unroll_iter213
  br i1 %niter214.ncmp.1, label %._crit_edge.us.i.unr-lcssa, label %.preheader.us.i, !llvm.loop !327

._crit_edge.us.i.unr-lcssa:                       ; preds = %.preheader.us.i
  br i1 %lcmp.mod211.not, label %._crit_edge.us.i, label %.preheader.us.i.epil.preheader

.preheader.us.i.epil.preheader:                   ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.preheader
  %indvars.iv63.i.epil.init = phi i64 [ 0, %.preheader.us.i.preheader ], [ %indvars.iv.next64.i.1, %._crit_edge.us.i.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod212)
  %i.es = getelementptr inbounds nuw [4 x i8], ptr %.04052.us.i, i64 %indvars.iv63.i.epil.init ; 2 uses
  %i.et = load i16, ptr %i.es, align 4
  %i.eu = zext i16 %i.et to i32
  %i.ev = lshr i32 %i.eu, %.03854.us.i
  %i.ew = and i32 %i.ev, 255
  %i.ex = zext nneg i32 %i.ew to i64
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %i.ex ; 2 uses
  %i.ez = load i32, ptr %i.ey, align 4            ; 2 uses
  %i.fa = add i32 %i.ez, 1
  store i32 %i.fa, ptr %i.ey, align 4
  %i.fb = zext i32 %i.ez to i64
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.fb
  %i.fd = load i32, ptr %i.es, align 4
  store i32 %i.fd, ptr %i.fc, align 4
  br label %._crit_edge.us.i

._crit_edge.us.i:                                 ; preds = %._crit_edge.us.i.unr-lcssa, %.preheader.us.i.epil.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  %indvars.iv.next69.i = add nuw nsw i64 %indvars.iv68.i, 1 ; 2 uses
  %i.fe = add nuw nsw i32 %.03854.us.i, 8
  %exitcond72.not.i = icmp eq i64 %indvars.iv.next69.i, %spec.select.i
  br i1 %exitcond72.not.i, label %tdefl_radix_sort_syms.exit, label %.critedge.preheader.split.split.us.i, !llvm.loop !328

tdefl_radix_sort_syms.exit.thread:                ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %tdefl_huffman_enforce_max_code_size.exit

bb.j:                                             ; preds = %bb.j, %.critedge.preheader.split.split.i.preheader
  %indvars.iv73.i = phi i64 [ 0, %.critedge.preheader.split.split.i.preheader ], [ %indvars.iv.next74.i.3, %bb.j ] ; 6 uses
  %.03748.i = phi i32 [ 0, %.critedge.preheader.split.split.i.preheader ], [ %i.fu, %bb.j ] ; 2 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv73.i
  store i32 %.03748.i, ptr %i.ff, align 16
  %i.fg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv73.i
  %i.fh = load i32, ptr %i.fg, align 16
  %i.fi = add i32 %i.fh, %.03748.i                ; 2 uses
  %indvars.iv.next74.i = or disjoint i64 %indvars.iv73.i, 1 ; 2 uses
  %i.fj = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i
  store i32 %i.fi, ptr %i.fj, align 4
  %i.fk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i
  %i.fl = load i32, ptr %i.fk, align 4
  %i.fm = add i32 %i.fl, %i.fi                    ; 2 uses
  %indvars.iv.next74.i.1 = or disjoint i64 %indvars.iv73.i, 2 ; 2 uses
  %i.fn = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.1
  store i32 %i.fm, ptr %i.fn, align 8
  %i.fo = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.1
  %i.fp = load i32, ptr %i.fo, align 8
  %i.fq = add i32 %i.fp, %i.fm                    ; 2 uses
  %indvars.iv.next74.i.2 = or disjoint i64 %indvars.iv73.i, 3 ; 2 uses
  %i.fr = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.next74.i.2
  store i32 %i.fq, ptr %i.fr, align 4
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv.next74.i.2
  %i.ft = load i32, ptr %i.fs, align 4
  %i.fu = add i32 %i.ft, %i.fq
  %indvars.iv.next74.i.3 = add nuw nsw i64 %indvars.iv73.i, 4 ; 2 uses
  %exitcond76.not.i.3 = icmp eq i64 %indvars.iv.next74.i.3, 256
  br i1 %exitcond76.not.i.3, label %tdefl_radix_sort_syms.exit.thread, label %bb.j, !llvm.loop !326

tdefl_radix_sort_syms.exit:                       ; preds = %._crit_edge.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  switch i32 %.1.lcssa, label %bb.k [
    i32 0, label %tdefl_huffman_enforce_max_code_size.exit
    i32 1, label %tdefl_calculate_minimum_redundancy.exit.thread169
  ]

tdefl_calculate_minimum_redundancy.exit.thread169: ; preds = %tdefl_radix_sort_syms.exit
  store i16 1, ptr %.03953.us.i, align 2
  br label %.lr.ph.preheader

bb.k:                                             ; preds = %tdefl_radix_sort_syms.exit
  %i.fv = getelementptr inbounds nuw i8, ptr %.03953.us.i, i64 4
  %i.fw = load i16, ptr %i.fv, align 2
  %i.fx = load i16, ptr %.03953.us.i, align 2
  %i.fy = add i16 %i.fx, %i.fw
  store i16 %i.fy, ptr %.03953.us.i, align 2
  %i.fz = add i32 %.1.lcssa, -1                   ; 2 uses
  %i.ga = icmp sgt i32 %.1.lcssa, 2
  br i1 %i.ga, label %.lr.ph.preheader.i82, label %._crit_edge.thread.i

._crit_edge.thread.i:                             ; preds = %bb.k
  %i.gb = add nsw i32 %.1.lcssa, -2               ; 2 uses
  %i.gc = sext i32 %i.gb to i64
  %i.gd = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gc
  store i16 0, ptr %i.gd, align 2
  br label %.preheader.i81.preheader

.lr.ph.preheader.i82:                             ; preds = %bb.k
  %wide.trip.count.i83 = zext nneg i32 %i.fz to i64
  br label %.lr.ph.i84

.lr.ph.i84:                                       ; preds = %bb.s, %.lr.ph.preheader.i82
  %indvars.iv.i85 = phi i64 [ 1, %.lr.ph.preheader.i82 ], [ %indvars.iv.next.i87, %bb.s ] ; 8 uses
  %.07992.i = phi i32 [ 2, %.lr.ph.preheader.i82 ], [ %.281.i, %bb.s ] ; 4 uses
  %.08291.i = phi i32 [ 0, %.lr.ph.preheader.i82 ], [ %.284.i, %bb.s ] ; 3 uses
  %.not.i86 = icmp slt i32 %.07992.i, %.1.lcssa
  %i.ge = sext i32 %.08291.i to i64               ; 2 uses
  %i.gf = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.ge ; 2 uses
  %i.gg = load i16, ptr %i.gf, align 2            ; 2 uses
  br i1 %.not.i86, label %bb.l, label %.lr.ph._crit_edge.i

bb.l:                                             ; preds = %.lr.ph.i84
  %i.gh = sext i32 %.07992.i to i64
  %i.gi = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gh
  %i.gj = load i16, ptr %i.gi, align 2            ; 2 uses
  %i.gk = icmp ult i16 %i.gg, %i.gj
  br i1 %i.gk, label %.lr.ph._crit_edge.i, label %bb.m

.lr.ph._crit_edge.i:                              ; preds = %bb.l, %.lr.ph.i84
  %i.gl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gg, ptr %i.gl, align 2
  %i.gm = trunc i64 %indvars.iv.i85 to i16
  %i.gn = add nsw i32 %.08291.i, 1                ; 2 uses
  store i16 %i.gm, ptr %i.gf, align 2
  %.pre = sext i32 %i.gn to i64
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.go = add nsw i32 %.07992.i, 1
  %i.gp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85
  store i16 %i.gj, ptr %i.gp, align 2
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph._crit_edge.i
  %.pre-phi = phi i64 [ %i.ge, %bb.m ], [ %.pre, %.lr.ph._crit_edge.i ] ; 4 uses
  %.183.i = phi i32 [ %.08291.i, %bb.m ], [ %i.gn, %.lr.ph._crit_edge.i ] ; 2 uses
  %.180.i = phi i32 [ %i.go, %bb.m ], [ %.07992.i, %.lr.ph._crit_edge.i ] ; 5 uses
  %.not88.i = icmp slt i32 %.180.i, %.1.lcssa
  br i1 %.not88.i, label %bb.o, label %._crit_edge127.i

._crit_edge127.i:                                 ; preds = %bb.n
  %.phi.trans.insert129.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %.pre130.i = load i16, ptr %.phi.trans.insert129.i, align 2
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.gq = icmp sgt i64 %indvars.iv.i85, %.pre-phi
  br i1 %i.gq, label %bb.p, label %._crit_edge123.i

._crit_edge123.i:                                 ; preds = %bb.o
  %.phi.trans.insert124.i = sext i32 %.180.i to i64
  %.phi.trans.insert125.i = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.phi.trans.insert124.i
  %.pre126.i = load i16, ptr %.phi.trans.insert125.i, align 2
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.gr = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.gs = load i16, ptr %i.gr, align 2            ; 2 uses
  %i.gt = sext i32 %.180.i to i64
  %i.gu = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %i.gt
  %i.gv = load i16, ptr %i.gu, align 2            ; 2 uses
  %i.gw = icmp ult i16 %i.gs, %i.gv
  br i1 %i.gw, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %._crit_edge127.i
  %i.gx = phi i16 [ %.pre130.i, %._crit_edge127.i ], [ %i.gs, %bb.p ]
  %i.gy = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.gz = load i16, ptr %i.gy, align 2
  %i.ha = getelementptr inbounds [4 x i8], ptr %.03953.us.i, i64 %.pre-phi
  %i.hb = add i16 %i.gz, %i.gx
  store i16 %i.hb, ptr %i.gy, align 2
  %i.hc = trunc i64 %indvars.iv.i85 to i16
  %i.hd = add nsw i32 %.183.i, 1
  store i16 %i.hc, ptr %i.ha, align 2
  br label %bb.s

bb.r:                                             ; preds = %bb.p, %._crit_edge123.i
  %i.he = phi i16 [ %.pre126.i, %._crit_edge123.i ], [ %i.gv, %bb.p ]
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv.i85 ; 2 uses
  %i.hg = load i16, ptr %i.hf, align 2
  %i.hh = add nsw i32 %.180.i, 1
  %i.hi = add i16 %i.hg, %i.he
  store i16 %i.hi, ptr %i.hf, align 2
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %.284.i = phi i32 [ %i.hd, %bb.q ], [ %.183.i, %bb.r ]
  %.281.i = phi i32 [ %.180.i, %bb.q ], [ %i.hh, %bb.r ]
  %indvars.iv.next.i87 = add nuw nsw i64 %indvars.iv.i85, 1 ; 2 uses
  %exitcond.not.i88 = icmp eq i64 %indvars.iv.next.i87, %wide.trip.count.i83
  br i1 %exitcond.not.i88, label %._crit_edge.i, label %.lr.ph.i84, !llvm.loop !329

._crit_edge.i:                                    ; preds = %bb.s
  %i.hj = add nsw i32 %.1.lcssa, -2               ; 3 uses
  %i.hk = zext nneg i32 %i.hj to i64
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hk
  store i16 0, ptr %i.hl, align 2
  %i.hm = add nsw i32 %.1.lcssa, -3               ; 2 uses
  %i.hn = zext i32 %i.hm to i64                   ; 3 uses
  %i.ho = add nuw nsw i64 %i.hn, 1
  %xtraiter215 = and i64 %i.ho, 3                 ; 2 uses
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol

.lr.ph96.i.prol:                                  ; preds = %._crit_edge.i, %.lr.ph96.i.prol
  %indvars.iv115.i.prol = phi i64 [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ], [ %i.hn, %._crit_edge.i ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph96.i.prol ], [ 0, %._crit_edge.i ]
  %i.hp = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i.prol ; 2 uses
  %i.hq = load i16, ptr %i.hp, align 2
  %i.hr = zext i16 %i.hq to i64
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hr
  %i.ht = load i16, ptr %i.hs, align 2
  %i.hu = add i16 %i.ht, 1
  store i16 %i.hu, ptr %i.hp, align 2
  %indvars.iv.next116.i.prol = add nsw i64 %indvars.iv115.i.prol, -1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter215
  br i1 %prol.iter.cmp.not, label %.lr.ph96.i.prol.loopexit, label %.lr.ph96.i.prol, !llvm.loop !330

.lr.ph96.i.prol.loopexit:                         ; preds = %.lr.ph96.i.prol, %._crit_edge.i
  %indvars.iv115.i.unr = phi i64 [ %i.hn, %._crit_edge.i ], [ %indvars.iv.next116.i.prol, %.lr.ph96.i.prol ]
  %i.hv = icmp ult i32 %i.hm, 3
  br i1 %i.hv, label %.preheader.i81.preheader, label %.lr.ph96.i

.lr.ph96.i:                                       ; preds = %.lr.ph96.i.prol.loopexit, %.lr.ph96.i
  %indvars.iv115.i = phi i64 [ %indvars.iv.next116.i.3, %.lr.ph96.i ], [ %indvars.iv115.i.unr, %.lr.ph96.i.prol.loopexit ] ; 5 uses
  %i.hw = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i ; 2 uses
  %i.hx = load i16, ptr %i.hw, align 2
  %i.hy = zext i16 %i.hx to i64
  %i.hz = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.hy
  %i.ia = load i16, ptr %i.hz, align 2
  %i.ib = add i16 %i.ia, 1
  store i16 %i.ib, ptr %i.hw, align 2
  %i.ic = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
  %i.id = getelementptr i8, ptr %i.ic, i64 -4     ; 2 uses
  %i.ie = load i16, ptr %i.id, align 2
  %i.if = zext i16 %i.ie to i64
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %.03953.us.i, i64 %i.if
  %i.ih = load i16, ptr %i.ig, align 2
  %i.ii = add i16 %i.ih, 1
  store i16 %i.ii, ptr %i.id, align 2
  %i.ij = getelementptr [4 x i8], ptr %.03953.us.i, i64 %indvars.iv115.i
end_hunk_1
