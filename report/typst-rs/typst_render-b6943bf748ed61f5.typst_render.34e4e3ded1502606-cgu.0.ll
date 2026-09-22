Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_render-b6943bf748ed61f5.typst_render.34e4e3ded1502606-cgu.0?download=true
inline.NumInlined: 1272
inline.NumDeleted: 654
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvNtCs4xylOWI7Ys4_12typst_render4text20render_outline_glyph:bb.a
  %i.ama = mul i32 %i.alz, %i.akf
  %i.amb = add i32 %i.alx, %i.ama
  %i.amc = sext i32 %i.amb to i64                 ; 3 uses
  %i.amd = icmp ugt i64 %i.alm, %i.amc
  br i1 %i.amd, label %bb.fm, label %.split99.us.i.invoke

bb.fm:                                            ; preds = %bb.fl
  %i.ame = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.amc
  %i.amf = load i8, ptr %i.ame, align 1, !noalias !1416, !noundef !5 ; 3 uses
  %i.amg = icmp eq i8 %i.amf, 0
  br i1 %i.amg, label %.backedge.us109.i, label %bb.fn

bb.fn:                                            ; preds = %bb.fm
  %i.amh = mul i32 %i.akb, %i.aly
  %i.ami = add i32 %i.amh, %.sroa.024.0105.us.i
  %i.amj = sext i32 %i.ami to i64                 ; 5 uses
  %i.amk = icmp eq i8 %i.amf, -1
  %i.aml = icmp ugt i64 %i.ala, %i.amj            ; 2 uses
  br i1 %i.amk, label %bb.fq, label %bb.fo

bb.fo:                                            ; preds = %bb.fn
  br i1 %i.aml, label %bb.fp, label %.split99.us.i.invoke

bb.fp:                                            ; preds = %bb.fo
  %i.amm = zext i8 %i.amf to i32                  ; 2 uses
  %i.amn = mul nuw i32 %i.alr, %i.amm
  %i.amo = lshr i32 %i.amn, 8
  %i.amp = and i32 %i.amo, 16711935
  %i.amq = mul nuw i32 %i.alt, %i.amm             ; 2 uses
  %i.amr = and i32 %i.amq, -16711936
  %i.ams = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amj ; 2 uses
  %i.amt = load i32, ptr %i.ams, align 4, !noalias !1416, !noundef !5 ; 2 uses
  %i.amu = lshr i32 %i.amq, 24
  %i.amv = sub nuw nsw i32 256, %i.amu            ; 2 uses
  %i.amw = and i32 %i.amt, 16711935
  %i.amx = mul nuw i32 %i.amw, %i.amv
  %i.amy = lshr i32 %i.amx, 8
  %i.amz = lshr i32 %i.amt, 8
  %i.ana = and i32 %i.amz, 16711935
  %i.anb = mul nuw i32 %i.ana, %i.amv
  %i.anc = and i32 %i.amy, 16711935
  %i.and = and i32 %i.anb, -16711936
  %i.ane = or disjoint i32 %i.amp, %i.amr
  %i.anf = add i32 %i.ane, %i.and
  %i.ang = add i32 %i.anf, %i.anc
  store i32 %i.ang, ptr %i.ams, align 4, !noalias !1416
  br label %.backedge.us109.i

bb.fq:                                            ; preds = %bb.fn
  br i1 %i.aml, label %bb.fr, label %.split99.us.i.invoke

bb.fr:                                            ; preds = %bb.fq
  %i.anh = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.amj
  store i32 %.sroa.0.0.i, ptr %i.anh, align 4, !noalias !1416
  br label %.backedge.us109.i

.backedge.us109.i:                                ; preds = %bb.fr, %bb.fp, %bb.fm
  %lftr.wideiv170.i = trunc i64 %indvars.iv.next168.i to i32
  %exitcond171.not.i = icmp eq i32 %.sroa.0.0.i68.i, %lftr.wideiv170.i
  br i1 %exitcond171.not.i, label %..loopexit_crit_edge.split.us110.i, label %bb.fl

..loopexit_crit_edge.split.us110.i:               ; preds = %.backedge.us109.i
  %exitcond549.not = icmp eq i32 %i.alw, %..i57.i
  br i1 %exitcond549.not, label %.loopexit, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.us.i

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i: ; preds = %.lr.ph106.split.split.i, %..loopexit_crit_edge.split.us.i
  %.sroa.024.0105.i = phi i32 [ %i.ani, %..loopexit_crit_edge.split.us.i ], [ %.sroa.0.0.i.i94, %.lr.ph106.split.split.i ] ; 3 uses
  %i.ani = add nuw nsw i32 %.sroa.024.0105.i, 1   ; 2 uses
  %i.anj = sub i32 %.sroa.024.0105.i, %i.akj
  br label %bb.ft

bb.fs:                                            ; preds = %.lr.ph106.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !1418
  store i32 0, ptr %i.av, align 4, !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !1418
  store i32 %i.akd, ptr %i.au, align 4, !noalias !1418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !1418
  store ptr %i.av, ptr %i.at, align 8, !noalias !1418
  br label %.invoke786

bb.ft:                                            ; preds = %.backedge.us.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i
  %indvars.iv161.i = phi i64 [ %indvars.iv.next162.i, %.backedge.us.i ], [ %i.alv, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i ] ; 2 uses
  %indvars.iv.next162.i = add nuw nsw i64 %indvars.iv161.i, 1 ; 2 uses
  %i.ank = trunc i64 %indvars.iv161.i to i32      ; 2 uses
  %i.anl = sub i32 %i.ank, %i.akl
  %i.anm = mul i32 %i.anl, %i.akf
  %i.ann = add i32 %i.anj, %i.anm
  %i.ano = sext i32 %i.ann to i64                 ; 3 uses
  %i.anp = icmp ugt i64 %i.alm, %i.ano
  br i1 %i.anp, label %bb.fu, label %.split99.us.i.invoke

bb.fu:                                            ; preds = %bb.ft
  %i.anq = getelementptr inbounds nuw i8, ptr %i.alo, i64 %i.ano
  %i.anr = load i8, ptr %i.anq, align 1, !noalias !1416, !noundef !5 ; 2 uses
  %i.ans = icmp eq i8 %i.anr, 0
  br i1 %i.ans, label %.backedge.us.i, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ant = mul i32 %i.akb, %i.ank
  %i.anu = add i32 %i.ant, %.sroa.024.0105.i
  %i.anv = sext i32 %i.anu to i64                 ; 3 uses
  %i.anw = icmp ugt i64 %i.ala, %i.anv
  br i1 %i.anw, label %bb.fw, label %.split99.us.i.invoke

bb.fw:                                            ; preds = %bb.fv
  %i.anx = zext i8 %i.anr to i32                  ; 2 uses
  %i.any = mul nuw i32 %i.alr, %i.anx
  %i.anz = lshr i32 %i.any, 8
  %i.aoa = and i32 %i.anz, 16711935
  %i.aob = mul nuw i32 %i.alt, %i.anx             ; 2 uses
  %i.aoc = and i32 %i.aob, -16711936
  %i.aod = getelementptr inbounds nuw [4 x i8], ptr %i.ako, i64 %i.anv ; 2 uses
  %i.aoe = load i32, ptr %i.aod, align 4, !noalias !1416, !noundef !5 ; 2 uses
  %i.aof = lshr i32 %i.aob, 24
  %i.aog = sub nuw nsw i32 256, %i.aof            ; 2 uses
  %i.aoh = and i32 %i.aoe, 16711935
  %i.aoi = mul nuw i32 %i.aoh, %i.aog
  %i.aoj = lshr i32 %i.aoi, 8
  %i.aok = lshr i32 %i.aoe, 8
  %i.aol = and i32 %i.aok, 16711935
  %i.aom = mul nuw i32 %i.aol, %i.aog
  %i.aon = and i32 %i.aoj, 16711935
  %i.aoo = and i32 %i.aom, -16711936
  %i.aop = or disjoint i32 %i.aoa, %i.aoc
  %i.aoq = add i32 %i.aop, %i.aoo
  %i.aor = add i32 %i.aoq, %i.aon
  store i32 %i.aor, ptr %i.aod, align 4, !noalias !1416
  br label %.backedge.us.i

.backedge.us.i:                                   ; preds = %bb.fw, %bb.fu
  %lftr.wideiv164.i = trunc i64 %indvars.iv.next162.i to i32
  %exitcond165.not.i = icmp eq i32 %.sroa.0.0.i68.i, %lftr.wideiv164.i
  br i1 %exitcond165.not.i, label %..loopexit_crit_edge.split.us.i, label %bb.ft

..loopexit_crit_edge.split.us.i:                  ; preds = %.backedge.us.i
  %exitcond166.not.i = icmp eq i32 %i.ani, %..i57.i
  br i1 %exitcond166.not.i, label %.loopexit, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit69.i

.split99.us.i.invoke:                             ; preds = %bb.gx, %bb.gy, %bb.gu, %bb.fv, %bb.ft, %bb.fo, %bb.fq, %bb.fl
  %i.aos = phi i64 [ %i.amj, %bb.fq ], [ %i.ano, %bb.ft ], [ %i.amc, %bb.fl ], [ %i.amj, %bb.fo ], [ %i.anv, %bb.fv ], [ %i.asy, %bb.gy ], [ %i.asq, %bb.gu ], [ %i.asy, %bb.gx ]
  %i.aot = phi i64 [ %i.ala, %bb.fq ], [ %i.alm, %bb.ft ], [ %i.alm, %bb.fl ], [ %i.ala, %bb.fo ], [ %i.ala, %bb.fv ], [ %i.aru, %bb.gy ], [ %i.asf, %bb.gu ], [ %i.aru, %bb.gx ]
  %i.aou = phi ptr [ @15, %bb.fq ], [ @14, %bb.ft ], [ @14, %bb.fl ], [ @16, %bb.fo ], [ @16, %bb.fv ], [ @15, %bb.gy ], [ @14, %bb.gu ], [ @16, %bb.gx ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aos, i64 noundef %i.aot, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aou) #31
          to label %.split99.us.i.cont unwind label %.loopexit.split-lp

.split99.us.i.cont:                               ; preds = %.split99.us.i.invoke
  unreachable

bb.fx:                                            ; preds = %.noexc95
  %.sroa.410.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  %.sroa.410.0.copyload.i = load ptr, ptr %.sroa.410.0..sroa_idx.i, align 8, !noalias !1416, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.511.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.sroa.511.0.copyload.i = load i64, ptr %.sroa.511.0..sroa_idx.i, align 8, !noalias !1416 ; 3 uses
  %.sroa.612.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bc, i64 24
  %i.aov = load <2 x i32>, ptr %.sroa.612.0..sroa_idx.i, align 8, !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1416
  %i.aow = ptrtoint ptr %.sroa.410.0.copyload.i to i64
  %i.aox = and i64 %i.aow, 3
  %i.aoy = icmp eq i64 %i.aox, 0
  br i1 %i.aoy, label %bb.fy, label %bb.gb

bb.fy:                                            ; preds = %bb.fx
  %i.aoz = and i64 %.sroa.511.0.copyload.i, 3
  %i.apa = icmp eq i64 %i.aoz, 0
  br i1 %i.apa, label %bb.gc, label %bb.gb

bb.fz:                                            ; preds = %.split54.us.invoke.i, %.split52.us.invoke.i, %._crit_edge.split.i, %bb.gb
  %i.apb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.apc = icmp eq i64 %i.aky, 0
  br i1 %i.apc, label %.body, label %bb.ga

bb.ga:                                            ; preds = %bb.fz
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i, i64 noundef %i.aky, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1415
  br label %.body

bb.gb:                                            ; preds = %bb.fy, %bb.fx
  %.sroa.615.0.ph.i = phi i8 [ 1, %bb.fy ], [ 0, %bb.fx ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.615.0.ph.i) #29
          to label %bb.gj unwind label %bb.fz, !noalias !1416

bb.gc:                                            ; preds = %bb.fy
  %i.apd = lshr exact i64 %.sroa.511.0.copyload.i, 2 ; 2 uses
  %.not127.i = icmp eq i32 %i.akf, 0
  br i1 %.not127.i, label %._crit_edge.split.i, label %.lr.ph84.i

.lr.ph84.i:                                       ; preds = %bb.gc
  %.not128.i = icmp eq i32 %i.akh, 0
  %i.ape = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.apf = load i64, ptr %i.ape, align 8, !alias.scope !1415, !noalias !1414 ; 4 uses
  %i.apg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.aph = load ptr, ptr %i.apg, align 8, !alias.scope !1415, !noalias !1414, !nonnull !5
  %i.api = icmp sgt i32 %i.akd, -1
  %i.apj = and i32 %.sroa.0.0.i, 16711935
  %i.apk = lshr i32 %.sroa.0.0.i, 8
  %i.apl = and i32 %i.apk, 16711935
  br i1 %.not128.i, label %._crit_edge.split.i, label %.lr.ph84.split.i

.lr.ph84.split.i:                                 ; preds = %.lr.ph84.i
  %i.apm = icmp sgt i32 %i.akb, -1
  br i1 %i.apm, label %.lr.ph84.split.split.us.i, label %.lr.ph.split.i, !prof !19

.lr.ph84.split.split.us.i:                        ; preds = %.lr.ph84.split.i
  br i1 %i.api, label %.lr.ph.us.us.preheader.i, label %.lr.ph.i, !prof !19

.lr.ph.us.us.preheader.i:                         ; preds = %.lr.ph84.split.split.us.i
  %wide.trip.count.i = zext i32 %i.akh to i64
  br label %.lr.ph.us.us.i

._crit_edge.split.i:                              ; preds = %.lr.ph.us.i, %.lr.ph84.i, %bb.gc
  %4 = add i32 %i.akj, -1
  %5 = add i32 %i.akl, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb), !noalias !1416
  store ptr %.sroa.410.0.copyload.i, ptr %i.bb, align 8, !noalias !1416
  %6 = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  store i64 %.sroa.511.0.copyload.i, ptr %6, align 8, !noalias !1416
  %7 = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store <2 x i32> %i.aov, ptr %7, align 8, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ba), !noalias !1416
  store i64 13950255104, ptr %i.ba, align 8, !noalias !1416
  call void @llvm.lifetime.start.p0(ptr nonnull %i.az), !noalias !1416
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.az, align 16, !noalias !1416
  %8 = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  store <2 x float> zeroinitializer, ptr %8, align 16, !noalias !1416
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %4, i32 noundef %5, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.bb, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ba, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.val62)
          to label %bb.gg unwind label %bb.fz, !noalias !1415

.lr.ph.us.us.i:                                   ; preds = %.lr.ph.us.i, %.lr.ph.us.us.preheader.i
  %.sroa.016.083.us.us.i = phi i32 [ %i.apn, %.lr.ph.us.i ], [ 0, %.lr.ph.us.us.preheader.i ] ; 2 uses
  %i.apn = add nuw i32 %.sroa.016.083.us.us.i, 1  ; 3 uses
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gf, %.lr.ph.us.us.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.gf ], [ 0, %.lr.ph.us.us.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 3 uses
  %i.apo = trunc nuw i64 %indvars.iv.i to i32
  %i.app = mul i32 %i.akf, %i.apo
  %i.apq = add i32 %i.app, %.sroa.016.083.us.us.i
  %i.apr = zext i32 %i.apq to i64                 ; 3 uses
  %i.aps = icmp ugt i64 %i.apf, %i.apr
  br i1 %i.aps, label %bb.ge, label %.split54.us.invoke.i

bb.ge:                                            ; preds = %bb.gd
  %i.apt = trunc nuw i64 %indvars.iv.next.i to i32
  %i.apu = mul i32 %i.akw, %i.apt
  %i.apv = add i32 %i.apu, %i.apn
  %i.apw = zext i32 %i.apv to i64                 ; 3 uses
  %i.apx = icmp samesign ugt i64 %i.apd, %i.apw
  br i1 %i.apx, label %bb.gf, label %.split54.us.invoke.i

bb.gf:                                            ; preds = %bb.ge
  %i.apy = getelementptr inbounds nuw i8, ptr %i.aph, i64 %i.apr
  %i.apz = load i8, ptr %i.apy, align 1, !noalias !1416, !noundef !5
  %i.aqa = zext i8 %i.apz to i32                  ; 2 uses
  %i.aqb = mul nuw i32 %i.apj, %i.aqa
  %i.aqc = lshr i32 %i.aqb, 8
  %i.aqd = and i32 %i.aqc, 16711935
  %i.aqe = mul nuw i32 %i.apl, %i.aqa
  %i.aqf = and i32 %i.aqe, -16711936
  %i.aqg = or disjoint i32 %i.aqd, %i.aqf
  %i.aqh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i, i64 %i.apw
  store i32 %i.aqg, ptr %i.aqh, align 4, !noalias !1416
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %.lr.ph.us.i, label %bb.gd

.lr.ph.us.i:                                      ; preds = %bb.gf
  %.not130.i = icmp eq i32 %i.apn, %i.akf
  br i1 %.not130.i, label %._crit_edge.split.i, label %.lr.ph.us.us.i

.lr.ph.i:                                         ; preds = %.lr.ph84.split.split.us.i
  %.not129.i = icmp eq i64 %i.apf, 0
  br i1 %.not129.i, label %.split54.us.invoke.i, label %.split52.us.i

.split52.us.i:                                    ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !1419
  store i32 0, ptr %i.ap, align 4, !noalias !1419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !1419
  store i32 %i.akd, ptr %i.ao, align 4, !noalias !1419
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !1419
  store ptr %i.ap, ptr %i.an, align 8, !noalias !1419
  br label %.split52.us.invoke.i

.split52.us.invoke.i:                             ; preds = %bb.gi, %.split52.us.i
  %.sink220.i.sroa.phi = phi ptr [ %.sink220.i.sroa.gep, %bb.gi ], [ %.sink220.i.sroa.gep308, %.split52.us.i ]
  %.sink220.i.sroa.phi309 = phi ptr [ %.sink220.i.sroa.gep310, %bb.gi ], [ %.sink220.i.sroa.gep311, %.split52.us.i ]
  %.sink220.i.sroa.phi312 = phi ptr [ %.sink220.i.sroa.gep313, %bb.gi ], [ %.sink220.i.sroa.gep314, %.split52.us.i ]
  %.sink220.i = phi ptr [ %i.aq, %bb.gi ], [ %i.an, %.split52.us.i ]
  %.sink217.i = phi ptr [ %i.ar, %bb.gi ], [ %i.ao, %.split52.us.i ]
  %i.aqi = phi ptr [ @19, %bb.gi ], [ @20, %.split52.us.i ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink220.i.sroa.phi, align 8, !noalias !1416
  store ptr %.sink217.i, ptr %.sink220.i.sroa.phi309, align 8, !noalias !1416
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink220.i.sroa.phi312, align 8, !noalias !1416
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink220.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqi) #31
          to label %.split52.us.cont.i unwind label %bb.fz, !noalias !1416

.split52.us.cont.i:                               ; preds = %.split52.us.invoke.i
  unreachable

bb.gg:                                            ; preds = %._crit_edge.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !1416
  %i.aqj = icmp eq i64 %i.aky, 0
  br i1 %i.aqj, label %.loopexit, label %bb.gh

bb.gh:                                            ; preds = %bb.gg
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i, i64 noundef %i.aky, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1415
  br label %.loopexit

.lr.ph.split.i:                                   ; preds = %.lr.ph84.split.i
  %.not118.i = icmp eq i64 %i.apf, 0
  br i1 %.not118.i, label %.split54.us.invoke.i, label %bb.gi

bb.gi:                                            ; preds = %.lr.ph.split.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !1420
  store i32 0, ptr %i.as, align 4, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar), !noalias !1420
  store i32 %i.akb, ptr %i.ar, align 4, !noalias !1420
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !1420
  store ptr %i.as, ptr %i.aq, align 8, !noalias !1420
  br label %.split52.us.invoke.i

bb.gj:                                            ; preds = %bb.gb
  unreachable

.split54.us.invoke.i:                             ; preds = %bb.ge, %bb.gd, %.lr.ph.split.i, %.lr.ph.i
  %i.aqk = phi i64 [ 0, %.lr.ph.split.i ], [ 0, %.lr.ph.i ], [ %i.apw, %bb.ge ], [ %i.apr, %bb.gd ]
  %i.aql = phi i64 [ 0, %.lr.ph.split.i ], [ 0, %.lr.ph.i ], [ %i.apd, %bb.ge ], [ %i.apf, %bb.gd ]
  %i.aqm = phi ptr [ @18, %.lr.ph.split.i ], [ @18, %.lr.ph.i ], [ @21, %bb.ge ], [ @18, %bb.gd ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.aqk, i64 noundef %i.aql, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqm) #29
          to label %.split54.us.cont.i unwind label %bb.fz, !noalias !1416

.split54.us.cont.i:                               ; preds = %.split54.us.invoke.i
  unreachable

bb.gk:                                            ; preds = %.noexc95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !1416
  br label %bb.gl

bb.gl:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit230, %bb.hp, %bb.gk
  %i.aqn = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1421
  %i.aqo = icmp eq i64 %i.aqn, 1
  br i1 %i.aqo, label %bb.gm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102

bb.gm:                                            ; preds = %bb.gl
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ci) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102

.loopexit:                                        ; preds = %..loopexit_crit_edge.i, %..loopexit_crit_edge.split.us.i, %..loopexit_crit_edge.split.us110.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i, %.lr.ph114.split.i, %bb.hl, %bb.hm, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit59.i, %.lr.ph106.split.i, %bb.gg, %bb.gh, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit229
  %i.aqp = atomicrmw sub ptr %.sroa.0.0.i.i, i64 1 release, align 8, !noalias !1422
  %i.aqq = icmp eq i64 %i.aqp, 1
  br i1 %i.aqq, label %bb.gn, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103

bb.gn:                                            ; preds = %.loopexit
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.ci) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103: ; preds = %.loopexit, %bb.gn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ci)
  br label %bb.ja

_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit: ; preds = %bb.ey, %switch.lookup
  %i.aqr = phi <4 x float> [ %i.aii, %bb.ey ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %switch.lookup ] ; 2 uses
  %i.aqs = phi <2 x float> [ %i.aij, %bb.ey ], [ zeroinitializer, %switch.lookup ] ; 2 uses
  %i.aqt = phi <2 x double> [ %i.aid, %bb.ey ], [ zeroinitializer, %switch.lookup ] ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val63 = load ptr, ptr %i.aqu, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1423)
  call void @llvm.experimental.noalias.scope.decl(metadata !1424)
  %.not.i104 = icmp eq ptr %.val63, null
  %i.aqv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aqw = load i32, ptr %i.aqv, align 8, !range !20, !alias.scope !1423, !noalias !1425, !noundef !5 ; 8 uses
  %i.aqx = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.aqy = load i32, ptr %i.aqx, align 4, !range !20, !alias.scope !1423, !noalias !1425, !noundef !5 ; 7 uses
  %i.aqz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.ara = load i32, ptr %i.aqz, align 8, !alias.scope !1424, !noalias !1426, !noundef !5 ; 6 uses
  %i.arb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 52
  %i.arc = load i32, ptr %i.arb, align 4, !alias.scope !1424, !noalias !1426, !noundef !5 ; 4 uses
  %i.ard = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.are = load i32, ptr %i.ard, align 8, !alias.scope !1424, !noalias !1426, !noundef !5 ; 6 uses
  %i.arf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 44
  %i.arg = load i32, ptr %i.arf, align 4, !alias.scope !1424, !noalias !1426, !noundef !5 ; 6 uses
  br i1 %.not.i104, label %bb.go, label %bb.gq

bb.go:                                            ; preds = %_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit
  %i.arh = add i32 %i.arg, %i.arc                 ; 2 uses
  %i.ari = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.arj = load ptr, ptr %i.ari, align 8, !alias.scope !1423, !noalias !1425, !nonnull !5, !noundef !5 ; 3 uses
  %i.ark = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.arl = load i64, ptr %i.ark, align 8, !alias.scope !1423, !noalias !1425, !noundef !5 ; 2 uses
  %i.arm = ptrtoint ptr %i.arj to i64
  %i.arn = and i64 %i.arm, 3
  %i.aro = icmp eq i64 %i.arn, 0
  br i1 %i.aro, label %bb.gp, label %.invoke

bb.gp:                                            ; preds = %bb.go
  %i.arp = and i64 %i.arl, 3
  %i.arq = icmp eq i64 %i.arp, 0
  br i1 %i.arq, label %bb.gr, label %.invoke

bb.gq:                                            ; preds = %_RNvMs_NtCs4xylOWI7Ys4_12typst_render5paintNtB4_15GradientSampler3new.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !1427
  %i.arr = add i32 %i.ara, 2                      ; 2 uses
  %i.ars = add i32 %i.arc, 2
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.am, i32 noundef %i.arr, i32 noundef %i.ars)
          to label %.noexc130 unwind label %.loopexit.split-lp

.noexc130:                                        ; preds = %bb.gq
  %i.art = load i64, ptr %i.am, align 8, !range !7, !noalias !1427, !noundef !5 ; 5 uses
  %.not45.i = icmp eq i64 %i.art, -1
  br i1 %.not45.i, label %bb.hp, label %bb.hb

bb.gr:                                            ; preds = %bb.gp
  %i.aru = lshr exact i64 %i.arl, 2               ; 3 uses
  %i.arv = icmp sgt i32 %i.aqw, -1
  br i1 %i.arv, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i, label %bb.gs, !prof !19

bb.gs:                                            ; preds = %bb.gr
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !1428
  store i32 0, ptr %i.ag, align 4, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !1428
  store i32 %i.aqw, ptr %i.af, align 4, !noalias !1428
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !1428
  store ptr %i.ag, ptr %i.ae, align 8, !noalias !1428
  br label %.invoke786

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i: ; preds = %bb.gr
  %i.arw = add i32 %i.are, %i.ara                 ; 2 uses
  %i.arx = icmp slt i32 %i.are, 0
  %..i.i128 = call i32 @llvm.umin.i32(i32 %i.are, i32 range(i32 1, 0) %i.aqw)
  %.sroa.0.0.i.i129 = select i1 %i.arx, i32 0, i32 %..i.i128 ; 2 uses
  %i.ary = icmp sgt i32 %i.arw, -1
  %..i51.i = call i32 @llvm.umin.i32(i32 %i.arw, i32 %i.aqw) ; 2 uses
  %i.arz = icmp samesign ugt i32 %..i51.i, %.sroa.0.0.i.i129
  %i.asa = select i1 %i.ary, i1 %i.arz, i1 false
  br i1 %i.asa, label %.lr.ph114.i, label %.loopexit

.lr.ph114.i:                                      ; preds = %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i
  %i.asb = icmp sgt i32 %i.aqy, -1
  %i.asc = icmp slt i32 %i.arg, 0
  %..i56.i = call i32 @llvm.umin.i32(i32 %i.arg, i32 range(i32 1, 0) %i.aqy)
  %.sroa.0.0.i57.i = select i1 %i.asc, i32 0, i32 %..i56.i ; 2 uses
  %i.asd = icmp slt i32 %i.arh, 0
  %..i61.i = call i32 @llvm.umin.i32(i32 %i.arh, i32 range(i32 1, 0) %i.aqy)
  %.sroa.0.0.i62.i = select i1 %i.asd, i32 0, i32 %..i61.i ; 2 uses
  %i.ase = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.asf = load i64, ptr %i.ase, align 8, !alias.scope !1424, !noalias !1426 ; 2 uses
  %i.asg = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.ash = load ptr, ptr %i.asg, align 8, !alias.scope !1424, !noalias !1426, !nonnull !5
  br i1 %i.asb, label %.lr.ph114.split.i, label %bb.gt, !prof !19

.lr.ph114.split.i:                                ; preds = %.lr.ph114.i
  %i.asi = icmp slt i32 %.sroa.0.0.i57.i, %.sroa.0.0.i62.i
  br i1 %i.asi, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i, label %.loopexit

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i: ; preds = %.lr.ph114.split.i
  %i.asj = zext nneg i32 %.sroa.0.0.i57.i to i64
  %.sroa.6.0..sroa_idx260 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.8.0..sroa_idx264 = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %.sroa.12.0..sroa_idx272 = getelementptr inbounds nuw i8, ptr %i.ai, i64 40
  br label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i

..loopexit_crit_edge.i:                           ; preds = %.backedge.i
  %exitcond548.not = icmp eq i32 %i.ask, %..i51.i
  br i1 %exitcond548.not, label %.loopexit, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i: ; preds = %..loopexit_crit_edge.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i
  %.sroa.020.0113.i = phi i32 [ %i.ask, %..loopexit_crit_edge.i ], [ %.sroa.0.0.i.i129, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i ] ; 4 uses
  %i.ask = add nuw nsw i32 %.sroa.020.0113.i, 1   ; 2 uses
  %i.asl = sub i32 %.sroa.020.0113.i, %i.are
  br label %bb.gu

bb.gt:                                            ; preds = %.lr.ph114.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !1429
  store i32 0, ptr %i.ad, align 4, !noalias !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !1429
  store i32 %i.aqy, ptr %i.ac, align 4, !noalias !1429
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !1429
  store ptr %i.ad, ptr %i.ab, align 8, !noalias !1429
  br label %.invoke786

bb.gu:                                            ; preds = %.backedge.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i
  %indvars.iv132.i = phi i64 [ %i.asj, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i ], [ %indvars.iv.next133.i, %.backedge.i ] ; 2 uses
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %i.asm = trunc i64 %indvars.iv132.i to i32      ; 3 uses
  %i.asn = sub i32 %i.asm, %i.arg
  %i.aso = mul i32 %i.asn, %i.ara
  %i.asp = add i32 %i.asl, %i.aso
  %i.asq = sext i32 %i.asp to i64                 ; 3 uses
  %i.asr = icmp ugt i64 %i.asf, %i.asq
  br i1 %i.asr, label %bb.gv, label %.split99.us.i.invoke

bb.gv:                                            ; preds = %bb.gu
  %i.ass = getelementptr inbounds nuw i8, ptr %i.ash, i64 %i.asq
  %i.ast = load i8, ptr %i.ass, align 1, !noalias !1427, !noundef !5 ; 3 uses
  %i.asu = icmp eq i8 %i.ast, 0
  br i1 %i.asu, label %.backedge.i, label %bb.gw

bb.gw:                                            ; preds = %bb.gv
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1427
  store ptr %i.ahy, ptr %i.ai, align 8, !noalias !1430
  store <2 x double> %i.aqt, ptr %.sroa.6.0..sroa_idx260, align 8, !noalias !1430
  store <4 x float> %i.aqr, ptr %.sroa.8.0..sroa_idx264, align 8, !noalias !1430
  store <2 x float> %i.aqs, ptr %.sroa.12.0..sroa_idx272, align 8, !noalias !1430
  %i.asv = invoke noundef i32 @_RNvXs0_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_15GradientSamplerNtB5_12PaintSampler6sample(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ai, i32 noundef %.sroa.020.0113.i, i32 noundef %i.asm)
          to label %.noexc135 unwind label %.loopexit356 ; 4 uses

.noexc135:                                        ; preds = %bb.gw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !1427
  %i.asw = mul i32 %i.aqw, %i.asm
  %i.asx = add i32 %i.asw, %.sroa.020.0113.i
  %i.asy = sext i32 %i.asx to i64                 ; 5 uses
  %i.asz = icmp eq i8 %i.ast, -1
  %i.ata = and i32 %i.asv, 255
  %i.atb = icmp eq i32 %i.ata, 255
  %or.cond.i = and i1 %i.asz, %i.atb
  %i.atc = icmp ugt i64 %i.aru, %i.asy            ; 2 uses
  br i1 %or.cond.i, label %bb.gy, label %bb.gx

.backedge.i:                                      ; preds = %bb.ha, %bb.gz, %bb.gv
  %lftr.wideiv.i = trunc i64 %indvars.iv.next133.i to i32
  %exitcond135.not.i = icmp eq i32 %.sroa.0.0.i62.i, %lftr.wideiv.i
  br i1 %exitcond135.not.i, label %..loopexit_crit_edge.i, label %bb.gu

bb.gx:                                            ; preds = %.noexc135
  br i1 %i.atc, label %bb.ha, label %.split99.us.i.invoke

bb.gy:                                            ; preds = %.noexc135
  br i1 %i.atc, label %bb.gz, label %.split99.us.i.invoke

bb.gz:                                            ; preds = %bb.gy
  %i.atd = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %i.asy
  store i32 %i.asv, ptr %i.atd, align 4, !noalias !1427
  br label %.backedge.i

bb.ha:                                            ; preds = %bb.gx
  %i.ate = and i32 %i.asv, 16711935
  %i.atf = zext i8 %i.ast to i32                  ; 2 uses
  %i.atg = mul nuw i32 %i.ate, %i.atf
  %i.ath = lshr i32 %i.atg, 8
  %i.ati = and i32 %i.ath, 16711935
  %i.atj = lshr i32 %i.asv, 8
  %i.atk = and i32 %i.atj, 16711935
  %i.atl = mul nuw i32 %i.atk, %i.atf             ; 2 uses
  %i.atm = and i32 %i.atl, -16711936
  %i.atn = getelementptr inbounds nuw [4 x i8], ptr %i.arj, i64 %i.asy ; 2 uses
  %i.ato = load i32, ptr %i.atn, align 4, !noalias !1427, !noundef !5 ; 2 uses
  %i.atp = lshr i32 %i.atl, 24
  %i.atq = sub nuw nsw i32 256, %i.atp            ; 2 uses
  %i.atr = and i32 %i.ato, 16711935
  %i.ats = mul nuw i32 %i.atr, %i.atq
  %i.att = lshr i32 %i.ats, 8
  %i.atu = lshr i32 %i.ato, 8
  %i.atv = and i32 %i.atu, 16711935
  %i.atw = mul nuw i32 %i.atv, %i.atq
  %i.atx = and i32 %i.att, 16711935
  %i.aty = and i32 %i.atw, -16711936
  %i.atz = or disjoint i32 %i.ati, %i.atm
  %i.aua = add i32 %i.atz, %i.aty
  %i.aub = add i32 %i.aua, %i.atx
  store i32 %i.aub, ptr %i.atn, align 4, !noalias !1427
  br label %.backedge.i

bb.hb:                                            ; preds = %.noexc130
  %.sroa.410.0..sroa_idx.i105 = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %.sroa.410.0.copyload.i106 = load ptr, ptr %.sroa.410.0..sroa_idx.i105, align 8, !noalias !1427, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.511.0..sroa_idx.i107 = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %.sroa.511.0.copyload.i108 = load i64, ptr %.sroa.511.0..sroa_idx.i107, align 8, !noalias !1427 ; 3 uses
  %.sroa.612.0..sroa_idx.i109 = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %i.auc = load <2 x i32>, ptr %.sroa.612.0..sroa_idx.i109, align 8, !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1427
  %i.aud = ptrtoint ptr %.sroa.410.0.copyload.i106 to i64
  %i.aue = and i64 %i.aud, 3
  %i.auf = icmp eq i64 %i.aue, 0
  br i1 %i.auf, label %bb.hc, label %bb.hf

bb.hc:                                            ; preds = %bb.hb
  %i.aug = and i64 %.sroa.511.0.copyload.i108, 3
  %i.auh = icmp eq i64 %i.aug, 0
  br i1 %i.auh, label %bb.hg, label %bb.hf

.loopexit.split-lp.i:                             ; preds = %.split.us.invoke.i, %.invoke.i, %._crit_edge.split.i123, %bb.hf
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

bb.hd:                                            ; preds = %.loopexit35.split.us.split.us.split.us.split.us.i, %.loopexit.split-lp.i
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.us.us.us.us.i, %.loopexit35.split.us.split.us.split.us.split.us.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %i.aui = icmp eq i64 %i.art, 0
  br i1 %i.aui, label %.body, label %bb.he

bb.he:                                            ; preds = %bb.hd
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i106, i64 noundef %i.art, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1425
  br label %.body

bb.hf:                                            ; preds = %bb.hc, %bb.hb
  %.sroa.615.0.ph.i113 = phi i8 [ 1, %bb.hc ], [ 0, %bb.hb ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.615.0.ph.i113) #29
          to label %bb.ho unwind label %.loopexit.split-lp.i, !noalias !1427

bb.hg:                                            ; preds = %bb.hc
  %i.auj = lshr exact i64 %.sroa.511.0.copyload.i108, 2 ; 2 uses
  %.not115.i.a = icmp eq i32 %i.ara, 0
  br i1 %.not115.i.a, label %._crit_edge.split.i123, label %.lr.ph97.i

.lr.ph97.i:                                       ; preds = %bb.hg
  %.not116.i = icmp eq i32 %i.arc, 0
  %i.auk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.aul = load i64, ptr %i.auk, align 8, !alias.scope !1424, !noalias !1426 ; 4 uses
  %i.aum = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.aun = load ptr, ptr %i.aum, align 8, !alias.scope !1424, !noalias !1426, !nonnull !5
  %i.auo = icmp sgt i32 %i.aqy, -1
  br i1 %.not116.i, label %._crit_edge.split.i123, label %.lr.ph97.split.i

.lr.ph97.split.i:                                 ; preds = %.lr.ph97.i
  %i.aup = icmp sgt i32 %i.aqw, -1
  br i1 %i.aup, label %.lr.ph97.split.split.us.i, label %.lr.ph.split.i115, !prof !19

.lr.ph97.split.split.us.i:                        ; preds = %.lr.ph97.split.i
  br i1 %i.auo, label %.lr.ph.us.us.preheader.i117, label %.lr.ph.i115, !prof !19

.lr.ph.us.us.preheader.i117:                      ; preds = %.lr.ph97.split.split.us.i
  %wide.trip.count.i118 = zext i32 %i.arc to i64
  %.sroa.6.0..sroa_idx259 = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 24
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ah, i64 40
  br label %.lr.ph.us.us.i119

._crit_edge.split.i123:                           ; preds = %.lr.ph.us.i116, %.lr.ph97.i, %bb.hg
  %9 = add i32 %i.are, -1
  %10 = add i32 %i.arg, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !1427
  store ptr %.sroa.410.0.copyload.i106, ptr %i.al, align 8, !noalias !1427
  %11 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store i64 %.sroa.511.0.copyload.i108, ptr %11, align 8, !noalias !1427
  %12 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store <2 x i32> %i.auc, ptr %12, align 8, !noalias !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak), !noalias !1427
  store i64 13950255104, ptr %i.ak, align 8, !noalias !1427
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !1427
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.aj, align 16, !noalias !1427
  %13 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x float> zeroinitializer, ptr %13, align 16, !noalias !1427
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %9, i32 noundef %10, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.ak, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.aj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.val63)
          to label %bb.hl unwind label %.loopexit.split-lp.i, !noalias !1425

.lr.ph.us.us.i119:                                ; preds = %.lr.ph.us.i116, %.lr.ph.us.us.preheader.i117
  %.sroa.012.096.us.us.i = phi i32 [ %i.auq, %.lr.ph.us.i116 ], [ 0, %.lr.ph.us.us.preheader.i117 ] ; 3 uses
  %i.auq = add nuw i32 %.sroa.012.096.us.us.i, 1  ; 3 uses
  %i.aur = add i32 %.sroa.012.096.us.us.i, %i.are ; 2 uses
  %i.aus = icmp slt i32 %i.aur, 0
  %..i68.us.us.i = call i32 @llvm.umin.i32(i32 %i.aur, i32 range(i32 1, 0) %i.aqw)
  %.sroa.0.0.i69.us.us.i = select i1 %i.aus, i32 0, i32 %..i68.us.us.i
  br label %bb.hh

bb.hh:                                            ; preds = %bb.hk, %.lr.ph.us.us.i119
  %indvars.iv.i120 = phi i64 [ %indvars.iv.next.i121, %bb.hk ], [ 0, %.lr.ph.us.us.i119 ] ; 2 uses
  %indvars.iv.next.i121 = add nuw nsw i64 %indvars.iv.i120, 1 ; 3 uses
  %i.aut = trunc nuw i64 %indvars.iv.i120 to i32  ; 2 uses
  %i.auu = mul i32 %i.ara, %i.aut
  %i.auv = add i32 %i.auu, %.sroa.012.096.us.us.i
  %i.auw = zext i32 %i.auv to i64                 ; 3 uses
  %i.aux = icmp ugt i64 %i.aul, %i.auw
  br i1 %i.aux, label %bb.hi, label %.split.us.invoke.i

bb.hi:                                            ; preds = %bb.hh
  %i.auy = getelementptr inbounds nuw i8, ptr %i.aun, i64 %i.auw
  %i.auz = load i8, ptr %i.auy, align 1, !noalias !1427, !noundef !5
  %i.ava = add i32 %i.arg, %i.aut                 ; 2 uses
  %i.avb = icmp slt i32 %i.ava, 0
  %..i73.us.us.us.us.i = call i32 @llvm.umin.i32(i32 %i.ava, i32 range(i32 1, 0) %i.aqy)
  %.sroa.0.0.i74.us.us.us.us.i = select i1 %i.avb, i32 0, i32 %..i73.us.us.us.us.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1427
  store ptr %i.ahy, ptr %i.ah, align 8, !noalias !1430
  store <2 x double> %i.aqt, ptr %.sroa.6.0..sroa_idx259, align 8, !noalias !1430
  store <4 x float> %i.aqr, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !1430
  store <2 x float> %i.aqs, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !1430
  %i.avc = invoke noundef i32 @_RNvXs0_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_15GradientSamplerNtB5_12PaintSampler6sample(ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.ah, i32 noundef %.sroa.0.0.i69.us.us.i, i32 noundef %.sroa.0.0.i74.us.us.us.us.i)
          to label %bb.hj unwind label %.loopexit35.split.us.split.us.split.us.split.us.i, !noalias !1427 ; 2 uses

bb.hj:                                            ; preds = %bb.hi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !1427
  %i.avd = trunc nuw i64 %indvars.iv.next.i121 to i32
  %i.ave = mul i32 %i.arr, %i.avd
  %i.avf = add i32 %i.ave, %i.auq
  %i.avg = zext i32 %i.avf to i64                 ; 3 uses
  %i.avh = icmp samesign ugt i64 %i.auj, %i.avg
  br i1 %i.avh, label %bb.hk, label %.split.us.invoke.i

bb.hk:                                            ; preds = %bb.hj
  %i.avi = and i32 %i.avc, 16711935
  %i.avj = zext i8 %i.auz to i32                  ; 2 uses
  %i.avk = mul nuw i32 %i.avi, %i.avj
  %i.avl = lshr i32 %i.avk, 8
  %i.avm = and i32 %i.avl, 16711935
  %i.avn = lshr i32 %i.avc, 8
  %i.avo = and i32 %i.avn, 16711935
  %i.avp = mul nuw i32 %i.avo, %i.avj
  %i.avq = and i32 %i.avp, -16711936
  %i.avr = or disjoint i32 %i.avm, %i.avq
  %i.avs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i106, i64 %i.avg
  store i32 %i.avr, ptr %i.avs, align 4, !noalias !1427
  %exitcond.not.i122 = icmp eq i64 %indvars.iv.next.i121, %wide.trip.count.i118
  br i1 %exitcond.not.i122, label %.lr.ph.us.i116, label %bb.hh

.loopexit35.split.us.split.us.split.us.split.us.i: ; preds = %bb.hi
  %lpad.loopexit.us.us.us.us.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.hd

.lr.ph.us.i116:                                   ; preds = %bb.hk
  %.not118.i.a = icmp eq i32 %i.auq, %i.ara
  br i1 %.not118.i.a, label %._crit_edge.split.i123, label %.lr.ph.us.us.i119

.lr.ph.i115:                                      ; preds = %.lr.ph97.split.split.us.i
  %.not117.i = icmp eq i64 %i.aul, 0
  br i1 %.not117.i, label %.split.us.invoke.i, label %.split57.us.i

.split57.us.i:                                    ; preds = %.lr.ph.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1431
  store i32 0, ptr %i.x, align 4, !noalias !1431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1431
  store i32 %i.aqy, ptr %i.w, align 4, !noalias !1431
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1431
  store ptr %i.x, ptr %i.v, align 8, !noalias !1431
  br label %.invoke.i

bb.hl:                                            ; preds = %._crit_edge.split.i123
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !1427
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !noalias !1427
  %i.avt = icmp eq i64 %i.art, 0
  br i1 %i.avt, label %.loopexit, label %bb.hm

bb.hm:                                            ; preds = %bb.hl
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i106, i64 noundef %i.art, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1425
  br label %.loopexit

.lr.ph.split.i115:                                ; preds = %.lr.ph97.split.i
  %.not104.i = icmp eq i64 %i.aul, 0
  br i1 %.not104.i, label %.split.us.invoke.i, label %bb.hn

bb.hn:                                            ; preds = %.lr.ph.split.i115
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !1432
  store i32 0, ptr %i.aa, align 4, !noalias !1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1432
  store i32 %i.aqw, ptr %i.z, align 4, !noalias !1432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1432
  store ptr %i.aa, ptr %i.y, align 8, !noalias !1432
  br label %.invoke.i

.invoke.i:                                        ; preds = %bb.hn, %.split57.us.i
  %.sink173.i.sroa.phi = phi ptr [ %.sink173.i.sroa.gep, %.split57.us.i ], [ %.sink173.i.sroa.gep315, %bb.hn ]
  %.sink173.i.sroa.phi316 = phi ptr [ %.sink173.i.sroa.gep317, %.split57.us.i ], [ %.sink173.i.sroa.gep318, %bb.hn ]
  %.sink173.i.sroa.phi319 = phi ptr [ %.sink173.i.sroa.gep320, %.split57.us.i ], [ %.sink173.i.sroa.gep321, %bb.hn ]
  %.sink173.i.a = phi ptr [ %i.v, %.split57.us.i ], [ %i.y, %bb.hn ]
  %.sink170.i = phi ptr [ %i.w, %.split57.us.i ], [ %i.z, %bb.hn ]
  %i.avu = phi ptr [ @20, %.split57.us.i ], [ @19, %bb.hn ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink173.i.sroa.phi, align 8, !noalias !1427
  store ptr %.sink170.i, ptr %.sink173.i.sroa.phi316, align 8, !noalias !1427
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink173.i.sroa.phi319, align 8, !noalias !1427
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink173.i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.avu) #31
          to label %.cont.i unwind label %.loopexit.split-lp.i, !noalias !1427

.cont.i:                                          ; preds = %.invoke.i
  unreachable

.split.us.invoke.i:                               ; preds = %bb.hj, %bb.hh, %.lr.ph.split.i115, %.lr.ph.i115
  %i.avv = phi i64 [ 0, %.lr.ph.split.i115 ], [ 0, %.lr.ph.i115 ], [ %i.avg, %bb.hj ], [ %i.auw, %bb.hh ]
  %i.avw = phi i64 [ 0, %.lr.ph.split.i115 ], [ 0, %.lr.ph.i115 ], [ %i.auj, %bb.hj ], [ %i.aul, %bb.hh ]
  %i.avx = phi ptr [ @18, %.lr.ph.split.i115 ], [ @18, %.lr.ph.i115 ], [ @21, %bb.hj ], [ @18, %bb.hh ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.avv, i64 noundef %i.avw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.avx) #29
          to label %.split.us.cont.i unwind label %.loopexit.split-lp.i, !noalias !1427

.split.us.cont.i:                                 ; preds = %.split.us.invoke.i
  unreachable

bb.ho:                                            ; preds = %bb.hf
  unreachable

bb.hp:                                            ; preds = %.noexc130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !1427
  br label %bb.gl

bb.hq:                                            ; preds = %bb.fa
  %.val64 = load ptr, ptr %i.aik, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.avy = getelementptr inbounds nuw i8, ptr %.val64, i64 128
  %i.avz = load i8, ptr %i.avy, align 16, !range !24, !noalias !1433, !noundef !5
  %cond.i140 = icmp eq i8 %i.avz, 0
  br i1 %cond.i140, label %bb.hu, label %bb.hr

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1433
  %i.awa = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform6invert(ptr noalias nofree noundef nonnull sret([28 x i8]) align 4 captures(address) dereferenceable(28) %i.u, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.awa)
          to label %.noexc154 unwind label %.loopexit.split-lp362

.noexc154:                                        ; preds = %bb.hr
  %i.awb = load i32, ptr %i.u, align 4, !range !15, !noalias !1433, !noundef !5
  %i.awc = trunc nuw i32 %i.awb to i1
  br i1 %i.awc, label %bb.hs, label %.invoke792.a, !prof !19

bb.hs:                                            ; preds = %.noexc154
  %i.awd = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.awe = load <4 x float>, ptr %i.awd, align 4, !noalias !1433
  %.sroa.6.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.u, i64 20
  %i.awf = load <2 x float>, ptr %.sroa.6.0..sroa_idx.i144, align 4, !noalias !1433
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !1433
  br label %bb.hu

.invoke792.a:                                     ; preds = %.noexc223, %.noexc154
  %i.awg = phi ptr [ @49, %.noexc154 ], [ @73, %.noexc223 ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.awg) #31
          to label %.cont793.a unwind label %.loopexit.split-lp362

.cont793.a:                                       ; preds = %.invoke792.a
  unreachable

.loopexit361:                                     ; preds = %bb.ie, %.noexc222
  %lpad.loopexit363 = landingpad { ptr, i32 }
          cleanup
  br label %.body227

.loopexit.split-lp362:                            ; preds = %.invoke796, %.invoke794.a, %.invoke792.a, %bb.hr, %bb.hx, %bb.hy
  %lpad.loopexit.split-lp364 = landingpad { ptr, i32 }
          cleanup
  br label %.body227

.body227:                                         ; preds = %.loopexit361, %.loopexit.split-lp362, %bb.il, %bb.im
  %eh.lpad-body228 = phi { ptr, i32 } [ %lpad.phi.i169, %bb.il ], [ %lpad.phi.i169, %bb.im ], [ %lpad.loopexit363, %.loopexit361 ], [ %lpad.loopexit.split-lp364, %.loopexit.split-lp362 ] ; 2 uses
  %.val60 = load i64, ptr %i.cg, align 8          ; 2 uses
  %i.awh = icmp eq i64 %.val60, 0
  br i1 %i.awh, label %.body, label %bb.ht

bb.ht:                                            ; preds = %.body227
  %i.awi = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val61 = load ptr, ptr %i.awi, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val61, i64 noundef %.val60, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %.body

bb.hu:                                            ; preds = %bb.hs, %bb.hq
  %i.awj = phi <4 x float> [ %i.awe, %bb.hs ], [ <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, %bb.hq ] ; 2 uses
  %i.awk = phi <2 x float> [ %i.awf, %bb.hs ], [ zeroinitializer, %bb.hq ] ; 2 uses
  %i.awl = getelementptr inbounds nuw i8, ptr %.val64, i64 80
  %i.awm = getelementptr inbounds nuw i8, ptr %.val64, i64 96
  %i.awn = fpext float %.val248 to double
  %i.awo = load <2 x double>, ptr %i.awl, align 16, !noalias !1433
  %i.awp = load <2 x double>, ptr %i.awm, align 16, !noalias !1433
  %i.awq = fadd <2 x double> %i.awo, %i.awp       ; 2 uses
  %i.awr = fcmp ord <2 x double> %i.awq, zeroinitializer
  %i.aws = select <2 x i1> %i.awr, <2 x double> %i.awq, <2 x double> zeroinitializer
  %i.awt = insertelement <2 x double> poison, double %i.awn, i64 0
  %i.awu = shufflevector <2 x double> %i.awt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.awv = fmul <2 x double> %i.aws, %i.awu       ; 2 uses
  %i.aww = fcmp ord <2 x double> %i.awv, zeroinitializer
  %i.awx = select <2 x i1> %i.aww, <2 x double> %i.awv, <2 x double> zeroinitializer ; 5 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.val65 = load ptr, ptr %i.awy, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1434)
  call void @llvm.experimental.noalias.scope.decl(metadata !1435)
  %.not.i156 = icmp eq ptr %.val65, null
  %i.awz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.axa = load i32, ptr %i.awz, align 8, !range !20, !alias.scope !1434, !noalias !1436, !noundef !5 ; 8 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.axc = load i32, ptr %i.axb, align 4, !range !20, !alias.scope !1434, !noalias !1436, !noundef !5 ; 7 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 48
  %i.axe = load i32, ptr %i.axd, align 8, !alias.scope !1435, !noalias !1437, !noundef !5 ; 6 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 52
  %i.axg = load i32, ptr %i.axf, align 4, !alias.scope !1435, !noalias !1437, !noundef !5 ; 4 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 40
  %i.axi = load i32, ptr %i.axh, align 8, !alias.scope !1435, !noalias !1437, !noundef !5 ; 6 uses
  %i.axj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 44
  %i.axk = load i32, ptr %i.axj, align 4, !alias.scope !1435, !noalias !1437, !noundef !5 ; 6 uses
  br i1 %.not.i156, label %bb.hv, label %bb.hx

bb.hv:                                            ; preds = %bb.hu
  %i.axl = add i32 %i.axk, %i.axg                 ; 2 uses
  %i.axm = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.axn = load ptr, ptr %i.axm, align 8, !alias.scope !1434, !noalias !1436, !nonnull !5, !noundef !5 ; 3 uses
  %i.axo = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.axp = load i64, ptr %i.axo, align 8, !alias.scope !1434, !noalias !1436, !noundef !5 ; 2 uses
  %i.axq = ptrtoint ptr %i.axn to i64
  %i.axr = and i64 %i.axq, 3
  %i.axs = icmp eq i64 %i.axr, 0
  br i1 %i.axs, label %bb.hw, label %bb.hy

bb.hw:                                            ; preds = %bb.hv
  %i.axt = and i64 %i.axp, 3
  %i.axu = icmp eq i64 %i.axt, 0
  br i1 %i.axu, label %bb.hz, label %bb.hy

bb.hx:                                            ; preds = %bb.hu
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1438
  %i.axv = add i32 %i.axe, 2                      ; 2 uses
  %i.axw = add i32 %i.axg, 2
  invoke void @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap3new(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.t, i32 noundef %i.axv, i32 noundef %i.axw)
          to label %.noexc217 unwind label %.loopexit.split-lp362

.noexc217:                                        ; preds = %bb.hx
  %i.axx = load i64, ptr %i.t, align 8, !range !7, !noalias !1438, !noundef !5 ; 5 uses
  %.not45.i157 = icmp eq i64 %i.axx, -1
  br i1 %.not45.i157, label %bb.iy, label %bb.ij

bb.hy:                                            ; preds = %bb.hw, %bb.hv
  %.sroa.621.0.ph.i198 = phi i8 [ 1, %bb.hw ], [ 0, %bb.hv ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.621.0.ph.i198) #31
          to label %.noexc218 unwind label %.loopexit.split-lp362

.noexc218:                                        ; preds = %bb.hy
  unreachable

bb.hz:                                            ; preds = %bb.hw
  %i.axy = lshr exact i64 %i.axp, 2               ; 3 uses
  %i.axz = icmp sgt i32 %i.axa, -1
  br i1 %i.axz, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201, label %bb.ia, !prof !19

bb.ia:                                            ; preds = %bb.hz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1439
  store i32 0, ptr %i.n, align 4, !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1439
  store i32 %i.axa, ptr %i.m, align 4, !noalias !1439
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1439
  store ptr %i.n, ptr %i.l, align 8, !noalias !1439
  br label %.invoke794.a

.invoke794.a:                                     ; preds = %bb.ib, %bb.ia
  %.sink802.sroa.phi = phi ptr [ %.sink802.sroa.gep, %bb.ib ], [ %.sink802.sroa.gep233, %bb.ia ]
  %.sink802.sroa.phi234 = phi ptr [ %.sink802.sroa.gep235, %bb.ib ], [ %.sink802.sroa.gep236, %bb.ia ]
  %.sink802.sroa.phi237 = phi ptr [ %.sink802.sroa.gep238, %bb.ib ], [ %.sink802.sroa.gep239, %bb.ia ]
  %.sink802 = phi ptr [ %i.i, %bb.ib ], [ %i.l, %bb.ia ]
  %.sink799 = phi ptr [ %i.j, %bb.ib ], [ %i.m, %bb.ia ]
  %i.aya = phi ptr [ @13, %bb.ib ], [ @12, %bb.ia ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink802.sroa.phi, align 8, !noalias !1438
  store ptr %.sink799, ptr %.sink802.sroa.phi234, align 8, !noalias !1438
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink802.sroa.phi237, align 8, !noalias !1438
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink802, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aya) #31
          to label %.cont795.a unwind label %.loopexit.split-lp362

.cont795.a:                                       ; preds = %.invoke794.a
  unreachable

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201: ; preds = %bb.hz
  %i.ayb = add i32 %i.axi, %i.axe                 ; 2 uses
  %i.ayc = icmp slt i32 %i.axi, 0
  %..i.i202 = call i32 @llvm.umin.i32(i32 %i.axi, i32 range(i32 1, 0) %i.axa)
  %.sroa.0.0.i.i203 = select i1 %i.ayc, i32 0, i32 %..i.i202 ; 2 uses
  %i.ayd = icmp sgt i32 %i.ayb, -1
  %..i51.i204 = call i32 @llvm.umin.i32(i32 %i.ayb, i32 %i.axa) ; 2 uses
  %i.aye = icmp samesign ugt i32 %..i51.i204, %.sroa.0.0.i.i203
  %i.ayf = select i1 %i.ayd, i1 %i.aye, i1 false
  br i1 %i.ayf, label %.lr.ph126.i, label %.loopexit366

.lr.ph126.i:                                      ; preds = %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201
  %i.ayg = icmp sgt i32 %i.axc, -1
  %i.ayh = icmp slt i32 %i.axk, 0
  %..i56.i205 = call i32 @llvm.umin.i32(i32 %i.axk, i32 range(i32 1, 0) %i.axc)
  %.sroa.0.0.i57.i206 = select i1 %i.ayh, i32 0, i32 %..i56.i205 ; 2 uses
  %i.ayi = icmp slt i32 %i.axl, 0
  %..i61.i207 = call i32 @llvm.umin.i32(i32 %i.axl, i32 range(i32 1, 0) %i.axc)
  %.sroa.0.0.i62.i208 = select i1 %i.ayi, i32 0, i32 %..i61.i207 ; 2 uses
  %i.ayj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.ayk = load i64, ptr %i.ayj, align 8, !alias.scope !1435, !noalias !1437 ; 2 uses
  %i.ayl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.aym = load ptr, ptr %i.ayl, align 8, !alias.scope !1435, !noalias !1437, !nonnull !5
  %i.ayn = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  %i.ayo = getelementptr inbounds nuw i8, ptr %i.p, i64 24 ; 2 uses
  br i1 %i.ayg, label %.lr.ph126.split.i, label %bb.ib, !prof !19

.lr.ph126.split.i:                                ; preds = %.lr.ph126.i
  %i.ayp = icmp slt i32 %.sroa.0.0.i57.i206, %.sroa.0.0.i62.i208
  br i1 %i.ayp, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211, label %.loopexit366

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211: ; preds = %.lr.ph126.split.i
  %i.ayq = zext nneg i32 %.sroa.0.0.i57.i206 to i64
  %.sroa.6280.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7283.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.12298.0..sroa_idx299 = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %.sroa.14.0..sroa_idx304 = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.ayr = fdiv <2 x double> %i.awx, splat (double 1.270000e+02)
  %i.ays = fptrunc <2 x double> %i.ayr to <2 x float> ; 2 uses
  %i.ayt = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ays)
  %i.ayu = extractelement <2 x double> %i.awx, i64 0
  %i.ayv = extractelement <2 x double> %i.awx, i64 1
  %i.ayw = insertelement <2 x float> poison, float %.val248, i64 0
  %i.ayx = shufflevector <2 x float> %i.ayw, <2 x float> poison, <2 x i32> zeroinitializer
  br label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212

..loopexit_crit_edge.i216:                        ; preds = %.backedge.i214
  %exitcond.not = icmp eq i32 %i.ayy, %..i51.i204
  br i1 %exitcond.not, label %.loopexit366, label %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212

_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212: ; preds = %..loopexit_crit_edge.i216, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211
  %.sroa.020.0125.i = phi i32 [ %i.ayy, %..loopexit_crit_edge.i216 ], [ %.sroa.0.0.i.i203, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.preheader.i211 ] ; 4 uses
  %i.ayy = add nuw nsw i32 %.sroa.020.0125.i, 1   ; 2 uses
  %i.ayz = sub i32 %.sroa.020.0125.i, %i.axi
  %i.aza = uitofp nneg i32 %.sroa.020.0125.i to float
  br label %bb.ic

bb.ib:                                            ; preds = %.lr.ph126.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1440
  store i32 0, ptr %i.k, align 4, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1440
  store i32 %i.axc, ptr %i.j, align 4, !noalias !1440
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1440
  store ptr %i.k, ptr %i.i, align 8, !noalias !1440
  br label %.invoke794.a

bb.ic:                                            ; preds = %.backedge.i214, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212
  %indvars.iv146.i = phi i64 [ %i.ayq, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit63.i212 ], [ %indvars.iv.next147.i, %.backedge.i214 ] ; 2 uses
  %indvars.iv.next147.i = add nuw nsw i64 %indvars.iv146.i, 1 ; 2 uses
  %i.azb = trunc i64 %indvars.iv146.i to i32      ; 3 uses
  %i.azc = sub i32 %i.azb, %i.axk
  %i.azd = mul i32 %i.azc, %i.axe
  %i.aze = add i32 %i.ayz, %i.azd
  %i.azf = sext i32 %i.aze to i64                 ; 3 uses
  %i.azg = icmp ugt i64 %i.ayk, %i.azf
  br i1 %i.azg, label %bb.id, label %.invoke796

bb.id:                                            ; preds = %bb.ic
  %i.azh = getelementptr inbounds nuw i8, ptr %i.aym, i64 %i.azf
  %i.azi = load i8, ptr %i.azh, align 1, !noalias !1438, !noundef !5 ; 3 uses
  %i.azj = icmp eq i8 %i.azi, 0
  br i1 %i.azj, label %.backedge.i214, label %bb.ie

.invoke796:                                       ; preds = %bb.if, %bb.ig, %bb.ic
  %i.azk = phi i64 [ %i.bae, %bb.ig ], [ %i.azf, %bb.ic ], [ %i.bae, %bb.if ]
  %i.azl = phi i64 [ %i.axy, %bb.ig ], [ %i.ayk, %bb.ic ], [ %i.axy, %bb.if ]
  %i.azm = phi ptr [ @15, %bb.ig ], [ @14, %bb.ic ], [ @16, %bb.if ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.azk, i64 noundef %i.azl, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.azm) #31
          to label %.cont797 unwind label %.loopexit.split-lp362

.cont797:                                         ; preds = %.invoke796
  unreachable

bb.ie:                                            ; preds = %bb.id
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1438
  store ptr %i.cg, ptr %i.p, align 8, !noalias !1441
  store double %i.ayu, ptr %.sroa.6280.0..sroa_idx281, align 8, !noalias !1441
  store double %i.ayv, ptr %.sroa.7283.0..sroa_idx284, align 8, !noalias !1441
  store <4 x float> %i.awj, ptr %i.ayo, align 8, !noalias !1441
  store <2 x float> %i.awk, ptr %.sroa.12298.0..sroa_idx299, align 8, !noalias !1441
  store float %.val248, ptr %.sroa.14.0..sroa_idx304, align 8, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1442
  %i.azn = uitofp nneg i32 %i.azb to float
  store float %i.aza, ptr %i.h, align 8, !noalias !1442
  store float %i.azn, ptr %i.ayn, align 4, !noalias !1442
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9map_point(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.ayo, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.h)
          to label %.noexc222 unwind label %.loopexit361

.noexc222:                                        ; preds = %bb.ie
  %i.azo = load <2 x float>, ptr %i.h, align 8, !noalias !1442
  %i.azp = fmul <2 x float> %i.ayx, %i.azo
  %i.azq = frem <2 x float> %i.azp, %i.ays        ; 3 uses
  %i.azr = fcmp olt <2 x float> %i.azq, zeroinitializer
  %i.azs = fadd <2 x float> %i.ayt, %i.azq
  %i.azt = select <2 x i1> %i.azr, <2 x float> %i.azs, <2 x float> %i.azq ; 2 uses
  %i.azu = extractelement <2 x float> %i.azt, i64 0
  %i.azv = call float @llvm.floor.f32(float %i.azu)
  %i.azw = call i32 @llvm.fptoui.sat.i32.f32(float %i.azv)
  %i.azx = extractelement <2 x float> %i.azt, i64 1
  %i.azy = call float @llvm.floor.f32(float %i.azx)
  %i.azz = call i32 @llvm.fptoui.sat.i32.f32(float %i.azy)
  %i.baa = invoke i40 @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap5pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg, i32 noundef %i.azw, i32 noundef %i.azz)
          to label %.noexc223 unwind label %.loopexit361 ; 2 uses

.noexc223:                                        ; preds = %.noexc222
  %i.bab = trunc i40 %i.baa to i1
  br i1 %i.bab, label %_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i, label %.invoke792.a, !prof !19

_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i: ; preds = %.noexc223
  %.sroa.04.1.extract.shift.i.i = lshr i40 %i.baa, 8
  %.sroa.04.1.extract.trunc.i.i = trunc nuw i40 %.sroa.04.1.extract.shift.i.i to i32 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1442
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1438
  %i.bac = mul i32 %i.axa, %i.azb
  %i.bad = add i32 %i.bac, %.sroa.020.0125.i
  %i.bae = sext i32 %i.bad to i64                 ; 5 uses
  %i.baf = icmp eq i8 %i.azi, -1
  %i.bag = and i32 %.sroa.04.1.extract.trunc.i.i, 255
  %i.bah = icmp eq i32 %i.bag, 255
  %or.cond.i213 = and i1 %i.baf, %i.bah
  %i.bai = icmp ugt i64 %i.axy, %i.bae            ; 2 uses
  br i1 %or.cond.i213, label %bb.ig, label %bb.if

.backedge.i214:                                   ; preds = %bb.ii, %bb.ih, %bb.id
  %lftr.wideiv.i215 = trunc i64 %indvars.iv.next147.i to i32
  %exitcond149.not.i = icmp eq i32 %.sroa.0.0.i62.i208, %lftr.wideiv.i215
  br i1 %exitcond149.not.i, label %..loopexit_crit_edge.i216, label %bb.ic

bb.if:                                            ; preds = %_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i
  br i1 %i.bai, label %bb.ii, label %.invoke796

bb.ig:                                            ; preds = %_RNvXs2_NtCs4xylOWI7Ys4_12typst_render5paintNtB5_13TilingSamplerNtB5_12PaintSampler6sample.exit.i
  br i1 %i.bai, label %bb.ih, label %.invoke796

bb.ih:                                            ; preds = %bb.ig
  %i.baj = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %i.bae
  store i32 %.sroa.04.1.extract.trunc.i.i, ptr %i.baj, align 4, !noalias !1438
  br label %.backedge.i214

bb.ii:                                            ; preds = %bb.if
  %i.bak = and i32 %.sroa.04.1.extract.trunc.i.i, 16711935
  %i.bal = zext i8 %i.azi to i32                  ; 2 uses
  %i.bam = mul nuw i32 %i.bak, %i.bal
  %i.ban = lshr i32 %i.bam, 8
  %i.bao = and i32 %i.ban, 16711935
  %i.bap = lshr i32 %.sroa.04.1.extract.trunc.i.i, 8
  %i.baq = and i32 %i.bap, 16711935
  %i.bar = mul nuw i32 %i.baq, %i.bal             ; 2 uses
  %i.bas = and i32 %i.bar, -16711936
  %i.bat = getelementptr inbounds nuw [4 x i8], ptr %i.axn, i64 %i.bae ; 2 uses
  %i.bau = load i32, ptr %i.bat, align 4, !noalias !1438, !noundef !5 ; 2 uses
  %i.bav = lshr i32 %i.bar, 24
  %i.baw = sub nuw nsw i32 256, %i.bav            ; 2 uses
  %i.bax = and i32 %i.bau, 16711935
  %i.bay = mul nuw i32 %i.bax, %i.baw
  %i.baz = lshr i32 %i.bay, 8
  %i.bba = lshr i32 %i.bau, 8
  %i.bbb = and i32 %i.bba, 16711935
  %i.bbc = mul nuw i32 %i.bbb, %i.baw
  %i.bbd = and i32 %i.baz, 16711935
  %i.bbe = and i32 %i.bbc, -16711936
  %i.bbf = or disjoint i32 %i.bao, %i.bas
  %i.bbg = add i32 %i.bbf, %i.bbe
  %i.bbh = add i32 %i.bbg, %i.bbd
  store i32 %i.bbh, ptr %i.bat, align 4, !noalias !1438
  br label %.backedge.i214

bb.ij:                                            ; preds = %.noexc217
  %.sroa.410.0..sroa_idx.i158 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.410.0.copyload.i159 = load ptr, ptr %.sroa.410.0..sroa_idx.i158, align 8, !noalias !1438, !nonnull !5, !noundef !5 ; 5 uses
  %.sroa.511.0..sroa_idx.i160 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %.sroa.511.0.copyload.i161 = load i64, ptr %.sroa.511.0..sroa_idx.i160, align 8, !noalias !1438 ; 3 uses
  %.sroa.612.0..sroa_idx.i162 = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.bbi = load <2 x i32>, ptr %.sroa.612.0..sroa_idx.i162, align 8, !noalias !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1438
  %i.bbj = ptrtoint ptr %.sroa.410.0.copyload.i159 to i64
  %i.bbk = and i64 %i.bbj, 3
  %i.bbl = icmp eq i64 %i.bbk, 0
  br i1 %i.bbl, label %bb.ik, label %bb.in

bb.ik:                                            ; preds = %bb.ij
  %i.bbm = and i64 %.sroa.511.0.copyload.i161, 3
  %i.bbn = icmp eq i64 %i.bbm, 0
  br i1 %i.bbn, label %bb.io, label %bb.in

.loopexit.split-lp.i167:                          ; preds = %.split64.us.i, %.split.us.invoke.i179, %.invoke.i175, %._crit_edge.split.i194, %bb.in
  %lpad.loopexit.split-lp.i168 = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

bb.il:                                            ; preds = %.loopexit35.split.us.split.us.split.us.split.us.i192, %.loopexit.split-lp.i167
  %lpad.phi.i169 = phi { ptr, i32 } [ %lpad.loopexit.us.us.us.us.i193, %.loopexit35.split.us.split.us.split.us.split.us.i192 ], [ %lpad.loopexit.split-lp.i168, %.loopexit.split-lp.i167 ] ; 2 uses
  %i.bbo = icmp eq i64 %i.axx, 0
  br i1 %i.bbo, label %.body227, label %bb.im

bb.im:                                            ; preds = %bb.il
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i159, i64 noundef %i.axx, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1436
  br label %.body227

bb.in:                                            ; preds = %bb.ik, %bb.ij
  %.sroa.615.0.ph.i166 = phi i8 [ 1, %bb.ik ], [ 0, %bb.ij ]
  invoke void @_RINvNtCsiuZbGDBbf1c_8bytemuck8internal20something_went_wrongNtB4_12PodCastErrorECs1BY3mFRTp65_10read_fonts(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 14, i8 noundef %.sroa.615.0.ph.i166) #29
          to label %bb.iw unwind label %.loopexit.split-lp.i167, !noalias !1438

bb.io:                                            ; preds = %bb.ik
  %i.bbp = lshr exact i64 %.sroa.511.0.copyload.i161, 2 ; 2 uses
  %.not127.i171 = icmp eq i32 %i.axe, 0
  br i1 %.not127.i171, label %._crit_edge.split.i194, label %.lr.ph109.i

.lr.ph109.i:                                      ; preds = %bb.io
  %.not128.i172 = icmp eq i32 %i.axg, 0
  %i.bbq = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 32
  %i.bbr = load i64, ptr %i.bbq, align 8, !alias.scope !1435, !noalias !1437 ; 4 uses
  %i.bbs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 24
  %i.bbt = load ptr, ptr %i.bbs, align 8, !alias.scope !1435, !noalias !1437, !nonnull !5
  %i.bbu = icmp sgt i32 %i.axc, -1
  %i.bbv = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.bbw = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  br i1 %.not128.i172, label %._crit_edge.split.i194, label %.lr.ph109.split.i

.lr.ph109.split.i:                                ; preds = %.lr.ph109.i
  %i.bbx = icmp sgt i32 %i.axa, -1
  br i1 %i.bbx, label %.lr.ph109.split.split.us.i, label %.lr.ph.split.i171, !prof !19

.lr.ph109.split.split.us.i:                       ; preds = %.lr.ph109.split.i
  br i1 %i.bbu, label %.lr.ph.us.us.preheader.i183, label %.lr.ph.i173, !prof !19

.lr.ph.us.us.preheader.i183:                      ; preds = %.lr.ph109.split.split.us.i
  %wide.trip.count.i184 = zext i32 %i.axg to i64
  %.sroa.6280.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.12298.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.bby = fdiv <2 x double> %i.awx, splat (double 1.270000e+02)
  %i.bbz = fptrunc <2 x double> %i.bby to <2 x float> ; 2 uses
  %i.bca = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bbz)
  %i.bcb = insertelement <2 x float> poison, float %.val248, i64 0
  %i.bcc = shufflevector <2 x float> %i.bcb, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us.us.i185

._crit_edge.split.i194:                           ; preds = %.lr.ph.us.i181, %.lr.ph109.i, %bb.io
  %14 = add i32 %i.axi, -1
  %15 = add i32 %i.axk, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1438
  store ptr %.sroa.410.0.copyload.i159, ptr %i.s, align 8, !noalias !1438
  %16 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store i64 %.sroa.511.0.copyload.i161, ptr %16, align 8, !noalias !1438
  %17 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store <2 x i32> %i.bbi, ptr %17, align 8, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1438
  store i64 13950255104, ptr %i.r, align 8, !noalias !1438
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1438
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.q, align 16, !noalias !1438
  %18 = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store <2 x float> zeroinitializer, ptr %18, align 16, !noalias !1438
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap11draw_pixmap(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i32 noundef %14, i32 noundef %15, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.r, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %.val65)
          to label %bb.it unwind label %.loopexit.split-lp.i167, !noalias !1436

.lr.ph.us.us.i185:                                ; preds = %.lr.ph.us.i181, %.lr.ph.us.us.preheader.i183
  %.sroa.012.0108.us.us.i = phi i32 [ %i.bcd, %.lr.ph.us.i181 ], [ 0, %.lr.ph.us.us.preheader.i183 ] ; 3 uses
  %i.bcd = add nuw i32 %.sroa.012.0108.us.us.i, 1 ; 3 uses
  %i.bce = add i32 %.sroa.012.0108.us.us.i, %i.axi ; 2 uses
  %i.bcf = icmp slt i32 %i.bce, 0
  %..i68.us.us.i186 = call i32 @llvm.umin.i32(i32 %i.bce, i32 range(i32 1, 0) %i.axa)
  %.sroa.0.0.i69.us.us.i187 = select i1 %i.bcf, i32 0, i32 %..i68.us.us.i186
  %i.bcg = uitofp nneg i32 %.sroa.0.0.i69.us.us.i187 to float
  br label %bb.ip

bb.ip:                                            ; preds = %bb.is, %.lr.ph.us.us.i185
  %indvars.iv.i188 = phi i64 [ %indvars.iv.next.i189, %bb.is ], [ 0, %.lr.ph.us.us.i185 ] ; 2 uses
  %indvars.iv.next.i189 = add nuw nsw i64 %indvars.iv.i188, 1 ; 3 uses
  %i.bch = trunc nuw i64 %indvars.iv.i188 to i32  ; 2 uses
  %i.bci = mul i32 %i.axe, %i.bch
  %i.bcj = add i32 %i.bci, %.sroa.012.0108.us.us.i
  %i.bck = zext i32 %i.bcj to i64                 ; 3 uses
  %i.bcl = icmp ugt i64 %i.bbr, %i.bck
  br i1 %i.bcl, label %bb.iq, label %.split.us.invoke.i179

bb.iq:                                            ; preds = %bb.ip
  %i.bcm = getelementptr inbounds nuw i8, ptr %i.bbt, i64 %i.bck
  %i.bcn = load i8, ptr %i.bcm, align 1, !noalias !1438, !noundef !5
  %i.bco = add i32 %i.axk, %i.bch                 ; 2 uses
  %i.bcp = icmp slt i32 %i.bco, 0
  %..i73.us.us.us.us.i190 = call i32 @llvm.umin.i32(i32 %i.bco, i32 range(i32 1, 0) %i.axc)
  %.sroa.0.0.i74.us.us.us.us.i191 = select i1 %i.bcp, i32 0, i32 %..i73.us.us.us.us.i190
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1438
  store ptr %i.cg, ptr %i.o, align 8, !noalias !1441
  store <2 x double> %i.awx, ptr %.sroa.6280.0..sroa_idx, align 8, !noalias !1441
  store <4 x float> %i.awj, ptr %i.bbw, align 8, !noalias !1441
  store <2 x float> %i.awk, ptr %.sroa.12298.0..sroa_idx, align 8, !noalias !1441
  store float %.val248, ptr %.sroa.14.0..sroa_idx, align 8, !noalias !1441
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1443
  %i.bcq = uitofp nneg i32 %.sroa.0.0.i74.us.us.us.us.i191 to float
  store float %i.bcg, ptr %i.a, align 8, !noalias !1443
  store float %i.bcq, ptr %i.bbv, align 4, !noalias !1443
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9map_point(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bbw, ptr noalias nofree noundef nonnull align 4 dereferenceable(8) %i.a)
          to label %.noexc81.us.us.us.us.i unwind label %.loopexit35.split.us.split.us.split.us.split.us.i192, !noalias !1438

.noexc81.us.us.us.us.i:                           ; preds = %bb.iq
  %i.bcr = load <2 x float>, ptr %i.a, align 8, !noalias !1443
  %i.bcs = fmul <2 x float> %i.bcc, %i.bcr
  %i.bct = frem <2 x float> %i.bcs, %i.bbz        ; 3 uses
  %i.bcu = fcmp olt <2 x float> %i.bct, zeroinitializer
  %i.bcv = fadd <2 x float> %i.bca, %i.bct
  %i.bcw = select <2 x i1> %i.bcu, <2 x float> %i.bcv, <2 x float> %i.bct ; 2 uses
  %i.bcx = extractelement <2 x float> %i.bcw, i64 0
  %i.bcy = call float @llvm.floor.f32(float %i.bcx)
  %i.bcz = call i32 @llvm.fptoui.sat.i32.f32(float %i.bcy)
  %i.bda = extractelement <2 x float> %i.bcw, i64 1
  %i.bdb = call float @llvm.floor.f32(float %i.bda)
  %i.bdc = call i32 @llvm.fptoui.sat.i32.f32(float %i.bdb)
  %i.bdd = invoke i40 @_RNvMNtCsfVrisfeHJNS_9tiny_skia6pixmapNtB2_6Pixmap5pixel(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cg, i32 noundef %i.bcz, i32 noundef %i.bdc)
          to label %.noexc82.us.us.us.us.i unwind label %.loopexit35.split.us.split.us.split.us.split.us.i192, !noalias !1438 ; 2 uses

.noexc82.us.us.us.us.i:                           ; preds = %.noexc81.us.us.us.us.i
  %i.bde = trunc i40 %i.bdd to i1
  br i1 %i.bde, label %bb.ir, label %.split64.us.i, !prof !19

bb.ir:                                            ; preds = %.noexc82.us.us.us.us.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1443
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1438
  %i.bdf = trunc nuw i64 %indvars.iv.next.i189 to i32
  %i.bdg = mul i32 %i.axv, %i.bdf
  %i.bdh = add i32 %i.bdg, %i.bcd
  %i.bdi = zext i32 %i.bdh to i64                 ; 3 uses
  %i.bdj = icmp samesign ugt i64 %i.bbp, %i.bdi
  br i1 %i.bdj, label %bb.is, label %.split.us.invoke.i179

bb.is:                                            ; preds = %bb.ir
  %.sroa.04.1.extract.shift.i79.us.us.us.us.i = lshr i40 %i.bdd, 8
  %.sroa.04.1.extract.trunc.i80.us.us.us.us.i = trunc nuw i40 %.sroa.04.1.extract.shift.i79.us.us.us.us.i to i32 ; 2 uses
  %i.bdk = and i32 %.sroa.04.1.extract.trunc.i80.us.us.us.us.i, 16711935
  %i.bdl = zext i8 %i.bcn to i32                  ; 2 uses
  %i.bdm = mul nuw i32 %i.bdk, %i.bdl
  %i.bdn = lshr i32 %i.bdm, 8
  %i.bdo = and i32 %i.bdn, 16711935
  %i.bdp = lshr i32 %.sroa.04.1.extract.trunc.i80.us.us.us.us.i, 8
  %i.bdq = and i32 %i.bdp, 16711935
  %i.bdr = mul nuw i32 %i.bdq, %i.bdl
  %i.bds = and i32 %i.bdr, -16711936
  %i.bdt = or disjoint i32 %i.bdo, %i.bds
  %i.bdu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.410.0.copyload.i159, i64 %i.bdi
  store i32 %i.bdt, ptr %i.bdu, align 4, !noalias !1438
  %exitcond.not.i194 = icmp eq i64 %indvars.iv.next.i189, %wide.trip.count.i184
  br i1 %exitcond.not.i194, label %.lr.ph.us.i181, label %bb.ip

.loopexit35.split.us.split.us.split.us.split.us.i192: ; preds = %.noexc81.us.us.us.us.i, %bb.iq
  %lpad.loopexit.us.us.us.us.i193 = landingpad { ptr, i32 }
          cleanup
  br label %bb.il

.lr.ph.us.i181:                                   ; preds = %bb.is
  %.not130.i182 = icmp eq i32 %i.bcd, %i.axe
  br i1 %.not130.i182, label %._crit_edge.split.i194, label %.lr.ph.us.us.i185

.lr.ph.i173:                                      ; preds = %.lr.ph109.split.split.us.i
  %.not129.i174 = icmp eq i64 %i.bbr, 0
  br i1 %.not129.i174, label %.split.us.invoke.i179, label %.split61.us.i

.split61.us.i:                                    ; preds = %.lr.ph.i173
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1444
  store i32 0, ptr %i.d, align 4, !noalias !1444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1444
  store i32 %i.axc, ptr %i.c, align 4, !noalias !1444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1444
  store ptr %i.d, ptr %i.b, align 8, !noalias !1444
  br label %.invoke.i175

bb.it:                                            ; preds = %._crit_edge.split.i194
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1438
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !1438
  %i.bdv = icmp eq i64 %i.axx, 0
  br i1 %i.bdv, label %.loopexit366, label %bb.iu

bb.iu:                                            ; preds = %bb.it
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.410.0.copyload.i159, i64 noundef %i.axx, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1436
  br label %.loopexit366

.lr.ph.split.i171:                                ; preds = %.lr.ph109.split.i
  %.not116.i172 = icmp eq i64 %i.bbr, 0
  br i1 %.not116.i172, label %.split.us.invoke.i179, label %bb.iv

bb.iv:                                            ; preds = %.lr.ph.split.i171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1445
  store i32 0, ptr %i.g, align 4, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1445
  store i32 %i.axa, ptr %i.f, align 4, !noalias !1445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1445
  store ptr %i.g, ptr %i.e, align 8, !noalias !1445
  br label %.invoke.i175

.invoke.i175:                                     ; preds = %bb.iv, %.split61.us.i
  %.sink189.i.sroa.phi = phi ptr [ %.sink189.i.sroa.gep, %.split61.us.i ], [ %.sink189.i.sroa.gep322, %bb.iv ]
  %.sink189.i.sroa.phi323 = phi ptr [ %.sink189.i.sroa.gep324, %.split61.us.i ], [ %.sink189.i.sroa.gep325, %bb.iv ]
  %.sink189.i.sroa.phi326 = phi ptr [ %.sink189.i.sroa.gep327, %.split61.us.i ], [ %.sink189.i.sroa.gep328, %bb.iv ]
  %.sink189.i = phi ptr [ %i.b, %.split61.us.i ], [ %i.e, %bb.iv ]
  %.sink186.i = phi ptr [ %i.c, %.split61.us.i ], [ %i.f, %bb.iv ]
  %i.bdw = phi ptr [ @20, %.split61.us.i ], [ @19, %bb.iv ]
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink189.i.sroa.phi, align 8, !noalias !1438
  store ptr %.sink186.i, ptr %.sink189.i.sroa.phi323, align 8, !noalias !1438
  store ptr @_RNvXsQ_NtNtCs3oUPovFnLWP_4core3fmt3numlNtB7_5Debug3fmt, ptr %.sink189.i.sroa.phi326, align 8, !noalias !1438
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @72, ptr noundef nonnull %.sink189.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdw) #31
          to label %.cont.i178 unwind label %.loopexit.split-lp.i167, !noalias !1438

.cont.i178:                                       ; preds = %.invoke.i175
  unreachable

.split.us.invoke.i179:                            ; preds = %bb.ir, %bb.ip, %.lr.ph.split.i171, %.lr.ph.i173
  %i.bdx = phi i64 [ 0, %.lr.ph.split.i171 ], [ 0, %.lr.ph.i173 ], [ %i.bdi, %bb.ir ], [ %i.bck, %bb.ip ]
  %i.bdy = phi i64 [ 0, %.lr.ph.split.i171 ], [ 0, %.lr.ph.i173 ], [ %i.bbp, %bb.ir ], [ %i.bbr, %bb.ip ]
  %i.bdz = phi ptr [ @18, %.lr.ph.split.i171 ], [ @18, %.lr.ph.i173 ], [ @21, %bb.ir ], [ @18, %bb.ip ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.bdx, i64 noundef %i.bdy, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bdz) #29
          to label %.split.us.cont.i180 unwind label %.loopexit.split-lp.i167, !noalias !1438

.split.us.cont.i180:                              ; preds = %.split.us.invoke.i179
  unreachable

bb.iw:                                            ; preds = %bb.in
  unreachable

.split64.us.i:                                    ; preds = %.noexc82.us.us.us.us.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @73) #31
          to label %.noexc83.i unwind label %.loopexit.split-lp.i167, !noalias !1438

.noexc83.i:                                       ; preds = %.split64.us.i
  unreachable

.loopexit366:                                     ; preds = %..loopexit_crit_edge.i216, %bb.iu, %bb.it, %.lr.ph126.split.i, %_RNvXs1d_NtNtCs3oUPovFnLWP_4core3cmp5implslNtB8_3Ord5clamp.exit53.i201
  %.val58 = load i64, ptr %i.cg, align 8          ; 2 uses
  %i.bea = icmp eq i64 %.val58, 0
  br i1 %i.bea, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit229, label %bb.ix

bb.ix:                                            ; preds = %.loopexit366
  %i.beb = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val59 = load ptr, ptr %i.beb, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val59, i64 noundef %.val58, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit229

bb.iy:                                            ; preds = %.noexc217
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !1438
  %.val = load i64, ptr %i.cg, align 8            ; 2 uses
  %i.bec = icmp eq i64 %.val, 0
  br i1 %i.bec, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit230, label %bb.iz

bb.iz:                                            ; preds = %bb.iy
  %i.bed = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.val57 = load ptr, ptr %i.bed, align 8, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val57, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #26
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit230

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit230: ; preds = %bb.iz, %bb.iy
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %bb.gl

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapECs4xylOWI7Ys4_12typst_render.exit229: ; preds = %bb.ix, %.loopexit366
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cg)
  br label %.loopexit

bb.ja:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit102, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtCs4ots9DM4Kx5_8pixglyph6BitmapEECs4xylOWI7Ys4_12typst_render.exit103
  ret void

bb.jb:                                            ; preds = %bb.ag, %bb.ae, %bb.ac, %bb.x, %bb.w, %bb.v, %_RNvMsl_CsdQl7XGSB5tC_10ttf_parserNtB5_4Face6coords.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc)
  %i.bee = load i16, ptr %i.ct, align 2, !range !1446, !noundef !5
  %i.bef = trunc nuw i16 %i.bee to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br i1 %i.bef, label %bb.jc, label %bb.jd

bb.jc:                                            ; preds = %bb.jb
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cr)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cr, ptr noundef nonnull align 8 dereferenceable(64) %i.cu, i64 64, i1 false)
  call void @_RNvMNtCsd315radwPZ_14tiny_skia_path12path_builderNtB2_11PathBuilder6finish(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.cs, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  %i.beg = load i64, ptr %i.cs, align 8, !range !7, !noundef !5
  %.not42 = icmp eq i64 %i.beg, -1
  br i1 %.not42, label %bb.jh, label %bb.jg

bb.jd:                                            ; preds = %bb.jb
  call void @llvm.experimental.noalias.scope.decl(metadata !1447)
  %.val.i = load i64, ptr %i.cu, align 8, !alias.scope !1447 ; 2 uses
  %i.beh = icmp eq i64 %.val.i, 0
  br i1 %i.beh, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i, label %bb.je

bb.je:                                            ; preds = %bb.jd
  %.val1.i = load ptr, ptr %.sroa.012.sroa.4.0..sroa_idx, align 8, !alias.scope !1447, !nonnull !5, !noundef !5
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #26, !noalias !1447
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i: ; preds = %bb.je, %bb.jd
  %.val2.i = load i64, ptr %.sroa.012.sroa.6.0..sroa_idx, align 8, !alias.scope !1447 ; 2 uses
  %i.bei = icmp eq i64 %.val2.i, 0
  br i1 %i.bei, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render.exit, label %bb.jf

bb.jf:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i
  %.val3.i = load ptr, ptr %.sroa.012.sroa.6.sroa.4.0..sroa.012.sroa.6.0..sroa_idx.sroa_idx, align 8, !alias.scope !1447, !nonnull !5, !noundef !5
  %i.bej = shl nuw i64 %.val2.i, 3
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.bej, i64 noundef range(i64 1, -9223372036854775807) 4) #26, !noalias !1447
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.jf, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i, %bb.jh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit

bb.jg:                                            ; preds = %bb.jc
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.cv, ptr noundef nonnull align 8 dereferenceable(64) %i.cs, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cu)
  %i.bek = getelementptr inbounds nuw i8, ptr %i.dr, i64 96
  %i.bel = load double, ptr %i.bek, align 8, !noundef !5
  %i.bem = fptrunc double %i.bel to float
  %i.ben = fdiv float %i.da, %i.bem               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cq)
  store ptr null, ptr %i.cq, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cp)
  %i.beo = fneg float %i.ben                      ; 2 uses
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform9pre_scale(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.cp, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.cw, float noundef %i.ben, float noundef %i.beo)
          to label %bb.jm unwind label %bb.jl

bb.jh:                                            ; preds = %bb.jc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path4path4PathECs4xylOWI7Ys4_12typst_render.exit: ; preds = %bb.km, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsd315radwPZ_14tiny_skia_path4path8PathVerbEECs4xylOWI7Ys4_12typst_render.exit.i245, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path12path_builder11PathBuilderECs4xylOWI7Ys4_12typst_render.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cv)
  br label %bb.ja

bb.ji:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit, %bb.jl
  %.pn50 = phi { ptr, i32 } [ %i.bet, %bb.jl ], [ %.pn47.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit ]
  call void @llvm.experimental.noalias.scope.decl(metadata !1448)
  %i.bep = load ptr, ptr %i.cq, align 8, !alias.scope !1448, !noundef !5 ; 2 uses
  %i.beq = icmp eq ptr %i.bep, null
  br i1 %i.beq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.ber = atomicrmw sub ptr %i.bep, i64 1 release, align 8, !noalias !1449
  %i.bes = icmp eq i64 %i.ber, 1
  br i1 %i.bes, label %bb.jk, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.jk:                                            ; preds = %bb.jj
  fence acquire
  call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapE9drop_slowCs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.cq) #25
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCsfVrisfeHJNS_9tiny_skia6pixmap6PixmapEEECs4xylOWI7Ys4_12typst_render.exit

bb.jl:                                            ; preds = %bb.jm, %bb.jn, %bb.jg
  %i.bet = landingpad { ptr, i32 }
          cleanup
  br label %bb.ji

bb.jm:                                            ; preds = %bb.jg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.co)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cn)
  store float %i.ben, ptr %i.cn, align 4
  %i.beu = getelementptr inbounds nuw i8, ptr %i.cn, i64 4
  store <2 x float> zeroinitializer, ptr %i.beu, align 4
  %i.bev = getelementptr inbounds nuw i8, ptr %i.cn, i64 12
  store float %i.beo, ptr %i.bev, align 4
  %i.bew = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store <2 x float> zeroinitializer, ptr %i.bew, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cf)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cf, ptr noundef nonnull align 8 dereferenceable(80) %1, i64 80, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1450)
  call void @llvm.experimental.noalias.scope.decl(metadata !1451)
  %i.bex = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  %i.bey = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  invoke void @_RNvMs_NtCsd315radwPZ_14tiny_skia_path9transformNtB4_9Transform10pre_concat(ptr noalias nofree noundef nonnull sret([24 x i8]) align 4 captures(address) dereferenceable(24) %i.bey, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(24) %i.bex, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.cn)
          to label %bb.jn unwind label %bb.jl

bb.jn:                                            ; preds = %bb.jm
  %i.bez = getelementptr inbounds nuw i8, ptr %i.co, i64 40
  %i.bfa = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bez, ptr noundef nonnull align 8 dereferenceable(24) %i.bfa, i64 24, i1 false)
  %i.bfb = getelementptr inbounds nuw i8, ptr %i.cf, i64 64
  %i.bfc = load ptr, ptr %i.bfb, align 16, !alias.scope !1451, !noalias !1452, !align !16, !noundef !5
  %i.bfd = getelementptr inbounds nuw i8, ptr %i.co, i64 64
  store ptr %i.bfc, ptr %i.bfd, align 16, !alias.scope !1450, !noalias !1453
  %i.bfe = getelementptr inbounds nuw i8, ptr %i.cf, i64 72
  %i.bff = load float, ptr %i.bfe, align 8, !alias.scope !1451, !noalias !1452, !noundef !5
  %i.bfg = getelementptr inbounds nuw i8, ptr %i.co, i64 72
  store float %i.bff, ptr %i.bfg, align 8, !alias.scope !1450, !noalias !1453
  %i.bfh = load <2 x double>, ptr %i.cf, align 16, !alias.scope !1451, !noalias !1452
  store <2 x double> %i.bfh, ptr %i.co, align 16, !alias.scope !1450, !noalias !1453
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cm)
  %i.bfi = getelementptr inbounds nuw i8, ptr %2, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ce)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.ce, ptr noundef nonnull align 16 dereferenceable(80) %i.co, i64 80, i1 false)
  invoke fastcc void @_RNvNtCs4xylOWI7Ys4_12typst_render5paint11to_sk_paint(ptr noalias nofree noundef align 8 captures(none) dereferenceable(104) %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bfi, ptr noalias nofree noundef readonly align 8 captures(address) dereferenceable(80) %i.ce, i1 noundef zeroext true, ptr noalias nofree noundef align 8 dereferenceable(8) %i.cq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(136) null, i1 noundef zeroext false)
          to label %bb.jo unwind label %bb.jl

bb.jo:                                            ; preds = %bb.jn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ce)
  %i.bfj = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bfk = load ptr, ptr %i.bfj, align 8, !align !16, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %i.cd, ptr noundef nonnull align 4 dereferenceable(24) %i.cp, i64 24, i1 false)
  invoke void @_RNvMs0_NtCsfVrisfeHJNS_9tiny_skia7painterNtNtB7_6pixmap6Pixmap9fill_path(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.cv, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.cm, i1 noundef zeroext false, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(24) %i.cd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) %i.bfk)
          to label %bb.jq unwind label %bb.jp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit, %bb.ki, %bb.kh, %bb.jp
  %.pn47.pn = phi { ptr, i32 } [ %i.bgo, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsd315radwPZ_14tiny_skia_path7stroker6StrokeECs4xylOWI7Ys4_12typst_render.exit ], [ %i.bfl, %bb.jp ], [ %i.bhe, %bb.kh ], [ %i.bhe, %bb.ki ]
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsfVrisfeHJNS_9tiny_skia7painter5PaintECs4xylOWI7Ys4_12typst_render(ptr noalias nofree noundef align 8 dereferenceable(104) %i.cm) #28
  br label %bb.ji

bb.jp:                                            ; preds = %bb.jx, %bb.jo
  %i.bfl = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsd315radwPZ_14tiny_skia_path4dash10StrokeDashEECs4xylOWI7Ys4_12typst_render.exit

bb.jq:                                            ; preds = %bb.jo
end_hunk_0
