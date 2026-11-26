Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/snowenc?download=true
inline.NumInlined: 82
inline.NumDeleted: 25
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 23
loop-unroll.NumUnrolled: 28
begin_hunk_0_@encode_frame:bb.a
  br i1 %i.and, label %.lr.ph1013, label %add_yblock.exit.i, !llvm.loop !1

add_yblock.exit.i:                                ; preds = %._crit_edge1014, %bb.az
  %indvars.iv.next1190 = add nuw nsw i64 %indvars.iv1189, 1 ; 2 uses
  %exitcond1193.not = icmp eq i64 %indvars.iv.next1190, %wide.trip.count1192
  br i1 %exitcond1193.not, label %predict_slice.exit, label %bb.av, !llvm.loop !204

predict_slice.exit:                               ; preds = %._crit_edge1009, %add_yblock.exit.i, %bb.au, %.preheader913, %bb.at
  %i.ane = add nuw i32 %.0.i5871022, 1
  %exitcond1194.not = icmp eq i32 %.0.i5871022, %i.tg
  br i1 %exitcond1194.not, label %predict_plane.exit589, label %bb.ao, !llvm.loop !205

predict_plane.exit589:                            ; preds = %predict_slice.exit, %.loopexit928
  %i.anf = icmp eq i64 %indvars.iv1267, 0         ; 3 uses
  br i1 %i.anf, label %bb.bj, label %bb.bm

bb.bj:                                            ; preds = %predict_plane.exit589
  %i.ang = load i32, ptr %i.cf, align 8, !tbaa !320
  %i.anh = icmp eq i32 %i.ang, 2
  br i1 %i.anh, label %bb.bk, label %bb.bm

bb.bk:                                            ; preds = %bb.bj
  %i.ani = load i32, ptr %i.cn, align 8, !tbaa !80
  %i.anj = and i32 %i.ani, 1024
  %.not572 = icmp eq i32 %i.anj, 0
  br i1 %.not572, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bk
  %i.ank = load i32, ptr %i.ll, align 16, !tbaa !373
  %i.anl = load i32, ptr %i.lm, align 4, !tbaa !374
  %i.anm = icmp sgt i32 %i.ank, %i.anl
  br i1 %i.anm, label %.critedge583, label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk, %bb.bj, %predict_plane.exit589
  %i.ann = load i32, ptr %i.en, align 8, !tbaa !111
  %i.ano = icmp eq i32 %i.ann, -128
  %i.anp = icmp sgt i32 %i.qx, 0
  %or.cond1113 = select i1 %i.rd, i1 %i.anp, i1 false ; 2 uses
  br i1 %i.ano, label %.preheader923, label %.preheader925

.preheader925:                                    ; preds = %bb.bm
  br i1 %or.cond1113, label %.preheader912.lr.ph.split, label %.loopexit924

.preheader912.lr.ph.split:                        ; preds = %.preheader925
  %i.anq = load ptr, ptr %i.ky, align 16, !tbaa !354 ; 2 uses
  %i.anr = load ptr, ptr %i.ln, align 16, !tbaa !375 ; 2 uses
  %i.ans = zext nneg i32 %i.qx to i64             ; 4 uses
  %wide.trip.count1203 = zext nneg i32 %i.qz to i64
  %min.iters.check1944 = icmp ult i32 %i.qx, 8
  %n.vec1946 = and i64 %i.ans, 2147483640         ; 3 uses
  %cmp.n1953 = icmp eq i64 %n.vec1946, %i.ans
  br label %.preheader912

.preheader923:                                    ; preds = %bb.bm
  br i1 %or.cond1113, label %.preheader911.lr.ph.split, label %.loopexit924

.preheader911.lr.ph.split:                        ; preds = %.preheader923
  %i.ant = load ptr, ptr %i.ky, align 16, !tbaa !354 ; 2 uses
  %i.anu = load ptr, ptr %i.ln, align 16, !tbaa !375 ; 2 uses
  %i.anv = zext nneg i32 %i.qx to i64             ; 4 uses
  %wide.trip.count1213 = zext nneg i32 %i.qz to i64
  %min.iters.check1932 = icmp ult i32 %i.qx, 8
  %n.vec1934 = and i64 %i.anv, 2147483640         ; 3 uses
  %cmp.n1941 = icmp eq i64 %n.vec1934, %i.anv
  br label %.preheader911

.preheader911:                                    ; preds = %.preheader911.lr.ph.split, %._crit_edge1032
  %indvars.iv1210 = phi i64 [ 0, %.preheader911.lr.ph.split ], [ %indvars.iv.next1211, %._crit_edge1032 ] ; 2 uses
  %i.anw = mul nuw nsw i64 %indvars.iv1210, %i.anv ; 2 uses
  br i1 %min.iters.check1932, label %scalar.ph1931.preheader, label %vector.body1935

vector.body1935:                                  ; preds = %.preheader911, %vector.body1935
  %index1936 = phi i64 [ %index.next1939, %vector.body1935 ], [ 0, %.preheader911 ] ; 2 uses
  %i.anx = add nuw nsw i64 %index1936, %i.anw     ; 2 uses
  %i.any = getelementptr inbounds nuw [2 x i8], ptr %i.ant, i64 %i.anx ; 2 uses
  %i.anz = getelementptr inbounds nuw i8, ptr %i.any, i64 8
  %wide.load1937 = load <4 x i16>, ptr %i.any, align 2, !tbaa !125
  %wide.load1938 = load <4 x i16>, ptr %i.anz, align 2, !tbaa !125
  %i.aoa = sext <4 x i16> %wide.load1937 to <4 x i32>
  %i.aob = sext <4 x i16> %wide.load1938 to <4 x i32>
  %i.aoc = add nsw <4 x i32> %i.aoa, splat (i32 7)
  %i.aod = add nsw <4 x i32> %i.aob, splat (i32 7)
  %i.aoe = ashr <4 x i32> %i.aoc, splat (i32 4)
  %i.aof = ashr <4 x i32> %i.aod, splat (i32 4)
  %i.aog = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.anx ; 2 uses
  %i.aoh = getelementptr inbounds nuw i8, ptr %i.aog, i64 16
  store <4 x i32> %i.aoe, ptr %i.aog, align 4, !tbaa !87
  store <4 x i32> %i.aof, ptr %i.aoh, align 4, !tbaa !87
  %index.next1939 = add nuw i64 %index1936, 8     ; 2 uses
  %i.aoi = icmp eq i64 %index.next1939, %n.vec1934
  br i1 %i.aoi, label %middle.block1940, label %vector.body1935, !llvm.loop !206

middle.block1940:                                 ; preds = %vector.body1935
  br i1 %cmp.n1941, label %._crit_edge1032, label %scalar.ph1931.preheader

scalar.ph1931.preheader:                          ; preds = %.preheader911, %middle.block1940
  %indvars.iv1205.ph = phi i64 [ 0, %.preheader911 ], [ %n.vec1934, %middle.block1940 ]
  br label %scalar.ph1931

scalar.ph1931:                                    ; preds = %scalar.ph1931.preheader, %scalar.ph1931
  %indvars.iv1205 = phi i64 [ %indvars.iv.next1206, %scalar.ph1931 ], [ %indvars.iv1205.ph, %scalar.ph1931.preheader ] ; 2 uses
  %i.aoj = add nuw nsw i64 %indvars.iv1205, %i.anw ; 2 uses
  %i.aok = getelementptr inbounds nuw [2 x i8], ptr %i.ant, i64 %i.aoj
  %i.aol = load i16, ptr %i.aok, align 2, !tbaa !125
  %i.aom = sext i16 %i.aol to i32
  %i.aon = add nsw i32 %i.aom, 7
  %i.aoo = ashr i32 %i.aon, 4
  %i.aop = getelementptr inbounds nuw [4 x i8], ptr %i.anu, i64 %i.aoj
  store i32 %i.aoo, ptr %i.aop, align 4, !tbaa !87
  %indvars.iv.next1206 = add nuw nsw i64 %indvars.iv1205, 1 ; 2 uses
  %exitcond1209.not = icmp eq i64 %indvars.iv.next1206, %i.anv
  br i1 %exitcond1209.not, label %._crit_edge1032, label %scalar.ph1931, !llvm.loop !207

._crit_edge1032:                                  ; preds = %scalar.ph1931, %middle.block1940
  %indvars.iv.next1211 = add nuw nsw i64 %indvars.iv1210, 1 ; 2 uses
  %exitcond1214.not = icmp eq i64 %indvars.iv.next1211, %wide.trip.count1213
  br i1 %exitcond1214.not, label %.loopexit924, label %.preheader911, !llvm.loop !208

.preheader912:                                    ; preds = %.preheader912.lr.ph.split, %._crit_edge1028
  %indvars.iv1200 = phi i64 [ 0, %.preheader912.lr.ph.split ], [ %indvars.iv.next1201, %._crit_edge1028 ] ; 2 uses
  %i.aoq = mul nuw nsw i64 %indvars.iv1200, %i.ans ; 2 uses
  br i1 %min.iters.check1944, label %scalar.ph1943.preheader, label %vector.body1947

vector.body1947:                                  ; preds = %.preheader912, %vector.body1947
  %index1948 = phi i64 [ %index.next1951, %vector.body1947 ], [ 0, %.preheader912 ] ; 2 uses
  %i.aor = add nuw nsw i64 %index1948, %i.aoq     ; 2 uses
  %i.aos = getelementptr inbounds nuw [2 x i8], ptr %i.anq, i64 %i.aor ; 2 uses
  %i.aot = getelementptr inbounds nuw i8, ptr %i.aos, i64 8
  %wide.load1949 = load <4 x i16>, ptr %i.aos, align 2, !tbaa !125
  %wide.load1950 = load <4 x i16>, ptr %i.aot, align 2, !tbaa !125
  %i.aou = sext <4 x i16> %wide.load1949 to <4 x i32>
  %i.aov = sext <4 x i16> %wide.load1950 to <4 x i32>
  %i.aow = shl nsw <4 x i32> %i.aou, splat (i32 4)
  %i.aox = shl nsw <4 x i32> %i.aov, splat (i32 4)
  %i.aoy = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.aor ; 2 uses
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 16
  store <4 x i32> %i.aow, ptr %i.aoy, align 4, !tbaa !87
  store <4 x i32> %i.aox, ptr %i.aoz, align 4, !tbaa !87
  %index.next1951 = add nuw i64 %index1948, 8     ; 2 uses
  %i.apa = icmp eq i64 %index.next1951, %n.vec1946
  br i1 %i.apa, label %middle.block1952, label %vector.body1947, !llvm.loop !209

middle.block1952:                                 ; preds = %vector.body1947
  br i1 %cmp.n1953, label %._crit_edge1028, label %scalar.ph1943.preheader

scalar.ph1943.preheader:                          ; preds = %.preheader912, %middle.block1952
  %indvars.iv1195.ph = phi i64 [ 0, %.preheader912 ], [ %n.vec1946, %middle.block1952 ]
  br label %scalar.ph1943

scalar.ph1943:                                    ; preds = %scalar.ph1943.preheader, %scalar.ph1943
  %indvars.iv1195 = phi i64 [ %indvars.iv.next1196, %scalar.ph1943 ], [ %indvars.iv1195.ph, %scalar.ph1943.preheader ] ; 2 uses
  %i.apb = add nuw nsw i64 %indvars.iv1195, %i.aoq ; 2 uses
  %i.apc = getelementptr inbounds nuw [2 x i8], ptr %i.anq, i64 %i.apb
  %i.apd = load i16, ptr %i.apc, align 2, !tbaa !125
  %i.ape = sext i16 %i.apd to i32
  %i.apf = shl nsw i32 %i.ape, 4
  %i.apg = getelementptr inbounds nuw [4 x i8], ptr %i.anr, i64 %i.apb
  store i32 %i.apf, ptr %i.apg, align 4, !tbaa !87
  %indvars.iv.next1196 = add nuw nsw i64 %indvars.iv1195, 1 ; 2 uses
  %exitcond1199.not = icmp eq i64 %indvars.iv.next1196, %i.ans
  br i1 %exitcond1199.not, label %._crit_edge1028, label %scalar.ph1943, !llvm.loop !210

._crit_edge1028:                                  ; preds = %scalar.ph1943, %middle.block1952
  %indvars.iv.next1201 = add nuw nsw i64 %indvars.iv1200, 1 ; 2 uses
  %exitcond1204.not = icmp eq i64 %indvars.iv.next1201, %wide.trip.count1203
  br i1 %exitcond1204.not, label %.loopexit924, label %.preheader912, !llvm.loop !211

.loopexit924:                                     ; preds = %._crit_edge1028, %._crit_edge1032, %.preheader925, %.preheader923
  %i.aph = load ptr, ptr %i.ln, align 16, !tbaa !375
  %i.api = load ptr, ptr %i.lo, align 8, !tbaa !376
  %i.apj = load i32, ptr %i.la, align 4, !tbaa !81
  %i.apk = load i32, ptr %i.kr, align 8, !tbaa !117
  tail call void @ff_spatial_dwt(ptr noundef %i.aph, ptr noundef %i.api, i32 noundef %i.qx, i32 noundef %i.qz, i32 noundef %i.qx, i32 noundef %i.apj, i32 noundef %i.apk) #12
  %i.apl = load i32, ptr %i.do, align 8, !tbaa !95
  %i.apm = icmp ne i32 %i.apl, 0
  %or.cond = and i1 %i.anf, %i.apm
  br i1 %or.cond, label %bb.bn, label %bb.bt

bb.bn:                                            ; preds = %.loopexit924
  %i.apn = load i32, ptr %i.kr, align 8, !tbaa !117 ; 2 uses
  %i.apo = icmp sgt i32 %i.apn, 0
  br i1 %i.apo, label %.lr.ph104.i, label %._crit_edge105.thread.i

.lr.ph104.i:                                      ; preds = %bb.bn
  %wide.trip.count135.i = zext nneg i32 %i.apn to i64
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bq, %.lr.ph104.i
  %indvars.iv132.i = phi i64 [ 0, %.lr.ph104.i ], [ %indvars.iv.next133.i, %bb.bq ] ; 3 uses
  %.073101.i = phi i32 [ 0, %.lr.ph104.i ], [ %.2.lcssa.i, %bb.bq ]
  %.not.i781 = icmp ne i64 %indvars.iv132.i, 0
  %i.app = getelementptr inbounds nuw [4640 x i8], ptr %i.lp, i64 %indvars.iv132.i
  %i.apq = zext i1 %.not.i781 to i64
  br label %bb.bp

bb.bp:                                            ; preds = %._crit_edge97.i, %bb.bo
  %indvars.iv128.i = phi i64 [ %i.apq, %bb.bo ], [ %indvars.iv.next129.i, %._crit_edge97.i ] ; 3 uses
  %.17499.i = phi i32 [ %.073101.i, %bb.bo ], [ %.2.lcssa.i, %._crit_edge97.i ] ; 2 uses
  %i.apr = getelementptr inbounds nuw [1160 x i8], ptr %i.app, i64 %indvars.iv128.i ; 6 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 32
  %i.apt = load ptr, ptr %i.aps, align 8, !tbaa !353 ; 24 uses
  %i.apu = getelementptr inbounds nuw i8, ptr %i.apr, i64 8
  %i.apv = load i32, ptr %i.apu, align 8, !tbaa !377 ; 9 uses
  %i.apw = getelementptr inbounds nuw i8, ptr %i.apr, i64 12
  %i.apx = load i32, ptr %i.apw, align 4, !tbaa !378
  %.12.val.fr.i.i = freeze i32 %i.apx             ; 4 uses
  %i.apy = getelementptr inbounds nuw i8, ptr %i.apr, i64 4
  %i.apz = load i32, ptr %i.apy, align 4, !tbaa !355 ; 4 uses
  %i.aqa = getelementptr inbounds nuw i8, ptr %i.apr, i64 16
  %i.aqb = load i32, ptr %i.aqa, align 8, !tbaa !127 ; 2 uses
  %i.aqc = icmp slt i32 %i.aqb, -64
  %i.aqd = tail call i32 @llvm.smin.i32(i32 %i.aqb, i32 448)
  %..i.i = add nsw i32 %i.aqd, 64
  %.0.i.i782 = select i1 %i.aqc, i32 0, i32 %..i.i ; 2 uses
  %i.aqe = and i32 %.0.i.i782, 31
  %i.aqf = zext nneg i32 %i.aqe to i64
  %i.aqg = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.aqf
  %i.aqh = load i8, ptr %i.aqg, align 1, !tbaa !86
  %i.aqi = zext i8 %i.aqh to i32
  %i.aqj = lshr i32 %.0.i.i782, 5
  %i.aqk = shl i32 %i.aqi, %i.aqj
  %i.aql = udiv i32 65536, %i.aqk                 ; 2 uses
  %i.aqm = icmp sgt i32 %.12.val.fr.i.i, 0        ; 2 uses
  %i.aqn = icmp sgt i32 %i.apv, 0                 ; 2 uses
  %or.cond.i = select i1 %i.aqm, i1 %i.aqn, i1 false ; 2 uses
  br i1 %or.cond.i, label %.preheader80.lr.ph.split.i, label %._crit_edge84.split.i

.preheader80.lr.ph.split.i:                       ; preds = %bb.bp
  %i.aqo = getelementptr inbounds nuw i8, ptr %i.apr, i64 24
  %i.aqp = load ptr, ptr %i.aqo, align 8, !tbaa !379 ; 2 uses
  %i.aqq = sext i32 %i.apz to i64
  %wide.trip.count116.i = zext nneg i32 %.12.val.fr.i.i to i64
  %wide.trip.count.i = zext nneg i32 %i.apv to i64 ; 3 uses
  %min.iters.check1920 = icmp ult i32 %i.apv, 8
  %n.vec1922 = and i64 %wide.trip.count.i, 2147483640 ; 3 uses
  %cmp.n1929 = icmp eq i64 %n.vec1922, %wide.trip.count.i
  br label %.preheader80.i

.preheader80.i:                                   ; preds = %._crit_edge.i790, %.preheader80.lr.ph.split.i
  %indvars.iv113.i = phi i64 [ 0, %.preheader80.lr.ph.split.i ], [ %indvars.iv.next114.i, %._crit_edge.i790 ] ; 2 uses
  %i.aqr = mul nsw i64 %indvars.iv113.i, %i.aqq   ; 2 uses
  br i1 %min.iters.check1920, label %scalar.ph1919.preheader, label %vector.body1923

vector.body1923:                                  ; preds = %.preheader80.i, %vector.body1923
  %index1924 = phi i64 [ %index.next1927, %vector.body1923 ], [ 0, %.preheader80.i ] ; 2 uses
  %i.aqs = add nsw i64 %index1924, %i.aqr         ; 2 uses
  %i.aqt = getelementptr inbounds [4 x i8], ptr %i.aqp, i64 %i.aqs ; 2 uses
  %i.aqu = getelementptr inbounds nuw i8, ptr %i.aqt, i64 16
  %wide.load1925 = load <4 x i32>, ptr %i.aqt, align 4, !tbaa !87
  %wide.load1926 = load <4 x i32>, ptr %i.aqu, align 4, !tbaa !87
  %i.aqv = trunc <4 x i32> %wide.load1925 to <4 x i16>
  %i.aqw = trunc <4 x i32> %wide.load1926 to <4 x i16>
  %i.aqx = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.aqs ; 2 uses
  %i.aqy = getelementptr inbounds nuw i8, ptr %i.aqx, i64 8
  store <4 x i16> %i.aqv, ptr %i.aqx, align 2, !tbaa !125
  store <4 x i16> %i.aqw, ptr %i.aqy, align 2, !tbaa !125
  %index.next1927 = add nuw i64 %index1924, 8     ; 2 uses
  %i.aqz = icmp eq i64 %index.next1927, %n.vec1922
  br i1 %i.aqz, label %middle.block1928, label %vector.body1923, !llvm.loop !212

middle.block1928:                                 ; preds = %vector.body1923
  br i1 %cmp.n1929, label %._crit_edge.i790, label %scalar.ph1919.preheader

scalar.ph1919.preheader:                          ; preds = %.preheader80.i, %middle.block1928
  %indvars.iv.i787.ph = phi i64 [ 0, %.preheader80.i ], [ %n.vec1922, %middle.block1928 ]
  br label %scalar.ph1919

scalar.ph1919:                                    ; preds = %scalar.ph1919.preheader, %scalar.ph1919
  %indvars.iv.i787 = phi i64 [ %indvars.iv.next.i788, %scalar.ph1919 ], [ %indvars.iv.i787.ph, %scalar.ph1919.preheader ] ; 2 uses
  %i.ara = add nsw i64 %indvars.iv.i787, %i.aqr   ; 2 uses
  %i.arb = getelementptr inbounds [4 x i8], ptr %i.aqp, i64 %i.ara
  %i.arc = load i32, ptr %i.arb, align 4, !tbaa !87
  %i.ard = trunc i32 %i.arc to i16
  %i.are = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.ara
  store i16 %i.ard, ptr %i.are, align 2, !tbaa !125
  %indvars.iv.next.i788 = add nuw nsw i64 %indvars.iv.i787, 1 ; 2 uses
  %exitcond.not.i789 = icmp eq i64 %indvars.iv.next.i788, %wide.trip.count.i
  br i1 %exitcond.not.i789, label %._crit_edge.i790, label %scalar.ph1919, !llvm.loop !213

._crit_edge.i790:                                 ; preds = %scalar.ph1919, %middle.block1928
  %indvars.iv.next114.i = add nuw nsw i64 %indvars.iv113.i, 1 ; 2 uses
  %exitcond117.not.i = icmp eq i64 %indvars.iv.next114.i, %wide.trip.count116.i
  br i1 %exitcond117.not.i, label %._crit_edge84.split.i, label %.preheader80.i, !llvm.loop !214

._crit_edge84.split.i:                            ; preds = %._crit_edge.i790, %bb.bp
  %i.arf = icmp eq i64 %indvars.iv128.i, 0
  %i.arg = and i1 %i.arf, %i.aqm
  %or.cond146.i = select i1 %i.arg, i1 %i.aqn, i1 false
  br i1 %or.cond146.i, label %.preheader.preheader.i.i, label %decorrelate.exit.i

.preheader.preheader.i.i:                         ; preds = %._crit_edge84.split.i
  %i.arh = zext nneg i32 %i.apv to i64            ; 3 uses
  %i.ari = add nsw i64 %i.arh, -1                 ; 16 uses
  %i.arj = sext i32 %i.apz to i64                 ; 9 uses
  %i.ark = zext nneg i32 %.12.val.fr.i.i to i64   ; 2 uses
  %.not.i85.i = icmp eq i64 %i.ari, 0             ; 2 uses
  %indvars.iv.next15.i.i1034 = add nsw i64 %i.ark, -1 ; 3 uses
  %.not57.i.i1035 = icmp eq i64 %indvars.iv.next15.i.i1034, 0
  br i1 %.not57.i.i1035, label %.lr.ph.split.us.split.us.i.preheader.i, label %.lr.ph.split.i.preheader.i.preheader

.lr.ph.split.i.preheader.i.preheader:             ; preds = %.preheader.preheader.i.i
  %scevgep1874 = getelementptr i8, ptr %i.apt, i64 -2
  %i.arl = shl nuw nsw i64 %i.arh, 1              ; 2 uses
  %scevgep1875 = getelementptr i8, ptr %scevgep1874, i64 %i.arl
  %i.arm = shl nuw nsw i64 %i.ark, 1
  %i.arn = add nsw i64 %i.arm, -4
  %i.aro = mul i64 %i.arn, %i.arj                 ; 2 uses
  %scevgep1876 = getelementptr i8, ptr %i.apt, i64 %i.aro
  %scevgep1877 = getelementptr i8, ptr %i.apt, i64 %i.arl
  %scevgep1878 = getelementptr i8, ptr %i.apt, i64 2
  %scevgep1879 = getelementptr i8, ptr %scevgep1878, i64 %i.aro
  %scevgep1880 = getelementptr i8, ptr %i.apt, i64 -2
  %i.arp = add nsw i64 %i.arj, %i.arh
  %i.arq = shl nsw i64 %i.arp, 1                  ; 2 uses
  %scevgep1881 = getelementptr i8, ptr %scevgep1880, i64 %i.arq
  %i.arr = shl nsw i64 %indvars.iv.next15.i.i1034, 1
  %i.ars = mul i64 %i.arr, %i.arj                 ; 2 uses
  %scevgep1882 = getelementptr i8, ptr %i.apt, i64 %i.ars
  %scevgep1883 = getelementptr i8, ptr %i.apt, i64 %i.arq ; 3 uses
  %scevgep1884 = getelementptr i8, ptr %i.apt, i64 2
  %scevgep1885 = getelementptr i8, ptr %scevgep1884, i64 %i.ars ; 3 uses
  %min.iters.check1887 = icmp ult i32 %i.apv, 9
  %bound01889 = icmp ult ptr %scevgep1885, %scevgep1881
  %bound11890 = icmp ult ptr %scevgep1882, %scevgep1883
  %found.conflict1891 = and i1 %bound01889, %bound11890
  %stride.check1892 = icmp sgt i32 %i.apz, 0
  %4 = or i1 %found.conflict1891, %stride.check1892
  %bound01893 = icmp ult ptr %scevgep1885, %scevgep1877
  %bound11894 = icmp ult ptr %scevgep1879, %scevgep1883
  %found.conflict1895 = and i1 %bound01893, %bound11894
  %conflict.rdx1896 = or i1 %4, %found.conflict1895
  %bound01897 = icmp ult ptr %scevgep1885, %scevgep1875
  %bound11898 = icmp ult ptr %scevgep1876, %scevgep1883
  %found.conflict1899 = and i1 %bound01897, %bound11898
  %conflict.rdx1900 = or i1 %conflict.rdx1896, %found.conflict1899
  %n.vec1902 = and i64 %i.ari, -8                 ; 3 uses
  %i.art = and i64 %i.ari, 7
  %cmp.n1916 = icmp eq i64 %i.ari, %n.vec1902
  br label %.lr.ph.split.i.preheader.i

..loopexit_crit_edge.i.i:                         ; preds = %.lr.ph.split.i.i, %middle.block1915, %.lr.ph.split.i.preheader.i
  %.lcssa.i = phi i64 [ %i.asb, %.lr.ph.split.i.preheader.i ], [ %i.asc, %middle.block1915 ], [ %i.aut, %.lr.ph.split.i.i ] ; 2 uses
  %i.aru = sub nsw i64 %.lcssa.i, %i.arj
  %i.arv = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.aru
  %i.arw = load i16, ptr %i.arv, align 2, !tbaa !125
  %i.arx = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %.lcssa.i ; 2 uses
  %i.ary = load i16, ptr %i.arx, align 2, !tbaa !125
  %i.arz = sub i16 %i.ary, %i.arw
  store i16 %i.arz, ptr %i.arx, align 2, !tbaa !125
  %indvars.iv.next15.i.i = add nsw i64 %indvars.iv.next15.i.i1036, -1 ; 2 uses
  %.not57.i.i = icmp eq i64 %indvars.iv.next15.i.i, 0
  br i1 %.not57.i.i, label %.lr.ph.split.us.split.us.i.preheader.i, label %.lr.ph.split.i.preheader.i, !llvm.loop !215

.lr.ph.split.i.preheader.i:                       ; preds = %.lr.ph.split.i.preheader.i.preheader, %..loopexit_crit_edge.i.i
  %indvars.iv.next15.i.i1036 = phi i64 [ %indvars.iv.next15.i.i, %..loopexit_crit_edge.i.i ], [ %indvars.iv.next15.i.i1034, %.lr.ph.split.i.preheader.i.preheader ] ; 2 uses
  %i.asa = mul nsw i64 %indvars.iv.next15.i.i1036, %i.arj ; 2 uses
  %i.asb = add nsw i64 %i.asa, %i.ari             ; 4 uses
  br i1 %.not.i85.i, label %..loopexit_crit_edge.i.i, label %.lr.ph.split.i.i.preheader

.lr.ph.split.i.i.preheader:                       ; preds = %.lr.ph.split.i.preheader.i
  %brmerge2430 = select i1 %min.iters.check1887, i1 true, i1 %conflict.rdx1900
  br i1 %brmerge2430, label %.lr.ph.split.i.i.preheader2372, label %vector.ph1901

vector.ph1901:                                    ; preds = %.lr.ph.split.i.i.preheader
  %i.asc = sub i64 %i.asb, %n.vec1902             ; 2 uses
  br label %vector.body1903

vector.body1903:                                  ; preds = %vector.body1903, %vector.ph1901
  %index1904 = phi i64 [ 0, %vector.ph1901 ], [ %index.next1914, %vector.body1903 ] ; 2 uses
  %i.asd = sub i64 %i.asb, %index1904             ; 3 uses
  %i.ase = add nsw i64 %i.asd, -1                 ; 2 uses
  %i.asf = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.ase
  %i.asg = getelementptr inbounds i8, ptr %i.asf, i64 -14
  %wide.load1905 = load <8 x i16>, ptr %i.asg, align 2, !tbaa !125, !alias.scope !380
  %reverse1906 = shufflevector <8 x i16> %wide.load1905, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.ash = sext <8 x i16> %reverse1906 to <8 x i32> ; 3 uses
  %i.asi = sub nsw i64 %i.asd, %i.arj
  %i.asj = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.asi
  %i.ask = getelementptr inbounds i8, ptr %i.asj, i64 -14
  %wide.load1907 = load <8 x i16>, ptr %i.ask, align 2, !tbaa !125, !alias.scope !381
  %reverse1908 = shufflevector <8 x i16> %wide.load1907, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.asl = sext <8 x i16> %reverse1908 to <8 x i32> ; 3 uses
  %i.asm = add nsw <8 x i32> %i.asl, %i.ash
  %i.asn = sub nsw i64 %i.ase, %i.arj
  %i.aso = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.asn
  %i.asp = getelementptr inbounds i8, ptr %i.aso, i64 -14
  %wide.load1909 = load <8 x i16>, ptr %i.asp, align 2, !tbaa !125, !alias.scope !382
  %reverse1910 = shufflevector <8 x i16> %wide.load1909, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.asq = sext <8 x i16> %reverse1910 to <8 x i32>
  %i.asr = sub nsw <8 x i32> %i.asm, %i.asq
  %i.ass = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.ash, <8 x i32> %i.asl)
  %i.ast = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.ash, <8 x i32> %i.asl)
  %i.asu = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.asr, <8 x i32> %i.ass)
  %i.asv = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.asu, <8 x i32> %i.ast)
  %i.asw = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.asd
  %i.asx = getelementptr inbounds i8, ptr %i.asw, i64 -14 ; 2 uses
  %wide.load1911 = load <8 x i16>, ptr %i.asx, align 2, !tbaa !125, !alias.scope !383, !noalias !384
  %i.asy = trunc nsw <8 x i32> %i.asv to <8 x i16>
  %i.asz = shufflevector <8 x i16> %i.asy, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1913 = sub <8 x i16> %wide.load1911, %i.asz
  store <8 x i16> %reverse1913, ptr %i.asx, align 2, !tbaa !125, !alias.scope !383, !noalias !384
  %index.next1914 = add nuw i64 %index1904, 8     ; 2 uses
  %i.ata = icmp eq i64 %index.next1914, %n.vec1902
  br i1 %i.ata, label %middle.block1915, label %vector.body1903, !llvm.loop !221

middle.block1915:                                 ; preds = %vector.body1903
  br i1 %cmp.n1916, label %..loopexit_crit_edge.i.i, label %.lr.ph.split.i.i.preheader2372

.lr.ph.split.i.i.preheader2372:                   ; preds = %.lr.ph.split.i.i.preheader, %middle.block1915
  %.ph2373 = phi i64 [ %i.asc, %middle.block1915 ], [ %i.asb, %.lr.ph.split.i.i.preheader ]
  %indvars.iv.i86.i.ph = phi i64 [ %i.art, %middle.block1915 ], [ %i.ari, %.lr.ph.split.i.i.preheader ]
  br label %.lr.ph.split.i.i

.lr.ph.split.us.split.us.i.preheader.i:           ; preds = %..loopexit_crit_edge.i.i, %.preheader.preheader.i.i
  br i1 %.not.i85.i, label %decorrelate.exit.i, label %iter.check1834

iter.check1834:                                   ; preds = %.lr.ph.split.us.split.us.i.preheader.i
  %min.iters.check1820 = icmp ult i32 %i.apv, 5
  br i1 %min.iters.check1820, label %.lr.ph.split.us.split.us.i.i.preheader, label %vector.main.loop.iter.check1821

vector.main.loop.iter.check1821:                  ; preds = %iter.check1834
  %min.iters.check1822 = icmp ult i32 %i.apv, 17
  br i1 %min.iters.check1822, label %vec.epilog.ph1838, label %vector.ph1823

vector.ph1823:                                    ; preds = %vector.main.loop.iter.check1821
  %i.atb = and i64 %i.ari, 12
  %n.vec1824 = and i64 %i.ari, -16                ; 3 uses
  %i.atc = and i64 %i.ari, 15
  br label %vector.body1825

vector.body1825:                                  ; preds = %vector.ph1823, %vector.body1825
  %index1826 = phi i64 [ 0, %vector.ph1823 ], [ %index.next1831, %vector.body1825 ] ; 2 uses
  %i.atd = sub i64 %i.ari, %index1826
  %i.ate = getelementptr [2 x i8], ptr %i.apt, i64 %i.atd ; 4 uses
  %i.atf = getelementptr i8, ptr %i.ate, i64 -16
  %i.atg = getelementptr i8, ptr %i.ate, i64 -32
  %wide.load1827 = load <8 x i16>, ptr %i.atf, align 2, !tbaa !125
  %wide.load1828.a = load <8 x i16>, ptr %i.atg, align 2, !tbaa !125
  %i.ath = getelementptr i8, ptr %i.ate, i64 -14  ; 2 uses
  %i.ati = getelementptr i8, ptr %i.ate, i64 -30  ; 2 uses
  %wide.load1829.a = load <8 x i16>, ptr %i.ath, align 2, !tbaa !125
  %wide.load1830 = load <8 x i16>, ptr %i.ati, align 2, !tbaa !125
  %i.atj = sub <8 x i16> %wide.load1829.a, %wide.load1827
  %i.atk = sub <8 x i16> %wide.load1830, %wide.load1828.a
  store <8 x i16> %i.atj, ptr %i.ath, align 2, !tbaa !125
  store <8 x i16> %i.atk, ptr %i.ati, align 2, !tbaa !125
  %index.next1831 = add nuw i64 %index1826, 16    ; 2 uses
  %i.atl = icmp eq i64 %index.next1831, %n.vec1824
  br i1 %i.atl, label %middle.block1832, label %vector.body1825, !llvm.loop !222

middle.block1832:                                 ; preds = %vector.body1825
  %cmp.n1833 = icmp eq i64 %i.ari, %n.vec1824
  br i1 %cmp.n1833, label %decorrelate.exit.i, label %vec.epilog.iter.check1835

vec.epilog.iter.check1835:                        ; preds = %middle.block1832
  %min.epilog.iters.check1837 = icmp eq i64 %i.atb, 0
  br i1 %min.epilog.iters.check1837, label %.lr.ph.split.us.split.us.i.i.preheader, label %vec.epilog.ph1838, !prof !132

vec.epilog.ph1838:                                ; preds = %vector.main.loop.iter.check1821, %vec.epilog.iter.check1835
  %vec.epilog.resume.val1839 = phi i64 [ %n.vec1824, %vec.epilog.iter.check1835 ], [ 0, %vector.main.loop.iter.check1821 ]
  %n.vec1840 = and i64 %i.ari, -4                 ; 2 uses
  %i.atm = and i64 %i.ari, 3
  br label %vec.epilog.vector.body1841

vec.epilog.vector.body1841:                       ; preds = %vec.epilog.vector.body1841, %vec.epilog.ph1838
  %index1842 = phi i64 [ %vec.epilog.resume.val1839, %vec.epilog.ph1838 ], [ %index.next1845, %vec.epilog.vector.body1841 ] ; 2 uses
  %i.atn = sub i64 %i.ari, %index1842
  %i.ato = getelementptr [2 x i8], ptr %i.apt, i64 %i.atn ; 2 uses
  %i.atp = getelementptr i8, ptr %i.ato, i64 -8
  %wide.load1843 = load <4 x i16>, ptr %i.atp, align 2, !tbaa !125
  %i.atq = getelementptr i8, ptr %i.ato, i64 -6   ; 2 uses
  %wide.load1844 = load <4 x i16>, ptr %i.atq, align 2, !tbaa !125
  %i.atr = sub <4 x i16> %wide.load1844, %wide.load1843
  store <4 x i16> %i.atr, ptr %i.atq, align 2, !tbaa !125
  %index.next1845 = add nuw i64 %index1842, 4     ; 2 uses
  %i.ats = icmp eq i64 %index.next1845, %n.vec1840
  br i1 %i.ats, label %vec.epilog.middle.block1846, label %vec.epilog.vector.body1841, !llvm.loop !223

vec.epilog.middle.block1846:                      ; preds = %vec.epilog.vector.body1841
  %cmp.n1847 = icmp eq i64 %i.ari, %n.vec1840
  br i1 %cmp.n1847, label %decorrelate.exit.i, label %.lr.ph.split.us.split.us.i.i.preheader

.lr.ph.split.us.split.us.i.i.preheader:           ; preds = %iter.check1834, %vec.epilog.iter.check1835, %vec.epilog.middle.block1846
  %indvars.iv11.i88.i.ph = phi i64 [ %i.ari, %iter.check1834 ], [ %i.atc, %vec.epilog.iter.check1835 ], [ %i.atm, %vec.epilog.middle.block1846 ]
  br label %.lr.ph.split.us.split.us.i.i

.lr.ph.split.us.split.us.i.i:                     ; preds = %.lr.ph.split.us.split.us.i.i.preheader, %.lr.ph.split.us.split.us.i.i
  %indvars.iv11.i88.i = phi i64 [ %indvars.iv.next12.i.i, %.lr.ph.split.us.split.us.i.i ], [ %indvars.iv11.i88.i.ph, %.lr.ph.split.us.split.us.i.i.preheader ] ; 2 uses
  %i.att = getelementptr [2 x i8], ptr %i.apt, i64 %indvars.iv11.i88.i ; 3 uses
  %i.atu = getelementptr i8, ptr %i.att, i64 -2
  %i.atv = load i16, ptr %i.atu, align 2, !tbaa !125
  %i.atw = load i16, ptr %i.att, align 2, !tbaa !125
  %i.atx = sub i16 %i.atw, %i.atv
  store i16 %i.atx, ptr %i.att, align 2, !tbaa !125
  %indvars.iv.next12.i.i = add nsw i64 %indvars.iv11.i88.i, -1 ; 2 uses
  %.not.us.us.i.i = icmp eq i64 %indvars.iv.next12.i.i, 0
  br i1 %.not.us.us.i.i, label %decorrelate.exit.i, label %.lr.ph.split.us.split.us.i.i, !llvm.loop !224

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.split.i.i.preheader2372, %.lr.ph.split.i.i
  %i.aty = phi i64 [ %i.aut, %.lr.ph.split.i.i ], [ %.ph2373, %.lr.ph.split.i.i.preheader2372 ] ; 3 uses
  %indvars.iv.i86.i = phi i64 [ %indvars.iv.next.i.i, %.lr.ph.split.i.i ], [ %indvars.iv.i86.i.ph, %.lr.ph.split.i.i.preheader2372 ]
  %i.atz = add nsw i64 %i.aty, -1                 ; 2 uses
  %i.aua = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.atz
  %i.aub = load i16, ptr %i.aua, align 2, !tbaa !125
  %i.auc = sext i16 %i.aub to i32                 ; 3 uses
  %i.aud = sub nsw i64 %i.aty, %i.arj
  %i.aue = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.aud
  %i.auf = load i16, ptr %i.aue, align 2, !tbaa !125
  %i.aug = sext i16 %i.auf to i32                 ; 3 uses
  %i.auh = add nsw i32 %i.aug, %i.auc
  %i.aui = sub nsw i64 %i.atz, %i.arj
  %i.auj = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.aui
  %i.auk = load i16, ptr %i.auj, align 2, !tbaa !125
  %i.aul = sext i16 %i.auk to i32
  %i.aum = sub nsw i32 %i.auh, %i.aul
  %..i.i.i = tail call i32 @llvm.smax.i32(i32 %i.auc, i32 %i.aug)
  %.20.i.i.i = tail call i32 @llvm.smin.i32(i32 %i.auc, i32 %i.aug)
  %i.aun = tail call i32 @llvm.smin.i32(i32 %i.aum, i32 %..i.i.i)
  %i.auo = tail call noundef i32 @llvm.smax.i32(i32 %i.aun, i32 %.20.i.i.i)
  %i.aup = getelementptr inbounds [2 x i8], ptr %i.apt, i64 %i.aty ; 2 uses
  %i.auq = load i16, ptr %i.aup, align 2, !tbaa !125
  %i.aur = trunc nsw i32 %i.auo to i16
  %i.aus = sub i16 %i.auq, %i.aur
  store i16 %i.aus, ptr %i.aup, align 2, !tbaa !125
  %indvars.iv.next.i.i = add nsw i64 %indvars.iv.i86.i, -1 ; 3 uses
  %i.aut = add nsw i64 %indvars.iv.next.i.i, %i.asa ; 2 uses
  %.not.i.i786 = icmp eq i64 %indvars.iv.next.i.i, 0
  br i1 %.not.i.i786, label %..loopexit_crit_edge.i.i, label %.lr.ph.split.i.i, !llvm.loop !225

decorrelate.exit.i:                               ; preds = %.lr.ph.split.us.split.us.i.i, %middle.block1832, %vec.epilog.middle.block1846, %.lr.ph.split.us.split.us.i.preheader.i, %._crit_edge84.split.i
  br i1 %or.cond.i, label %.preheader.us.preheader.i, label %._crit_edge97.i

.preheader.us.preheader.i:                        ; preds = %decorrelate.exit.i
  %i.auu = sext i32 %i.apz to i64
  %wide.trip.count126.i = zext nneg i32 %.12.val.fr.i.i to i64
  %wide.trip.count121.i = zext nneg i32 %i.apv to i64 ; 3 uses
  %min.iters.check1805 = icmp ult i32 %i.apv, 8
  %n.vec1807 = and i64 %wide.trip.count121.i, 2147483640 ; 3 uses
  %broadcast.splatinsert1808 = insertelement <4 x i32> poison, i32 %i.aql, i64 0
  %broadcast.splat1809 = shufflevector <4 x i32> %broadcast.splatinsert1808, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %cmp.n1817 = icmp eq i64 %n.vec1807, %wide.trip.count121.i
  br label %.preheader.us.i783

.preheader.us.i783:                               ; preds = %._crit_edge93.us.i, %.preheader.us.preheader.i
  %indvars.iv123.i = phi i64 [ 0, %.preheader.us.preheader.i ], [ %indvars.iv.next124.i, %._crit_edge93.us.i ] ; 2 uses
  %.295.us.i = phi i32 [ %.17499.i, %.preheader.us.preheader.i ], [ %.lcssa1481, %._crit_edge93.us.i ] ; 2 uses
  %i.auv = mul nsw i64 %indvars.iv123.i, %i.auu
  %invariant.gep.i784 = getelementptr [2 x i8], ptr %i.apt, i64 %i.auv ; 2 uses
  br i1 %min.iters.check1805, label %scalar.ph1804.preheader, label %vector.ph1806

vector.ph1806:                                    ; preds = %.preheader.us.i783
  %i.auw = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.295.us.i, i64 0
  br label %vector.body1810

vector.body1810:                                  ; preds = %vector.body1810, %vector.ph1806
  %index1811 = phi i64 [ 0, %vector.ph1806 ], [ %index.next1815, %vector.body1810 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.auw, %vector.ph1806 ], [ %i.avh, %vector.body1810 ]
  %vec.phi1812 = phi <4 x i32> [ zeroinitializer, %vector.ph1806 ], [ %i.avi, %vector.body1810 ]
  %i.aux = getelementptr [2 x i8], ptr %invariant.gep.i784, i64 %index1811 ; 2 uses
  %i.auy = getelementptr i8, ptr %i.aux, i64 8
  %wide.load1813 = load <4 x i16>, ptr %i.aux, align 2, !tbaa !125
  %wide.load1814 = load <4 x i16>, ptr %i.auy, align 2, !tbaa !125
  %i.auz = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load1813, i1 false)
  %i.ava = tail call <4 x i16> @llvm.abs.v4i16(<4 x i16> %wide.load1814, i1 false)
  %i.avb = zext <4 x i16> %i.auz to <4 x i32>
  %i.avc = zext <4 x i16> %i.ava to <4 x i32>
  %i.avd = mul nuw nsw <4 x i32> %broadcast.splat1809, %i.avb
  %i.ave = mul nuw nsw <4 x i32> %broadcast.splat1809, %i.avc
  %i.avf = lshr <4 x i32> %i.avd, splat (i32 16)
  %i.avg = lshr <4 x i32> %i.ave, splat (i32 16)
  %i.avh = add <4 x i32> %i.avf, %vec.phi         ; 2 uses
  %i.avi = add <4 x i32> %i.avg, %vec.phi1812     ; 2 uses
  %index.next1815 = add nuw i64 %index1811, 8     ; 2 uses
  %i.avj = icmp eq i64 %index.next1815, %n.vec1807
  br i1 %i.avj, label %middle.block1816, label %vector.body1810, !llvm.loop !226

middle.block1816:                                 ; preds = %vector.body1810
  %bin.rdx = add <4 x i32> %i.avi, %i.avh
  %i.avk = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  br i1 %cmp.n1817, label %._crit_edge93.us.i, label %scalar.ph1804.preheader

scalar.ph1804.preheader:                          ; preds = %.preheader.us.i783, %middle.block1816
  %indvars.iv118.i.ph = phi i64 [ 0, %.preheader.us.i783 ], [ %n.vec1807, %middle.block1816 ]
  %.390.us.i.ph = phi i32 [ %.295.us.i, %.preheader.us.i783 ], [ %i.avk, %middle.block1816 ]
  br label %scalar.ph1804

scalar.ph1804:                                    ; preds = %scalar.ph1804.preheader, %scalar.ph1804
  %indvars.iv118.i = phi i64 [ %indvars.iv.next119.i, %scalar.ph1804 ], [ %indvars.iv118.i.ph, %scalar.ph1804.preheader ] ; 2 uses
  %.390.us.i = phi i32 [ %i.avq, %scalar.ph1804 ], [ %.390.us.i.ph, %scalar.ph1804.preheader ]
  %gep.i785 = getelementptr [2 x i8], ptr %invariant.gep.i784, i64 %indvars.iv118.i
  %i.avl = load i16, ptr %gep.i785, align 2, !tbaa !125
  %i.avm = tail call i16 @llvm.abs.i16(i16 %i.avl, i1 false)
  %i.avn = zext i16 %i.avm to i32
  %i.avo = mul nuw nsw i32 %i.aql, %i.avn
  %i.avp = lshr i32 %i.avo, 16
  %i.avq = add i32 %i.avp, %.390.us.i             ; 2 uses
  %indvars.iv.next119.i = add nuw nsw i64 %indvars.iv118.i, 1 ; 2 uses
  %exitcond122.not.i = icmp eq i64 %indvars.iv.next119.i, %wide.trip.count121.i
  br i1 %exitcond122.not.i, label %._crit_edge93.us.i, label %scalar.ph1804, !llvm.loop !227

._crit_edge93.us.i:                               ; preds = %scalar.ph1804, %middle.block1816
  %.lcssa1481 = phi i32 [ %i.avk, %middle.block1816 ], [ %i.avq, %scalar.ph1804 ] ; 2 uses
  %indvars.iv.next124.i = add nuw nsw i64 %indvars.iv123.i, 1 ; 2 uses
  %exitcond127.not.i = icmp eq i64 %indvars.iv.next124.i, %wide.trip.count126.i
  br i1 %exitcond127.not.i, label %._crit_edge97.i, label %.preheader.us.i783, !llvm.loop !228

._crit_edge97.i:                                  ; preds = %._crit_edge93.us.i, %decorrelate.exit.i
  %.2.lcssa.i = phi i32 [ %.17499.i, %decorrelate.exit.i ], [ %.lcssa1481, %._crit_edge93.us.i ] ; 4 uses
  %indvars.iv.next129.i = add nuw nsw i64 %indvars.iv128.i, 1 ; 2 uses
  %exitcond131.not.i = icmp eq i64 %indvars.iv.next129.i, 4
  br i1 %exitcond131.not.i, label %bb.bq, label %bb.bp, !llvm.loop !229

bb.bq:                                            ; preds = %._crit_edge97.i
  %indvars.iv.next133.i = add nuw nsw i64 %indvars.iv132.i, 1 ; 2 uses
  %exitcond136.not.i = icmp eq i64 %indvars.iv.next133.i, %wide.trip.count135.i
  br i1 %exitcond136.not.i, label %._crit_edge105.i, label %bb.bo, !llvm.loop !230

._crit_edge105.i:                                 ; preds = %bb.bq
  %i.avr = icmp ult i32 %.2.lcssa.i, 2147483647
  br i1 %i.avr, label %._crit_edge105.thread.i, label %bb.br

bb.br:                                            ; preds = %._crit_edge105.i
  tail call void (ptr, i32, ptr, ...) @av_log(ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.30, i32 noundef 1719) #12
  tail call void @abort() #13
  unreachable

._crit_edge105.thread.i:                          ; preds = %._crit_edge105.i, %bb.bn
  %.073.lcssa143.i = phi i32 [ %.2.lcssa.i, %._crit_edge105.i ], [ 0, %bb.bn ]
  %i.avs = zext nneg i32 %.073.lcssa143.i to i64  ; 2 uses
  %i.avt = mul nuw nsw i64 %i.avs, %i.avs
  %i.avu = lshr i64 %i.avt, 16
  %i.avv = load i32, ptr %i.cf, align 8, !tbaa !320
  %i.avw = icmp eq i32 %i.avv, 1                  ; 2 uses
  %i.avx = and i64 %i.avu, 4294967295             ; 2 uses
  %..i780 = select i1 %i.avw, i64 %i.avx, i64 0
  %.148.i = select i1 %i.avw, i64 0, i64 %i.avx
  store i64 %..i780, ptr %i.lq, align 8, !tbaa !385
  store i64 %.148.i, ptr %i.lr, align 16, !tbaa !386
  %i.avy = tail call nsz float @ff_rate_estimate_qscale(ptr noundef nonnull %i.e, i32 noundef 1) #12
  %i.avz = fptosi float %i.avy to i32             ; 5 uses
  store i32 %i.avz, ptr %i.ci, align 8, !tbaa !321
  %i.awa = icmp slt i32 %i.avz, 0
  br i1 %i.awa, label %get_encode_buffer.exit.thread, label %ratecontrol_1pass.exit

ratecontrol_1pass.exit:                           ; preds = %._crit_edge105.thread.i
  %i.awb = lshr i32 %i.avz, 1
  %i.awc = add nuw nsw i32 %i.awb, %i.avz
  store i32 %i.awc, ptr %i.ls, align 16, !tbaa !112
  %i.awd = uitofp nneg i32 %i.avz to float
  %i.awe = fdiv nnan nsz float %i.awd, 1.180000e+02
  %i.awf = fpext nnan nsz float %i.awe to double
  %i.awg = tail call nnan nsz double @llvm.log2.f64(double %i.awf)
  %i.awh = fmul nnan nsz double %i.awg, 3.200000e+01
  %i.awi = tail call i64 @llvm.lrint.i64.f64(double %i.awh)
  %i.awj = trunc i64 %i.awi to i32
  %i.awk = add i32 %i.awj, 244                    ; 2 uses
  %i.awl = load i32, ptr %i.en, align 8, !tbaa !111
  %i.awm = sub nsw i32 %i.awk, %i.awl
  store i32 %i.awk, ptr %i.en, align 8, !tbaa !111
  switch i32 %i.awm, label %bb.bs [
    i32 -2147483648, label %get_encode_buffer.exit.thread
    i32 0, label %bb.bt
  ]

bb.bs:                                            ; preds = %ratecontrol_1pass.exit
  %i.awn = load ptr, ptr %i.y, align 8, !tbaa !313
  %i.awo = load i32, ptr %i.aa, align 8, !tbaa !314
  tail call void @ff_init_range_encoder(ptr noundef nonnull %i.f, ptr noundef %i.awn, i32 noundef %i.awo) #12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.lt, ptr noundef nonnull align 16 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(4224) %i.lu, ptr noundef nonnull align 16 dereferenceable(4224) %i.b, i64 4224, i1 false)
  tail call fastcc void @encode_header(ptr noundef nonnull %i.d)
  tail call fastcc void @encode_blocks(ptr noundef nonnull %i.d, i32 noundef 0)
  br label %bb.bt

bb.bt:                                            ; preds = %ratecontrol_1pass.exit, %bb.bs, %.loopexit924
  %i.awp = load i32, ptr %i.kr, align 8, !tbaa !117 ; 2 uses
  %i.awq = icmp sgt i32 %i.awp, 0
  br i1 %i.awq, label %.lr.ph1046, label %._crit_edge1054

.lr.ph1046:                                       ; preds = %bb.bt
  %i.awr = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  br label %bb.bu

.preheader922:                                    ; preds = %bb.fl
  %i.aws = icmp sgt i32 %i.bst, 0
  br i1 %i.aws, label %.lr.ph1053, label %._crit_edge1054

.lr.ph1053:                                       ; preds = %.preheader922
  %i.awt = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %.val773 = load i32, ptr %i.en, align 8, !tbaa !111
  %.val773.fr = freeze i32 %.val773               ; 2 uses
  %.val774 = load i32, ptr %i.kv, align 8, !tbaa !118
  %.not1121 = icmp eq i32 %.val773.fr, -128
  %wide.trip.count1229 = zext nneg i32 %i.bst to i64
  br label %bb.fm

bb.bu:                                            ; preds = %.lr.ph1046, %bb.fl
  %indvars.iv1219 = phi i64 [ 0, %.lr.ph1046 ], [ %indvars.iv.next1220, %bb.fl ] ; 3 uses
  %.not576 = icmp ne i64 %indvars.iv1219, 0
  %i.awu = getelementptr inbounds nuw [4640 x i8], ptr %i.awr, i64 %indvars.iv1219
  %i.awv = zext i1 %.not576 to i64
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %correlate.exit
  %indvars.iv1215 = phi i64 [ %i.awv, %bb.bu ], [ %indvars.iv.next1216, %correlate.exit ] ; 3 uses
  %i.aww = getelementptr inbounds nuw [1160 x i8], ptr %i.awu, i64 %indvars.iv1215 ; 12 uses
  %i.awx = getelementptr inbounds nuw i8, ptr %i.aww, i64 32 ; 2 uses
  %i.awy = load ptr, ptr %i.awx, align 8, !tbaa !353 ; 38 uses
  %i.awz = getelementptr inbounds nuw i8, ptr %i.aww, i64 24
  %i.axa = load ptr, ptr %i.awz, align 8, !tbaa !379 ; 4 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.aww, i64 4 ; 3 uses
  %i.axc = load i32, ptr %i.axb, align 4, !tbaa !355 ; 9 uses
  %.val770 = load i32, ptr %i.en, align 8, !tbaa !111 ; 2 uses
  %i.axd = getelementptr inbounds nuw i8, ptr %i.aww, i64 8 ; 2 uses
  %i.axe = load i32, ptr %i.axd, align 8, !tbaa !377
  %.fr297.i.i = freeze i32 %i.axe                 ; 17 uses
  %i.axf = getelementptr inbounds nuw i8, ptr %i.aww, i64 12 ; 2 uses
  %i.axg = load i32, ptr %i.axf, align 4, !tbaa !378
  %.12.val.fr.i = freeze i32 %i.axg               ; 10 uses
  %i.axh = getelementptr inbounds nuw i8, ptr %i.aww, i64 16
  %i.axi = load i32, ptr %i.axh, align 8, !tbaa !127
  %i.axj = add nsw i32 %i.axi, %.val770
  %i.axk = tail call i32 @llvm.smax.i32(i32 %i.axj, i32 0)
  %i.axl = tail call i32 @llvm.umin.i32(i32 %i.axk, i32 512) ; 2 uses
  %i.axm = and i32 %i.axl, 31
  %i.axn = zext nneg i32 %i.axm to i64
  %i.axo = getelementptr inbounds nuw i8, ptr @ff_qexp, i64 %i.axn
  %i.axp = load i8, ptr %i.axo, align 1, !tbaa !86
  %i.axq = zext i8 %i.axp to i32
  %i.axr = lshr i32 %i.axl, 5
  %i.axs = add nuw nsw i32 %i.axr, 4
  %i.axt = shl nuw nsw i32 %i.axq, %i.axs         ; 6 uses
  %i.axu = icmp eq i32 %.val770, -128
  br i1 %i.axu, label %.preheader1.i, label %bb.bw

.preheader1.i:                                    ; preds = %bb.bv
  %i.axv = icmp sgt i32 %.12.val.fr.i, 0
  %i.axw = icmp sgt i32 %.fr297.i.i, 0
  %or.cond.i797 = and i1 %i.axw, %i.axv
  br i1 %or.cond.i797, label %.preheader.preheader.i, label %quantize.exit

.preheader.preheader.i:                           ; preds = %.preheader1.i
  %i.axx = sext i32 %i.axc to i64
  %wide.trip.count44.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count39.i = zext nneg i32 %.fr297.i.i to i64 ; 3 uses
  %min.iters.check1793 = icmp ult i32 %.fr297.i.i, 8
  %n.vec1795 = and i64 %wide.trip.count39.i, 2147483640 ; 3 uses
  %cmp.n1802 = icmp eq i64 %n.vec1795, %wide.trip.count39.i
  br label %.preheader.i798

.preheader.i798:                                  ; preds = %._crit_edge14.i, %.preheader.preheader.i
  %indvars.iv41.i = phi i64 [ 0, %.preheader.preheader.i ], [ %indvars.iv.next42.i, %._crit_edge14.i ] ; 2 uses
  %i.axy = mul nsw i64 %indvars.iv41.i, %i.axx    ; 2 uses
  br i1 %min.iters.check1793, label %scalar.ph1792.preheader, label %vector.body1796

vector.body1796:                                  ; preds = %.preheader.i798, %vector.body1796
  %index1797 = phi i64 [ %index.next1800, %vector.body1796 ], [ 0, %.preheader.i798 ] ; 2 uses
  %i.axz = add nsw i64 %index1797, %i.axy         ; 2 uses
  %i.aya = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.axz ; 2 uses
  %i.ayb = getelementptr inbounds nuw i8, ptr %i.aya, i64 16
  %wide.load1798 = load <4 x i32>, ptr %i.aya, align 4, !tbaa !87
  %wide.load1799 = load <4 x i32>, ptr %i.ayb, align 4, !tbaa !87
  %i.ayc = trunc <4 x i32> %wide.load1798 to <4 x i16>
  %i.ayd = trunc <4 x i32> %wide.load1799 to <4 x i16>
  %i.aye = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.axz ; 2 uses
  %i.ayf = getelementptr inbounds nuw i8, ptr %i.aye, i64 8
  store <4 x i16> %i.ayc, ptr %i.aye, align 2, !tbaa !125
  store <4 x i16> %i.ayd, ptr %i.ayf, align 2, !tbaa !125
  %index.next1800 = add nuw i64 %index1797, 8     ; 2 uses
  %i.ayg = icmp eq i64 %index.next1800, %n.vec1795
  br i1 %i.ayg, label %middle.block1801, label %vector.body1796, !llvm.loop !231

middle.block1801:                                 ; preds = %vector.body1796
  br i1 %cmp.n1802, label %._crit_edge14.i, label %scalar.ph1792.preheader

scalar.ph1792.preheader:                          ; preds = %.preheader.i798, %middle.block1801
  %indvars.iv36.i.ph = phi i64 [ 0, %.preheader.i798 ], [ %n.vec1795, %middle.block1801 ]
  br label %scalar.ph1792

scalar.ph1792:                                    ; preds = %scalar.ph1792.preheader, %scalar.ph1792
  %indvars.iv36.i = phi i64 [ %indvars.iv.next37.i, %scalar.ph1792 ], [ %indvars.iv36.i.ph, %scalar.ph1792.preheader ] ; 2 uses
  %i.ayh = add nsw i64 %indvars.iv36.i, %i.axy    ; 2 uses
  %i.ayi = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.ayh
  %i.ayj = load i32, ptr %i.ayi, align 4, !tbaa !87
  %i.ayk = trunc i32 %i.ayj to i16
  %i.ayl = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.ayh
  store i16 %i.ayk, ptr %i.ayl, align 2, !tbaa !125
  %indvars.iv.next37.i = add nuw nsw i64 %indvars.iv36.i, 1 ; 2 uses
  %exitcond40.not.i = icmp eq i64 %indvars.iv.next37.i, %wide.trip.count39.i
  br i1 %exitcond40.not.i, label %._crit_edge14.i, label %scalar.ph1792, !llvm.loop !232

._crit_edge14.i:                                  ; preds = %scalar.ph1792, %middle.block1801
  %indvars.iv.next42.i = add nuw nsw i64 %indvars.iv41.i, 1 ; 2 uses
  %exitcond45.not.i = icmp eq i64 %indvars.iv.next42.i, %wide.trip.count44.i
  br i1 %exitcond45.not.i, label %quantize.exit, label %.preheader.i798, !llvm.loop !233

bb.bw:                                            ; preds = %bb.bv
  %i.aym = load i32, ptr %i.kv, align 8, !tbaa !118
  %.not.i791 = icmp eq i32 %i.aym, 0
  %i.ayn = mul nuw nsw i32 %i.axt, 3
  %i.ayo = lshr i32 %i.ayn, 3
  %i.ayp = select i1 %.not.i791, i32 %i.ayo, i32 0 ; 4 uses
  %i.ayq = sub nsw i32 %i.axt, %i.ayp
  %i.ayr = ashr i32 %i.ayq, 11
  %i.ays = add nsw i32 %i.ayr, -1                 ; 3 uses
  %i.ayt = shl nsw i32 %i.ays, 1                  ; 2 uses
  %.not106.i = icmp eq i32 %i.ayp, 0
  %i.ayu = icmp sgt i32 %.12.val.fr.i, 0
  %i.ayv = icmp sgt i32 %.fr297.i.i, 0
  %or.cond17.i = and i1 %i.ayv, %i.ayu            ; 2 uses
  br i1 %.not106.i, label %.preheader3.i, label %.preheader6.i

.preheader6.i:                                    ; preds = %bb.bw
  br i1 %or.cond17.i, label %.preheader5.preheader.i, label %quantize.exit

.preheader5.preheader.i:                          ; preds = %.preheader6.i
  %i.ayw = sext i32 %i.axc to i64
  %wide.trip.count24.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count.i792 = zext nneg i32 %.fr297.i.i to i64
  br label %.preheader5.i

.preheader3.i:                                    ; preds = %bb.bw
  br i1 %or.cond17.i, label %.preheader2.preheader.i, label %quantize.exit

.preheader2.preheader.i:                          ; preds = %.preheader3.i
  %i.ayx = sext i32 %i.axc to i64
  %wide.trip.count34.i = zext nneg i32 %.12.val.fr.i to i64
  %wide.trip.count29.i = zext nneg i32 %.fr297.i.i to i64
  br label %.preheader2.i

.preheader2.i:                                    ; preds = %._crit_edge11.i, %.preheader2.preheader.i
  %indvars.iv31.i = phi i64 [ 0, %.preheader2.preheader.i ], [ %indvars.iv.next32.i, %._crit_edge11.i ] ; 2 uses
  %i.ayy = mul nsw i64 %indvars.iv31.i, %i.ayx
  br label %bb.bx

bb.bx:                                            ; preds = %bb.cb, %.preheader2.i
  %indvars.iv26.i = phi i64 [ 0, %.preheader2.i ], [ %indvars.iv.next27.i, %bb.cb ] ; 2 uses
  %i.ayz = add nsw i64 %indvars.iv26.i, %i.ayy    ; 2 uses
  %i.aza = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.ayz
  %i.azb = load i32, ptr %i.aza, align 4, !tbaa !87 ; 4 uses
  %i.azc = add nsw i32 %i.azb, %i.ays
  %i.azd = icmp ugt i32 %i.azc, %i.ayt
  br i1 %i.azd, label %bb.by, label %bb.cb

bb.by:                                            ; preds = %bb.bx
  %i.aze = icmp sgt i32 %i.azb, -1
  br i1 %i.aze, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.azf = shl i32 %i.azb, 11
  %i.azg = sdiv i32 %i.azf, %i.axt
  %i.azh = trunc i32 %i.azg to i16
  br label %bb.cb

bb.ca:                                            ; preds = %bb.by
  %.neg.i = mul i32 %i.azb, -2048
  %i.azi = sdiv i32 %.neg.i, %i.axt
  %i.azj = trunc i32 %i.azi to i16
  %i.azk = sub i16 0, %i.azj
  br label %bb.cb

bb.cb:                                            ; preds = %bb.ca, %bb.bz, %bb.bx
  %.sink.i = phi i16 [ %i.azh, %bb.bz ], [ %i.azk, %bb.ca ], [ 0, %bb.bx ]
  %i.azl = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.ayz
  store i16 %.sink.i, ptr %i.azl, align 2, !tbaa !125
  %indvars.iv.next27.i = add nuw nsw i64 %indvars.iv26.i, 1 ; 2 uses
  %exitcond30.not.i = icmp eq i64 %indvars.iv.next27.i, %wide.trip.count29.i
  br i1 %exitcond30.not.i, label %._crit_edge11.i, label %bb.bx, !llvm.loop !234

._crit_edge11.i:                                  ; preds = %bb.cb
  %indvars.iv.next32.i = add nuw nsw i64 %indvars.iv31.i, 1 ; 2 uses
  %exitcond35.not.i = icmp eq i64 %indvars.iv.next32.i, %wide.trip.count34.i
  br i1 %exitcond35.not.i, label %quantize.exit, label %.preheader2.i, !llvm.loop !235

.preheader5.i:                                    ; preds = %._crit_edge.i796, %.preheader5.preheader.i
  %indvars.iv21.i = phi i64 [ 0, %.preheader5.preheader.i ], [ %indvars.iv.next22.i, %._crit_edge.i796 ] ; 2 uses
  %i.azm = mul nsw i64 %indvars.iv21.i, %i.ayw
  br label %bb.cc

bb.cc:                                            ; preds = %bb.cg, %.preheader5.i
  %indvars.iv.i793 = phi i64 [ 0, %.preheader5.i ], [ %indvars.iv.next.i794, %bb.cg ] ; 2 uses
  %i.azn = add nsw i64 %indvars.iv.i793, %i.azm   ; 2 uses
  %i.azo = getelementptr inbounds [4 x i8], ptr %i.axa, i64 %i.azn
  %i.azp = load i32, ptr %i.azo, align 4, !tbaa !87 ; 3 uses
  %i.azq = add nsw i32 %i.azp, %i.ays
  %i.azr = icmp ugt i32 %i.azq, %i.ayt
  br i1 %i.azr, label %bb.cd, label %bb.cg

bb.cd:                                            ; preds = %bb.cc
  %i.azs = icmp sgt i32 %i.azp, -1
  %i.azt = shl i32 %i.azp, 11                     ; 2 uses
  br i1 %i.azs, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.azu = add nsw i32 %i.azt, %i.ayp
  %i.azv = sdiv i32 %i.azu, %i.axt
  %i.azw = trunc i32 %i.azv to i16
  br label %bb.cg

bb.cf:                                            ; preds = %bb.cd
  %i.azx = sub i32 %i.ayp, %i.azt
  %i.azy = sdiv i32 %i.azx, %i.axt
  %i.azz = trunc i32 %i.azy to i16
  %i.baa = sub i16 0, %i.azz
  br label %bb.cg

bb.cg:                                            ; preds = %bb.cf, %bb.ce, %bb.cc
  %.sink57.i = phi i16 [ %i.azw, %bb.ce ], [ %i.baa, %bb.cf ], [ 0, %bb.cc ]
  %i.bab = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.azn
  store i16 %.sink57.i, ptr %i.bab, align 2, !tbaa !125
  %indvars.iv.next.i794 = add nuw nsw i64 %indvars.iv.i793, 1 ; 2 uses
  %exitcond.not.i795 = icmp eq i64 %indvars.iv.next.i794, %wide.trip.count.i792
  br i1 %exitcond.not.i795, label %._crit_edge.i796, label %bb.cc, !llvm.loop !236

._crit_edge.i796:                                 ; preds = %bb.cg
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %quantize.exit, label %.preheader5.i, !llvm.loop !237

quantize.exit:                                    ; preds = %._crit_edge.i796, %._crit_edge11.i, %._crit_edge14.i, %.preheader1.i, %.preheader6.i, %.preheader3.i
  %i.bac = icmp eq i64 %indvars.iv1215, 0         ; 2 uses
  br i1 %i.bac, label %bb.ch, label %decorrelate.exit

bb.ch:                                            ; preds = %quantize.exit
  %i.bad = icmp sgt i32 %.12.val.fr.i, 0
  %i.bae = icmp sgt i32 %.fr297.i.i, 0
  %or.cond.i799 = and i1 %i.bae, %i.bad
  br i1 %or.cond.i799, label %.preheader.preheader.i800, label %decorrelate.exit

.preheader.preheader.i800:                        ; preds = %bb.ch
  %i.baf = zext nneg i32 %.fr297.i.i to i64       ; 3 uses
  %i.bag = add nsw i64 %i.baf, -1                 ; 16 uses
  %i.bah = sext i32 %i.axc to i64                 ; 9 uses
  %i.bai = zext nneg i32 %.12.val.fr.i to i64     ; 2 uses
  %.not.i8031037 = icmp eq i64 %i.bag, 0          ; 2 uses
  %indvars.iv.next15.i1488 = add nsw i64 %i.bai, -1 ; 3 uses
  %.not57.i1489 = icmp eq i64 %indvars.iv.next15.i1488, 0
  br i1 %.not57.i1489, label %.lr.ph.split.us.split.us.i.preheader, label %.lr.ph.split.i.preheader.lr.ph

.lr.ph.split.i.preheader.lr.ph:                   ; preds = %.preheader.preheader.i800
  %scevgep1748.a = getelementptr i8, ptr %i.awy, i64 -2
  %i.baj = shl nuw nsw i64 %i.baf, 1              ; 2 uses
  %scevgep1749 = getelementptr i8, ptr %scevgep1748.a, i64 %i.baj
  %i.bak = shl nuw nsw i64 %i.bai, 1
  %i.bal = add nsw i64 %i.bak, -4
  %i.bam = mul i64 %i.bal, %i.bah                 ; 2 uses
  %scevgep1750 = getelementptr i8, ptr %i.awy, i64 %i.bam
  %scevgep1751 = getelementptr i8, ptr %i.awy, i64 %i.baj
  %scevgep1752 = getelementptr i8, ptr %i.awy, i64 2
  %scevgep1753 = getelementptr i8, ptr %scevgep1752, i64 %i.bam
  %scevgep1754 = getelementptr i8, ptr %i.awy, i64 -2
  %i.ban = add nsw i64 %i.bah, %i.baf
  %i.bao = shl nsw i64 %i.ban, 1                  ; 2 uses
  %scevgep1755 = getelementptr i8, ptr %scevgep1754, i64 %i.bao
  %i.bap = shl nsw i64 %indvars.iv.next15.i1488, 1
  %i.baq = mul i64 %i.bap, %i.bah                 ; 2 uses
  %scevgep1756 = getelementptr i8, ptr %i.awy, i64 %i.baq
  %scevgep1757 = getelementptr i8, ptr %i.awy, i64 %i.bao ; 3 uses
  %scevgep1758 = getelementptr i8, ptr %i.awy, i64 2
  %scevgep1759 = getelementptr i8, ptr %scevgep1758, i64 %i.baq ; 3 uses
  %min.iters.check1761 = icmp ult i32 %.fr297.i.i, 9
  %bound01763 = icmp ult ptr %scevgep1759, %scevgep1755
  %bound11764 = icmp ult ptr %scevgep1756, %scevgep1757
  %found.conflict1765 = and i1 %bound01763, %bound11764
  %stride.check1766 = icmp sgt i32 %i.axc, 0
  %5 = or i1 %found.conflict1765, %stride.check1766
  %bound01767 = icmp ult ptr %scevgep1759, %scevgep1751
  %bound11768 = icmp ult ptr %scevgep1753, %scevgep1757
  %found.conflict1769 = and i1 %bound01767, %bound11768
  %conflict.rdx1770 = or i1 %5, %found.conflict1769
  %bound01771 = icmp ult ptr %scevgep1759, %scevgep1749
  %bound11772 = icmp ult ptr %scevgep1750, %scevgep1757
  %found.conflict1773 = and i1 %bound01771, %bound11772
  %conflict.rdx1774 = or i1 %conflict.rdx1770, %found.conflict1773
  %n.vec1776 = and i64 %i.bag, -8                 ; 3 uses
  %i.bar = and i64 %i.bag, 7
  %cmp.n1789 = icmp eq i64 %i.bag, %n.vec1776
  br label %.lr.ph.split.i.preheader

..loopexit_crit_edge.i:                           ; preds = %.lr.ph.split.i, %middle.block1788, %.lr.ph.split.i.preheader
  %.lcssa938 = phi i64 [ %i.baz, %.lr.ph.split.i.preheader ], [ %i.bba, %middle.block1788 ], [ %i.bdr, %.lr.ph.split.i ] ; 2 uses
  %i.bas = sub nsw i64 %.lcssa938, %i.bah
  %i.bat = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bas
  %i.bau = load i16, ptr %i.bat, align 2, !tbaa !125
  %i.bav = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %.lcssa938 ; 2 uses
  %i.baw = load i16, ptr %i.bav, align 2, !tbaa !125
  %i.bax = sub i16 %i.baw, %i.bau
  store i16 %i.bax, ptr %i.bav, align 2, !tbaa !125
  %indvars.iv.next15.i = add nsw i64 %indvars.iv.next15.i1490, -1 ; 2 uses
  %.not57.i = icmp eq i64 %indvars.iv.next15.i, 0
  br i1 %.not57.i, label %.lr.ph.split.us.split.us.i.preheader, label %.lr.ph.split.i.preheader, !llvm.loop !215

.lr.ph.split.i.preheader:                         ; preds = %.lr.ph.split.i.preheader.lr.ph, %..loopexit_crit_edge.i
  %indvars.iv.next15.i1490 = phi i64 [ %indvars.iv.next15.i1488, %.lr.ph.split.i.preheader.lr.ph ], [ %indvars.iv.next15.i, %..loopexit_crit_edge.i ] ; 2 uses
  %i.bay = mul nsw i64 %indvars.iv.next15.i1490, %i.bah ; 2 uses
  %i.baz = add nsw i64 %i.bag, %i.bay             ; 4 uses
  br i1 %.not.i8031037, label %..loopexit_crit_edge.i, label %.lr.ph.split.i.preheader1468

.lr.ph.split.i.preheader1468:                     ; preds = %.lr.ph.split.i.preheader
  %brmerge2431 = select i1 %min.iters.check1761, i1 true, i1 %conflict.rdx1774
  br i1 %brmerge2431, label %.lr.ph.split.i.preheader2371, label %vector.ph1775

vector.ph1775:                                    ; preds = %.lr.ph.split.i.preheader1468
  %i.bba = sub i64 %i.baz, %n.vec1776             ; 2 uses
  br label %vector.body1777

vector.body1777:                                  ; preds = %vector.body1777, %vector.ph1775
  %index1778 = phi i64 [ 0, %vector.ph1775 ], [ %index.next1787, %vector.body1777 ] ; 2 uses
  %i.bbb = sub i64 %i.baz, %index1778             ; 3 uses
  %i.bbc = add nsw i64 %i.bbb, -1                 ; 2 uses
  %i.bbd = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bbc
  %i.bbe = getelementptr inbounds i8, ptr %i.bbd, i64 -14
  %wide.load1779 = load <8 x i16>, ptr %i.bbe, align 2, !tbaa !125, !alias.scope !387
  %reverse = shufflevector <8 x i16> %wide.load1779, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bbf = sext <8 x i16> %reverse to <8 x i32>   ; 3 uses
  %i.bbg = sub nsw i64 %i.bbb, %i.bah
  %i.bbh = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bbg
  %i.bbi = getelementptr inbounds i8, ptr %i.bbh, i64 -14
  %wide.load1780 = load <8 x i16>, ptr %i.bbi, align 2, !tbaa !125, !alias.scope !388
  %reverse1781 = shufflevector <8 x i16> %wide.load1780, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bbj = sext <8 x i16> %reverse1781 to <8 x i32> ; 3 uses
  %i.bbk = add nsw <8 x i32> %i.bbj, %i.bbf
  %i.bbl = sub nsw i64 %i.bbc, %i.bah
  %i.bbm = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bbl
  %i.bbn = getelementptr inbounds i8, ptr %i.bbm, i64 -14
  %wide.load1782 = load <8 x i16>, ptr %i.bbn, align 2, !tbaa !125, !alias.scope !389
  %reverse1783 = shufflevector <8 x i16> %wide.load1782, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %i.bbo = sext <8 x i16> %reverse1783 to <8 x i32>
  %i.bbp = sub nsw <8 x i32> %i.bbk, %i.bbo
  %i.bbq = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bbf, <8 x i32> %i.bbj)
  %i.bbr = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bbf, <8 x i32> %i.bbj)
  %i.bbs = tail call <8 x i32> @llvm.smin.v8i32(<8 x i32> %i.bbp, <8 x i32> %i.bbq)
  %i.bbt = tail call <8 x i32> @llvm.smax.v8i32(<8 x i32> %i.bbs, <8 x i32> %i.bbr)
  %i.bbu = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bbb
  %i.bbv = getelementptr inbounds i8, ptr %i.bbu, i64 -14 ; 2 uses
  %wide.load1784 = load <8 x i16>, ptr %i.bbv, align 2, !tbaa !125, !alias.scope !390, !noalias !391
  %i.bbw = trunc nsw <8 x i32> %i.bbt to <8 x i16>
  %i.bbx = shufflevector <8 x i16> %i.bbw, <8 x i16> poison, <8 x i32> <i32 7, i32 6, i32 5, i32 4, i32 3, i32 2, i32 1, i32 0>
  %reverse1786 = sub <8 x i16> %wide.load1784, %i.bbx
  store <8 x i16> %reverse1786, ptr %i.bbv, align 2, !tbaa !125, !alias.scope !390, !noalias !391
  %index.next1787 = add nuw i64 %index1778, 8     ; 2 uses
  %i.bby = icmp eq i64 %index.next1787, %n.vec1776
  br i1 %i.bby, label %middle.block1788, label %vector.body1777, !llvm.loop !243

middle.block1788:                                 ; preds = %vector.body1777
  br i1 %cmp.n1789, label %..loopexit_crit_edge.i, label %.lr.ph.split.i.preheader2371

.lr.ph.split.i.preheader2371:                     ; preds = %.lr.ph.split.i.preheader1468, %middle.block1788
  %.ph = phi i64 [ %i.bba, %middle.block1788 ], [ %i.baz, %.lr.ph.split.i.preheader1468 ]
  %indvars.iv.i8021038.ph = phi i64 [ %i.bar, %middle.block1788 ], [ %i.bag, %.lr.ph.split.i.preheader1468 ]
  br label %.lr.ph.split.i

.lr.ph.split.us.split.us.i.preheader:             ; preds = %..loopexit_crit_edge.i, %.preheader.preheader.i800
  br i1 %.not.i8031037, label %decorrelate.exit, label %iter.check1708

iter.check1708:                                   ; preds = %.lr.ph.split.us.split.us.i.preheader
  %min.iters.check1694 = icmp ult i32 %.fr297.i.i, 5
  br i1 %min.iters.check1694, label %.lr.ph.split.us.split.us.i.preheader2374, label %vector.main.loop.iter.check1695

vector.main.loop.iter.check1695:                  ; preds = %iter.check1708
  %min.iters.check1696 = icmp ult i32 %.fr297.i.i, 17
  br i1 %min.iters.check1696, label %vec.epilog.ph1712, label %vector.ph1697

vector.ph1697:                                    ; preds = %vector.main.loop.iter.check1695
  %i.bbz = and i64 %i.bag, 12
  %n.vec1698 = and i64 %i.bag, -16                ; 3 uses
  %i.bca = and i64 %i.bag, 15
  br label %vector.body1699

vector.body1699:                                  ; preds = %vector.ph1697, %vector.body1699
  %index1700 = phi i64 [ 0, %vector.ph1697 ], [ %index.next1705, %vector.body1699 ] ; 2 uses
  %i.bcb = sub i64 %i.bag, %index1700
  %i.bcc = getelementptr [2 x i8], ptr %i.awy, i64 %i.bcb ; 4 uses
  %i.bcd = getelementptr i8, ptr %i.bcc, i64 -16
  %i.bce = getelementptr i8, ptr %i.bcc, i64 -32
  %wide.load1701 = load <8 x i16>, ptr %i.bcd, align 2, !tbaa !125
  %wide.load1702 = load <8 x i16>, ptr %i.bce, align 2, !tbaa !125
  %i.bcf = getelementptr i8, ptr %i.bcc, i64 -14  ; 2 uses
  %i.bcg = getelementptr i8, ptr %i.bcc, i64 -30  ; 2 uses
  %wide.load1703 = load <8 x i16>, ptr %i.bcf, align 2, !tbaa !125
  %wide.load1704 = load <8 x i16>, ptr %i.bcg, align 2, !tbaa !125
  %i.bch = sub <8 x i16> %wide.load1703, %wide.load1701
  %i.bci = sub <8 x i16> %wide.load1704, %wide.load1702
  store <8 x i16> %i.bch, ptr %i.bcf, align 2, !tbaa !125
  store <8 x i16> %i.bci, ptr %i.bcg, align 2, !tbaa !125
  %index.next1705 = add nuw i64 %index1700, 16    ; 2 uses
  %i.bcj = icmp eq i64 %index.next1705, %n.vec1698
  br i1 %i.bcj, label %middle.block1706, label %vector.body1699, !llvm.loop !244

middle.block1706:                                 ; preds = %vector.body1699
  %cmp.n1707 = icmp eq i64 %i.bag, %n.vec1698
  br i1 %cmp.n1707, label %decorrelate.exit, label %vec.epilog.iter.check1709

vec.epilog.iter.check1709:                        ; preds = %middle.block1706
  %min.epilog.iters.check1711 = icmp eq i64 %i.bbz, 0
  br i1 %min.epilog.iters.check1711, label %.lr.ph.split.us.split.us.i.preheader2374, label %vec.epilog.ph1712, !prof !132

vec.epilog.ph1712:                                ; preds = %vector.main.loop.iter.check1695, %vec.epilog.iter.check1709
  %vec.epilog.resume.val1713 = phi i64 [ %n.vec1698, %vec.epilog.iter.check1709 ], [ 0, %vector.main.loop.iter.check1695 ]
  %n.vec1714 = and i64 %i.bag, -4                 ; 2 uses
  %i.bck = and i64 %i.bag, 3
  br label %vec.epilog.vector.body1715

vec.epilog.vector.body1715:                       ; preds = %vec.epilog.vector.body1715, %vec.epilog.ph1712
  %index1716 = phi i64 [ %vec.epilog.resume.val1713, %vec.epilog.ph1712 ], [ %index.next1719, %vec.epilog.vector.body1715 ] ; 2 uses
  %i.bcl = sub i64 %i.bag, %index1716
  %i.bcm = getelementptr [2 x i8], ptr %i.awy, i64 %i.bcl ; 2 uses
  %i.bcn = getelementptr i8, ptr %i.bcm, i64 -8
  %wide.load1717 = load <4 x i16>, ptr %i.bcn, align 2, !tbaa !125
  %i.bco = getelementptr i8, ptr %i.bcm, i64 -6   ; 2 uses
  %wide.load1718 = load <4 x i16>, ptr %i.bco, align 2, !tbaa !125
  %i.bcp = sub <4 x i16> %wide.load1718, %wide.load1717
  store <4 x i16> %i.bcp, ptr %i.bco, align 2, !tbaa !125
  %index.next1719 = add nuw i64 %index1716, 4     ; 2 uses
  %i.bcq = icmp eq i64 %index.next1719, %n.vec1714
  br i1 %i.bcq, label %vec.epilog.middle.block1720, label %vec.epilog.vector.body1715, !llvm.loop !245

vec.epilog.middle.block1720:                      ; preds = %vec.epilog.vector.body1715
  %cmp.n1721 = icmp eq i64 %i.bag, %n.vec1714
  br i1 %cmp.n1721, label %decorrelate.exit, label %.lr.ph.split.us.split.us.i.preheader2374

.lr.ph.split.us.split.us.i.preheader2374:         ; preds = %iter.check1708, %vec.epilog.iter.check1709, %vec.epilog.middle.block1720
  %indvars.iv11.i1041.ph = phi i64 [ %i.bag, %iter.check1708 ], [ %i.bca, %vec.epilog.iter.check1709 ], [ %i.bck, %vec.epilog.middle.block1720 ]
  br label %.lr.ph.split.us.split.us.i

.lr.ph.split.us.split.us.i:                       ; preds = %.lr.ph.split.us.split.us.i.preheader2374, %.lr.ph.split.us.split.us.i
  %indvars.iv11.i1041 = phi i64 [ %indvars.iv.next12.i, %.lr.ph.split.us.split.us.i ], [ %indvars.iv11.i1041.ph, %.lr.ph.split.us.split.us.i.preheader2374 ] ; 2 uses
  %i.bcr = getelementptr [2 x i8], ptr %i.awy, i64 %indvars.iv11.i1041 ; 3 uses
  %i.bcs = getelementptr i8, ptr %i.bcr, i64 -2
  %i.bct = load i16, ptr %i.bcs, align 2, !tbaa !125
  %i.bcu = load i16, ptr %i.bcr, align 2, !tbaa !125
  %i.bcv = sub i16 %i.bcu, %i.bct
  store i16 %i.bcv, ptr %i.bcr, align 2, !tbaa !125
  %indvars.iv.next12.i = add nsw i64 %indvars.iv11.i1041, -1 ; 2 uses
  %.not.us.us.i = icmp eq i64 %indvars.iv.next12.i, 0
  br i1 %.not.us.us.i, label %decorrelate.exit, label %.lr.ph.split.us.split.us.i, !llvm.loop !246

.lr.ph.split.i:                                   ; preds = %.lr.ph.split.i.preheader2371, %.lr.ph.split.i
  %i.bcw = phi i64 [ %i.bdr, %.lr.ph.split.i ], [ %.ph, %.lr.ph.split.i.preheader2371 ] ; 3 uses
  %indvars.iv.i8021038 = phi i64 [ %indvars.iv.next.i805, %.lr.ph.split.i ], [ %indvars.iv.i8021038.ph, %.lr.ph.split.i.preheader2371 ]
  %i.bcx = add nsw i64 %i.bcw, -1                 ; 2 uses
  %i.bcy = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bcx
  %i.bcz = load i16, ptr %i.bcy, align 2, !tbaa !125
  %i.bda = sext i16 %i.bcz to i32                 ; 3 uses
  %i.bdb = sub nsw i64 %i.bcw, %i.bah
  %i.bdc = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bdb
  %i.bdd = load i16, ptr %i.bdc, align 2, !tbaa !125
  %i.bde = sext i16 %i.bdd to i32                 ; 3 uses
  %i.bdf = add nsw i32 %i.bde, %i.bda
  %i.bdg = sub nsw i64 %i.bcx, %i.bah
  %i.bdh = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bdg
  %i.bdi = load i16, ptr %i.bdh, align 2, !tbaa !125
  %i.bdj = sext i16 %i.bdi to i32
  %i.bdk = sub nsw i32 %i.bdf, %i.bdj
  %..i.i804 = tail call i32 @llvm.smax.i32(i32 %i.bda, i32 %i.bde)
  %.20.i.i = tail call i32 @llvm.smin.i32(i32 %i.bda, i32 %i.bde)
  %i.bdl = tail call i32 @llvm.smin.i32(i32 %i.bdk, i32 %..i.i804)
  %i.bdm = tail call noundef i32 @llvm.smax.i32(i32 %i.bdl, i32 %.20.i.i)
  %i.bdn = getelementptr inbounds [2 x i8], ptr %i.awy, i64 %i.bcw ; 2 uses
  %i.bdo = load i16, ptr %i.bdn, align 2, !tbaa !125
  %i.bdp = trunc nsw i32 %i.bdm to i16
  %i.bdq = sub i16 %i.bdo, %i.bdp
  store i16 %i.bdq, ptr %i.bdn, align 2, !tbaa !125
  %indvars.iv.next.i805 = add nsw i64 %indvars.iv.i8021038, -1 ; 3 uses
  %i.bdr = add nsw i64 %indvars.iv.next.i805, %i.bay ; 2 uses
  %.not.i803 = icmp eq i64 %indvars.iv.next.i805, 0
  br i1 %.not.i803, label %..loopexit_crit_edge.i, label %.lr.ph.split.i, !llvm.loop !247

decorrelate.exit:                                 ; preds = %.lr.ph.split.us.split.us.i, %middle.block1706, %vec.epilog.middle.block1720, %.lr.ph.split.us.split.us.i.preheader, %bb.ch, %quantize.exit
  %i.bds = load i32, ptr %i.lv, align 4, !tbaa !392
  %.not577 = icmp eq i32 %i.bds, 0
  br i1 %.not577, label %bb.ci, label %encode_subband.exit
end_hunk_0
begin_hunk_1_@llvm.usub.sat.i64
!184 = distinct !{!184, !88, !130, !131}
!185 = distinct !{!185, !126}
!186 = distinct !{!186, !88, !130}
!187 = distinct !{!187, !88}
!188 = distinct !{!188, !88, !130, !131}
!189 = distinct !{!189, !88, !130, !131}
!190 = distinct !{!190, !88, !131, !130}
!191 = distinct !{!191, !88}
!192 = distinct !{!192, i1 false, !"LVerDomain"}
!193 = distinct !{!193, !192}
!194 = distinct !{!194, !192}
!195 = distinct !{!195, !192}
!196 = distinct !{!196, !192}
!197 = distinct !{!197, !192}
!198 = distinct !{!198, !192}
!199 = distinct !{!199, !192}
!200 = distinct !{!200, !192}
!201 = distinct !{!201, !192}
!202 = distinct !{!202, !88, !130, !131}
!203 = distinct !{!203, !88, !130}
!204 = distinct !{!204, !88}
!205 = distinct !{!205, !88}
!206 = distinct !{!206, !88, !130, !131}
!207 = distinct !{!207, !88, !131, !130}
!208 = distinct !{!208, !88}
!209 = distinct !{!209, !88, !130, !131}
!210 = distinct !{!210, !88, !131, !130}
!211 = distinct !{!211, !88}
!212 = distinct !{!212, !88, !130, !131}
!213 = distinct !{!213, !88, !131, !130}
!214 = distinct !{!214, !88}
!215 = distinct !{!215, !88}
!216 = distinct !{!216, i1 false, !"LVerDomain"}
!217 = distinct !{!217, !216}
!218 = distinct !{!218, !216}
!219 = distinct !{!219, !216}
!220 = distinct !{!220, !216}
!221 = distinct !{!221, !130, !131}
!222 = distinct !{!222, !130, !131}
!223 = distinct !{!223, !130, !131}
!224 = distinct !{!224, !131, !130}
!225 = distinct !{!225, !130}
!226 = distinct !{!226, !88, !130, !131}
!227 = distinct !{!227, !88, !131, !130}
!228 = distinct !{!228, !88}
!229 = distinct !{!229, !88}
!230 = distinct !{!230, !88}
!231 = distinct !{!231, !88, !130, !131}
!232 = distinct !{!232, !88, !131, !130}
!233 = distinct !{!233, !88}
!234 = distinct !{!234, !88}
!235 = distinct !{!235, !88}
!236 = distinct !{!236, !88}
!237 = distinct !{!237, !88}
!238 = distinct !{!238, i1 false, !"LVerDomain"}
!239 = distinct !{!239, !238}
!240 = distinct !{!240, !238}
!241 = distinct !{!241, !238}
!242 = distinct !{!242, !238}
!243 = distinct !{!243, !130, !131}
!244 = distinct !{!244, !130, !131}
!245 = distinct !{!245, !130, !131}
!246 = distinct !{!246, !131, !130}
!247 = distinct !{!247, !130}
!248 = distinct !{!248, !88, !103}
!249 = distinct !{!249, !88, !103}
!250 = distinct !{!250, !88}
!251 = distinct !{!251, !88}
!252 = distinct !{!252, !88}
!253 = distinct !{!253, !88, !103}
!254 = distinct !{!254, !88, !103}
!255 = distinct !{!255, !126}
!256 = distinct !{!256, !88}
!257 = distinct !{!257, !88}
!258 = distinct !{!258, !88}
!259 = distinct !{!259, !88, !130, !131}
!260 = distinct !{!260, !88, !131, !130}
!261 = distinct !{!261, !88}
!262 = distinct !{!262, !88}
!263 = distinct !{!263, !88}
!264 = distinct !{!264, !88, !130, !131}
!265 = distinct !{!265, !88, !130, !131}
!266 = distinct !{!266, !88, !131, !130}
!267 = distinct !{!267, !88}
!268 = distinct !{!268, i1 false, !"LVerDomain"}
!269 = distinct !{!269, !268}
!270 = distinct !{!270, !268}
!271 = distinct !{!271, !88, !130, !131}
!272 = distinct !{!272, !88, !130}
!273 = distinct !{!273, !88}
!274 = distinct !{!274, i1 false, !"LVerDomain"}
!275 = distinct !{!275, !274}
!276 = distinct !{!276, !274}
!277 = distinct !{!277, !274}
!278 = distinct !{!278, !274}
!279 = distinct !{!279, !274}
!280 = distinct !{!280, !274}
!281 = distinct !{!281, !274}
!282 = distinct !{!282, !274}
!283 = distinct !{!283, !274}
!284 = distinct !{!284, !274}
!285 = distinct !{!285, !88, !130, !131}
!286 = distinct !{!286, !88, !130}
!287 = distinct !{!287, !88}
!288 = distinct !{!288, !88}
!289 = distinct !{!289, i1 false, !"LVerDomain"}
!290 = distinct !{!290, !289}
!291 = distinct !{!291, !289}
!292 = distinct !{!292, !88, !130, !131}
!293 = distinct !{!293, !88, !130}
!294 = distinct !{!294, i1 false, !"LVerDomain"}
!295 = distinct !{!295, !294}
!296 = distinct !{!296, !294}
!297 = distinct !{!297, !294}
!298 = distinct !{!298, !294}
!299 = distinct !{!299, !294}
!300 = distinct !{!300, !294}
!301 = distinct !{!301, !294}
!302 = distinct !{!302, !294}
!303 = distinct !{!303, !294}
!304 = distinct !{!304, !294}
!305 = distinct !{!305, !88, !130, !131}
!306 = distinct !{!306, !88, !130}
!307 = distinct !{!307, !88}
!308 = distinct !{!308, !126}
!309 = distinct !{!309, !88}
!310 = distinct !{!310, !88}
!311 = !{!32, !17, i64 40}
!312 = !{!"AVPacket", !26, i64 0, !18, i64 8, !18, i64 16, !19, i64 24, !11, i64 32, !11, i64 36, !11, i64 40, !28, i64 48, !11, i64 56, !18, i64 64, !18, i64 72, !14, i64 80, !26, i64 88, !20, i64 96}
!313 = !{!312, !19, i64 24}
!314 = !{!312, !11, i64 32}
!315 = !{!79, !14, i64 155944}
!316 = !{!"p2 omnipotent char", !30, i64 0}
!317 = !{!"p2 _ZTS11AVBufferRef", !30, i64 0}
!318 = !{!"p1 _ZTS12AVDictionary", !14, i64 0}
!319 = !{!"AVFrame", !10, i64 0, !10, i64 64, !316, i64 96, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !20, i64 124, !18, i64 136, !18, i64 144, !20, i64 152, !11, i64 160, !14, i64 168, !11, i64 176, !11, i64 180, !10, i64 184, !317, i64 248, !11, i64 256, !31, i64 264, !11, i64 272, !11, i64 276, !11, i64 280, !11, i64 284, !11, i64 288, !11, i64 292, !11, i64 296, !18, i64 304, !318, i64 312, !11, i64 320, !26, i64 328, !26, i64 336, !18, i64 344, !18, i64 352, !18, i64 360, !18, i64 368, !14, i64 376, !23, i64 384, !18, i64 408, !11, i64 416}
!320 = !{!319, !11, i64 120}
!321 = !{!319, !11, i64 160}
!322 = !{!32, !18, i64 824}
!323 = !{!70, !11, i64 6328}
!324 = !{!79, !71, i64 167256}
!325 = !{!"RateControlEntry", !11, i64 0, !21, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !18, i64 40, !11, i64 48, !21, i64 52, !18, i64 56, !18, i64 64}
!326 = !{!325, !11, i64 48}
!327 = !{!70, !11, i64 1280}
!328 = !{!32, !11, i64 332}
!329 = !{!70, !51, i64 1056}
!330 = !{!78, !39, i64 0}
!331 = !{!319, !18, i64 136}
!332 = !{!70, !51, i64 816}
!333 = !{!70, !39, i64 4464}
!334 = !{!70, !18, i64 416}
!335 = !{!70, !18, i64 424}
!336 = !{!70, !11, i64 352}
!337 = !{!70, !11, i64 356}
!338 = !{!70, !11, i64 388}
!339 = !{!70, !11, i64 392}
!340 = !{!70, !11, i64 396}
!341 = !{!70, !11, i64 400}
!342 = !{!70, !11, i64 5896}
!343 = !{!70, !11, i64 4616}
!344 = !{!70, !11, i64 4740}
!345 = !{!70, !11, i64 3772}
!346 = !{!70, !11, i64 360}
!347 = !{!70, !11, i64 4744}
!348 = !{!70, !11, i64 4416}
!349 = !{!70, !11, i64 1272}
!350 = !{!70, !11, i64 4420}
!351 = !{i64 0, i64 256, !86, i64 256, i64 256, !86, i64 512, i64 256, !86}
!352 = !{i64 0, i64 128, !86, i64 128, i64 128, !86, i64 256, i64 96, !86, i64 352, i64 32, !86}
!353 = !{!124, !22, i64 32}
!354 = !{!44, !22, i64 6304}
!355 = !{!124, !11, i64 4}
!356 = !{!44, !22, i64 6312}
!357 = !{!70, !11, i64 6348}
!358 = !{!70, !11, i64 6332}
!359 = !{!79, !11, i64 155968}
!360 = !{!181}
!361 = !{!182}
!362 = !{!32, !11, i64 524}
!363 = !{!193}
!364 = !{!194}
!365 = !{!195}
!366 = !{!196}
!367 = !{!197}
!368 = !{!198}
!369 = !{!199}
!370 = !{!200}
!371 = !{!201}
!372 = !{!199, !197, !195, !193, !200, !198, !196, !194}
!373 = !{!70, !11, i64 5056}
!374 = !{!79, !11, i64 155988}
!375 = !{!44, !29, i64 6288}
!376 = !{!44, !29, i64 6296}
!377 = !{!124, !11, i64 8}
!378 = !{!124, !11, i64 12}
!379 = !{!124, !29, i64 24}
!380 = !{!217}
!381 = !{!218}
!382 = !{!219}
!383 = !{!220}
!384 = !{!217, !218, !219}
!385 = !{!79, !18, i64 167736}
!386 = !{!79, !18, i64 167744}
!387 = !{!239}
!388 = !{!240}
!389 = !{!241}
!390 = !{!242}
!391 = !{!239, !240, !241}
!392 = !{!79, !11, i64 155972}
!393 = !{!124, !123, i64 64}
!394 = !{!44, !29, i64 6320}
!395 = !{!269}
!396 = !{!270}
!397 = !{!275}
!398 = !{!276}
!399 = !{!277}
!400 = !{!278}
!401 = !{!279}
!402 = !{!280}
!403 = !{!281}
!404 = !{!282}
!405 = !{!283}
!406 = !{!284}
!407 = !{!281, !279, !277, !275, !282, !280, !278, !276, !283}
!408 = !{!290}
!409 = !{!291}
!410 = !{!295}
!411 = !{!296}
!412 = !{!297}
!413 = !{!298}
!414 = !{!299}
!415 = !{!300}
!416 = !{!301}
!417 = !{!302}
!418 = !{!303}
!419 = !{!304}
!420 = !{!301, !299, !297, !295, !302, !300, !298, !296, !303}
!421 = !{!18, !18, i64 0}
!422 = !{!319, !11, i64 276}
!423 = !{!79, !11, i64 167200}
!424 = !{!70, !11, i64 6340}
!425 = !{!79, !18, i64 167192}
!426 = !{!79, !11, i64 167916}
!427 = !{!79, !11, i64 167912}
!428 = !{!79, !39, i64 167776}
!429 = !{!79, !11, i64 167240}
!430 = !{!"p1 _ZTS9FramePool", !14, i64 0}
!431 = !{!"p1 _ZTS8AVPacket", !14, i64 0}
!432 = !{!"p1 _ZTS12AVBSFContext", !14, i64 0}
!433 = !{!"AVCodecInternal", !11, i64 0, !11, i64 4, !11, i64 8, !430, i64 16, !49, i64 24, !14, i64 32, !431, i64 40, !432, i64 48, !431, i64 56, !19, i64 64, !11, i64 72, !14, i64 80, !39, i64 88, !39, i64 96, !11, i64 104, !11, i64 108, !14, i64 112, !11, i64 120, !431, i64 128, !39, i64 136, !11, i64 144, !11, i64 148}
!434 = !{!433, !39, i64 96}
!435 = !{!312, !11, i64 40}
!436 = distinct !{!436, !88}
!437 = !{!79, !19, i64 161480}
!438 = distinct !{!438, !88}
!439 = distinct !{!439, !88}
!440 = distinct !{!440, !88, !153}
!441 = distinct !{!441, !88}
!442 = distinct !{!442, !88}
!443 = distinct !{!443, !88}
!444 = !{!44, !11, i64 6116}
!445 = !{!84, !11, i64 37144}
!446 = !{!44, !11, i64 6132}
!447 = !{!44, !11, i64 6144}
!448 = !{!44, !11, i64 6340}
!449 = distinct !{!449, !88}
!450 = distinct !{!450, !88, !153}
!451 = distinct !{!451, !88}
!452 = distinct !{!452, !88}
!453 = distinct !{!453, !126}
!454 = distinct !{!454, !88}
!455 = distinct !{!455, !126}
!456 = distinct !{!456, i1 false, !"LVerDomain"}
!457 = distinct !{!457, !456}
!458 = distinct !{!458, !456}
!459 = distinct !{!459, !88, !130, !131}
!460 = distinct !{!460, !88, !130, !131}
!461 = distinct !{!461, !126}
!462 = distinct !{!462, !88, !130}
!463 = distinct !{!463, !88}
!464 = distinct !{!464, !126}
!465 = distinct !{!465, i1 false, !"LVerDomain"}
!466 = distinct !{!466, !465}
!467 = distinct !{!467, !465}
!468 = distinct !{!468, !88, !130, !131}
!469 = distinct !{!469, !88, !130, !131}
!470 = distinct !{!470, !126}
!471 = distinct !{!471, !88, !130}
!472 = distinct !{!472, !126}
!473 = distinct !{!473, !88}
!474 = distinct !{!474, !88}
!475 = distinct !{!475, !126}
!476 = distinct !{!476, !88}
!477 = distinct !{!477, !88}
!478 = distinct !{!478, !88}
!479 = distinct !{!479, i1 false, !"LVerDomain"}
!480 = distinct !{!480, !479}
!481 = distinct !{!481, !479}
!482 = distinct !{!482, !479}
!483 = distinct !{!483, !479}
!484 = distinct !{!484, !479}
!485 = distinct !{!485, !479}
!486 = distinct !{!486, !479}
!487 = distinct !{!487, !479}
!488 = distinct !{!488, !479}
!489 = distinct !{!489, !88, !130, !131}
!490 = distinct !{!490, !88, !130}
!491 = distinct !{!491, !88}
!492 = distinct !{!492, i1 false, !"LVerDomain"}
!493 = distinct !{!493, !492}
!494 = distinct !{!494, !492}
!495 = distinct !{!495, !492}
!496 = distinct !{!496, !88, !130, !131}
!497 = distinct !{!497, !88, !130}
!498 = distinct !{!498, !88}
!499 = distinct !{!499, !88}
!500 = distinct !{!500, !88}
!501 = distinct !{!501, !88}
!502 = distinct !{!502, !88}
!503 = distinct !{!503, !88}
!504 = distinct !{!504, !88}
!505 = distinct !{!505, !88}
!506 = distinct !{!506, !88}
!507 = distinct !{!507, !88}
!508 = distinct !{!508, !88}
!509 = distinct !{!509, !88}
!510 = distinct !{!510, !88}
!511 = distinct !{!511, !88}
!512 = distinct !{!512, !88}
!513 = !{!79, !11, i64 172352}
!514 = !{!457}
!515 = !{!458}
!516 = !{!466}
!517 = !{!467}
!518 = !{i64 0, i64 2, !125, i64 2, i64 2, !125, i64 4, i64 1, !86, i64 5, i64 3, !86, i64 8, i64 1, !86, i64 9, i64 1, !86}
!519 = !{!480}
!520 = !{!481}
!521 = !{!482}
!522 = !{!483}
!523 = !{!484}
!524 = !{!485}
!525 = !{!486}
!526 = !{!487}
!527 = !{!488}
!528 = !{!486, !484, !482, !480, !487, !485, !483, !481}
!529 = !{!493}
!530 = !{!494}
!531 = !{!495}
!532 = !{!79, !11, i64 155976}
!533 = !{i64 0, i64 3, !86, i64 3, i64 1, !86, i64 4, i64 1, !86}
!534 = !{!79, !11, i64 155984}
!535 = !{!40, !40, i64 0}
!536 = distinct !{!536, !88}
!537 = distinct !{!537, !88}
!538 = distinct !{!538, !88}
!539 = distinct !{!539, !88}
!540 = distinct !{!540, !88}
!541 = distinct !{!541, !88, !130, !131}
!542 = distinct !{!542, !88, !131, !130}
!543 = distinct !{!543, !88}
!544 = distinct !{!544, !88}
!545 = distinct !{!545, !126}
!546 = distinct !{!546, !88}
!547 = distinct !{!547, !88, !130, !131}
!548 = distinct !{!548, !88, !131, !130}
!549 = distinct !{!549, !88, !130, !131}
!550 = distinct !{!550, !88, !131, !130}
!551 = !{!79, !11, i64 157180}
!552 = !{!79, !11, i64 159896}
!553 = !{!79, !11, i64 159892}
!554 = !{!68, !11, i64 12}
!555 = !{!68, !34, i64 0}
!556 = !{!68, !11, i64 104}
!557 = !{!32, !11, i64 248}
!558 = !{!68, !11, i64 108}
!559 = !{!32, !11, i64 252}
!560 = !{!68, !11, i64 112}
!561 = !{!68, !19, i64 752}
!562 = !{!79, !11, i64 162680}
!563 = !{!68, !19, i64 760}
!564 = !{!68, !11, i64 140}
!565 = !{!68, !11, i64 144}
!566 = !{!68, !11, i64 148}
!567 = !{!68, !11, i64 152}
!568 = !{!68, !11, i64 156}
!569 = !{!68, !11, i64 160}
!570 = !{!68, !11, i64 424}
!571 = !{!68, !11, i64 428}
!572 = !{!68, !14, i64 768}
!573 = !{!35, !19, i64 528}
!574 = !{!68, !11, i64 448}
!575 = !{!79, !11, i64 158056}
!576 = distinct !{!576, i1 false, !"LVerDomain"}
!577 = distinct !{!577, !576}
!578 = distinct !{!578, !576}
!579 = distinct !{!579, !576}
!580 = distinct !{!580, !576}
!581 = distinct !{!581, !576}
!582 = distinct !{!582, !576}
!583 = distinct !{!583, !576}
!584 = distinct !{!584, !576}
!585 = distinct !{!585, !576}
!586 = distinct !{!586, !88, !130, !131}
!587 = distinct !{!587, !88, !130, !131}
!588 = distinct !{!588, !88, !130}
!589 = distinct !{!589, !126}
!590 = distinct !{!590, !126}
!591 = distinct !{!591, !88}
end_hunk_1
