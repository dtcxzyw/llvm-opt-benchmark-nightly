loop-unroll.NumRuntimeUnrolled: 21
loop-unroll.NumUnrolled: 21
begin_hunk_0_@dsytri_3x_:bb.a

vector.main.loop.iter.check2223:                  ; preds = %vector.scevcheck2220
  %min.iters.check2224 = icmp ult i32 %i.ask, 32
  br i1 %min.iters.check2224, label %vec.epilog.ph2250, label %vector.ph2225

vector.ph2225:                                    ; preds = %vector.main.loop.iter.check2223
  %i.asr = and i32 %i.ask, 28
  %n.vec2226 = and i32 %i.ask, 2147483616         ; 4 uses
  %i.ass = add i32 %storemerge645.in840, %n.vec2226
  %invariant.op2407 = add i32 %storemerge645.in840, 1
  br label %vector.body2227

vector.body2227:                                  ; preds = %vector.body2227, %vector.ph2225
  %index2228 = phi i32 [ 0, %vector.ph2225 ], [ %index.next2237, %vector.body2227 ] ; 2 uses
  %vec.phi2229 = phi <8 x i32> [ zeroinitializer, %vector.ph2225 ], [ %i.atc, %vector.body2227 ]
  %vec.phi2230 = phi <8 x i32> [ zeroinitializer, %vector.ph2225 ], [ %i.atd, %vector.body2227 ]
  %vec.phi2231 = phi <8 x i32> [ zeroinitializer, %vector.ph2225 ], [ %i.ate, %vector.body2227 ]
  %vec.phi2232 = phi <8 x i32> [ zeroinitializer, %vector.ph2225 ], [ %i.atf, %vector.body2227 ]
  %.reass2408 = add i32 %index2228, %invariant.op2407
  %i.ast = sext i32 %.reass2408 to i64
  %i.asu = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ast ; 4 uses
  %i.asv = getelementptr inbounds nuw i8, ptr %i.asu, i64 32
  %i.asw = getelementptr inbounds nuw i8, ptr %i.asu, i64 64
  %i.asx = getelementptr inbounds nuw i8, ptr %i.asu, i64 96
  %wide.load2233 = load <8 x i32>, ptr %i.asu, align 4, !tbaa !8
  %wide.load2234 = load <8 x i32>, ptr %i.asv, align 4, !tbaa !8
  %wide.load2235 = load <8 x i32>, ptr %i.asw, align 4, !tbaa !8
  %wide.load2236 = load <8 x i32>, ptr %i.asx, align 4, !tbaa !8
  %i.asy = lshr <8 x i32> %wide.load2233, splat (i32 31)
  %i.asz = lshr <8 x i32> %wide.load2234, splat (i32 31)
  %i.ata = lshr <8 x i32> %wide.load2235, splat (i32 31)
  %i.atb = lshr <8 x i32> %wide.load2236, splat (i32 31)
  %i.atc = add <8 x i32> %i.asy, %vec.phi2229     ; 2 uses
  %i.atd = add <8 x i32> %i.asz, %vec.phi2230     ; 2 uses
  %i.ate = add <8 x i32> %i.ata, %vec.phi2231     ; 2 uses
  %i.atf = add <8 x i32> %i.atb, %vec.phi2232     ; 2 uses
  %index.next2237 = add nuw i32 %index2228, 32    ; 2 uses
  %i.atg = icmp eq i32 %index.next2237, %n.vec2226
  br i1 %i.atg, label %middle.block2238, label %vector.body2227, !llvm.loop !91

middle.block2238:                                 ; preds = %vector.body2227
  %bin.rdx2239 = add <8 x i32> %i.atd, %i.atc
  %bin.rdx2240 = add <8 x i32> %i.ate, %bin.rdx2239
  %bin.rdx2241 = add <8 x i32> %i.atf, %bin.rdx2240
  %i.ath = call i32 @llvm.vector.reduce.add.v8i32(<8 x i32> %bin.rdx2241) ; 3 uses
  %cmp.n2242 = icmp eq i32 %i.ask, %n.vec2226
  br i1 %cmp.n2242, label %.loopexit2264, label %vec.epilog.iter.check2248

vec.epilog.iter.check2248:                        ; preds = %middle.block2238
  %min.epilog.iters.check2249 = icmp eq i32 %i.asr, 0
  br i1 %min.epilog.iters.check2249, label %.lr.ph846.preheader, label %vec.epilog.ph2250, !prof !92

vec.epilog.ph2250:                                ; preds = %vector.main.loop.iter.check2223, %vec.epilog.iter.check2248
  %vec.epilog.resume.val2243 = phi i32 [ %n.vec2226, %vec.epilog.iter.check2248 ], [ 0, %vector.main.loop.iter.check2223 ]
  %bc.merge.rdx2245 = phi i32 [ %i.ath, %vec.epilog.iter.check2248 ], [ 0, %vector.main.loop.iter.check2223 ]
  %n.vec2251 = and i32 %i.ask, 2147483644         ; 3 uses
  %i.ati = add i32 %storemerge645.in840, %n.vec2251
  %i.atj = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %bc.merge.rdx2245, i64 0
  %invariant.op2409 = add i32 %storemerge645.in840, 1
  br label %vec.epilog.vector.body2252

vec.epilog.vector.body2252:                       ; preds = %vec.epilog.vector.body2252, %vec.epilog.ph2250
  %index2253 = phi i32 [ %vec.epilog.resume.val2243, %vec.epilog.ph2250 ], [ %index.next2256, %vec.epilog.vector.body2252 ] ; 2 uses
  %vec.phi2254 = phi <4 x i32> [ %i.atj, %vec.epilog.ph2250 ], [ %i.atn, %vec.epilog.vector.body2252 ]
  %.reass2410 = add i32 %index2253, %invariant.op2409
  %i.atk = sext i32 %.reass2410 to i64
  %i.atl = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.atk
  %wide.load2255 = load <4 x i32>, ptr %i.atl, align 4, !tbaa !8
  %i.atm = lshr <4 x i32> %wide.load2255, splat (i32 31)
  %i.atn = add <4 x i32> %i.atm, %vec.phi2254     ; 2 uses
  %index.next2256 = add nuw i32 %index2253, 4     ; 2 uses
  %i.ato = icmp eq i32 %index.next2256, %n.vec2251
  br i1 %i.ato, label %vec.epilog.middle.block2257, label %vec.epilog.vector.body2252, !llvm.loop !93

vec.epilog.middle.block2257:                      ; preds = %vec.epilog.vector.body2252
  %i.atp = call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %i.atn) ; 2 uses
  %cmp.n2258 = icmp eq i32 %i.ask, %n.vec2251
  br i1 %cmp.n2258, label %.loopexit2264, label %.lr.ph846.preheader

.lr.ph846.preheader:                              ; preds = %vector.scevcheck2220, %iter.check2246, %vec.epilog.iter.check2248, %vec.epilog.middle.block2257
  %storemerge645.in849.in.ph = phi i32 [ %storemerge645.in840, %iter.check2246 ], [ %storemerge645.in840, %vector.scevcheck2220 ], [ %i.ass, %vec.epilog.iter.check2248 ], [ %i.ati, %vec.epilog.middle.block2257 ] ; 4 uses
  %.2843.ph = phi i32 [ 0, %iter.check2246 ], [ 0, %vector.scevcheck2220 ], [ %i.ath, %vec.epilog.iter.check2248 ], [ %i.atp, %vec.epilog.middle.block2257 ] ; 2 uses
  %i.atq = add i32 %storemerge645.in840, %i.ask
  %i.atr = sub i32 %i.atq, %storemerge645.in849.in.ph
  %i.ats = add i32 %storemerge645.in840, -1
  %i.att = add i32 %i.ats, %i.ask
  %i.atu = sub i32 %i.att, %storemerge645.in849.in.ph
  %xtraiter2323 = and i32 %i.atr, 7               ; 2 uses
  %lcmp.mod2324.not = icmp eq i32 %xtraiter2323, 0
  br i1 %lcmp.mod2324.not, label %.lr.ph846.prol.loopexit, label %.lr.ph846.prol

.lr.ph846.prol:                                   ; preds = %.lr.ph846.preheader, %.lr.ph846.prol
  %storemerge645.in849.in.prol = phi i32 [ %storemerge645.in849.prol, %.lr.ph846.prol ], [ %storemerge645.in849.in.ph, %.lr.ph846.preheader ]
  %.2843.prol = phi i32 [ %spec.select705.prol, %.lr.ph846.prol ], [ %.2843.ph, %.lr.ph846.preheader ]
  %prol.iter2325 = phi i32 [ %prol.iter2325.next, %.lr.ph846.prol ], [ 0, %.lr.ph846.preheader ]
  %storemerge645.in849.prol = add i32 %storemerge645.in849.in.prol, 1 ; 3 uses
  %i.atv = sext i32 %storemerge645.in849.prol to i64
  %i.atw = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.atv
  %i.atx = load i32, ptr %i.atw, align 4, !tbaa !8
  %i.aty = lshr i32 %i.atx, 31
  %spec.select705.prol = add nuw nsw i32 %i.aty, %.2843.prol ; 3 uses
  %prol.iter2325.next = add i32 %prol.iter2325, 1 ; 2 uses
  %prol.iter2325.cmp.not = icmp eq i32 %prol.iter2325.next, %xtraiter2323
  br i1 %prol.iter2325.cmp.not, label %.lr.ph846.prol.loopexit, label %.lr.ph846.prol, !llvm.loop !94

.lr.ph846.prol.loopexit:                          ; preds = %.lr.ph846.prol, %.lr.ph846.preheader
  %spec.select705.lcssa2276.unr = phi i32 [ poison, %.lr.ph846.preheader ], [ %spec.select705.prol, %.lr.ph846.prol ]
  %storemerge645.in849.in.unr = phi i32 [ %storemerge645.in849.in.ph, %.lr.ph846.preheader ], [ %storemerge645.in849.prol, %.lr.ph846.prol ]
  %.2843.unr = phi i32 [ %.2843.ph, %.lr.ph846.preheader ], [ %spec.select705.prol, %.lr.ph846.prol ]
  %i.atz = icmp ult i32 %i.atu, 7
  br i1 %i.atz, label %.loopexit2264, label %.lr.ph846

.lr.ph846:                                        ; preds = %.lr.ph846.prol.loopexit, %.lr.ph846
  %storemerge645.in849.in = phi i32 [ %storemerge645.in849.7, %.lr.ph846 ], [ %storemerge645.in849.in.unr, %.lr.ph846.prol.loopexit ] ; 8 uses
  %.2843 = phi i32 [ %spec.select705.7, %.lr.ph846 ], [ %.2843.unr, %.lr.ph846.prol.loopexit ]
  %storemerge645.in849 = add i32 %storemerge645.in849.in, 1
  %i.aua = sext i32 %storemerge645.in849 to i64
  %i.aub = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aua
  %i.auc = load i32, ptr %i.aub, align 4, !tbaa !8
  %i.aud = lshr i32 %i.auc, 31
  %spec.select705 = add nuw nsw i32 %i.aud, %.2843
  %storemerge645.in849.1 = add i32 %storemerge645.in849.in, 2
  %i.aue = sext i32 %storemerge645.in849.1 to i64
  %i.auf = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aue
  %i.aug = load i32, ptr %i.auf, align 4, !tbaa !8
  %i.auh = lshr i32 %i.aug, 31
  %spec.select705.1 = add nuw nsw i32 %i.auh, %spec.select705
  %storemerge645.in849.2 = add i32 %storemerge645.in849.in, 3
  %i.aui = sext i32 %storemerge645.in849.2 to i64
  %i.auj = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aui
  %i.auk = load i32, ptr %i.auj, align 4, !tbaa !8
  %i.aul = lshr i32 %i.auk, 31
  %spec.select705.2 = add nuw nsw i32 %i.aul, %spec.select705.1
  %storemerge645.in849.3 = add i32 %storemerge645.in849.in, 4
  %i.aum = sext i32 %storemerge645.in849.3 to i64
  %i.aun = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.aum
  %i.auo = load i32, ptr %i.aun, align 4, !tbaa !8
  %i.aup = lshr i32 %i.auo, 31
  %spec.select705.3 = add nuw nsw i32 %i.aup, %spec.select705.2
  %storemerge645.in849.4 = add i32 %storemerge645.in849.in, 5
  %i.auq = sext i32 %storemerge645.in849.4 to i64
  %i.aur = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.auq
  %i.aus = load i32, ptr %i.aur, align 4, !tbaa !8
  %i.aut = lshr i32 %i.aus, 31
  %spec.select705.4 = add nuw nsw i32 %i.aut, %spec.select705.3
  %storemerge645.in849.5 = add i32 %storemerge645.in849.in, 6
  %i.auu = sext i32 %storemerge645.in849.5 to i64
  %i.auv = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.auu
  %i.auw = load i32, ptr %i.auv, align 4, !tbaa !8
  %i.aux = lshr i32 %i.auw, 31
  %spec.select705.5 = add nuw nsw i32 %i.aux, %spec.select705.4
  %storemerge645.in849.6 = add i32 %storemerge645.in849.in, 7
  %i.auy = sext i32 %storemerge645.in849.6 to i64
  %i.auz = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.auy
  %i.ava = load i32, ptr %i.auz, align 4, !tbaa !8
  %i.avb = lshr i32 %i.ava, 31
  %spec.select705.6 = add nuw nsw i32 %i.avb, %spec.select705.5
  %storemerge645.in849.7 = add i32 %storemerge645.in849.in, 8 ; 3 uses
  %i.avc = sext i32 %storemerge645.in849.7 to i64
  %i.avd = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.avc
  %i.ave = load i32, ptr %i.avd, align 4, !tbaa !8
  %i.avf = lshr i32 %i.ave, 31
  %spec.select705.7 = add nuw nsw i32 %i.avf, %spec.select705.6 ; 2 uses
  %exitcond1064.not.7 = icmp eq i32 %storemerge645.in849.7, %i.asl
  br i1 %exitcond1064.not.7, label %.loopexit2264, label %.lr.ph846, !llvm.loop !95

.loopexit2264:                                    ; preds = %.lr.ph846.prol.loopexit, %.lr.ph846, %vec.epilog.middle.block2257, %middle.block2238
  %spec.select705.lcssa = phi i32 [ %i.atp, %vec.epilog.middle.block2257 ], [ %i.ath, %middle.block2238 ], [ %spec.select705.lcssa2276.unr, %.lr.ph846.prol.loopexit ], [ %spec.select705.7, %.lr.ph846 ]
  %i.avg = and i32 %spec.select705.lcssa, 1
  %i.avh = icmp eq i32 %i.avg, 0
  br i1 %i.avh, label %.thread1235, label %bb.an

bb.an:                                            ; preds = %.loopexit2264
  %i.avi = add nuw nsw i32 %i.ask, 1
  br label %.thread1235.sink.split

.thread1235.sink.split:                           ; preds = %bb.al, %bb.an
  %.sink1335 = phi i32 [ %i.avi, %bb.an ], [ %i.asn, %bb.al ] ; 2 uses
  store i32 %.sink1335, ptr %i.h, align 4, !tbaa !8
  br label %.thread1235

.thread1235:                                      ; preds = %.thread1235.sink.split, %bb.am, %.loopexit2264
  %i.avj = phi i32 [ %i.ask, %.loopexit2264 ], [ %i.ask, %bb.am ], [ %.sink1335, %.thread1235.sink.split ] ; 22 uses
  %i.avk = add i32 %i.avj, %storemerge645.in840   ; 4 uses
  %i.avl = sub i32 %i.asj, %i.avk                 ; 3 uses
  %.not648855 = icmp slt i32 %i.avl, 1
  br i1 %.not648855, label %._crit_edge859, label %.lr.ph858

.lr.ph858:                                        ; preds = %.thread1235
  store i32 %i.avj, ptr %i.d, align 4, !tbaa !8
  %.not671850 = icmp slt i32 %i.avj, 1
  br i1 %.not671850, label %.preheader716.thread, label %.lr.ph853.preheader

.lr.ph853.preheader:                              ; preds = %.lr.ph858
  %i.avm = sext i32 %storemerge645.in840 to i64   ; 8 uses
  %i.avn = add nuw i32 %i.avj, 1
  %i.avo = sext i32 %i.avk to i64                 ; 2 uses
  %i.avp = add i32 %i.asj, 1
  %i.avq = sub i32 %i.avp, %i.avk                 ; 2 uses
  %wide.trip.count1073 = zext i32 %i.avq to i64   ; 2 uses
  %wide.trip.count1068 = zext i32 %i.avn to i64   ; 5 uses
  %invariant.gep1284 = getelementptr [8 x i8], ptr %i.l, i64 %i.avo
  %i.avr = add nsw i64 %wide.trip.count1068, -2
  %9 = add nsw i64 %i.avm, %i.avo                 ; 2 uses
  %i.avs = shl nsw i64 %9, 3
  %scevgep2161 = getelementptr i8, ptr %2, i64 %i.avs
  %10 = add nsw i64 %9, %wide.trip.count1073
  %i.avt = shl nuw nsw i64 %wide.trip.count1068, 3
  %11 = add nsw i64 %10, %wide.trip.count1068
  %12 = shl nsw i64 %11, 3
  %scevgep2163 = getelementptr i8, ptr %scevgep2162, i64 %12
  %i.avu = add nsw i64 %i.avt, -8
  %i.avv = mul i64 %i.avu, %i.ae
  %reass.sub2269 = sub i64 %i.avv, %i.apb
  %i.avw = zext nneg i32 %i.avj to i64            ; 5 uses
  %i.avx = zext nneg i32 %i.avj to i64
  %i.avy = getelementptr i8, ptr %6, i64 %reass.sub2269
  %i.avz = getelementptr i8, ptr %i.avy, i64 -8
  %min.iters.check2172 = icmp ult i32 %i.avj, 4
  %mul2157 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.api, i64 %i.avr) ; 2 uses
  %mul.result2158 = extractvalue { i64, i1 } %mul2157, 0 ; 2 uses
  %mul.overflow2159 = extractvalue { i64, i1 } %mul2157, 1
  %i.awa = sub i64 0, %mul.result2158
  %invariant.op2411 = or i1 %mul.overflow2159, %ident.check2153
  %min.iters.check2174 = icmp ult i32 %i.avj, 16
  %i.awb = and i64 %i.avw, 12
  %n.vec2176 = and i64 %i.avw, 2147483632         ; 4 uses
  %i.awc = or disjoint i64 %n.vec2176, 1          ; 2 uses
  %cmp.n2196 = icmp eq i64 %n.vec2176, %i.avw
  %min.epilog.iters.check2202 = icmp eq i64 %i.awb, 0
  %n.vec2204 = and i64 %i.avw, 2147483644         ; 3 uses
  %i.awd = or disjoint i64 %n.vec2204, 1
  %cmp.n2218 = icmp eq i64 %n.vec2204, %i.avw
  br label %iter.check2199

.preheader716.thread:                             ; preds = %.lr.ph858
  store i32 %i.avj, ptr %i.c, align 4, !tbaa !8
  store i32 1, ptr %i.f, align 4, !tbaa !8
  br label %.lr.ph890

iter.check2199:                                   ; preds = %.lr.ph853.preheader, %._crit_edge854
  %indvar2154 = phi i64 [ 0, %.lr.ph853.preheader ], [ %indvar.next2155, %._crit_edge854 ] ; 3 uses
  %indvars.iv1070 = phi i64 [ 1, %.lr.ph853.preheader ], [ %indvars.iv.next1071, %._crit_edge854 ] ; 3 uses
  %i.awe = shl nuw nsw i64 %indvar2154, 3         ; 2 uses
  %scevgep2164 = getelementptr i8, ptr %i.avz, i64 %i.awe ; 4 uses
  %scevgep2165 = getelementptr i8, ptr %i.apf, i64 %i.awe ; 4 uses
  %i.awf = icmp ult ptr %scevgep2164, %scevgep2165
  %umin2166 = select i1 %i.awf, ptr %scevgep2164, ptr %scevgep2165
  %i.awg = icmp ugt ptr %scevgep2164, %scevgep2165
  %umax2167 = select i1 %i.awg, ptr %scevgep2164, ptr %scevgep2165
  %scevgep2168 = getelementptr i8, ptr %umax2167, i64 8
  %gep1285 = getelementptr [8 x i8], ptr %invariant.gep1284, i64 %indvars.iv1070 ; 7 uses
  %invariant.gep1282 = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv1070 ; 10 uses
  br i1 %min.iters.check2172, label %vec.epilog.scalar.ph2200.preheader, label %vector.scevcheck2152

vector.scevcheck2152:                             ; preds = %iter.check2199
  %i.awh = shl nuw nsw i64 %indvar2154, 3
  %scevgep2156 = getelementptr i8, ptr %i.apg, i64 %i.awh ; 4 uses
  %i.awi = getelementptr i8, ptr %scevgep2156, i64 %mul.result2158
  %i.awj = getelementptr i8, ptr %scevgep2156, i64 %i.awa
  %i.awk = icmp ult ptr %i.awi, %scevgep2156
  %i.awl = icmp ugt ptr %i.awj, %scevgep2156
  %i.awm = select i1 %i.aph, i1 %i.awl, i1 %i.awk
  %.reass2412 = or i1 %i.awm, %invariant.op2411
  br i1 %.reass2412, label %vec.epilog.scalar.ph2200.preheader, label %vector.memcheck2160

vector.memcheck2160:                              ; preds = %vector.scevcheck2152
  %bound02169 = icmp ult ptr %scevgep2161, %scevgep2168
  %bound12170 = icmp ult ptr %umin2166, %scevgep2163
  %found.conflict2171 = and i1 %bound02169, %bound12170
  br i1 %found.conflict2171, label %vec.epilog.scalar.ph2200.preheader, label %vector.main.loop.iter.check2173

vector.main.loop.iter.check2173:                  ; preds = %vector.memcheck2160
  br i1 %min.iters.check2174, label %vec.epilog.ph2203, label %vector.body2179

vector.body2179:                                  ; preds = %vector.main.loop.iter.check2173, %vector.body2179
  %index2180 = phi i64 [ %index.next2193, %vector.body2179 ], [ 0, %vector.main.loop.iter.check2173 ] ; 2 uses
  %vec.ind2181 = phi <4 x i64> [ %vec.ind.next2194, %vector.body2179 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.main.loop.iter.check2173 ] ; 5 uses
  %step.add2182 = add nuw nsw <4 x i64> %vec.ind2181, splat (i64 4)
  %step.add.22183 = add nuw nsw <4 x i64> %vec.ind2181, splat (i64 8)
  %step.add.32184 = add nuw nsw <4 x i64> %vec.ind2181, splat (i64 12)
  %i.awn = getelementptr [8 x i8], ptr %gep1285, i64 %index2180
  %i.awo = getelementptr i8, ptr %i.awn, i64 8
  %i.awp = getelementptr [8 x i8], ptr %i.awo, i64 %i.avm ; 4 uses
  %i.awq = getelementptr i8, ptr %i.awp, i64 32
  %i.awr = getelementptr i8, ptr %i.awp, i64 64
  %i.aws = getelementptr i8, ptr %i.awp, i64 96
  %wide.load2185 = load <4 x double>, ptr %i.awp, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %wide.load2186 = load <4 x double>, ptr %i.awq, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %wide.load2187 = load <4 x double>, ptr %i.awr, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %wide.load2188 = load <4 x double>, ptr %i.aws, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %i.awt = mul nsw <4 x i64> %vec.ind2181, %broadcast.splat2178
  %i.awu = mul nsw <4 x i64> %step.add2182, %broadcast.splat2178
  %i.awv = mul nsw <4 x i64> %step.add.22183, %broadcast.splat2178
  %i.aww = mul nsw <4 x i64> %step.add.32184, %broadcast.splat2178
  %wide.gep2189 = getelementptr [8 x i8], ptr %invariant.gep1282, <4 x i64> %i.awt
  %wide.gep2190 = getelementptr [8 x i8], ptr %invariant.gep1282, <4 x i64> %i.awu
  %wide.gep2191 = getelementptr [8 x i8], ptr %invariant.gep1282, <4 x i64> %i.awv
  %wide.gep2192 = getelementptr [8 x i8], ptr %invariant.gep1282, <4 x i64> %i.aww
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2185, <4 x ptr> align 8 %wide.gep2189, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2186, <4 x ptr> align 8 %wide.gep2190, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2187, <4 x ptr> align 8 %wide.gep2191, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2188, <4 x ptr> align 8 %wide.gep2192, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99
  %index.next2193 = add nuw i64 %index2180, 16    ; 2 uses
  %vec.ind.next2194 = add nuw nsw <4 x i64> %vec.ind2181, splat (i64 16)
  %i.awx = icmp eq i64 %index.next2193, %n.vec2176
  br i1 %i.awx, label %middle.block2195, label %vector.body2179, !llvm.loop !101

middle.block2195:                                 ; preds = %vector.body2179
  br i1 %cmp.n2196, label %._crit_edge854, label %vec.epilog.iter.check2201

vec.epilog.iter.check2201:                        ; preds = %middle.block2195
  br i1 %min.epilog.iters.check2202, label %vec.epilog.scalar.ph2200.preheader, label %vec.epilog.ph2203, !prof !15

vec.epilog.ph2203:                                ; preds = %vector.main.loop.iter.check2173, %vec.epilog.iter.check2201
  %vec.epilog.resume.val2197 = phi i64 [ %n.vec2176, %vec.epilog.iter.check2201 ], [ 0, %vector.main.loop.iter.check2173 ]
  %bc.resume.val2198 = phi i64 [ %i.awc, %vec.epilog.iter.check2201 ], [ 1, %vector.main.loop.iter.check2173 ]
  %broadcast.splatinsert2207 = insertelement <4 x i64> poison, i64 %bc.resume.val2198, i64 0
  %broadcast.splat2208 = shufflevector <4 x i64> %broadcast.splatinsert2207, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction2209 = add nuw nsw <4 x i64> %broadcast.splat2208, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body2210

vec.epilog.vector.body2210:                       ; preds = %vec.epilog.vector.body2210, %vec.epilog.ph2203
  %index2211 = phi i64 [ %vec.epilog.resume.val2197, %vec.epilog.ph2203 ], [ %index.next2215, %vec.epilog.vector.body2210 ] ; 2 uses
  %vec.ind2212 = phi <4 x i64> [ %induction2209, %vec.epilog.ph2203 ], [ %vec.ind.next2216, %vec.epilog.vector.body2210 ] ; 2 uses
  %i.awy = getelementptr [8 x i8], ptr %gep1285, i64 %index2211
  %i.awz = getelementptr i8, ptr %i.awy, i64 8
  %i.axa = getelementptr [8 x i8], ptr %i.awz, i64 %i.avm
  %wide.load2213 = load <4 x double>, ptr %i.axa, align 8, !tbaa !9, !alias.scope !96, !noalias !99
  %i.axb = mul nsw <4 x i64> %vec.ind2212, %broadcast.splat2206
  %wide.gep2214 = getelementptr [8 x i8], ptr %invariant.gep1282, <4 x i64> %i.axb
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2213, <4 x ptr> align 8 %wide.gep2214, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !99
  %index.next2215 = add nuw i64 %index2211, 4     ; 2 uses
  %vec.ind.next2216 = add nuw nsw <4 x i64> %vec.ind2212, splat (i64 4)
  %i.axc = icmp eq i64 %index.next2215, %n.vec2204
  br i1 %i.axc, label %vec.epilog.middle.block2217, label %vec.epilog.vector.body2210, !llvm.loop !102

vec.epilog.middle.block2217:                      ; preds = %vec.epilog.vector.body2210
  br i1 %cmp.n2218, label %._crit_edge854, label %vec.epilog.scalar.ph2200.preheader

vec.epilog.scalar.ph2200.preheader:               ; preds = %vector.memcheck2160, %vector.scevcheck2152, %iter.check2199, %vec.epilog.iter.check2201, %vec.epilog.middle.block2217
  %indvars.iv1065.ph = phi i64 [ 1, %iter.check2199 ], [ 1, %vector.scevcheck2152 ], [ 1, %vector.memcheck2160 ], [ %i.awc, %vec.epilog.iter.check2201 ], [ %i.awd, %vec.epilog.middle.block2217 ] ; 4 uses
  %i.axd = sub i64 %wide.trip.count1068, %indvars.iv1065.ph
  %i.axe = sub i64 %i.avx, %indvars.iv1065.ph
  %xtraiter2326 = and i64 %i.axd, 3               ; 2 uses
  %lcmp.mod2327.not = icmp eq i64 %xtraiter2326, 0
  br i1 %lcmp.mod2327.not, label %vec.epilog.scalar.ph2200.prol.loopexit, label %vec.epilog.scalar.ph2200.prol

vec.epilog.scalar.ph2200.prol:                    ; preds = %vec.epilog.scalar.ph2200.preheader, %vec.epilog.scalar.ph2200.prol
  %indvars.iv1065.prol = phi i64 [ %indvars.iv.next1066.prol, %vec.epilog.scalar.ph2200.prol ], [ %indvars.iv1065.ph, %vec.epilog.scalar.ph2200.preheader ] ; 3 uses
  %prol.iter2328 = phi i64 [ %prol.iter2328.next, %vec.epilog.scalar.ph2200.prol ], [ 0, %vec.epilog.scalar.ph2200.preheader ]
  %i.axf = add nsw i64 %indvars.iv1065.prol, %i.avm
  %i.axg = mul nsw i64 %i.axf, %i.alx
  %i.axh = getelementptr [8 x i8], ptr %gep1285, i64 %i.axg
  %i.axi = load double, ptr %i.axh, align 8, !tbaa !9
  %i.axj = mul nsw i64 %indvars.iv1065.prol, %i.aly
  %gep1283.prol = getelementptr [8 x i8], ptr %invariant.gep1282, i64 %i.axj
  store double %i.axi, ptr %gep1283.prol, align 8, !tbaa !9
  %indvars.iv.next1066.prol = add nuw nsw i64 %indvars.iv1065.prol, 1 ; 2 uses
  %prol.iter2328.next = add i64 %prol.iter2328, 1 ; 2 uses
  %prol.iter2328.cmp.not = icmp eq i64 %prol.iter2328.next, %xtraiter2326
  br i1 %prol.iter2328.cmp.not, label %vec.epilog.scalar.ph2200.prol.loopexit, label %vec.epilog.scalar.ph2200.prol, !llvm.loop !103

vec.epilog.scalar.ph2200.prol.loopexit:           ; preds = %vec.epilog.scalar.ph2200.prol, %vec.epilog.scalar.ph2200.preheader
  %indvars.iv1065.unr = phi i64 [ %indvars.iv1065.ph, %vec.epilog.scalar.ph2200.preheader ], [ %indvars.iv.next1066.prol, %vec.epilog.scalar.ph2200.prol ]
  %i.axk = icmp ult i64 %i.axe, 3
  br i1 %i.axk, label %._crit_edge854, label %vec.epilog.scalar.ph2200

vec.epilog.scalar.ph2200:                         ; preds = %vec.epilog.scalar.ph2200.prol.loopexit, %vec.epilog.scalar.ph2200
  %indvars.iv1065 = phi i64 [ %indvars.iv.next1066.3, %vec.epilog.scalar.ph2200 ], [ %indvars.iv1065.unr, %vec.epilog.scalar.ph2200.prol.loopexit ] ; 6 uses
  %i.axl = add nsw i64 %indvars.iv1065, %i.avm
  %i.axm = mul nsw i64 %i.axl, %i.alx
  %i.axn = getelementptr [8 x i8], ptr %gep1285, i64 %i.axm
  %i.axo = load double, ptr %i.axn, align 8, !tbaa !9
  %i.axp = mul nsw i64 %indvars.iv1065, %i.aly
  %gep1283 = getelementptr [8 x i8], ptr %invariant.gep1282, i64 %i.axp
  store double %i.axo, ptr %gep1283, align 8, !tbaa !9
  %indvars.iv.next1066 = add nuw nsw i64 %indvars.iv1065, 1 ; 2 uses
  %i.axq = add nsw i64 %indvars.iv.next1066, %i.avm
  %i.axr = mul nsw i64 %i.axq, %i.alx
  %i.axs = getelementptr [8 x i8], ptr %gep1285, i64 %i.axr
  %i.axt = load double, ptr %i.axs, align 8, !tbaa !9
  %i.axu = mul nsw i64 %indvars.iv.next1066, %i.aly
  %gep1283.1 = getelementptr [8 x i8], ptr %invariant.gep1282, i64 %i.axu
  store double %i.axt, ptr %gep1283.1, align 8, !tbaa !9
  %indvars.iv.next1066.1 = add nuw nsw i64 %indvars.iv1065, 2 ; 2 uses
  %i.axv = add nsw i64 %indvars.iv.next1066.1, %i.avm
  %i.axw = mul nsw i64 %i.axv, %i.alx
  %i.axx = getelementptr [8 x i8], ptr %gep1285, i64 %i.axw
  %i.axy = load double, ptr %i.axx, align 8, !tbaa !9
  %i.axz = mul nsw i64 %indvars.iv.next1066.1, %i.aly
  %gep1283.2 = getelementptr [8 x i8], ptr %invariant.gep1282, i64 %i.axz
  store double %i.axy, ptr %gep1283.2, align 8, !tbaa !9
  %indvars.iv.next1066.2 = add nuw nsw i64 %indvars.iv1065, 3 ; 2 uses
  %i.aya = add nsw i64 %indvars.iv.next1066.2, %i.avm
  %i.ayb = mul nsw i64 %i.aya, %i.alx
  %i.ayc = getelementptr [8 x i8], ptr %gep1285, i64 %i.ayb
  %i.ayd = load double, ptr %i.ayc, align 8, !tbaa !9
  %i.aye = mul nsw i64 %indvars.iv.next1066.2, %i.aly
  %gep1283.3 = getelementptr [8 x i8], ptr %invariant.gep1282, i64 %i.aye
  store double %i.ayd, ptr %gep1283.3, align 8, !tbaa !9
  %indvars.iv.next1066.3 = add nuw nsw i64 %indvars.iv1065, 4 ; 2 uses
  %exitcond1069.not.3 = icmp eq i64 %indvars.iv.next1066.3, %wide.trip.count1068
  br i1 %exitcond1069.not.3, label %._crit_edge854, label %vec.epilog.scalar.ph2200, !llvm.loop !104

._crit_edge854:                                   ; preds = %vec.epilog.scalar.ph2200.prol.loopexit, %vec.epilog.scalar.ph2200, %vec.epilog.middle.block2217, %middle.block2195
  %indvars.iv.next1071 = add nuw nsw i64 %indvars.iv1070, 1 ; 2 uses
  %exitcond1074.not = icmp eq i64 %indvars.iv.next1071, %wide.trip.count1073
  %indvar.next2155 = add i64 %indvar2154, 1
  br i1 %exitcond1074.not, label %._crit_edge859, label %iter.check2199, !llvm.loop !105

._crit_edge859:                                   ; preds = %._crit_edge854, %.thread1235
  %storemerge647.lcssa = phi i32 [ 1, %.thread1235 ], [ %i.avq, %._crit_edge854 ]
  store i32 %storemerge647.lcssa, ptr %i.f, align 4, !tbaa !8
  %.not650872 = icmp slt i32 %i.avj, 1            ; 2 uses
  br i1 %.not650872, label %.preheader716, label %.lr.ph875.preheader

.lr.ph875.preheader:                              ; preds = %._crit_edge859
  %i.ayf = sext i32 %storemerge645.in840 to i64   ; 10 uses
  %i.ayg = zext nneg i32 %i.avj to i64
  %i.ayh = add nuw i32 %i.avj, 1
  %wide.trip.count1088 = zext i32 %i.ayh to i64
  %wide.trip.count1080 = zext nneg i32 %i.avj to i64 ; 2 uses
  %invariant.gep1290 = getelementptr [8 x i8], ptr %i.l, i64 %i.ayf
  %i.ayi = shl nsw i64 %i.ayf, 4
  %i.ayj = getelementptr i8, ptr %2, i64 %i.ayi
  br label %.lr.ph875

..preheader716_crit_edge:                         ; preds = %._crit_edge871
  %i.ayk = add nsw i32 %i.avj, -1
  store i32 %i.ayk, ptr %i.d, align 4, !tbaa !8
  br label %.preheader716

.preheader716:                                    ; preds = %..preheader716_crit_edge, %._crit_edge859
  %i.ayl = icmp sgt i32 %i.avl, 0
  br i1 %i.ayl, label %.lr.ph890, label %.preheader715

.lr.ph890:                                        ; preds = %.preheader716.thread, %.preheader716
  %.not65087212391242 = phi i1 [ true, %.preheader716.thread ], [ %.not650872, %.preheader716 ] ; 2 uses
  %i.aym = add i32 %i.avj, 1
  %wide.trip.count1093 = zext i32 %i.aym to i64   ; 2 uses
  %i.ayn = add nsw i64 %wide.trip.count1093, -1   ; 5 uses
  %i.ayo = add nsw i64 %wide.trip.count1093, -2   ; 2 uses
  %xtraiter2333 = and i64 %i.ayn, 1
  %i.ayp = icmp eq i64 %i.ayo, 0
  %unroll_iter2337 = and i64 %i.ayn, -2
  %lcmp.mod2335.not = icmp eq i64 %xtraiter2333, 0
  %lcmp.mod2336 = trunc i64 %i.ayn to i1
  %xtraiter2340 = and i64 %i.ayn, 3               ; 3 uses
  %i.ayq = icmp ult i64 %i.ayo, 3
  %unroll_iter2344 = and i64 %i.ayn, -4
  %lcmp.mod2342.not = icmp eq i64 %xtraiter2340, 0
  %lcmp.mod2343 = icmp ne i64 %xtraiter2340, 0
  br label %bb.ao

.lr.ph875:                                        ; preds = %.lr.ph875.preheader, %._crit_edge871
  %indvar2041 = phi i64 [ 0, %.lr.ph875.preheader ], [ %indvar.next2042, %._crit_edge871 ] ; 15 uses
  %indvars.iv1075 = phi i64 [ 1, %.lr.ph875.preheader ], [ %indvars.iv.next1076, %._crit_edge871 ] ; 13 uses
  %i.ayr = xor i64 %indvar2041, -1
  %i.ays = add i64 %i.ayr, %wide.trip.count1080   ; 7 uses
  %i.ayt = shl nuw nsw i64 %indvar2041, 3         ; 2 uses
  %scevgep2048 = getelementptr i8, ptr %i.ayj, i64 %i.ayt
  %i.ayu = add i64 %indvar2041, %i.ayf
  %i.ayv = shl i64 %i.ayu, 4
  %scevgep2049 = getelementptr i8, ptr %2, i64 %i.ayv
  %scevgep2050 = getelementptr i8, ptr %i.apj, i64 %i.ayt ; 4 uses
  %i.ayw = mul i64 %i.aot, %indvar2041
  %scevgep2051 = getelementptr i8, ptr %i.apk, i64 %i.ayw ; 4 uses
  %i.ayx = icmp ult ptr %scevgep2050, %scevgep2051
  %umin2052 = select i1 %i.ayx, ptr %scevgep2050, ptr %scevgep2051
  %i.ayy = icmp ugt ptr %scevgep2050, %scevgep2051
  %umax2053 = select i1 %i.ayy, ptr %scevgep2050, ptr %scevgep2051
  %scevgep2054 = getelementptr i8, ptr %umax2053, i64 8
  %i.ayz = add i64 %indvar2041, -1
  %i.aza = shl nuw nsw i64 %indvar2041, 3
  %scevgep2043 = getelementptr i8, ptr %i.apl, i64 %i.aza ; 4 uses
  %i.azb = add nsw i64 %indvars.iv1075, %i.alz    ; 3 uses
  %i.azc = mul nsw i64 %indvars.iv1075, %i.aly
  %i.azd = getelementptr [8 x i8], ptr %i.t, i64 %i.azb
  %i.aze = getelementptr [8 x i8], ptr %i.azd, i64 %i.azc
  store double 1.000000e+00, ptr %i.aze, align 8, !tbaa !9
  %.not669.not862 = icmp samesign ult i64 %indvars.iv1075, %i.ayg
  br i1 %.not669.not862, label %iter.check2132, label %._crit_edge866

iter.check2132:                                   ; preds = %.lr.ph875
  %invariant.gep1286 = getelementptr [8 x i8], ptr %i.t, i64 %i.azb ; 6 uses
  %min.iters.check2106 = icmp ult i64 %i.ays, 4
  br i1 %min.iters.check2106, label %.lr.ph865.preheader, label %vector.main.loop.iter.check2107

vector.main.loop.iter.check2107:                  ; preds = %iter.check2132
  %min.iters.check2108 = icmp ult i64 %i.ays, 16
  br i1 %min.iters.check2108, label %vec.epilog.ph2136, label %vector.ph2109

vector.ph2109:                                    ; preds = %vector.main.loop.iter.check2107
  %i.azf = and i64 %i.ays, 12
  %n.vec2110 = and i64 %i.ays, -16                ; 4 uses
  %i.azg = add i64 %indvars.iv1075, %n.vec2110    ; 2 uses
  %broadcast.splatinsert2113 = insertelement <4 x i64> poison, i64 %indvars.iv1075, i64 0
  %broadcast.splat2114 = shufflevector <4 x i64> %broadcast.splatinsert2113, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction2115 = add nuw nsw <4 x i64> %broadcast.splat2114, <i64 0, i64 1, i64 2, i64 3>
  br label %vector.body2116

vector.body2116:                                  ; preds = %vector.body2116, %vector.ph2109
  %index2117 = phi i64 [ 0, %vector.ph2109 ], [ %index.next2126, %vector.body2116 ]
  %vec.ind2118 = phi <4 x i64> [ %induction2115, %vector.ph2109 ], [ %vec.ind.next2127, %vector.body2116 ] ; 5 uses
  %i.azh = add nuw nsw <4 x i64> %vec.ind2118, splat (i64 1)
  %i.azi = add nuw nsw <4 x i64> %vec.ind2118, splat (i64 5)
  %i.azj = add nuw nsw <4 x i64> %vec.ind2118, splat (i64 9)
  %i.azk = add nuw nsw <4 x i64> %vec.ind2118, splat (i64 13)
  %i.azl = mul nsw <4 x i64> %i.azh, %broadcast.splat2112
  %i.azm = mul nsw <4 x i64> %i.azi, %broadcast.splat2112
  %i.azn = mul nsw <4 x i64> %i.azj, %broadcast.splat2112
  %i.azo = mul nsw <4 x i64> %i.azk, %broadcast.splat2112
  %wide.gep2122 = getelementptr [8 x i8], ptr %invariant.gep1286, <4 x i64> %i.azl
  %wide.gep2123 = getelementptr [8 x i8], ptr %invariant.gep1286, <4 x i64> %i.azm
  %wide.gep2124 = getelementptr [8 x i8], ptr %invariant.gep1286, <4 x i64> %i.azn
  %wide.gep2125 = getelementptr [8 x i8], ptr %invariant.gep1286, <4 x i64> %i.azo
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep2122, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep2123, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep2124, <4 x i1> splat (i1 true)), !tbaa !9
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep2125, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next2126 = add nuw i64 %index2117, 16    ; 2 uses
  %vec.ind.next2127 = add nuw nsw <4 x i64> %vec.ind2118, splat (i64 16)
  %i.azp = icmp eq i64 %index.next2126, %n.vec2110
  br i1 %i.azp, label %middle.block2128, label %vector.body2116, !llvm.loop !106

middle.block2128:                                 ; preds = %vector.body2116
  %cmp.n2129 = icmp eq i64 %i.ays, %n.vec2110
  br i1 %cmp.n2129, label %._crit_edge866, label %vec.epilog.iter.check2134

vec.epilog.iter.check2134:                        ; preds = %middle.block2128
  %min.epilog.iters.check2135 = icmp eq i64 %i.azf, 0
  br i1 %min.epilog.iters.check2135, label %.lr.ph865.preheader, label %vec.epilog.ph2136, !prof !15

vec.epilog.ph2136:                                ; preds = %vector.main.loop.iter.check2107, %vec.epilog.iter.check2134
  %vec.epilog.resume.val2130 = phi i64 [ %n.vec2110, %vec.epilog.iter.check2134 ], [ 0, %vector.main.loop.iter.check2107 ]
  %bc.resume.val2131 = phi i64 [ %i.azg, %vec.epilog.iter.check2134 ], [ %indvars.iv1075, %vector.main.loop.iter.check2107 ]
  %n.vec2137 = and i64 %i.ays, -4                 ; 3 uses
  %i.azq = add i64 %indvars.iv1075, %n.vec2137
  %broadcast.splatinsert2140 = insertelement <4 x i64> poison, i64 %bc.resume.val2131, i64 0
  %broadcast.splat2141 = shufflevector <4 x i64> %broadcast.splatinsert2140, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction2142 = add nuw nsw <4 x i64> %broadcast.splat2141, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body2143

vec.epilog.vector.body2143:                       ; preds = %vec.epilog.vector.body2143, %vec.epilog.ph2136
  %index2144 = phi i64 [ %vec.epilog.resume.val2130, %vec.epilog.ph2136 ], [ %index.next2147, %vec.epilog.vector.body2143 ]
  %vec.ind2145 = phi <4 x i64> [ %induction2142, %vec.epilog.ph2136 ], [ %vec.ind.next2148, %vec.epilog.vector.body2143 ] ; 2 uses
  %i.azr = add nuw nsw <4 x i64> %vec.ind2145, splat (i64 1)
  %i.azs = mul nsw <4 x i64> %i.azr, %broadcast.splat2139
  %wide.gep2146 = getelementptr [8 x i8], ptr %invariant.gep1286, <4 x i64> %i.azs
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> zeroinitializer, <4 x ptr> align 8 %wide.gep2146, <4 x i1> splat (i1 true)), !tbaa !9
  %index.next2147 = add nuw i64 %index2144, 4     ; 2 uses
  %vec.ind.next2148 = add nuw nsw <4 x i64> %vec.ind2145, splat (i64 4)
  %i.azt = icmp eq i64 %index.next2147, %n.vec2137
  br i1 %i.azt, label %vec.epilog.middle.block2149, label %vec.epilog.vector.body2143, !llvm.loop !107

vec.epilog.middle.block2149:                      ; preds = %vec.epilog.vector.body2143
  %cmp.n2150 = icmp eq i64 %i.ays, %n.vec2137
  br i1 %cmp.n2150, label %._crit_edge866, label %.lr.ph865.preheader

.lr.ph865.preheader:                              ; preds = %iter.check2132, %vec.epilog.iter.check2134, %vec.epilog.middle.block2149
  %indvars.iv1077.ph = phi i64 [ %indvars.iv1075, %iter.check2132 ], [ %i.azg, %vec.epilog.iter.check2134 ], [ %i.azq, %vec.epilog.middle.block2149 ]
  br label %.lr.ph865

.lr.ph865:                                        ; preds = %.lr.ph865.preheader, %.lr.ph865
  %indvars.iv1077 = phi i64 [ %indvars.iv.next1078, %.lr.ph865 ], [ %indvars.iv1077.ph, %.lr.ph865.preheader ]
  %indvars.iv.next1078 = add nuw nsw i64 %indvars.iv1077, 1 ; 3 uses
  %i.azu = mul nsw i64 %indvars.iv.next1078, %i.aly
  %gep1287 = getelementptr [8 x i8], ptr %invariant.gep1286, i64 %i.azu
  store double 0.000000e+00, ptr %gep1287, align 8, !tbaa !9
  %exitcond1081.not = icmp eq i64 %indvars.iv.next1078, %wide.trip.count1080
  br i1 %exitcond1081.not, label %._crit_edge866, label %.lr.ph865, !llvm.loop !108

._crit_edge866:                                   ; preds = %.lr.ph865, %middle.block2128, %vec.epilog.middle.block2149, %.lr.ph875
  %.not670.not867 = icmp samesign ugt i64 %indvars.iv1075, 1
  br i1 %.not670.not867, label %iter.check2085, label %._crit_edge871

iter.check2085:                                   ; preds = %._crit_edge866
  %gep1291 = getelementptr [8 x i8], ptr %invariant.gep1290, i64 %indvars.iv1075 ; 7 uses
  %invariant.gep1288 = getelementptr [8 x i8], ptr %i.t, i64 %i.azb ; 10 uses
  %min.iters.check2058 = icmp ult i64 %indvar2041, 4
  br i1 %min.iters.check2058, label %vec.epilog.scalar.ph2086.preheader, label %vector.scevcheck2039

vector.scevcheck2039:                             ; preds = %iter.check2085
  %mul2044 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.apn, i64 %i.ayz) ; 2 uses
  %mul.result2045 = extractvalue { i64, i1 } %mul2044, 0 ; 2 uses
  %mul.overflow2046 = extractvalue { i64, i1 } %mul2044, 1
  %i.azv = sub i64 0, %mul.result2045
  %i.azw = getelementptr i8, ptr %scevgep2043, i64 %mul.result2045
  %i.azx = getelementptr i8, ptr %scevgep2043, i64 %i.azv
  %i.azy = icmp ult ptr %i.azw, %scevgep2043
  %i.azz = icmp ugt ptr %i.azx, %scevgep2043
  %i.baa = select i1 %i.apm, i1 %i.azz, i1 %i.azy
  %i.bab = or i1 %i.baa, %mul.overflow2046
  %i.bac = or i1 %ident.check2040, %i.bab
  br i1 %i.bac, label %vec.epilog.scalar.ph2086.preheader, label %vector.memcheck2047

vector.memcheck2047:                              ; preds = %vector.scevcheck2039
  %bound02055 = icmp ult ptr %scevgep2048, %scevgep2054
  %bound12056 = icmp ult ptr %umin2052, %scevgep2049
  %found.conflict2057 = and i1 %bound02055, %bound12056
  br i1 %found.conflict2057, label %vec.epilog.scalar.ph2086.preheader, label %vector.main.loop.iter.check2059

vector.main.loop.iter.check2059:                  ; preds = %vector.memcheck2047
  %min.iters.check2060 = icmp ult i64 %indvar2041, 16
  br i1 %min.iters.check2060, label %vec.epilog.ph2089, label %vector.ph2061

vector.ph2061:                                    ; preds = %vector.main.loop.iter.check2059
  %i.bad = and i64 %indvar2041, 12
  %n.vec2062 = and i64 %indvar2041, -16           ; 4 uses
  %i.bae = or disjoint i64 %n.vec2062, 1          ; 2 uses
  br label %vector.body2065

vector.body2065:                                  ; preds = %vector.body2065, %vector.ph2061
  %index2066 = phi i64 [ 0, %vector.ph2061 ], [ %index.next2079, %vector.body2065 ] ; 2 uses
  %vec.ind2067 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph2061 ], [ %vec.ind.next2080, %vector.body2065 ] ; 5 uses
  %step.add2068 = add nuw nsw <4 x i64> %vec.ind2067, splat (i64 4)
  %step.add.22069 = add nuw nsw <4 x i64> %vec.ind2067, splat (i64 8)
  %step.add.32070 = add nuw nsw <4 x i64> %vec.ind2067, splat (i64 12)
  %i.baf = getelementptr [8 x i8], ptr %gep1291, i64 %index2066
  %i.bag = getelementptr i8, ptr %i.baf, i64 8
  %i.bah = getelementptr [8 x i8], ptr %i.bag, i64 %i.ayf ; 4 uses
  %i.bai = getelementptr i8, ptr %i.bah, i64 32
  %i.baj = getelementptr i8, ptr %i.bah, i64 64
  %i.bak = getelementptr i8, ptr %i.bah, i64 96
  %wide.load2071 = load <4 x double>, ptr %i.bah, align 8, !tbaa !9, !alias.scope !109, !noalias !112
  %wide.load2072 = load <4 x double>, ptr %i.bai, align 8, !tbaa !9, !alias.scope !109, !noalias !112
  %wide.load2073 = load <4 x double>, ptr %i.baj, align 8, !tbaa !9, !alias.scope !109, !noalias !112
  %wide.load2074 = load <4 x double>, ptr %i.bak, align 8, !tbaa !9, !alias.scope !109, !noalias !112
  %i.bal = mul nsw <4 x i64> %vec.ind2067, %broadcast.splat2064
  %i.bam = mul nsw <4 x i64> %step.add2068, %broadcast.splat2064
  %i.ban = mul nsw <4 x i64> %step.add.22069, %broadcast.splat2064
  %i.bao = mul nsw <4 x i64> %step.add.32070, %broadcast.splat2064
  %wide.gep2075 = getelementptr [8 x i8], ptr %invariant.gep1288, <4 x i64> %i.bal
  %wide.gep2076 = getelementptr [8 x i8], ptr %invariant.gep1288, <4 x i64> %i.bam
  %wide.gep2077 = getelementptr [8 x i8], ptr %invariant.gep1288, <4 x i64> %i.ban
  %wide.gep2078 = getelementptr [8 x i8], ptr %invariant.gep1288, <4 x i64> %i.bao
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2071, <4 x ptr> align 8 %wide.gep2075, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !112
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2072, <4 x ptr> align 8 %wide.gep2076, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !112
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2073, <4 x ptr> align 8 %wide.gep2077, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !112
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2074, <4 x ptr> align 8 %wide.gep2078, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !112
  %index.next2079 = add nuw i64 %index2066, 16    ; 2 uses
  %vec.ind.next2080 = add nuw nsw <4 x i64> %vec.ind2067, splat (i64 16)
  %i.bap = icmp eq i64 %index.next2079, %n.vec2062
  br i1 %i.bap, label %middle.block2081, label %vector.body2065, !llvm.loop !114

middle.block2081:                                 ; preds = %vector.body2065
  %cmp.n2082 = icmp eq i64 %indvar2041, %n.vec2062
  br i1 %cmp.n2082, label %._crit_edge871, label %vec.epilog.iter.check2087

vec.epilog.iter.check2087:                        ; preds = %middle.block2081
  %min.epilog.iters.check2088 = icmp eq i64 %i.bad, 0
  br i1 %min.epilog.iters.check2088, label %vec.epilog.scalar.ph2086.preheader, label %vec.epilog.ph2089, !prof !15

vec.epilog.ph2089:                                ; preds = %vector.main.loop.iter.check2059, %vec.epilog.iter.check2087
  %vec.epilog.resume.val2083 = phi i64 [ %n.vec2062, %vec.epilog.iter.check2087 ], [ 0, %vector.main.loop.iter.check2059 ]
  %bc.resume.val2084 = phi i64 [ %i.bae, %vec.epilog.iter.check2087 ], [ 1, %vector.main.loop.iter.check2059 ]
  %n.vec2090 = and i64 %indvar2041, -4            ; 3 uses
  %i.baq = or disjoint i64 %n.vec2090, 1
  %broadcast.splatinsert2093 = insertelement <4 x i64> poison, i64 %bc.resume.val2084, i64 0
  %broadcast.splat2094 = shufflevector <4 x i64> %broadcast.splatinsert2093, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction2095 = add nuw nsw <4 x i64> %broadcast.splat2094, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body2096

vec.epilog.vector.body2096:                       ; preds = %vec.epilog.vector.body2096, %vec.epilog.ph2089
  %index2097 = phi i64 [ %vec.epilog.resume.val2083, %vec.epilog.ph2089 ], [ %index.next2101, %vec.epilog.vector.body2096 ] ; 2 uses
  %vec.ind2098 = phi <4 x i64> [ %induction2095, %vec.epilog.ph2089 ], [ %vec.ind.next2102, %vec.epilog.vector.body2096 ] ; 2 uses
  %i.bar = getelementptr [8 x i8], ptr %gep1291, i64 %index2097
  %i.bas = getelementptr i8, ptr %i.bar, i64 8
  %i.bat = getelementptr [8 x i8], ptr %i.bas, i64 %i.ayf
  %wide.load2099 = load <4 x double>, ptr %i.bat, align 8, !tbaa !9, !alias.scope !109, !noalias !112
  %i.bau = mul nsw <4 x i64> %vec.ind2098, %broadcast.splat2092
  %wide.gep2100 = getelementptr [8 x i8], ptr %invariant.gep1288, <4 x i64> %i.bau
  call void @llvm.masked.scatter.v4f64.v4p0(<4 x double> %wide.load2099, <4 x ptr> align 8 %wide.gep2100, <4 x i1> splat (i1 true)), !tbaa !9, !alias.scope !112
end_hunk_0
begin_hunk_1_@dsytri_3x_:bb.a

vector.body1859:                                  ; preds = %vector.body1859, %vector.ph1855
  %index1860 = phi i64 [ 0, %vector.ph1855 ], [ %index.next1877, %vector.body1859 ] ; 2 uses
  %vec.ind1861 = phi <4 x i64> [ <i64 1, i64 2, i64 3, i64 4>, %vector.ph1855 ], [ %vec.ind.next1878, %vector.body1859 ] ; 5 uses
  %step.add1862 = add nuw nsw <4 x i64> %vec.ind1861, splat (i64 4)
  %step.add.21863 = add nuw nsw <4 x i64> %vec.ind1861, splat (i64 8)
  %step.add.31864 = add nuw nsw <4 x i64> %vec.ind1861, splat (i64 12)
  %i.bni = mul nsw <4 x i64> %vec.ind1861, %broadcast.splat1858
  %i.bnj = mul nsw <4 x i64> %step.add1862, %broadcast.splat1858
  %i.bnk = mul nsw <4 x i64> %step.add.21863, %broadcast.splat1858
  %i.bnl = mul nsw <4 x i64> %step.add.31864, %broadcast.splat1858
  %wide.gep1865 = getelementptr [8 x i8], ptr %gep1311, <4 x i64> %i.bni
  %wide.gep1866 = getelementptr [8 x i8], ptr %gep1311, <4 x i64> %i.bnj
  %wide.gep1867 = getelementptr [8 x i8], ptr %gep1311, <4 x i64> %i.bnk
  %wide.gep1868 = getelementptr [8 x i8], ptr %gep1311, <4 x i64> %i.bnl
  %wide.masked.gather1869 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1865, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !137
  %wide.masked.gather1870 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1866, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !137
  %wide.masked.gather1871 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1867, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !137
  %wide.masked.gather1872 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1868, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !137
  %i.bnm = getelementptr [8 x i8], ptr %gep1313, i64 %index1860
  %i.bnn = getelementptr i8, ptr %i.bnm, i64 8
  %i.bno = getelementptr [8 x i8], ptr %i.bnn, i64 %i.bmm ; 5 uses
  %i.bnp = getelementptr i8, ptr %i.bno, i64 32   ; 2 uses
  %i.bnq = getelementptr i8, ptr %i.bno, i64 64   ; 2 uses
  %i.bnr = getelementptr i8, ptr %i.bno, i64 96   ; 2 uses
  %wide.load1873 = load <4 x double>, ptr %i.bno, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %wide.load1874 = load <4 x double>, ptr %i.bnp, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %wide.load1875 = load <4 x double>, ptr %i.bnq, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %wide.load1876 = load <4 x double>, ptr %i.bnr, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %i.bns = fadd <4 x double> %wide.masked.gather1869, %wide.load1873
  %i.bnt = fadd <4 x double> %wide.masked.gather1870, %wide.load1874
  %i.bnu = fadd <4 x double> %wide.masked.gather1871, %wide.load1875
  %i.bnv = fadd <4 x double> %wide.masked.gather1872, %wide.load1876
  store <4 x double> %i.bns, ptr %i.bno, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  store <4 x double> %i.bnt, ptr %i.bnp, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  store <4 x double> %i.bnu, ptr %i.bnq, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  store <4 x double> %i.bnv, ptr %i.bnr, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %index.next1877 = add nuw i64 %index1860, 16    ; 2 uses
  %vec.ind.next1878 = add nuw nsw <4 x i64> %vec.ind1861, splat (i64 16)
  %i.bnw = icmp eq i64 %index.next1877, %n.vec1856
  br i1 %i.bnw, label %middle.block1879, label %vector.body1859, !llvm.loop !142

middle.block1879:                                 ; preds = %vector.body1859
  %cmp.n1880 = icmp eq i64 %indvars.iv1151, %n.vec1856
  br i1 %cmp.n1880, label %.loopexit2261, label %vec.epilog.iter.check1885

vec.epilog.iter.check1885:                        ; preds = %middle.block1879
  %min.epilog.iters.check1886 = icmp eq i64 %i.bng, 0
  br i1 %min.epilog.iters.check1886, label %vec.epilog.scalar.ph1884.preheader, label %vec.epilog.ph1887, !prof !15

vec.epilog.ph1887:                                ; preds = %vector.main.loop.iter.check1853, %vec.epilog.iter.check1885
  %vec.epilog.resume.val1881 = phi i64 [ %n.vec1856, %vec.epilog.iter.check1885 ], [ 0, %vector.main.loop.iter.check1853 ]
  %bc.resume.val1882 = phi i64 [ %i.bnh, %vec.epilog.iter.check1885 ], [ 1, %vector.main.loop.iter.check1853 ]
  %n.vec1888 = and i64 %indvars.iv1151, 9223372036854775804 ; 3 uses
  %i.bnx = or disjoint i64 %n.vec1888, 1
  %broadcast.splatinsert1891 = insertelement <4 x i64> poison, i64 %bc.resume.val1882, i64 0
  %broadcast.splat1892 = shufflevector <4 x i64> %broadcast.splatinsert1891, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1893 = add nuw nsw <4 x i64> %broadcast.splat1892, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1894

vec.epilog.vector.body1894:                       ; preds = %vec.epilog.vector.body1894, %vec.epilog.ph1887
  %index1895 = phi i64 [ %vec.epilog.resume.val1881, %vec.epilog.ph1887 ], [ %index.next1900, %vec.epilog.vector.body1894 ] ; 2 uses
  %vec.ind1896 = phi <4 x i64> [ %induction1893, %vec.epilog.ph1887 ], [ %vec.ind.next1901, %vec.epilog.vector.body1894 ] ; 2 uses
  %i.bny = mul nsw <4 x i64> %vec.ind1896, %broadcast.splat1890
  %wide.gep1897 = getelementptr [8 x i8], ptr %gep1311, <4 x i64> %i.bny
  %wide.masked.gather1898 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1897, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !137
  %i.bnz = getelementptr [8 x i8], ptr %gep1313, i64 %index1895
  %i.boa = getelementptr i8, ptr %i.bnz, i64 8
  %i.bob = getelementptr [8 x i8], ptr %i.boa, i64 %i.bmm ; 2 uses
  %wide.load1899 = load <4 x double>, ptr %i.bob, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %i.boc = fadd <4 x double> %wide.masked.gather1898, %wide.load1899
  store <4 x double> %i.boc, ptr %i.bob, align 8, !tbaa !9, !alias.scope !140, !noalias !137
  %index.next1900 = add nuw i64 %index1895, 4     ; 2 uses
  %vec.ind.next1901 = add nuw nsw <4 x i64> %vec.ind1896, splat (i64 4)
  %i.bod = icmp eq i64 %index.next1900, %n.vec1888
  br i1 %i.bod, label %vec.epilog.middle.block1902, label %vec.epilog.vector.body1894, !llvm.loop !143

vec.epilog.middle.block1902:                      ; preds = %vec.epilog.vector.body1894
  %cmp.n1903 = icmp eq i64 %indvars.iv1151, %n.vec1888
  br i1 %cmp.n1903, label %.loopexit2261, label %vec.epilog.scalar.ph1884.preheader

vec.epilog.scalar.ph1884.preheader:               ; preds = %vector.memcheck1841, %vector.scevcheck1833, %iter.check1883, %vec.epilog.iter.check1885, %vec.epilog.middle.block1902
  %indvars.iv1142.ph = phi i64 [ 1, %iter.check1883 ], [ 1, %vector.scevcheck1833 ], [ 1, %vector.memcheck1841 ], [ %i.bnh, %vec.epilog.iter.check1885 ], [ %i.bnx, %vec.epilog.middle.block1902 ] ; 4 uses
  %i.boe = sub i64 %indvars.iv1149, %indvars.iv1142.ph
  %i.bof = sub i64 %indvars.iv1151, %indvars.iv1142.ph
  %xtraiter2366 = and i64 %i.boe, 3               ; 2 uses
  %lcmp.mod2367.not = icmp eq i64 %xtraiter2366, 0
  br i1 %lcmp.mod2367.not, label %vec.epilog.scalar.ph1884.prol.loopexit, label %vec.epilog.scalar.ph1884.prol

vec.epilog.scalar.ph1884.prol:                    ; preds = %vec.epilog.scalar.ph1884.preheader, %vec.epilog.scalar.ph1884.prol
  %indvars.iv1142.prol = phi i64 [ %indvars.iv.next1143.prol, %vec.epilog.scalar.ph1884.prol ], [ %indvars.iv1142.ph, %vec.epilog.scalar.ph1884.preheader ] ; 3 uses
  %prol.iter2368 = phi i64 [ %prol.iter2368.next, %vec.epilog.scalar.ph1884.prol ], [ 0, %vec.epilog.scalar.ph1884.preheader ]
  %i.bog = mul nsw i64 %indvars.iv1142.prol, %i.aly
  %i.boh = getelementptr [8 x i8], ptr %gep1311, i64 %i.bog
  %i.boi = load double, ptr %i.boh, align 8, !tbaa !9
  %i.boj = add nsw i64 %indvars.iv1142.prol, %i.bmm
  %i.bok = mul nsw i64 %i.boj, %i.alx
  %i.bol = getelementptr [8 x i8], ptr %gep1313, i64 %i.bok ; 2 uses
  %i.bom = load double, ptr %i.bol, align 8, !tbaa !9
  %i.bon = fadd double %i.boi, %i.bom
  store double %i.bon, ptr %i.bol, align 8, !tbaa !9
  %indvars.iv.next1143.prol = add nuw nsw i64 %indvars.iv1142.prol, 1 ; 2 uses
  %prol.iter2368.next = add i64 %prol.iter2368, 1 ; 2 uses
  %prol.iter2368.cmp.not = icmp eq i64 %prol.iter2368.next, %xtraiter2366
  br i1 %prol.iter2368.cmp.not, label %vec.epilog.scalar.ph1884.prol.loopexit, label %vec.epilog.scalar.ph1884.prol, !llvm.loop !144

vec.epilog.scalar.ph1884.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1884.prol, %vec.epilog.scalar.ph1884.preheader
  %indvars.iv1142.unr = phi i64 [ %indvars.iv1142.ph, %vec.epilog.scalar.ph1884.preheader ], [ %indvars.iv.next1143.prol, %vec.epilog.scalar.ph1884.prol ]
  %i.boo = icmp ult i64 %i.bof, 3
  br i1 %i.boo, label %.loopexit2261, label %vec.epilog.scalar.ph1884

vec.epilog.scalar.ph1884:                         ; preds = %vec.epilog.scalar.ph1884.prol.loopexit, %vec.epilog.scalar.ph1884
  %indvars.iv1142 = phi i64 [ %indvars.iv.next1143.3, %vec.epilog.scalar.ph1884 ], [ %indvars.iv1142.unr, %vec.epilog.scalar.ph1884.prol.loopexit ] ; 6 uses
  %i.bop = mul nsw i64 %indvars.iv1142, %i.aly
  %i.boq = getelementptr [8 x i8], ptr %gep1311, i64 %i.bop
  %i.bor = load double, ptr %i.boq, align 8, !tbaa !9
  %i.bos = add nsw i64 %indvars.iv1142, %i.bmm
  %i.bot = mul nsw i64 %i.bos, %i.alx
  %i.bou = getelementptr [8 x i8], ptr %gep1313, i64 %i.bot ; 2 uses
  %i.bov = load double, ptr %i.bou, align 8, !tbaa !9
  %i.bow = fadd double %i.bor, %i.bov
  store double %i.bow, ptr %i.bou, align 8, !tbaa !9
  %indvars.iv.next1143 = add nuw nsw i64 %indvars.iv1142, 1 ; 2 uses
  %i.box = mul nsw i64 %indvars.iv.next1143, %i.aly
  %i.boy = getelementptr [8 x i8], ptr %gep1311, i64 %i.box
  %i.boz = load double, ptr %i.boy, align 8, !tbaa !9
  %i.bpa = add nsw i64 %indvars.iv.next1143, %i.bmm
  %i.bpb = mul nsw i64 %i.bpa, %i.alx
  %i.bpc = getelementptr [8 x i8], ptr %gep1313, i64 %i.bpb ; 2 uses
  %i.bpd = load double, ptr %i.bpc, align 8, !tbaa !9
  %i.bpe = fadd double %i.boz, %i.bpd
  store double %i.bpe, ptr %i.bpc, align 8, !tbaa !9
  %indvars.iv.next1143.1 = add nuw nsw i64 %indvars.iv1142, 2 ; 2 uses
  %i.bpf = mul nsw i64 %indvars.iv.next1143.1, %i.aly
  %i.bpg = getelementptr [8 x i8], ptr %gep1311, i64 %i.bpf
  %i.bph = load double, ptr %i.bpg, align 8, !tbaa !9
  %i.bpi = add nsw i64 %indvars.iv.next1143.1, %i.bmm
  %i.bpj = mul nsw i64 %i.bpi, %i.alx
  %i.bpk = getelementptr [8 x i8], ptr %gep1313, i64 %i.bpj ; 2 uses
  %i.bpl = load double, ptr %i.bpk, align 8, !tbaa !9
  %i.bpm = fadd double %i.bph, %i.bpl
  store double %i.bpm, ptr %i.bpk, align 8, !tbaa !9
  %indvars.iv.next1143.2 = add nuw nsw i64 %indvars.iv1142, 3 ; 2 uses
  %i.bpn = mul nsw i64 %indvars.iv.next1143.2, %i.aly
  %i.bpo = getelementptr [8 x i8], ptr %gep1311, i64 %i.bpn
  %i.bpp = load double, ptr %i.bpo, align 8, !tbaa !9
  %i.bpq = add nsw i64 %indvars.iv.next1143.2, %i.bmm
  %i.bpr = mul nsw i64 %i.bpq, %i.alx
  %i.bps = getelementptr [8 x i8], ptr %gep1313, i64 %i.bpr ; 2 uses
  %i.bpt = load double, ptr %i.bps, align 8, !tbaa !9
  %i.bpu = fadd double %i.bpp, %i.bpt
  store double %i.bpu, ptr %i.bps, align 8, !tbaa !9
  %indvars.iv.next1143.3 = add nuw nsw i64 %indvars.iv1142, 4 ; 2 uses
  %exitcond1148.not.3 = icmp eq i64 %indvars.iv.next1143.3, %indvars.iv1149
  br i1 %exitcond1148.not.3, label %.loopexit2261, label %vec.epilog.scalar.ph1884, !llvm.loop !145

.loopexit2261:                                    ; preds = %vec.epilog.scalar.ph1884.prol.loopexit, %vec.epilog.scalar.ph1884, %vec.epilog.middle.block1902, %middle.block1879
  %indvars.iv.next1152 = add nuw nsw i64 %indvars.iv1151, 1 ; 2 uses
  %indvars.iv.next1150 = add nuw nsw i64 %indvars.iv1149, 1
  %exitcond1157.not = icmp eq i64 %indvars.iv.next1152, %wide.trip.count1156
  %indvar.next1836 = add i64 %indvar1835, 1
  br i1 %exitcond1157.not, label %._crit_edge927, label %iter.check1883, !llvm.loop !146

._crit_edge927:                                   ; preds = %.loopexit2261, %bb.au
  %storemerge658.lcssa = phi i32 [ 1, %bb.au ], [ %i.bmn, %.loopexit2261 ]
  store i32 %storemerge658.lcssa, ptr %i.f, align 4, !tbaa !8
  %i.bpv = load i32, ptr %1, align 4, !tbaa !8    ; 2 uses
  %i.bpw = add i32 %.pre1173, %i.bml              ; 2 uses
  %i.bpx = sub i32 %i.bpv, %i.bpw
  store i32 %i.bpx, ptr %i.c, align 4, !tbaa !8
  %i.bpy = load i32, ptr %7, align 4, !tbaa !8
  %i.bpz = add i32 %i.bpv, 1
  %i.bqa = add i32 %i.bpz, %i.bpy
  store i32 %i.bqa, ptr %i.d, align 4, !tbaa !8
  %i.bqb = add nsw i32 %i.bpw, 1
  %i.bqc = mul i32 %i.bqb, %i.als
  %i.bqd = sext i32 %i.bqc to i64
  %i.bqe = getelementptr inbounds [8 x i8], ptr %i.l, i64 %i.bqd
  call void @dtrmm_(ptr noundef nonnull @.str.1, ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str, ptr noundef nonnull %i.c, ptr noundef nonnull %i.h, ptr noundef nonnull @c_b10, ptr noundef %i.bqe, ptr noundef nonnull %3, ptr noundef %6, ptr noundef nonnull %i.d) #8
  %i.bqf = load i32, ptr %1, align 4, !tbaa !8    ; 6 uses
  %i.bqg = load i32, ptr %i.i, align 4, !tbaa !8  ; 2 uses
  %i.bqh = load i32, ptr %i.h, align 4, !tbaa !8  ; 8 uses
  %i.bqi = add i32 %i.bqh, %i.bqg                 ; 7 uses
  %i.bqj = sub i32 %i.bqf, %i.bqi                 ; 2 uses
  store i32 %i.bqj, ptr %i.c, align 4, !tbaa !8
  %.not661934 = icmp slt i32 %i.bqj, 1
  br i1 %.not661934, label %.loopexit713, label %.lr.ph937

.lr.ph937:                                        ; preds = %._crit_edge927
  store i32 %i.bqh, ptr %i.d, align 4, !tbaa !8
  %.not662929 = icmp slt i32 %i.bqh, 1
  br i1 %.not662929, label %.lr.ph937.split.us.preheader, label %.lr.ph932.preheader

.lr.ph932.preheader:                              ; preds = %.lr.ph937
  %i.bqk = sext i32 %i.bqg to i64                 ; 8 uses
  %i.bql = add nuw i32 %i.bqh, 1
  %i.bqm = sext i32 %i.bqi to i64                 ; 2 uses
  %i.bqn = add i32 %i.bqf, 1
  %i.bqo = sub i32 %i.bqn, %i.bqi                 ; 2 uses
  %wide.trip.count1166 = zext i32 %i.bqo to i64   ; 2 uses
  %wide.trip.count1161 = zext i32 %i.bql to i64   ; 5 uses
  %invariant.gep1316 = getelementptr [8 x i8], ptr %i.l, i64 %i.bqm
  %i.bqp = add nsw i64 %wide.trip.count1161, -2
  %13 = add nsw i64 %i.bqk, %i.bqm                ; 2 uses
  %i.bqq = shl nsw i64 %13, 3
  %scevgep1774 = getelementptr i8, ptr %2, i64 %i.bqq
  %14 = add nsw i64 %13, %wide.trip.count1166
  %i.bqr = shl nuw nsw i64 %wide.trip.count1161, 3
  %15 = add nsw i64 %14, %wide.trip.count1161
  %16 = shl nsw i64 %15, 3
  %scevgep1776 = getelementptr i8, ptr %scevgep1775, i64 %16
  %i.bqs = add nsw i64 %i.bqr, -8
  %i.bqt = mul i64 %i.bqs, %i.ae
  %reass.sub2270 = sub i64 %i.bqt, %i.amh
  %i.bqu = zext nneg i32 %i.bqh to i64            ; 5 uses
  %i.bqv = zext nneg i32 %i.bqh to i64
  %i.bqw = getelementptr i8, ptr %6, i64 %reass.sub2270
  %i.bqx = getelementptr i8, ptr %i.bqw, i64 -8
  %min.iters.check1785 = icmp ult i32 %i.bqh, 4
  %mul1770 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.aqg, i64 %i.bqp) ; 2 uses
  %mul.result1771 = extractvalue { i64, i1 } %mul1770, 0 ; 2 uses
  %mul.overflow1772 = extractvalue { i64, i1 } %mul1770, 1
  %i.bqy = sub i64 0, %mul.result1771
  %invariant.op2413 = or i1 %mul.overflow1772, %ident.check1766
  %min.iters.check1787 = icmp ult i32 %i.bqh, 16
  %i.bqz = and i64 %i.bqu, 12
  %n.vec1789 = and i64 %i.bqu, 2147483632         ; 4 uses
  %i.bra = or disjoint i64 %n.vec1789, 1          ; 2 uses
  %cmp.n1809 = icmp eq i64 %n.vec1789, %i.bqu
  %min.epilog.iters.check1815 = icmp eq i64 %i.bqz, 0
  %n.vec1817 = and i64 %i.bqu, 2147483644         ; 3 uses
  %i.brb = or disjoint i64 %n.vec1817, 1
  %cmp.n1831 = icmp eq i64 %n.vec1817, %i.bqu
  br label %iter.check1812

.lr.ph937.split.us.preheader:                     ; preds = %.lr.ph937
  %i.brc = add i32 %i.bqf, 1
  %i.brd = sub i32 %i.brc, %i.bqi
  br label %.loopexit713

iter.check1812:                                   ; preds = %.lr.ph932.preheader, %._crit_edge933
  %indvar1767 = phi i64 [ 0, %.lr.ph932.preheader ], [ %indvar.next1768, %._crit_edge933 ] ; 3 uses
  %indvars.iv1163 = phi i64 [ 1, %.lr.ph932.preheader ], [ %indvars.iv.next1164, %._crit_edge933 ] ; 3 uses
  %i.bre = shl nuw nsw i64 %indvar1767, 3         ; 2 uses
  %scevgep1777 = getelementptr i8, ptr %i.bqx, i64 %i.bre ; 4 uses
  %scevgep1778 = getelementptr i8, ptr %i.aqd, i64 %i.bre ; 4 uses
  %i.brf = icmp ult ptr %scevgep1777, %scevgep1778
  %umin1779 = select i1 %i.brf, ptr %scevgep1777, ptr %scevgep1778
  %i.brg = icmp ugt ptr %scevgep1777, %scevgep1778
  %umax1780 = select i1 %i.brg, ptr %scevgep1777, ptr %scevgep1778
  %scevgep1781 = getelementptr i8, ptr %umax1780, i64 8
  %invariant.gep1314 = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv1163 ; 10 uses
  %gep1317 = getelementptr [8 x i8], ptr %invariant.gep1316, i64 %indvars.iv1163 ; 7 uses
  br i1 %min.iters.check1785, label %vec.epilog.scalar.ph1813.preheader, label %vector.scevcheck1765

vector.scevcheck1765:                             ; preds = %iter.check1812
  %i.brh = shl nuw nsw i64 %indvar1767, 3
  %scevgep1769 = getelementptr i8, ptr %i.aqe, i64 %i.brh ; 4 uses
  %i.bri = getelementptr i8, ptr %scevgep1769, i64 %mul.result1771
  %i.brj = getelementptr i8, ptr %scevgep1769, i64 %i.bqy
  %i.brk = icmp ult ptr %i.bri, %scevgep1769
  %i.brl = icmp ugt ptr %i.brj, %scevgep1769
  %i.brm = select i1 %i.aqf, i1 %i.brl, i1 %i.brk
  %.reass2414 = or i1 %i.brm, %invariant.op2413
  br i1 %.reass2414, label %vec.epilog.scalar.ph1813.preheader, label %vector.memcheck1773

vector.memcheck1773:                              ; preds = %vector.scevcheck1765
  %bound01782 = icmp ult ptr %scevgep1774, %scevgep1781
  %bound11783 = icmp ult ptr %umin1779, %scevgep1776
  %found.conflict1784 = and i1 %bound01782, %bound11783
  br i1 %found.conflict1784, label %vec.epilog.scalar.ph1813.preheader, label %vector.main.loop.iter.check1786

vector.main.loop.iter.check1786:                  ; preds = %vector.memcheck1773
  br i1 %min.iters.check1787, label %vec.epilog.ph1816, label %vector.body1792

vector.body1792:                                  ; preds = %vector.main.loop.iter.check1786, %vector.body1792
  %index1793 = phi i64 [ %index.next1806, %vector.body1792 ], [ 0, %vector.main.loop.iter.check1786 ] ; 2 uses
  %vec.ind1794 = phi <4 x i64> [ %vec.ind.next1807, %vector.body1792 ], [ <i64 1, i64 2, i64 3, i64 4>, %vector.main.loop.iter.check1786 ] ; 5 uses
  %step.add1795 = add nuw nsw <4 x i64> %vec.ind1794, splat (i64 4)
  %step.add.21796 = add nuw nsw <4 x i64> %vec.ind1794, splat (i64 8)
  %step.add.31797 = add nuw nsw <4 x i64> %vec.ind1794, splat (i64 12)
  %i.brn = mul nsw <4 x i64> %vec.ind1794, %broadcast.splat1791
  %i.bro = mul nsw <4 x i64> %step.add1795, %broadcast.splat1791
  %i.brp = mul nsw <4 x i64> %step.add.21796, %broadcast.splat1791
  %i.brq = mul nsw <4 x i64> %step.add.31797, %broadcast.splat1791
  %wide.gep1798 = getelementptr [8 x i8], ptr %invariant.gep1314, <4 x i64> %i.brn
  %wide.gep1799 = getelementptr [8 x i8], ptr %invariant.gep1314, <4 x i64> %i.bro
  %wide.gep1800 = getelementptr [8 x i8], ptr %invariant.gep1314, <4 x i64> %i.brp
  %wide.gep1801 = getelementptr [8 x i8], ptr %invariant.gep1314, <4 x i64> %i.brq
  %wide.masked.gather1802 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1798, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !147
  %wide.masked.gather1803 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1799, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !147
  %wide.masked.gather1804 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1800, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !147
  %wide.masked.gather1805 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1801, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !147
  %i.brr = getelementptr [8 x i8], ptr %gep1317, i64 %index1793
  %i.brs = getelementptr i8, ptr %i.brr, i64 8
  %i.brt = getelementptr [8 x i8], ptr %i.brs, i64 %i.bqk ; 4 uses
  %i.bru = getelementptr i8, ptr %i.brt, i64 32
  %i.brv = getelementptr i8, ptr %i.brt, i64 64
  %i.brw = getelementptr i8, ptr %i.brt, i64 96
  store <4 x double> %wide.masked.gather1802, ptr %i.brt, align 8, !tbaa !9, !alias.scope !150, !noalias !147
  store <4 x double> %wide.masked.gather1803, ptr %i.bru, align 8, !tbaa !9, !alias.scope !150, !noalias !147
  store <4 x double> %wide.masked.gather1804, ptr %i.brv, align 8, !tbaa !9, !alias.scope !150, !noalias !147
  store <4 x double> %wide.masked.gather1805, ptr %i.brw, align 8, !tbaa !9, !alias.scope !150, !noalias !147
  %index.next1806 = add nuw i64 %index1793, 16    ; 2 uses
  %vec.ind.next1807 = add nuw nsw <4 x i64> %vec.ind1794, splat (i64 16)
  %i.brx = icmp eq i64 %index.next1806, %n.vec1789
  br i1 %i.brx, label %middle.block1808, label %vector.body1792, !llvm.loop !152

middle.block1808:                                 ; preds = %vector.body1792
  br i1 %cmp.n1809, label %._crit_edge933, label %vec.epilog.iter.check1814

vec.epilog.iter.check1814:                        ; preds = %middle.block1808
  br i1 %min.epilog.iters.check1815, label %vec.epilog.scalar.ph1813.preheader, label %vec.epilog.ph1816, !prof !15

vec.epilog.ph1816:                                ; preds = %vector.main.loop.iter.check1786, %vec.epilog.iter.check1814
  %vec.epilog.resume.val1810 = phi i64 [ %n.vec1789, %vec.epilog.iter.check1814 ], [ 0, %vector.main.loop.iter.check1786 ]
  %bc.resume.val1811 = phi i64 [ %i.bra, %vec.epilog.iter.check1814 ], [ 1, %vector.main.loop.iter.check1786 ]
  %broadcast.splatinsert1820 = insertelement <4 x i64> poison, i64 %bc.resume.val1811, i64 0
  %broadcast.splat1821 = shufflevector <4 x i64> %broadcast.splatinsert1820, <4 x i64> poison, <4 x i32> zeroinitializer
  %induction1822 = add nuw nsw <4 x i64> %broadcast.splat1821, <i64 0, i64 1, i64 2, i64 3>
  br label %vec.epilog.vector.body1823

vec.epilog.vector.body1823:                       ; preds = %vec.epilog.vector.body1823, %vec.epilog.ph1816
  %index1824 = phi i64 [ %vec.epilog.resume.val1810, %vec.epilog.ph1816 ], [ %index.next1828, %vec.epilog.vector.body1823 ] ; 2 uses
  %vec.ind1825 = phi <4 x i64> [ %induction1822, %vec.epilog.ph1816 ], [ %vec.ind.next1829, %vec.epilog.vector.body1823 ] ; 2 uses
  %i.bry = mul nsw <4 x i64> %vec.ind1825, %broadcast.splat1819
  %wide.gep1826 = getelementptr [8 x i8], ptr %invariant.gep1314, <4 x i64> %i.bry
  %wide.masked.gather1827 = call <4 x double> @llvm.masked.gather.v4f64.v4p0(<4 x ptr> align 8 %wide.gep1826, <4 x i1> splat (i1 true), <4 x double> poison), !tbaa !9, !alias.scope !147
  %i.brz = getelementptr [8 x i8], ptr %gep1317, i64 %index1824
  %i.bsa = getelementptr i8, ptr %i.brz, i64 8
  %i.bsb = getelementptr [8 x i8], ptr %i.bsa, i64 %i.bqk
  store <4 x double> %wide.masked.gather1827, ptr %i.bsb, align 8, !tbaa !9, !alias.scope !150, !noalias !147
  %index.next1828 = add nuw i64 %index1824, 4     ; 2 uses
  %vec.ind.next1829 = add nuw nsw <4 x i64> %vec.ind1825, splat (i64 4)
  %i.bsc = icmp eq i64 %index.next1828, %n.vec1817
  br i1 %i.bsc, label %vec.epilog.middle.block1830, label %vec.epilog.vector.body1823, !llvm.loop !153

vec.epilog.middle.block1830:                      ; preds = %vec.epilog.vector.body1823
  br i1 %cmp.n1831, label %._crit_edge933, label %vec.epilog.scalar.ph1813.preheader

vec.epilog.scalar.ph1813.preheader:               ; preds = %vector.memcheck1773, %vector.scevcheck1765, %iter.check1812, %vec.epilog.iter.check1814, %vec.epilog.middle.block1830
  %indvars.iv1158.ph = phi i64 [ 1, %iter.check1812 ], [ 1, %vector.scevcheck1765 ], [ 1, %vector.memcheck1773 ], [ %i.bra, %vec.epilog.iter.check1814 ], [ %i.brb, %vec.epilog.middle.block1830 ] ; 4 uses
  %i.bsd = sub i64 %wide.trip.count1161, %indvars.iv1158.ph
  %i.bse = sub i64 %i.bqv, %indvars.iv1158.ph
  %xtraiter2369 = and i64 %i.bsd, 3               ; 2 uses
  %lcmp.mod2370.not = icmp eq i64 %xtraiter2369, 0
  br i1 %lcmp.mod2370.not, label %vec.epilog.scalar.ph1813.prol.loopexit, label %vec.epilog.scalar.ph1813.prol

vec.epilog.scalar.ph1813.prol:                    ; preds = %vec.epilog.scalar.ph1813.preheader, %vec.epilog.scalar.ph1813.prol
  %indvars.iv1158.prol = phi i64 [ %indvars.iv.next1159.prol, %vec.epilog.scalar.ph1813.prol ], [ %indvars.iv1158.ph, %vec.epilog.scalar.ph1813.preheader ] ; 3 uses
  %prol.iter2371 = phi i64 [ %prol.iter2371.next, %vec.epilog.scalar.ph1813.prol ], [ 0, %vec.epilog.scalar.ph1813.preheader ]
  %i.bsf = mul nsw i64 %indvars.iv1158.prol, %i.aly
  %gep1315.prol = getelementptr [8 x i8], ptr %invariant.gep1314, i64 %i.bsf
  %i.bsg = load double, ptr %gep1315.prol, align 8, !tbaa !9
  %i.bsh = add nsw i64 %indvars.iv1158.prol, %i.bqk
  %i.bsi = mul nsw i64 %i.bsh, %i.alx
  %i.bsj = getelementptr [8 x i8], ptr %gep1317, i64 %i.bsi
  store double %i.bsg, ptr %i.bsj, align 8, !tbaa !9
  %indvars.iv.next1159.prol = add nuw nsw i64 %indvars.iv1158.prol, 1 ; 2 uses
  %prol.iter2371.next = add i64 %prol.iter2371, 1 ; 2 uses
  %prol.iter2371.cmp.not = icmp eq i64 %prol.iter2371.next, %xtraiter2369
  br i1 %prol.iter2371.cmp.not, label %vec.epilog.scalar.ph1813.prol.loopexit, label %vec.epilog.scalar.ph1813.prol, !llvm.loop !154

vec.epilog.scalar.ph1813.prol.loopexit:           ; preds = %vec.epilog.scalar.ph1813.prol, %vec.epilog.scalar.ph1813.preheader
  %indvars.iv1158.unr = phi i64 [ %indvars.iv1158.ph, %vec.epilog.scalar.ph1813.preheader ], [ %indvars.iv.next1159.prol, %vec.epilog.scalar.ph1813.prol ]
  %i.bsk = icmp ult i64 %i.bse, 3
  br i1 %i.bsk, label %._crit_edge933, label %vec.epilog.scalar.ph1813

vec.epilog.scalar.ph1813:                         ; preds = %vec.epilog.scalar.ph1813.prol.loopexit, %vec.epilog.scalar.ph1813
  %indvars.iv1158 = phi i64 [ %indvars.iv.next1159.3, %vec.epilog.scalar.ph1813 ], [ %indvars.iv1158.unr, %vec.epilog.scalar.ph1813.prol.loopexit ] ; 6 uses
  %i.bsl = mul nsw i64 %indvars.iv1158, %i.aly
  %gep1315 = getelementptr [8 x i8], ptr %invariant.gep1314, i64 %i.bsl
  %i.bsm = load double, ptr %gep1315, align 8, !tbaa !9
  %i.bsn = add nsw i64 %indvars.iv1158, %i.bqk
  %i.bso = mul nsw i64 %i.bsn, %i.alx
  %i.bsp = getelementptr [8 x i8], ptr %gep1317, i64 %i.bso
  store double %i.bsm, ptr %i.bsp, align 8, !tbaa !9
  %indvars.iv.next1159 = add nuw nsw i64 %indvars.iv1158, 1 ; 2 uses
  %i.bsq = mul nsw i64 %indvars.iv.next1159, %i.aly
  %gep1315.1 = getelementptr [8 x i8], ptr %invariant.gep1314, i64 %i.bsq
  %i.bsr = load double, ptr %gep1315.1, align 8, !tbaa !9
  %i.bss = add nsw i64 %indvars.iv.next1159, %i.bqk
  %i.bst = mul nsw i64 %i.bss, %i.alx
  %i.bsu = getelementptr [8 x i8], ptr %gep1317, i64 %i.bst
  store double %i.bsr, ptr %i.bsu, align 8, !tbaa !9
  %indvars.iv.next1159.1 = add nuw nsw i64 %indvars.iv1158, 2 ; 2 uses
  %i.bsv = mul nsw i64 %indvars.iv.next1159.1, %i.aly
  %gep1315.2 = getelementptr [8 x i8], ptr %invariant.gep1314, i64 %i.bsv
  %i.bsw = load double, ptr %gep1315.2, align 8, !tbaa !9
  %i.bsx = add nsw i64 %indvars.iv.next1159.1, %i.bqk
  %i.bsy = mul nsw i64 %i.bsx, %i.alx
  %i.bsz = getelementptr [8 x i8], ptr %gep1317, i64 %i.bsy
  store double %i.bsw, ptr %i.bsz, align 8, !tbaa !9
  %indvars.iv.next1159.2 = add nuw nsw i64 %indvars.iv1158, 3 ; 2 uses
  %i.bta = mul nsw i64 %indvars.iv.next1159.2, %i.aly
  %gep1315.3 = getelementptr [8 x i8], ptr %invariant.gep1314, i64 %i.bta
  %i.btb = load double, ptr %gep1315.3, align 8, !tbaa !9
  %i.btc = add nsw i64 %indvars.iv.next1159.2, %i.bqk
  %i.btd = mul nsw i64 %i.btc, %i.alx
  %i.bte = getelementptr [8 x i8], ptr %gep1317, i64 %i.btd
  store double %i.btb, ptr %i.bte, align 8, !tbaa !9
  %indvars.iv.next1159.3 = add nuw nsw i64 %indvars.iv1158, 4 ; 2 uses
  %exitcond1162.not.3 = icmp eq i64 %indvars.iv.next1159.3, %wide.trip.count1161
  br i1 %exitcond1162.not.3, label %._crit_edge933, label %vec.epilog.scalar.ph1813, !llvm.loop !155

._crit_edge933:                                   ; preds = %vec.epilog.scalar.ph1813.prol.loopexit, %vec.epilog.scalar.ph1813, %vec.epilog.middle.block1830, %middle.block1808
  %indvars.iv.next1164 = add nuw nsw i64 %indvars.iv1163, 1 ; 2 uses
  %exitcond1167.not = icmp eq i64 %indvars.iv.next1164, %wide.trip.count1166
  %indvar.next1768 = add i64 %indvar1767, 1
  br i1 %exitcond1167.not, label %.loopexit713, label %iter.check1812, !llvm.loop !156

end_hunk_1
