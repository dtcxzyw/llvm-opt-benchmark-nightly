Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruby/original/ripper?download=true
inline.NumInlined: 2066
inline.NumDeleted: 252
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@parser_yylex:bb.a

.lr.ph356.i.preheader:                            ; preds = %bb.ic
  %i.amm = add nsw i64 %.5164.i3067, -2
  br label %.lr.ph356.i

.lr.ph356.i:                                      ; preds = %.lr.ph356.i.preheader, %bb.ie
  %i.amn = phi i64 [ %i.ams, %bb.ie ], [ %i.amm, %.lr.ph356.i.preheader ]
  %.6354.i = phi i64 [ %.7.i, %bb.ie ], [ %i.amd, %.lr.ph356.i.preheader ] ; 2 uses
  %.6171353.i = phi ptr [ %i.amr, %bb.ie ], [ %i.aml, %.lr.ph356.i.preheader ] ; 4 uses
  %i.amo = load i8, ptr %.6171353.i, align 1, !tbaa !20
  switch i8 %i.amo, label %bb.ie [
    i8 34, label %.critedge6.thread.i.loopexit
    i8 92, label %bb.id
  ]

bb.id:                                            ; preds = %.lr.ph356.i
  %i.amp = add nsw i64 %.6354.i, -2
  %i.amq = getelementptr inbounds nuw i8, ptr %.6171353.i, i64 1
  br label %bb.ie

bb.ie:                                            ; preds = %bb.id, %.lr.ph356.i
  %.7172.i = phi ptr [ %i.amq, %bb.id ], [ %.6171353.i, %.lr.ph356.i ]
  %.7.i = phi i64 [ %i.amp, %bb.id ], [ %i.amn, %.lr.ph356.i ] ; 3 uses
  %i.amr = getelementptr inbounds nuw i8, ptr %.7172.i, i64 1 ; 5 uses
  %i.ams = add nsw i64 %.7.i, -1                  ; 2 uses
  %i.amt = icmp samesign ugt i64 %.7.i, 1
  br i1 %i.amt, label %.lr.ph356.i, label %.critedge6.i, !llvm.loop !550

.critedge6.i:                                     ; preds = %bb.ie
  %.not213.i = icmp eq i64 %i.ams, 0
  br i1 %.not213.i, label %.critedge10.i, label %.critedge6.thread.i

.critedge6.thread.i.loopexit:                     ; preds = %.lr.ph356.i
  %i.amu = add nsw i64 %.6354.i, -2
  br label %.critedge6.thread.i

.critedge6.thread.i:                              ; preds = %.critedge6.thread.i.loopexit, %.critedge6.i
  %.6171301.i = phi ptr [ %i.amr, %.critedge6.i ], [ %.6171353.i, %.critedge6.thread.i.loopexit ] ; 2 uses
  %.6299.i = phi i64 [ -2, %.critedge6.i ], [ %i.amu, %.critedge6.thread.i.loopexit ]
  %i.amv = getelementptr inbounds nuw i8, ptr %.6171301.i, i64 1
  br label %.critedge8.i

.lr.ph341.i:                                      ; preds = %.lr.ph341.i.preheader, %bb.ig
  %.8340.i = phi i64 [ %i.anb, %bb.ig ], [ %i.amd, %.lr.ph341.i.preheader ] ; 5 uses
  %.8173339.i = phi ptr [ %i.anc, %bb.ig ], [ %i.ame, %.lr.ph341.i.preheader ] ; 8 uses
  %i.amw = load i8, ptr %.8173339.i, align 1, !tbaa !20 ; 3 uses
  switch i8 %i.amw, label %bb.if [
    i8 34, label %.critedge8.i
    i8 59, label %.critedge8.i
  ]

bb.if:                                            ; preds = %.lr.ph341.i
  %i.amx = sext i8 %i.amw to i32
  %i.amy = icmp ne i8 %i.amw, 32
  %i.amz = add nsw i32 %i.amx, -14
  %i.ana = icmp ult i32 %i.amz, -5
  %narrow.i235.not.i = select i1 %i.amy, i1 %i.ana, i1 false
  br i1 %narrow.i235.not.i, label %bb.ig, label %.critedge8.i

bb.ig:                                            ; preds = %bb.if
  %i.anb = add nsw i64 %.8340.i, -1
  %i.anc = getelementptr inbounds nuw i8, ptr %.8173339.i, i64 1
  %i.and = icmp sgt i64 %.8340.i, 1
  br i1 %i.and, label %.lr.ph341.i, label %.critedge8.i, !llvm.loop !551

.critedge8.i:                                     ; preds = %bb.ig, %bb.if, %.lr.ph341.i, %.lr.ph341.i, %.critedge6.thread.i
  %.9174.i = phi ptr [ %i.amv, %.critedge6.thread.i ], [ %.8173339.i, %bb.if ], [ %scevgep, %bb.ig ], [ %.8173339.i, %.lr.ph341.i ], [ %.8173339.i, %.lr.ph341.i ] ; 11 uses
  %.9.i = phi i64 [ %.6299.i, %.critedge6.thread.i ], [ %.8340.i, %bb.if ], [ 0, %bb.ig ], [ %.8340.i, %.lr.ph341.i ], [ %.8340.i, %.lr.ph341.i ] ; 7 uses
  %.0151.i = phi ptr [ %i.aml, %.critedge6.thread.i ], [ %i.ame, %.lr.ph341.i ], [ %i.ame, %.lr.ph341.i ], [ %i.ame, %bb.if ], [ %i.ame, %bb.ig ] ; 5 uses
  %.0150.i = phi ptr [ %.6171301.i, %.critedge6.thread.i ], [ %.8173339.i, %bb.if ], [ %scevgep, %bb.ig ], [ %.8173339.i, %.lr.ph341.i ], [ %.8173339.i, %.lr.ph341.i ] ; 5 uses
  %i.ane = icmp sgt i64 %.9.i, 0                  ; 2 uses
  br i1 %.not254.i, label %.preheader280.i, label %.preheader281.i

.preheader281.i:                                  ; preds = %.critedge8.i
  br i1 %i.ane, label %.lr.ph362.preheader.i, label %.critedge10.i

.lr.ph362.preheader.i:                            ; preds = %.preheader281.i
  %scevgep416.i = getelementptr i8, ptr %.9174.i, i64 %.9.i
  br label %.lr.ph362.i

.preheader280.i:                                  ; preds = %.critedge8.i
  br i1 %i.ane, label %.lr.ph370.preheader.i, label %.critedge14.i

.lr.ph370.preheader.i:                            ; preds = %.preheader280.i
  %scevgep417.i = getelementptr i8, ptr %.9174.i, i64 %.9.i
  br label %.lr.ph370.i

.lr.ph362.i:                                      ; preds = %.critedge12.i, %.lr.ph362.preheader.i
  %.10361.i = phi i64 [ %i.anl, %.critedge12.i ], [ %.9.i, %.lr.ph362.preheader.i ] ; 3 uses
  %.10175360.i = phi ptr [ %i.anm, %.critedge12.i ], [ %.9174.i, %.lr.ph362.preheader.i ] ; 3 uses
  %i.anf = load i8, ptr %.10175360.i, align 1, !tbaa !20 ; 3 uses
  %i.ang = icmp eq i8 %i.anf, 59
  br i1 %i.ang, label %.critedge12.i, label %bb.ih

bb.ih:                                            ; preds = %.lr.ph362.i
  %i.anh = sext i8 %i.anf to i32
  %i.ani = icmp ne i8 %i.anf, 32
  %i.anj = add nsw i32 %i.anh, -14
  %i.ank = icmp ult i32 %i.anj, -5
  %narrow.i236.not.i = select i1 %i.ani, i1 %i.ank, i1 false
  br i1 %narrow.i236.not.i, label %.critedge10.i, label %.critedge12.i

.critedge12.i:                                    ; preds = %bb.ih, %.lr.ph362.i
  %i.anl = add nsw i64 %.10361.i, -1
  %i.anm = getelementptr inbounds nuw i8, ptr %.10175360.i, i64 1
  %i.ann = icmp sgt i64 %.10361.i, 1
  br i1 %i.ann, label %.lr.ph362.i, label %.critedge10.i, !llvm.loop !552

.lr.ph370.i:                                      ; preds = %bb.ii, %.lr.ph370.preheader.i
  %.11369.i = phi i64 [ %i.ant, %bb.ii ], [ %.9.i, %.lr.ph370.preheader.i ] ; 2 uses
  %.11176368.i = phi ptr [ %i.anu, %bb.ii ], [ %.9174.i, %.lr.ph370.preheader.i ] ; 2 uses
  %i.ano = load i8, ptr %.11176368.i, align 1, !tbaa !20 ; 2 uses
  %i.anp = sext i8 %i.ano to i32
  %i.anq = icmp ne i8 %i.ano, 32
  %i.anr = add nsw i32 %i.anp, -14
  %i.ans = icmp ult i32 %i.anr, -5
  %narrow.i237.not.i = select i1 %i.anq, i1 %i.ans, i1 false
  br i1 %narrow.i237.not.i, label %.loopexit, label %bb.ii

bb.ii:                                            ; preds = %.lr.ph370.i
  %i.ant = add nsw i64 %.11369.i, -1
  %i.anu = getelementptr inbounds nuw i8, ptr %.11176368.i, i64 1
  %i.anv = icmp sgt i64 %.11369.i, 1
  br i1 %i.anv, label %.lr.ph370.i, label %.critedge10.i, !llvm.loop !553

.critedge14.i:                                    ; preds = %.preheader280.i
  %.not216.i = icmp eq i64 %.9.i, 0
  br i1 %.not216.i, label %.critedge10.i, label %.loopexit

.critedge10.i:                                    ; preds = %.critedge12.i, %bb.ih, %bb.ii, %bb.ic, %.critedge14.i, %.preheader281.i, %.critedge6.i
  %.0150460.i = phi ptr [ %.0150.i, %.critedge14.i ], [ %.0150.i, %.preheader281.i ], [ %i.aml, %bb.ic ], [ %i.amr, %.critedge6.i ], [ %.0150.i, %bb.ii ], [ %.0150.i, %bb.ih ], [ %.0150.i, %.critedge12.i ] ; 3 uses
  %.0151457.i = phi ptr [ %.0151.i, %.critedge14.i ], [ %.0151.i, %.preheader281.i ], [ %i.aml, %bb.ic ], [ %i.aml, %.critedge6.i ], [ %.0151.i, %bb.ii ], [ %.0151.i, %bb.ih ], [ %.0151.i, %.critedge12.i ] ; 8 uses
  %.9174452.i = phi ptr [ %.9174.i, %.critedge14.i ], [ %.9174.i, %.preheader281.i ], [ %i.aml, %bb.ic ], [ %i.amr, %.critedge6.i ], [ %.9174.i, %bb.ii ], [ %.9174.i, %bb.ih ], [ %.9174.i, %.critedge12.i ]
  %.12177.i = phi ptr [ %.9174.i, %.critedge14.i ], [ %.9174.i, %.preheader281.i ], [ %i.aml, %bb.ic ], [ %i.amr, %.critedge6.i ], [ %scevgep417.i, %bb.ii ], [ %.10175360.i, %bb.ih ], [ %scevgep416.i, %.critedge12.i ]
  %.12.i = phi i64 [ 0, %.critedge14.i ], [ %.9.i, %.preheader281.i ], [ 0, %bb.ic ], [ 0, %.critedge6.i ], [ 0, %bb.ii ], [ %.10361.i, %bb.ih ], [ 0, %.critedge12.i ]
  %i.anw = ptrtoint ptr %.3168315.i to i64
  %i.anx = ptrtoint ptr %.2167313.i to i64
  %i.any = sub i64 %i.anw, %i.anx                 ; 22 uses
  %.not218.i = icmp eq i64 %.0154377.i, 0
  br i1 %.not218.i, label %bb.im, label %bb.ij

bb.ij:                                            ; preds = %.critedge10.i
  %i.anz = tail call i64 @rb_str_resize(i64 noundef %.0154377.i, i64 noundef %i.any) #29 ; 0 uses
  %i.aoa = inttoptr i64 %.0154377.i to ptr        ; 4 uses
  %i.aob = load i64, ptr %i.aoa, align 8, !tbaa !310
  %i.aoc = and i64 %i.aob, 8192
  %.not.i238.i = icmp eq i64 %i.aoc, 0
  %i.aod = getelementptr inbounds nuw i8, ptr %i.aoa, i64 24 ; 2 uses
  br i1 %.not.i238.i, label %RSTRING_PTR.exit.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  %i.aoe = load ptr, ptr %i.aod, align 8, !tbaa !20
  br label %RSTRING_PTR.exit.i

RSTRING_PTR.exit.i:                               ; preds = %bb.ik, %bb.ij
  %i.aof = phi ptr [ %i.aoe, %bb.ik ], [ %i.aod, %bb.ij ]
  %.not.i239.i = icmp eq ptr %.3168315.i, %.2167313.i
  br i1 %.not.i239.i, label %ruby_nonempty_memcpy.exit.i, label %bb.il

bb.il:                                            ; preds = %RSTRING_PTR.exit.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aof, ptr nonnull readonly align 1 %.2167313.i, i64 %i.any, i1 false)
  br label %ruby_nonempty_memcpy.exit.i

bb.im:                                            ; preds = %.critedge10.i
  %i.aog = load ptr, ptr %i.afz, align 8, !tbaa !58
  %i.aoh = tail call i64 @rb_enc_str_new(ptr noundef nonnull %.2167313.i, i64 noundef %i.any, ptr noundef %i.aog) #29 ; 2 uses
  %.pre419.i = inttoptr i64 %i.aoh to ptr
  br label %ruby_nonempty_memcpy.exit.i

ruby_nonempty_memcpy.exit.i:                      ; preds = %bb.im, %bb.il, %RSTRING_PTR.exit.i
  %.pre-phi.i897 = phi ptr [ %i.aoa, %bb.il ], [ %i.aoa, %RSTRING_PTR.exit.i ], [ %.pre419.i, %bb.im ] ; 2 uses
  %.1155.i = phi i64 [ %.0154377.i, %bb.il ], [ %.0154377.i, %RSTRING_PTR.exit.i ], [ %i.aoh, %bb.im ] ; 2 uses
  %i.aoi = load i64, ptr %.pre-phi.i897, align 8, !tbaa !310
  %i.aoj = and i64 %i.aoi, 8192
  %.not.i240.i = icmp eq i64 %i.aoj, 0
  %i.aok = getelementptr inbounds nuw i8, ptr %.pre-phi.i897, i64 24 ; 2 uses
  br i1 %.not.i240.i, label %RSTRING_PTR.exit241.i, label %bb.in

bb.in:                                            ; preds = %ruby_nonempty_memcpy.exit.i
  %i.aol = load ptr, ptr %i.aok, align 8, !tbaa !20
  br label %RSTRING_PTR.exit241.i

RSTRING_PTR.exit241.i:                            ; preds = %bb.in, %ruby_nonempty_memcpy.exit.i
  %i.aom = phi ptr [ %i.aol, %bb.in ], [ %i.aok, %ruby_nonempty_memcpy.exit.i ] ; 46 uses
  %i.aon = icmp sgt i64 %i.any, 0
  br i1 %i.aon, label %iter.check, label %.preheader.i898

iter.check:                                       ; preds = %RSTRING_PTR.exit241.i
  %min.iters.check = icmp ult i64 %i.any, 8
  br i1 %min.iters.check, label %.lr.ph374.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check3074 = icmp ult i64 %i.any, 32
  br i1 %min.iters.check3074, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.aoo = and i64 %i.any, 24
  %n.vec = and i64 %i.any, 9223372036854775776    ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %pred.store.continue3137, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue3137 ] ; 33 uses
  %i.aop = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index ; 3 uses
  %i.aoq = getelementptr inbounds nuw i8, ptr %i.aop, i64 16
  %wide.load = load <16 x i8>, ptr %i.aop, align 1, !tbaa !20
  %wide.load3075 = load <16 x i8>, ptr %i.aoq, align 1, !tbaa !20
  %i.aor = icmp eq <16 x i8> %wide.load, splat (i8 45) ; 16 uses
  %i.aos = icmp eq <16 x i8> %wide.load3075, splat (i8 45) ; 16 uses
  %i.aot = extractelement <16 x i1> %i.aor, i64 0
  br i1 %i.aot, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 95, ptr %i.aop, align 1, !tbaa !20
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.aou = extractelement <16 x i1> %i.aor, i64 1
  br i1 %i.aou, label %pred.store.if3076, label %pred.store.continue3077

pred.store.if3076:                                ; preds = %pred.store.continue
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aow = getelementptr inbounds nuw i8, ptr %i.aov, i64 1
  store i8 95, ptr %i.aow, align 1, !tbaa !20
  br label %pred.store.continue3077

pred.store.continue3077:                          ; preds = %pred.store.if3076, %pred.store.continue
  %i.aox = extractelement <16 x i1> %i.aor, i64 2
  br i1 %i.aox, label %pred.store.if3078, label %pred.store.continue3079

pred.store.if3078:                                ; preds = %pred.store.continue3077
  %i.aoy = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 2
  store i8 95, ptr %i.aoz, align 1, !tbaa !20
  br label %pred.store.continue3079

pred.store.continue3079:                          ; preds = %pred.store.if3078, %pred.store.continue3077
  %i.apa = extractelement <16 x i1> %i.aor, i64 3
  br i1 %i.apa, label %pred.store.if3080, label %pred.store.continue3081

pred.store.if3080:                                ; preds = %pred.store.continue3079
  %i.apb = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apc = getelementptr inbounds nuw i8, ptr %i.apb, i64 3
  store i8 95, ptr %i.apc, align 1, !tbaa !20
  br label %pred.store.continue3081

pred.store.continue3081:                          ; preds = %pred.store.if3080, %pred.store.continue3079
  %i.apd = extractelement <16 x i1> %i.aor, i64 4
  br i1 %i.apd, label %pred.store.if3082, label %pred.store.continue3083

pred.store.if3082:                                ; preds = %pred.store.continue3081
  %i.ape = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apf = getelementptr inbounds nuw i8, ptr %i.ape, i64 4
  store i8 95, ptr %i.apf, align 1, !tbaa !20
  br label %pred.store.continue3083

pred.store.continue3083:                          ; preds = %pred.store.if3082, %pred.store.continue3081
  %i.apg = extractelement <16 x i1> %i.aor, i64 5
  br i1 %i.apg, label %pred.store.if3084, label %pred.store.continue3085

pred.store.if3084:                                ; preds = %pred.store.continue3083
  %i.aph = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.api = getelementptr inbounds nuw i8, ptr %i.aph, i64 5
  store i8 95, ptr %i.api, align 1, !tbaa !20
  br label %pred.store.continue3085

pred.store.continue3085:                          ; preds = %pred.store.if3084, %pred.store.continue3083
  %i.apj = extractelement <16 x i1> %i.aor, i64 6
  br i1 %i.apj, label %pred.store.if3086, label %pred.store.continue3087

pred.store.if3086:                                ; preds = %pred.store.continue3085
  %i.apk = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apl = getelementptr inbounds nuw i8, ptr %i.apk, i64 6
  store i8 95, ptr %i.apl, align 1, !tbaa !20
  br label %pred.store.continue3087

pred.store.continue3087:                          ; preds = %pred.store.if3086, %pred.store.continue3085
  %i.apm = extractelement <16 x i1> %i.aor, i64 7
  br i1 %i.apm, label %pred.store.if3088, label %pred.store.continue3089

pred.store.if3088:                                ; preds = %pred.store.continue3087
  %i.apn = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apn, i64 7
  store i8 95, ptr %i.apo, align 1, !tbaa !20
  br label %pred.store.continue3089

pred.store.continue3089:                          ; preds = %pred.store.if3088, %pred.store.continue3087
  %i.app = extractelement <16 x i1> %i.aor, i64 8
  br i1 %i.app, label %pred.store.if3090, label %pred.store.continue3091

pred.store.if3090:                                ; preds = %pred.store.continue3089
  %i.apq = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apq, i64 8
  store i8 95, ptr %i.apr, align 1, !tbaa !20
  br label %pred.store.continue3091

pred.store.continue3091:                          ; preds = %pred.store.if3090, %pred.store.continue3089
  %i.aps = extractelement <16 x i1> %i.aor, i64 9
  br i1 %i.aps, label %pred.store.if3092, label %pred.store.continue3093

pred.store.if3092:                                ; preds = %pred.store.continue3091
  %i.apt = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apt, i64 9
  store i8 95, ptr %i.apu, align 1, !tbaa !20
  br label %pred.store.continue3093

pred.store.continue3093:                          ; preds = %pred.store.if3092, %pred.store.continue3091
  %i.apv = extractelement <16 x i1> %i.aor, i64 10
  br i1 %i.apv, label %pred.store.if3094, label %pred.store.continue3095

pred.store.if3094:                                ; preds = %pred.store.continue3093
  %i.apw = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.apx = getelementptr inbounds nuw i8, ptr %i.apw, i64 10
  store i8 95, ptr %i.apx, align 1, !tbaa !20
  br label %pred.store.continue3095

pred.store.continue3095:                          ; preds = %pred.store.if3094, %pred.store.continue3093
  %i.apy = extractelement <16 x i1> %i.aor, i64 11
  br i1 %i.apy, label %pred.store.if3096, label %pred.store.continue3097

pred.store.if3096:                                ; preds = %pred.store.continue3095
  %i.apz = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apz, i64 11
  store i8 95, ptr %i.aqa, align 1, !tbaa !20
  br label %pred.store.continue3097

pred.store.continue3097:                          ; preds = %pred.store.if3096, %pred.store.continue3095
  %i.aqb = extractelement <16 x i1> %i.aor, i64 12
  br i1 %i.aqb, label %pred.store.if3098, label %pred.store.continue3099

pred.store.if3098:                                ; preds = %pred.store.continue3097
  %i.aqc = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqd = getelementptr inbounds nuw i8, ptr %i.aqc, i64 12
  store i8 95, ptr %i.aqd, align 1, !tbaa !20
  br label %pred.store.continue3099

pred.store.continue3099:                          ; preds = %pred.store.if3098, %pred.store.continue3097
  %i.aqe = extractelement <16 x i1> %i.aor, i64 13
  br i1 %i.aqe, label %pred.store.if3100, label %pred.store.continue3101

pred.store.if3100:                                ; preds = %pred.store.continue3099
  %i.aqf = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqg = getelementptr inbounds nuw i8, ptr %i.aqf, i64 13
  store i8 95, ptr %i.aqg, align 1, !tbaa !20
  br label %pred.store.continue3101

pred.store.continue3101:                          ; preds = %pred.store.if3100, %pred.store.continue3099
  %i.aqh = extractelement <16 x i1> %i.aor, i64 14
  br i1 %i.aqh, label %pred.store.if3102, label %pred.store.continue3103

pred.store.if3102:                                ; preds = %pred.store.continue3101
  %i.aqi = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqj = getelementptr inbounds nuw i8, ptr %i.aqi, i64 14
  store i8 95, ptr %i.aqj, align 1, !tbaa !20
  br label %pred.store.continue3103

pred.store.continue3103:                          ; preds = %pred.store.if3102, %pred.store.continue3101
  %i.aqk = extractelement <16 x i1> %i.aor, i64 15
  br i1 %i.aqk, label %pred.store.if3104, label %pred.store.continue3105

pred.store.if3104:                                ; preds = %pred.store.continue3103
  %i.aql = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqm = getelementptr inbounds nuw i8, ptr %i.aql, i64 15
  store i8 95, ptr %i.aqm, align 1, !tbaa !20
  br label %pred.store.continue3105

pred.store.continue3105:                          ; preds = %pred.store.if3104, %pred.store.continue3103
  %i.aqn = extractelement <16 x i1> %i.aos, i64 0
  br i1 %i.aqn, label %pred.store.if3106, label %pred.store.continue3107

pred.store.if3106:                                ; preds = %pred.store.continue3105
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqp = getelementptr inbounds nuw i8, ptr %i.aqo, i64 16
  store i8 95, ptr %i.aqp, align 1, !tbaa !20
  br label %pred.store.continue3107

pred.store.continue3107:                          ; preds = %pred.store.if3106, %pred.store.continue3105
  %i.aqq = extractelement <16 x i1> %i.aos, i64 1
  br i1 %i.aqq, label %pred.store.if3108, label %pred.store.continue3109

pred.store.if3108:                                ; preds = %pred.store.continue3107
  %i.aqr = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqs = getelementptr inbounds nuw i8, ptr %i.aqr, i64 17
  store i8 95, ptr %i.aqs, align 1, !tbaa !20
  br label %pred.store.continue3109

pred.store.continue3109:                          ; preds = %pred.store.if3108, %pred.store.continue3107
  %i.aqt = extractelement <16 x i1> %i.aos, i64 2
  br i1 %i.aqt, label %pred.store.if3110, label %pred.store.continue3111

pred.store.if3110:                                ; preds = %pred.store.continue3109
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
  %i.aqv = getelementptr inbounds nuw i8, ptr %i.aqu, i64 18
  store i8 95, ptr %i.aqv, align 1, !tbaa !20
  br label %pred.store.continue3111

pred.store.continue3111:                          ; preds = %pred.store.if3110, %pred.store.continue3109
  %i.aqw = extractelement <16 x i1> %i.aos, i64 3
  br i1 %i.aqw, label %pred.store.if3112, label %pred.store.continue3113

pred.store.if3112:                                ; preds = %pred.store.continue3111
  %i.aqx = getelementptr inbounds nuw i8, ptr %i.aom, i64 %index
end_hunk_0
