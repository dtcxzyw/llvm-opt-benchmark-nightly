Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_h266?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 33
begin_hunk_0_@cbs_h266_write_nal_unit:bb.a
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.awr, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.405, i64 noundef %i.aws, i64 noundef 0) #10
  br label %.thread1807.i

bb.ky:                                            ; preds = %bb.kw, %._crit_edge2128.i
  %i.awt = phi i16 [ %.pre2129.i, %._crit_edge2128.i ], [ %i.awk, %bb.kw ]
  %.not1991.i = icmp eq i16 %i.awt, 0
  br i1 %.not1991.i, label %._crit_edge1970.i.thread, label %.lr.ph1969.i

.lr.ph1969.i:                                     ; preds = %bb.ky
  %i.awu = getelementptr inbounds nuw i8, ptr %i.acu, i64 2000222
  %i.awv = getelementptr inbounds nuw i8, ptr %i.acu, i64 4092 ; 2 uses
  %i.aww = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.awx = getelementptr inbounds nuw i8, ptr %i.acu, i64 6092 ; 5 uses
  %i.awy = getelementptr inbounds nuw i8, ptr %i.ad, i64 4
  %i.awz = getelementptr inbounds nuw i8, ptr %i.acu, i64 8092 ; 3 uses
  %i.axa = getelementptr inbounds nuw i8, ptr %i.acu, i64 2002222 ; 4 uses
  %i.axb = getelementptr inbounds nuw i8, ptr %i.acu, i64 1992182 ; 7 uses
  %i.axc = getelementptr inbounds nuw i8, ptr %i.ae, i64 4
  %i.axd = getelementptr inbounds nuw i8, ptr %i.acu, i64 10092
  %i.axe = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.axf = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.axg = getelementptr inbounds nuw i8, ptr %i.acu, i64 1990092
  %i.axh = getelementptr inbounds nuw i8, ptr %i.ag, i64 4
  br label %bb.kz

bb.kz:                                            ; preds = %bb.mi, %.lr.ph1969.i
  %.014261967.i = phi i16 [ 0, %.lr.ph1969.i ], [ %.11427.i, %bb.mi ] ; 9 uses
  %.814591965.i = phi i32 [ 0, %.lr.ph1969.i ], [ %i.bht, %bb.mi ] ; 10 uses
  %i.axi = zext nneg i32 %.814591965.i to i64     ; 25 uses
  %i.axj = getelementptr inbounds nuw [2 x i8], ptr %i.awu, i64 %i.axi ; 2 uses
  store i16 %.014261967.i, ptr %i.axj, align 2, !tbaa !82
  %i.axk = zext i16 %.014261967.i to i32          ; 2 uses
  %i.axl = load i16, ptr %i.aty, align 8, !tbaa !234 ; 4 uses
  %i.axm = udiv i16 %.014261967.i, %i.axl         ; 7 uses
  %i.axn = urem i16 %.014261967.i, %i.axl         ; 6 uses
  %i.axo = zext i16 %i.axm to i32                 ; 2 uses
  %i.axp = load i16, ptr %i.auw, align 2, !tbaa !237 ; 2 uses
  %.not1701.i = icmp ult i16 %i.axm, %i.axp
  br i1 %.not1701.i, label %bb.la, label %.thread1807.i

bb.la:                                            ; preds = %bb.kz
  %i.axq = zext i16 %i.axl to i32                 ; 2 uses
  %i.axr = zext i16 %i.axn to i32                 ; 2 uses
  %i.axs = add nsw i32 %i.axq, -1
  %.not1702.i = icmp eq i32 %i.axs, %i.axr
  %i.axt = getelementptr inbounds nuw [2 x i8], ptr %i.awv, i64 %i.axi ; 2 uses
  %i.axu = load i16, ptr %i.axt, align 2, !tbaa !82 ; 3 uses
  br i1 %.not1702.i, label %bb.lc, label %bb.lb

bb.lb:                                            ; preds = %bb.la
  %i.axv = zext i16 %i.axu to i32
  store i32 1, ptr %i.ac, align 4, !tbaa !51
  store i32 %.814591965.i, ptr %i.aww, align 4, !tbaa !51
  %i.axw = xor i32 %i.axr, -1
  %i.axx = add nsw i32 %i.axw, %i.axq
  %i.axy = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.406, ptr noundef nonnull %i.ac, i32 noundef %i.axv, i32 noundef 0, i32 noundef %i.axx) #10 ; 2 uses
  %i.axz = icmp sgt i32 %i.axy, -1
  br i1 %i.axz, label %._crit_edge2130.i, label %.thread1807.i

._crit_edge2130.i:                                ; preds = %bb.lb
  %.pre2131.i = load i16, ptr %i.auw, align 2, !tbaa !237
  br label %bb.le

bb.lc:                                            ; preds = %bb.la
  %.not1703.i = icmp eq i16 %i.axu, 0
  br i1 %.not1703.i, label %bb.le, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.aya = load ptr, ptr %0, align 8, !tbaa !40
  %i.ayb = zext i16 %i.axu to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.aya, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.406, i64 noundef %i.ayb, i64 noundef 0) #10
  br label %.thread1807.i

bb.le:                                            ; preds = %bb.lc, %._crit_edge2130.i
  %i.ayc = phi i16 [ %.pre2131.i, %._crit_edge2130.i ], [ %i.axp, %bb.lc ]
  %i.ayd = zext i16 %i.ayc to i32                 ; 2 uses
  %i.aye = add nsw i32 %i.ayd, -1
  %.not1704.i = icmp eq i32 %i.aye, %i.axo
  br i1 %.not1704.i, label %bb.lh, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  %i.ayf = load i8, ptr %i.awm, align 2, !tbaa !364
  %i.ayg = icmp ne i8 %i.ayf, 0
  %i.ayh = icmp eq i16 %i.axn, 0
  %or.cond.i158 = or i1 %i.ayh, %i.ayg
  %i.ayi = getelementptr inbounds nuw [2 x i8], ptr %i.awx, i64 %i.axi ; 2 uses
  %i.ayj = load i16, ptr %i.ayi, align 2, !tbaa !82 ; 3 uses
  br i1 %or.cond.i158, label %bb.lg, label %bb.lj

bb.lg:                                            ; preds = %bb.lf
  %i.ayk = zext i16 %i.ayj to i32
  store i32 1, ptr %i.ad, align 4, !tbaa !51
  store i32 %.814591965.i, ptr %i.awy, align 4, !tbaa !51
  %i.ayl = xor i32 %i.axo, -1
  %i.aym = add nsw i32 %i.ayd, %i.ayl
  %i.ayn = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.407, ptr noundef nonnull %i.ad, i32 noundef %i.ayk, i32 noundef 0, i32 noundef %i.aym) #10 ; 2 uses
  %i.ayo = icmp sgt i32 %i.ayn, -1
  br i1 %i.ayo, label %bb.ll, label %.thread1807.i

bb.lh:                                            ; preds = %bb.le
  %i.ayp = getelementptr inbounds nuw [2 x i8], ptr %i.awx, i64 %i.axi
  %i.ayq = load i16, ptr %i.ayp, align 2, !tbaa !82 ; 2 uses
  %.not1706.i = icmp eq i16 %i.ayq, 0
  br i1 %.not1706.i, label %bb.ll, label %bb.li

bb.li:                                            ; preds = %bb.lh
  %i.ayr = load ptr, ptr %0, align 8, !tbaa !40
  %i.ays = zext i16 %i.ayq to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ayr, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.407, i64 noundef %i.ays, i64 noundef 0) #10
  br label %.thread1807.i

bb.lj:                                            ; preds = %bb.lf
  %i.ayt = getelementptr i8, ptr %i.ayi, i64 -2
  %i.ayu = load i16, ptr %i.ayt, align 2, !tbaa !82 ; 2 uses
  %.not1705.i = icmp eq i16 %i.ayj, %i.ayu
  br i1 %.not1705.i, label %iter.check1990, label %bb.lk

bb.lk:                                            ; preds = %bb.lj
  %i.ayv = load ptr, ptr %0, align 8, !tbaa !40
  %i.ayw = zext i16 %i.ayj to i64
  %i.ayx = zext i16 %i.ayu to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.ayv, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.407, i64 noundef %i.ayw, i64 noundef %i.ayx) #10
  br label %.thread1807.i

bb.ll:                                            ; preds = %bb.lh, %bb.lg
  %.not1992.i = icmp eq i16 %i.axn, 0
  br i1 %.not1992.i, label %.preheader1847.i, label %iter.check1990

iter.check1990:                                   ; preds = %bb.ll, %bb.lj
  %i.ayy = zext i16 %i.axn to i64                 ; 4 uses
  %umax1971 = call i64 @llvm.umax.i64(i64 %i.ayy, i64 1) ; 3 uses
  %min.iters.check1973 = icmp ult i16 %i.axn, 4
  br i1 %min.iters.check1973, label %.lr.ph1934.i.preheader, label %vector.main.loop.iter.check1974

vector.main.loop.iter.check1974:                  ; preds = %iter.check1990
  %min.iters.check1975 = icmp ult i16 %i.axn, 16
  br i1 %min.iters.check1975, label %vec.epilog.ph1994, label %vector.ph1976

vector.ph1976:                                    ; preds = %vector.main.loop.iter.check1974
  %i.ayz = and i64 %umax1971, 12
  %n.vec1977 = and i64 %umax1971, 65520           ; 4 uses
  br label %vector.body1978

vector.body1978:                                  ; preds = %vector.body1978, %vector.ph1976
  %index1979 = phi i64 [ 0, %vector.ph1976 ], [ %index.next1984, %vector.body1978 ] ; 2 uses
  %vec.phi1980.a = phi <8 x i16> [ zeroinitializer, %vector.ph1976 ], [ %i.azc, %vector.body1978 ]
  %vec.phi1981 = phi <8 x i16> [ zeroinitializer, %vector.ph1976 ], [ %i.azd, %vector.body1978 ]
  %i.aza = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %index1979 ; 2 uses
  %i.azb = getelementptr inbounds nuw i8, ptr %i.aza, i64 16
  %wide.load1982.a = load <8 x i16>, ptr %i.aza, align 2, !tbaa !82
  %wide.load1983 = load <8 x i16>, ptr %i.azb, align 2, !tbaa !82
  %i.azc = add <8 x i16> %wide.load1982.a, %vec.phi1980.a ; 2 uses
  %i.azd = add <8 x i16> %wide.load1983, %vec.phi1981 ; 2 uses
  %index.next1984 = add nuw i64 %index1979, 16    ; 2 uses
  %i.aze = icmp eq i64 %index.next1984, %n.vec1977
  br i1 %i.aze, label %middle.block1985, label %vector.body1978, !llvm.loop !365

middle.block1985:                                 ; preds = %vector.body1978
  %bin.rdx1986 = add <8 x i16> %i.azd, %i.azc
  %i.azf = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1986) ; 3 uses
  %cmp.n1987 = icmp eq i64 %n.vec1977, %i.ayy
  br i1 %cmp.n1987, label %.preheader1847.i, label %vec.epilog.iter.check1992

vec.epilog.iter.check1992:                        ; preds = %middle.block1985
  %min.epilog.iters.check1993 = icmp eq i64 %i.ayz, 0
  br i1 %min.epilog.iters.check1993, label %.lr.ph1934.i.preheader, label %vec.epilog.ph1994, !prof !366

vec.epilog.ph1994:                                ; preds = %vector.main.loop.iter.check1974, %vec.epilog.iter.check1992
  %vec.epilog.resume.val1988 = phi i64 [ %n.vec1977, %vec.epilog.iter.check1992 ], [ 0, %vector.main.loop.iter.check1974 ]
  %bc.merge.rdx1989 = phi i16 [ %i.azf, %vec.epilog.iter.check1992 ], [ 0, %vector.main.loop.iter.check1974 ]
  %n.vec1995 = and i64 %umax1971, 65532           ; 3 uses
  %i.azg = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1989, i64 0
  br label %vec.epilog.vector.body1996

vec.epilog.vector.body1996:                       ; preds = %vec.epilog.vector.body1996, %vec.epilog.ph1994
  %index1997 = phi i64 [ %vec.epilog.resume.val1988, %vec.epilog.ph1994 ], [ %index.next2000, %vec.epilog.vector.body1996 ] ; 2 uses
  %vec.phi1998 = phi <4 x i16> [ %i.azg, %vec.epilog.ph1994 ], [ %i.azi, %vec.epilog.vector.body1996 ]
  %i.azh = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %index1997
  %wide.load1999 = load <4 x i16>, ptr %i.azh, align 2, !tbaa !82
  %i.azi = add <4 x i16> %wide.load1999, %vec.phi1998 ; 2 uses
  %index.next2000 = add nuw i64 %index1997, 4     ; 2 uses
  %i.azj = icmp eq i64 %index.next2000, %n.vec1995
  br i1 %i.azj, label %vec.epilog.middle.block2001, label %vec.epilog.vector.body1996, !llvm.loop !367

vec.epilog.middle.block2001:                      ; preds = %vec.epilog.vector.body1996
  %i.azk = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.azi) ; 2 uses
  %cmp.n2002 = icmp eq i64 %n.vec1995, %i.ayy
  br i1 %cmp.n2002, label %.preheader1847.i, label %.lr.ph1934.i.preheader

.lr.ph1934.i.preheader:                           ; preds = %iter.check1990, %vec.epilog.iter.check1992, %vec.epilog.middle.block2001
  %indvars.iv2081.i.ph = phi i64 [ 0, %iter.check1990 ], [ %n.vec1977, %vec.epilog.iter.check1992 ], [ %n.vec1995, %vec.epilog.middle.block2001 ]
  %.014241932.i.ph = phi i16 [ 0, %iter.check1990 ], [ %i.azf, %vec.epilog.iter.check1992 ], [ %i.azk, %vec.epilog.middle.block2001 ]
  br label %.lr.ph1934.i

.preheader1847.i:                                 ; preds = %.lr.ph1934.i, %middle.block1985, %vec.epilog.middle.block2001, %bb.ll
  %.01424.lcssa.i = phi i16 [ 0, %bb.ll ], [ %i.azk, %vec.epilog.middle.block2001 ], [ %i.azf, %middle.block1985 ], [ %i.baa, %.lr.ph1934.i ] ; 7 uses
  %.not1993.i = icmp ugt i16 %i.axl, %.014261967.i
  br i1 %.not1993.i, label %._crit_edge1939.i, label %iter.check1956

iter.check1956:                                   ; preds = %.preheader1847.i
  %i.azl = zext i16 %i.axm to i64                 ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.azl, i64 1) ; 3 uses
  %min.iters.check1939 = icmp ult i16 %i.axm, 4
  br i1 %min.iters.check1939, label %.lr.ph1938.i.preheader, label %vector.main.loop.iter.check1940

vector.main.loop.iter.check1940:                  ; preds = %iter.check1956
  %min.iters.check1941 = icmp ult i16 %i.axm, 16
  br i1 %min.iters.check1941, label %vec.epilog.ph1960, label %vector.ph1942

vector.ph1942:                                    ; preds = %vector.main.loop.iter.check1940
  %i.azm = and i64 %umax, 12
  %n.vec1943 = and i64 %umax, 65520               ; 4 uses
  br label %vector.body1944

vector.body1944:                                  ; preds = %vector.body1944, %vector.ph1942
  %index1945 = phi i64 [ 0, %vector.ph1942 ], [ %index.next1950, %vector.body1944 ] ; 2 uses
  %vec.phi1946 = phi <8 x i16> [ zeroinitializer, %vector.ph1942 ], [ %i.azp, %vector.body1944 ]
  %vec.phi1947 = phi <8 x i16> [ zeroinitializer, %vector.ph1942 ], [ %i.azq, %vector.body1944 ]
  %i.azn = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %index1945 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 16
  %wide.load1948 = load <8 x i16>, ptr %i.azn, align 2, !tbaa !82
  %wide.load1949 = load <8 x i16>, ptr %i.azo, align 2, !tbaa !82
  %i.azp = add <8 x i16> %wide.load1948, %vec.phi1946 ; 2 uses
  %i.azq = add <8 x i16> %wide.load1949, %vec.phi1947 ; 2 uses
  %index.next1950 = add nuw i64 %index1945, 16    ; 2 uses
  %i.azr = icmp eq i64 %index.next1950, %n.vec1943
  br i1 %i.azr, label %middle.block1951, label %vector.body1944, !llvm.loop !368

middle.block1951:                                 ; preds = %vector.body1944
  %bin.rdx1952 = add <8 x i16> %i.azq, %i.azp
  %i.azs = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1952) ; 3 uses
  %cmp.n1953 = icmp eq i64 %n.vec1943, %i.azl
  br i1 %cmp.n1953, label %._crit_edge1939.i, label %vec.epilog.iter.check1958

vec.epilog.iter.check1958:                        ; preds = %middle.block1951
  %min.epilog.iters.check1959 = icmp eq i64 %i.azm, 0
  br i1 %min.epilog.iters.check1959, label %.lr.ph1938.i.preheader, label %vec.epilog.ph1960, !prof !366

vec.epilog.ph1960:                                ; preds = %vector.main.loop.iter.check1940, %vec.epilog.iter.check1958
  %vec.epilog.resume.val1954 = phi i64 [ %n.vec1943, %vec.epilog.iter.check1958 ], [ 0, %vector.main.loop.iter.check1940 ]
  %bc.merge.rdx1955 = phi i16 [ %i.azs, %vec.epilog.iter.check1958 ], [ 0, %vector.main.loop.iter.check1940 ]
  %n.vec1961 = and i64 %umax, 65532               ; 3 uses
  %i.azt = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1955, i64 0
  br label %vec.epilog.vector.body1962

vec.epilog.vector.body1962:                       ; preds = %vec.epilog.vector.body1962, %vec.epilog.ph1960
  %index1963 = phi i64 [ %vec.epilog.resume.val1954, %vec.epilog.ph1960 ], [ %index.next1966, %vec.epilog.vector.body1962 ] ; 2 uses
  %vec.phi1964 = phi <4 x i16> [ %i.azt, %vec.epilog.ph1960 ], [ %i.azv, %vec.epilog.vector.body1962 ]
  %i.azu = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %index1963
  %wide.load1965 = load <4 x i16>, ptr %i.azu, align 2, !tbaa !82
  %i.azv = add <4 x i16> %wide.load1965, %vec.phi1964 ; 2 uses
  %index.next1966 = add nuw i64 %index1963, 4     ; 2 uses
  %i.azw = icmp eq i64 %index.next1966, %n.vec1961
  br i1 %i.azw, label %vec.epilog.middle.block1967, label %vec.epilog.vector.body1962, !llvm.loop !369

vec.epilog.middle.block1967:                      ; preds = %vec.epilog.vector.body1962
  %i.azx = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.azv) ; 2 uses
  %cmp.n1968 = icmp eq i64 %n.vec1961, %i.azl
  br i1 %cmp.n1968, label %._crit_edge1939.i, label %.lr.ph1938.i.preheader

.lr.ph1938.i.preheader:                           ; preds = %iter.check1956, %vec.epilog.iter.check1958, %vec.epilog.middle.block1967
  %indvars.iv2083.i.ph = phi i64 [ 0, %iter.check1956 ], [ %n.vec1943, %vec.epilog.iter.check1958 ], [ %n.vec1961, %vec.epilog.middle.block1967 ]
  %.014221937.i.ph = phi i16 [ 0, %iter.check1956 ], [ %i.azs, %vec.epilog.iter.check1958 ], [ %i.azx, %vec.epilog.middle.block1967 ]
  br label %.lr.ph1938.i

.lr.ph1934.i:                                     ; preds = %.lr.ph1934.i.preheader, %.lr.ph1934.i
  %indvars.iv2081.i = phi i64 [ %indvars.iv.next2082.i, %.lr.ph1934.i ], [ %indvars.iv2081.i.ph, %.lr.ph1934.i.preheader ] ; 2 uses
  %.014241932.i = phi i16 [ %i.baa, %.lr.ph1934.i ], [ %.014241932.i.ph, %.lr.ph1934.i.preheader ]
  %i.azy = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %indvars.iv2081.i
  %i.azz = load i16, ptr %i.azy, align 2, !tbaa !82
  %i.baa = add i16 %i.azz, %.014241932.i          ; 2 uses
  %indvars.iv.next2082.i = add nuw nsw i64 %indvars.iv2081.i, 1 ; 2 uses
  %i.bab = icmp samesign ult i64 %indvars.iv.next2082.i, %i.ayy
  br i1 %i.bab, label %.lr.ph1934.i, label %.preheader1847.i, !llvm.loop !370

.lr.ph1938.i:                                     ; preds = %.lr.ph1938.i.preheader, %.lr.ph1938.i
  %indvars.iv2083.i = phi i64 [ %indvars.iv.next2084.i, %.lr.ph1938.i ], [ %indvars.iv2083.i.ph, %.lr.ph1938.i.preheader ] ; 2 uses
  %.014221937.i = phi i16 [ %i.bae, %.lr.ph1938.i ], [ %.014221937.i.ph, %.lr.ph1938.i.preheader ]
  %i.bac = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %indvars.iv2083.i
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !82
  %i.bae = add i16 %i.bad, %.014221937.i          ; 2 uses
  %indvars.iv.next2084.i = add nuw nsw i64 %indvars.iv2083.i, 1 ; 2 uses
  %i.baf = icmp samesign ult i64 %indvars.iv.next2084.i, %i.azl
  br i1 %i.baf, label %.lr.ph1938.i, label %._crit_edge1939.i, !llvm.loop !371

._crit_edge1939.i:                                ; preds = %.lr.ph1938.i, %middle.block1951, %vec.epilog.middle.block1967, %.preheader1847.i
  %.01422.lcssa.i = phi i16 [ 0, %.preheader1847.i ], [ %i.azx, %vec.epilog.middle.block1967 ], [ %i.azs, %middle.block1951 ], [ %i.bae, %.lr.ph1938.i ] ; 3 uses
  %i.bag = load i16, ptr %i.axt, align 2, !tbaa !82
  %i.bah = icmp eq i16 %i.bag, 0
  br i1 %i.bah, label %bb.lm, label %.thread1791.i

bb.lm:                                            ; preds = %._crit_edge1939.i
  %i.bai = getelementptr inbounds nuw [2 x i8], ptr %i.awx, i64 %i.axi
  %i.baj = load i16, ptr %i.bai, align 2, !tbaa !82 ; 2 uses
  %i.bak = icmp eq i16 %i.baj, 0
  br i1 %i.bak, label %bb.ln, label %.thread2334.i

bb.ln:                                            ; preds = %bb.lm
  %i.bal = zext i16 %i.axm to i64
  %i.bam = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %i.bal ; 2 uses
  %i.ban = load i16, ptr %i.bam, align 2, !tbaa !82 ; 2 uses
  %i.bao = zext i16 %i.ban to i32                 ; 2 uses
  %i.bap = icmp ugt i16 %i.ban, 1
  %i.baq = getelementptr inbounds nuw [2 x i8], ptr %i.awz, i64 %i.axi ; 3 uses
  %i.bar = load i16, ptr %i.baq, align 2, !tbaa !82 ; 3 uses
  br i1 %i.bap, label %bb.lo, label %bb.lw

bb.lo:                                            ; preds = %bb.ln
  %i.bas = zext i16 %i.bar to i32
  store i32 1, ptr %i.ae, align 4, !tbaa !51
  store i32 %.814591965.i, ptr %i.axc, align 4, !tbaa !51
  %i.bat = add nsw i32 %i.bao, -1
  %i.bau = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.408, ptr noundef nonnull %i.ae, i32 noundef %i.bas, i32 noundef 0, i32 noundef %i.bat) #10 ; 2 uses
  %i.bav = icmp sgt i32 %i.bau, -1
  br i1 %i.bav, label %bb.lp, label %.thread1807.i

bb.lp:                                            ; preds = %bb.lo
  %i.baw = load i16, ptr %i.baq, align 2, !tbaa !82 ; 2 uses
  %i.bax = icmp eq i16 %i.baw, 0
  br i1 %i.bax, label %.thread2332.i, label %bb.lq

.thread2332.i:                                    ; preds = %bb.lp
  %i.bay = getelementptr inbounds nuw [2 x i8], ptr %i.axa, i64 %i.axi
  store i16 1, ptr %i.bay, align 2, !tbaa !82
  %i.baz = load i16, ptr %i.bam, align 2, !tbaa !82
  %i.bba = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.axi
  store i16 %i.baz, ptr %i.bba, align 2, !tbaa !82
  %i.bbb = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.axi
  store i16 %.01424.lcssa.i, ptr %i.bbb, align 2, !tbaa !82
  %i.bbc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.axi
  store i16 %.01422.lcssa.i, ptr %i.bbc, align 2, !tbaa !82
  br label %.lr.ph1962.preheader.i

bb.lq:                                            ; preds = %bb.lp
  %i.bbd = zext i16 %i.baw to i32                 ; 2 uses
  %i.bbe = add nuw nsw i32 %.814591965.i, %i.bbd
  %i.bbf = load i16, ptr %i.awf, align 8, !tbaa !363
  %i.bbg = zext i16 %i.bbf to i32
  %i.bbh = add nuw nsw i32 %i.bbg, 1
  %i.bbi = icmp sgt i32 %i.bbe, %i.bbh
  br i1 %i.bbi, label %.thread1807.i, label %.lr.ph1946.i

.lr.ph1946.i:                                     ; preds = %bb.lq
  %i.bbj = getelementptr inbounds nuw [1980 x i8], ptr %i.axd, i64 %i.axi
  br label %bb.lr

bb.lr:                                            ; preds = %bb.ls, %.lr.ph1946.i
  %indvars.iv2089.i = phi i64 [ 0, %.lr.ph1946.i ], [ %indvars.iv.next2090.i, %bb.ls ] ; 4 uses
  %i.bbk = phi i32 [ %i.bbd, %.lr.ph1946.i ], [ %i.bcc, %bb.ls ]
  %.014211945.i = phi i32 [ %i.bao, %.lr.ph1946.i ], [ %i.bca, %bb.ls ] ; 3 uses
  %.114231944.i = phi i16 [ %.01422.lcssa.i, %.lr.ph1946.i ], [ %i.bbz, %bb.ls ] ; 2 uses
  %i.bbl = getelementptr inbounds nuw [2 x i8], ptr %i.bbj, i64 %indvars.iv2089.i ; 2 uses
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !82
  %i.bbn = zext i16 %i.bbm to i32
  store i32 2, ptr %i.af, align 4, !tbaa !51
  store i32 %.814591965.i, ptr %i.axe, align 4, !tbaa !51
  %i.bbo = trunc nuw nsw i64 %indvars.iv2089.i to i32 ; 2 uses
  store i32 %i.bbo, ptr %i.axf, align 4, !tbaa !51
  %.neg.i = sub nsw i32 %i.bbo, %i.bbk
  %i.bbp = add i32 %.neg.i, %.014211945.i
  %i.bbq = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.409, ptr noundef nonnull %i.af, i32 noundef %i.bbn, i32 noundef 0, i32 noundef %i.bbp) #10 ; 2 uses
  %i.bbr = icmp sgt i32 %i.bbq, -1
  br i1 %i.bbr, label %bb.ls, label %.thread1807.i

bb.ls:                                            ; preds = %bb.lr
  %i.bbs = load i16, ptr %i.bbl, align 2, !tbaa !82 ; 2 uses
  %i.bbt = add i16 %i.bbs, 1                      ; 3 uses
  %i.bbu = add nuw nsw i64 %indvars.iv2089.i, %i.axi ; 3 uses
  %i.bbv = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.bbu
  store i16 %i.bbt, ptr %i.bbv, align 2, !tbaa !82
  %i.bbw = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bbu
  store i16 %.01424.lcssa.i, ptr %i.bbw, align 2, !tbaa !82
  %i.bbx = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bbu
  store i16 %.114231944.i, ptr %i.bbx, align 2, !tbaa !82
  %i.bby = zext i16 %i.bbt to i32
  %i.bbz = add i16 %i.bbt, %.114231944.i          ; 7 uses
  %i.bca = sub nsw i32 %.014211945.i, %i.bby      ; 7 uses
  %indvars.iv.next2090.i = add nuw nsw i64 %indvars.iv2089.i, 1 ; 9 uses
  %i.bcb = load i16, ptr %i.baq, align 2, !tbaa !82 ; 2 uses
  %i.bcc = zext i16 %i.bcb to i32                 ; 2 uses
  %i.bcd = zext i16 %i.bcb to i64
  %i.bce = icmp samesign ult i64 %indvars.iv.next2090.i, %i.bcd
  br i1 %i.bce, label %bb.lr, label %bb.lt, !llvm.loop !372

bb.lt:                                            ; preds = %bb.ls
  %i.bcf = getelementptr [1980 x i8], ptr %i.acu, i64 %i.axi
  %i.bcg = getelementptr [2 x i8], ptr %i.bcf, i64 %indvars.iv.next2090.i
  %i.bch = getelementptr i8, ptr %i.bcg, i64 10090
  %i.bci = load i16, ptr %i.bch, align 2, !tbaa !82 ; 2 uses
  %i.bcj = zext i16 %i.bci to i32                 ; 4 uses
  %i.bck = add nuw nsw i32 %i.bcj, 1              ; 5 uses
  %i.bcl = add i32 %i.bca, %i.bcj
  %i.bcm = sdiv i32 %i.bcl, %i.bck
  %i.bcn = add nuw nsw i32 %.814591965.i, %i.bcc
  %i.bco = add nsw i32 %i.bcn, %i.bcm
  %i.bcp = load i16, ptr %i.awf, align 8, !tbaa !363
  %i.bcq = zext i16 %i.bcp to i32
  %i.bcr = add nuw nsw i32 %i.bcq, 1
  %i.bcs = icmp sgt i32 %i.bco, %i.bcr
  br i1 %i.bcs, label %.thread1807.i, label %.preheader1845.i

.preheader1845.i:                                 ; preds = %bb.lt
  %i.bct = icmp sgt i32 %i.bca, %i.bck
  br i1 %i.bct, label %iter.check, label %._crit_edge1956.i

iter.check:                                       ; preds = %.preheader1845.i
  %i.bcu = trunc i32 %i.bck to i16                ; 8 uses
  %i.bcv = xor i32 %i.bcj, -1                     ; 2 uses
  %i.bcw = add i32 %.014211945.i, -2
  %i.bcx = add i16 %i.bbs, 1
  %i.bcy = zext i16 %i.bcx to i32
  %i.bcz = add nuw nsw i32 %i.bcj, %i.bcy
  %i.bda = sub i32 %i.bcw, %i.bcz
  %i.bdb = zext i32 %i.bda to i64
  %i.bdc = zext i16 %i.bci to i64
  %i.bdd = add nuw nsw i64 %i.bdc, 1
  %i.bde = udiv i64 %i.bdb, %i.bdd                ; 3 uses
  %i.bdf = add nuw nsw i64 %i.bde, 1              ; 5 uses
  %min.iters.check1867 = icmp samesign ult i64 %i.bde, 3
  br i1 %min.iters.check1867, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1868 = icmp samesign ult i64 %i.bde, 15
  br i1 %min.iters.check1868, label %vec.epilog.ph, label %vector.ph1869

vector.ph1869:                                    ; preds = %vector.main.loop.iter.check
  %i.bdg = and i64 %i.bdf, 12
  %n.vec1870 = and i64 %i.bdf, 8589934576         ; 6 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bcu, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bdh = add nuw i64 %indvars.iv.next2090.i, %n.vec1870 ; 2 uses
  %i.bdi = trunc i64 %n.vec1870 to i32
  %i.bdj = mul i32 %i.bdi, %i.bcv
  %i.bdk = add i32 %i.bca, %i.bdj                 ; 2 uses
  %i.bdl = trunc i64 %n.vec1870 to i16
  %i.bdm = mul i16 %i.bdl, %i.bcu
  %i.bdn = add i16 %i.bbz, %i.bdm                 ; 3 uses
  %i.bdo = shl <8 x i16> %broadcast.splat, splat (i16 3) ; 3 uses
  %broadcast.splatinsert1871 = insertelement <8 x i16> poison, i16 %i.bcu, i64 0
  %broadcast.splat1872 = shufflevector <8 x i16> %broadcast.splatinsert1871, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1873 = insertelement <8 x i16> poison, i16 %.01424.lcssa.i, i64 0
  %broadcast.splat1874 = shufflevector <8 x i16> %broadcast.splatinsert1873, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
end_hunk_0
begin_hunk_1_@cbs_h266_write_nal_unit:bb.a
  %.014191942.i.ph = phi i16 [ 0, %iter.check1923 ], [ %i.bga, %vec.epilog.iter.check1925 ], [ %i.bgf, %vec.epilog.middle.block1934 ]
  br label %vec.epilog.scalar.ph1924

vec.epilog.scalar.ph1924:                         ; preds = %vec.epilog.scalar.ph1924.preheader, %vec.epilog.scalar.ph1924
  %indvars.iv2085.i = phi i64 [ %indvars.iv.next2086.i, %vec.epilog.scalar.ph1924 ], [ %indvars.iv2085.i.ph, %vec.epilog.scalar.ph1924.preheader ] ; 3 uses
  %.014191942.i = phi i16 [ %i.bgh, %vec.epilog.scalar.ph1924 ], [ %.014191942.i.ph, %vec.epilog.scalar.ph1924.preheader ]
  %gep.i160 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i159, i64 %indvars.iv2085.i
  %i.bgg = load i16, ptr %gep.i160, align 2, !tbaa !82
  %i.bgh = add i16 %i.bgg, %.014191942.i          ; 2 uses
  %indvars.iv.next2086.i = add nuw nsw i64 %indvars.iv2085.i, 1
  %exitcond2088.not.i = icmp eq i64 %indvars.iv2085.i, %i.bfr
  br i1 %exitcond2088.not.i, label %.loopexit2123, label %vec.epilog.scalar.ph1924, !llvm.loop !379

.loopexit2123:                                    ; preds = %vec.epilog.scalar.ph1924, %vec.epilog.middle.block1934, %middle.block1918
  %.lcssa1755 = phi i16 [ %i.bgf, %vec.epilog.middle.block1934 ], [ %i.bga, %middle.block1918 ], [ %i.bgh, %vec.epilog.scalar.ph1924 ]
  %i.bgi = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.axi
  store i16 %.lcssa1755, ptr %i.bgi, align 2, !tbaa !82
  %i.bgj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.axi
  store i16 %.01424.lcssa.i, ptr %i.bgj, align 2, !tbaa !82
  %i.bgk = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.axi
  store i16 %.01422.lcssa.i, ptr %i.bgk, align 2, !tbaa !82
  br label %bb.ly

bb.ly:                                            ; preds = %.loopexit2123, %._crit_edge1963.i
  %.101461.i = phi i32 [ %i.bfh, %._crit_edge1963.i ], [ %.814591965.i, %.loopexit2123 ] ; 4 uses
  %i.bgl = load i16, ptr %i.awf, align 8, !tbaa !363 ; 4 uses
  %i.bgm = zext i16 %i.bgl to i32                 ; 4 uses
  %i.bgn = icmp slt i32 %.101461.i, %i.bgm
  br i1 %i.bgn, label %bb.lz, label %bb.mi

bb.lz:                                            ; preds = %bb.ly
  %i.bgo = load i8, ptr %i.awm, align 2, !tbaa !364
  %.not1709.i = icmp eq i8 %i.bgo, 0
  %i.bgp = sext i32 %.101461.i to i64             ; 3 uses
  %i.bgq = getelementptr inbounds [2 x i8], ptr %i.axg, i64 %i.bgp ; 3 uses
  %i.bgr = load i16, ptr %i.bgq, align 2, !tbaa !82 ; 3 uses
  br i1 %.not1709.i, label %bb.me, label %bb.ma

bb.ma:                                            ; preds = %bb.lz
  %i.bgs = sext i16 %i.bgr to i32
  store i32 1, ptr %i.ag, align 4, !tbaa !51
  store i32 %.101461.i, ptr %i.axh, align 4, !tbaa !51
  %i.bgt = sub nsw i32 0, %i.axk
  %i.bgu = load i16, ptr %i.auy, align 4, !tbaa !121
  %i.bgv = zext i16 %i.bgu to i32
  %i.bgw = xor i32 %i.axk, -1
  %i.bgx = add nsw i32 %i.bgv, %i.bgw
  %i.bgy = call i32 @ff_cbs_write_se_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.410, ptr noundef nonnull %i.ag, i32 noundef %i.bgs, i32 noundef %i.bgt, i32 noundef %i.bgx) #10 ; 2 uses
  %i.bgz = icmp sgt i32 %i.bgy, -1
  br i1 %i.bgz, label %bb.mb, label %.thread1807.i

bb.mb:                                            ; preds = %bb.ma
  %i.bha = load i16, ptr %i.bgq, align 2, !tbaa !82 ; 2 uses
  %i.bhb = icmp eq i16 %i.bha, 0
  br i1 %i.bhb, label %bb.mc, label %bb.md

bb.mc:                                            ; preds = %bb.mb
  %i.bhc = load ptr, ptr %0, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhc, i32 noundef 16, ptr noundef nonnull @.str.411) #10
  %.pre2134.i = load i16, ptr %i.bgq, align 2, !tbaa !82
  br label %bb.md

bb.md:                                            ; preds = %bb.mc, %bb.mb
  %i.bhd = phi i16 [ %.pre2134.i, %bb.mc ], [ %i.bha, %bb.mb ]
  %i.bhe = add i16 %i.bhd, %.014261967.i
  %.pre2135.i = load i16, ptr %i.awf, align 8, !tbaa !363 ; 2 uses
  %.pre2138.i = zext i16 %.pre2135.i to i32
  br label %bb.mi

bb.me:                                            ; preds = %bb.lz
  %.not1710.i = icmp eq i16 %i.bgr, 0
  br i1 %.not1710.i, label %bb.mg, label %bb.mf

bb.mf:                                            ; preds = %bb.me
  %i.bhf = load ptr, ptr %0, align 8, !tbaa !40
  %i.bhg = sext i16 %i.bgr to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bhf, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.410, i64 noundef %i.bhg, i64 noundef 0) #10
  br label %.thread1807.i

bb.mg:                                            ; preds = %bb.me
  %i.bhh = getelementptr inbounds [2 x i8], ptr %i.awv, i64 %i.bgp
  %i.bhi = load i16, ptr %i.bhh, align 2, !tbaa !82
  %i.bhj = add i16 %.014261967.i, 1
  %i.bhk = add i16 %i.bhj, %i.bhi                 ; 3 uses
  %i.bhl = load i16, ptr %i.aty, align 8, !tbaa !234 ; 2 uses
  %i.bhm = urem i16 %i.bhk, %i.bhl
  %i.bhn = icmp eq i16 %i.bhm, 0
  br i1 %i.bhn, label %bb.mh, label %bb.mi

bb.mh:                                            ; preds = %bb.mg
  %i.bho = getelementptr inbounds [2 x i8], ptr %i.awx, i64 %i.bgp
  %i.bhp = load i16, ptr %i.bho, align 2, !tbaa !82
  %i.bhq = mul i16 %i.bhp, %i.bhl
  %i.bhr = add i16 %i.bhq, %i.bhk
  br label %bb.mi

bb.mi:                                            ; preds = %bb.mh, %bb.mg, %bb.md, %bb.ly
  %.pre-phi.i = phi i32 [ %i.bgm, %bb.ly ], [ %i.bgm, %bb.mg ], [ %i.bgm, %bb.mh ], [ %.pre2138.i, %bb.md ] ; 2 uses
  %i.bhs = phi i16 [ %i.bgl, %bb.ly ], [ %i.bgl, %bb.mg ], [ %i.bgl, %bb.mh ], [ %.pre2135.i, %bb.md ]
  %.11427.i = phi i16 [ %.014261967.i, %bb.ly ], [ %i.bhk, %bb.mg ], [ %i.bhr, %bb.mh ], [ %i.bhe, %bb.md ] ; 2 uses
  %i.bht = add nsw i32 %.101461.i, 1              ; 4 uses
  %i.bhu = icmp slt i32 %i.bht, %.pre-phi.i
  br i1 %i.bhu, label %bb.kz, label %._crit_edge1970.i, !llvm.loop !380

._crit_edge1970.i:                                ; preds = %bb.mi
  %i.bhv = zext i16 %i.bhs to i32
  %i.bhw = add nuw nsw i32 %i.bhv, 1              ; 2 uses
  %i.bhx = icmp eq i32 %i.bht, %.pre-phi.i
  %i.bhy = zext nneg i32 %i.bht to i64
  br i1 %i.bhx, label %._crit_edge1970.i.thread, label %bb.mk

._crit_edge1970.i.thread:                         ; preds = %bb.ky, %._crit_edge1970.i
  %.01426.lcssa.i229 = phi i16 [ %.11427.i, %._crit_edge1970.i ], [ 0, %bb.ky ] ; 4 uses
  %.81459.lcssa.i228 = phi i64 [ %i.bhy, %._crit_edge1970.i ], [ 0, %bb.ky ] ; 8 uses
  %i.bhz = phi i32 [ %i.bhw, %._crit_edge1970.i ], [ 1, %bb.ky ]
  %i.bia = getelementptr inbounds nuw i8, ptr %i.acu, i64 2000222
  %i.bib = getelementptr inbounds nuw [2 x i8], ptr %i.bia, i64 %.81459.lcssa.i228
  store i16 %.01426.lcssa.i229, ptr %i.bib, align 2, !tbaa !82
  %i.bic = getelementptr inbounds nuw i8, ptr %i.acu, i64 2002222
  %i.bid = getelementptr inbounds nuw [2 x i8], ptr %i.bic, i64 %.81459.lcssa.i228
  store i16 1, ptr %i.bid, align 2, !tbaa !82
  %i.bie = load i16, ptr %i.aty, align 8, !tbaa !234 ; 4 uses
  %i.bif = urem i16 %.01426.lcssa.i229, %i.bie    ; 5 uses
  %i.big = udiv i16 %.01426.lcssa.i229, %i.bie    ; 5 uses
  %i.bih = load i16, ptr %i.auw, align 2, !tbaa !237
  %.not1691.i = icmp ult i16 %i.big, %i.bih
  br i1 %.not1691.i, label %.preheader1844.i, label %.thread1807.i

.preheader1844.i:                                 ; preds = %._crit_edge1970.i.thread
  %.not1996.i = icmp eq i16 %i.bif, 0
  br i1 %.not1996.i, label %.preheader1843.i, label %iter.check2023

iter.check2023:                                   ; preds = %.preheader1844.i
  %i.bii = zext i16 %i.bif to i64                 ; 6 uses
  %min.iters.check2006 = icmp ult i16 %i.bif, 4
  br i1 %min.iters.check2006, label %vec.epilog.scalar.ph2024.preheader, label %vector.main.loop.iter.check2007

vector.main.loop.iter.check2007:                  ; preds = %iter.check2023
  %min.iters.check2008 = icmp ult i16 %i.bif, 16
  br i1 %min.iters.check2008, label %vec.epilog.ph2027, label %vector.ph2009

vector.ph2009:                                    ; preds = %vector.main.loop.iter.check2007
  %i.bij = and i64 %i.bii, 12
  %n.vec2010 = and i64 %i.bii, 65520              ; 4 uses
  br label %vector.body2011

vector.body2011:                                  ; preds = %vector.body2011, %vector.ph2009
  %index2012 = phi i64 [ 0, %vector.ph2009 ], [ %index.next2017, %vector.body2011 ] ; 2 uses
  %vec.phi2013.a = phi <8 x i16> [ zeroinitializer, %vector.ph2009 ], [ %i.bim, %vector.body2011 ]
  %vec.phi2014 = phi <8 x i16> [ zeroinitializer, %vector.ph2009 ], [ %i.bin, %vector.body2011 ]
  %i.bik = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %index2012 ; 2 uses
  %i.bil = getelementptr inbounds nuw i8, ptr %i.bik, i64 16
  %wide.load2015.a = load <8 x i16>, ptr %i.bik, align 2, !tbaa !82
  %wide.load2016 = load <8 x i16>, ptr %i.bil, align 2, !tbaa !82
  %i.bim = add <8 x i16> %wide.load2015.a, %vec.phi2013.a ; 2 uses
  %i.bin = add <8 x i16> %wide.load2016, %vec.phi2014 ; 2 uses
  %index.next2017 = add nuw i64 %index2012, 16    ; 2 uses
  %i.bio = icmp eq i64 %index.next2017, %n.vec2010
  br i1 %i.bio, label %middle.block2018, label %vector.body2011, !llvm.loop !381

middle.block2018:                                 ; preds = %vector.body2011
  %bin.rdx2019 = add <8 x i16> %i.bin, %i.bim
  %i.bip = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2019) ; 3 uses
  %cmp.n2020 = icmp eq i64 %n.vec2010, %i.bii
  br i1 %cmp.n2020, label %.preheader1843.i, label %vec.epilog.iter.check2025

vec.epilog.iter.check2025:                        ; preds = %middle.block2018
  %min.epilog.iters.check2026 = icmp eq i64 %i.bij, 0
  br i1 %min.epilog.iters.check2026, label %vec.epilog.scalar.ph2024.preheader, label %vec.epilog.ph2027, !prof !366

vec.epilog.ph2027:                                ; preds = %vector.main.loop.iter.check2007, %vec.epilog.iter.check2025
  %vec.epilog.resume.val2021 = phi i64 [ %n.vec2010, %vec.epilog.iter.check2025 ], [ 0, %vector.main.loop.iter.check2007 ]
  %bc.merge.rdx2022 = phi i16 [ %i.bip, %vec.epilog.iter.check2025 ], [ 0, %vector.main.loop.iter.check2007 ]
  %n.vec2028 = and i64 %i.bii, 65532              ; 3 uses
  %i.biq = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2022, i64 0
  br label %vec.epilog.vector.body2029

vec.epilog.vector.body2029:                       ; preds = %vec.epilog.vector.body2029, %vec.epilog.ph2027
  %index2030 = phi i64 [ %vec.epilog.resume.val2021, %vec.epilog.ph2027 ], [ %index.next2033, %vec.epilog.vector.body2029 ] ; 2 uses
  %vec.phi2031 = phi <4 x i16> [ %i.biq, %vec.epilog.ph2027 ], [ %i.bis, %vec.epilog.vector.body2029 ]
  %i.bir = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %index2030
  %wide.load2032 = load <4 x i16>, ptr %i.bir, align 2, !tbaa !82
  %i.bis = add <4 x i16> %wide.load2032, %vec.phi2031 ; 2 uses
  %index.next2033 = add nuw i64 %index2030, 4     ; 2 uses
  %i.bit = icmp eq i64 %index.next2033, %n.vec2028
  br i1 %i.bit, label %vec.epilog.middle.block2034, label %vec.epilog.vector.body2029, !llvm.loop !382

vec.epilog.middle.block2034:                      ; preds = %vec.epilog.vector.body2029
  %i.biu = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bis) ; 2 uses
  %cmp.n2035 = icmp eq i64 %n.vec2028, %i.bii
  br i1 %cmp.n2035, label %.preheader1843.i, label %vec.epilog.scalar.ph2024.preheader

vec.epilog.scalar.ph2024.preheader:               ; preds = %iter.check2023, %vec.epilog.iter.check2025, %vec.epilog.middle.block2034
  %indvars.iv2096.i.ph = phi i64 [ 0, %iter.check2023 ], [ %n.vec2010, %vec.epilog.iter.check2025 ], [ %n.vec2028, %vec.epilog.middle.block2034 ]
  %.114251975.i.ph = phi i16 [ 0, %iter.check2023 ], [ %i.bip, %vec.epilog.iter.check2025 ], [ %i.biu, %vec.epilog.middle.block2034 ]
  br label %vec.epilog.scalar.ph2024

.preheader1843.i:                                 ; preds = %vec.epilog.scalar.ph2024, %middle.block2018, %vec.epilog.middle.block2034, %.preheader1844.i
  %.11425.lcssa.i = phi i16 [ 0, %.preheader1844.i ], [ %i.biu, %vec.epilog.middle.block2034 ], [ %i.bip, %middle.block2018 ], [ %i.bjj, %vec.epilog.scalar.ph2024 ]
  %.not1997.i = icmp ugt i16 %i.bie, %.01426.lcssa.i229
  %.pre2141.i = zext i16 %i.big to i64            ; 5 uses
  br i1 %.not1997.i, label %iter.check2090, label %iter.check2057

iter.check2057:                                   ; preds = %.preheader1843.i
  %umax2038 = call i64 @llvm.umax.i64(i64 %.pre2141.i, i64 1) ; 3 uses
  %min.iters.check2040.a = icmp ult i16 %i.big, 4
  br i1 %min.iters.check2040.a, label %.lr.ph1980.i.preheader, label %vector.main.loop.iter.check2041

vector.main.loop.iter.check2041:                  ; preds = %iter.check2057
  %min.iters.check2042 = icmp ult i16 %i.big, 16
  br i1 %min.iters.check2042, label %vec.epilog.ph2061, label %vector.ph2043

vector.ph2043:                                    ; preds = %vector.main.loop.iter.check2041
  %i.biv = and i64 %umax2038, 12
  %n.vec2044 = and i64 %umax2038, 65520           ; 4 uses
  br label %vector.body2045

vector.body2045:                                  ; preds = %vector.body2045, %vector.ph2043
  %index2046 = phi i64 [ 0, %vector.ph2043 ], [ %index.next2051, %vector.body2045 ] ; 2 uses
  %vec.phi2047 = phi <8 x i16> [ zeroinitializer, %vector.ph2043 ], [ %i.biy, %vector.body2045 ]
  %vec.phi2048 = phi <8 x i16> [ zeroinitializer, %vector.ph2043 ], [ %i.biz, %vector.body2045 ]
  %i.biw = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %index2046 ; 2 uses
  %i.bix = getelementptr inbounds nuw i8, ptr %i.biw, i64 16
  %wide.load2049 = load <8 x i16>, ptr %i.biw, align 2, !tbaa !82
  %wide.load2050 = load <8 x i16>, ptr %i.bix, align 2, !tbaa !82
  %i.biy = add <8 x i16> %wide.load2049, %vec.phi2047 ; 2 uses
  %i.biz = add <8 x i16> %wide.load2050, %vec.phi2048 ; 2 uses
  %index.next2051 = add nuw i64 %index2046, 16    ; 2 uses
  %i.bja = icmp eq i64 %index.next2051, %n.vec2044
  br i1 %i.bja, label %middle.block2052, label %vector.body2045, !llvm.loop !383

middle.block2052:                                 ; preds = %vector.body2045
  %bin.rdx2053 = add <8 x i16> %i.biz, %i.biy
  %i.bjb = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2053) ; 3 uses
  %cmp.n2054 = icmp eq i64 %n.vec2044, %.pre2141.i
  br i1 %cmp.n2054, label %iter.check2090, label %vec.epilog.iter.check2059

vec.epilog.iter.check2059:                        ; preds = %middle.block2052
  %min.epilog.iters.check2060 = icmp eq i64 %i.biv, 0
  br i1 %min.epilog.iters.check2060, label %.lr.ph1980.i.preheader, label %vec.epilog.ph2061, !prof !366

vec.epilog.ph2061:                                ; preds = %vector.main.loop.iter.check2041, %vec.epilog.iter.check2059
  %vec.epilog.resume.val2055 = phi i64 [ %n.vec2044, %vec.epilog.iter.check2059 ], [ 0, %vector.main.loop.iter.check2041 ]
  %bc.merge.rdx2056 = phi i16 [ %i.bjb, %vec.epilog.iter.check2059 ], [ 0, %vector.main.loop.iter.check2041 ]
  %n.vec2062 = and i64 %umax2038, 65532           ; 3 uses
  %i.bjc = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2056, i64 0
  br label %vec.epilog.vector.body2063

vec.epilog.vector.body2063:                       ; preds = %vec.epilog.vector.body2063, %vec.epilog.ph2061
  %index2064 = phi i64 [ %vec.epilog.resume.val2055, %vec.epilog.ph2061 ], [ %index.next2067, %vec.epilog.vector.body2063 ] ; 2 uses
  %vec.phi2065 = phi <4 x i16> [ %i.bjc, %vec.epilog.ph2061 ], [ %i.bje, %vec.epilog.vector.body2063 ]
  %i.bjd = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %index2064
  %wide.load2066 = load <4 x i16>, ptr %i.bjd, align 2, !tbaa !82
  %i.bje = add <4 x i16> %wide.load2066, %vec.phi2065 ; 2 uses
  %index.next2067 = add nuw i64 %index2064, 4     ; 2 uses
  %i.bjf = icmp eq i64 %index.next2067, %n.vec2062
  br i1 %i.bjf, label %vec.epilog.middle.block2068, label %vec.epilog.vector.body2063, !llvm.loop !384

vec.epilog.middle.block2068:                      ; preds = %vec.epilog.vector.body2063
  %i.bjg = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bje) ; 2 uses
  %cmp.n2069 = icmp eq i64 %n.vec2062, %.pre2141.i
  br i1 %cmp.n2069, label %iter.check2090, label %.lr.ph1980.i.preheader

.lr.ph1980.i.preheader:                           ; preds = %iter.check2057, %vec.epilog.iter.check2059, %vec.epilog.middle.block2068
  %indvars.iv2098.i.ph = phi i64 [ 0, %iter.check2057 ], [ %n.vec2044, %vec.epilog.iter.check2059 ], [ %n.vec2062, %vec.epilog.middle.block2068 ]
  %.31979.i.ph = phi i16 [ 0, %iter.check2057 ], [ %i.bjb, %vec.epilog.iter.check2059 ], [ %i.bjg, %vec.epilog.middle.block2068 ]
  br label %.lr.ph1980.i

vec.epilog.scalar.ph2024:                         ; preds = %vec.epilog.scalar.ph2024.preheader, %vec.epilog.scalar.ph2024
  %indvars.iv2096.i = phi i64 [ %indvars.iv.next2097.i, %vec.epilog.scalar.ph2024 ], [ %indvars.iv2096.i.ph, %vec.epilog.scalar.ph2024.preheader ] ; 2 uses
  %.114251975.i = phi i16 [ %i.bjj, %vec.epilog.scalar.ph2024 ], [ %.114251975.i.ph, %vec.epilog.scalar.ph2024.preheader ]
  %i.bjh = getelementptr inbounds nuw [2 x i8], ptr %i.asm, i64 %indvars.iv2096.i
  %i.bji = load i16, ptr %i.bjh, align 2, !tbaa !82
  %i.bjj = add i16 %i.bji, %.114251975.i          ; 2 uses
  %indvars.iv.next2097.i = add nuw nsw i64 %indvars.iv2096.i, 1 ; 2 uses
  %i.bjk = icmp samesign ult i64 %indvars.iv.next2097.i, %i.bii
  br i1 %i.bjk, label %vec.epilog.scalar.ph2024, label %.preheader1843.i, !llvm.loop !385

.lr.ph1980.i:                                     ; preds = %.lr.ph1980.i.preheader, %.lr.ph1980.i
  %indvars.iv2098.i = phi i64 [ %indvars.iv.next2099.i, %.lr.ph1980.i ], [ %indvars.iv2098.i.ph, %.lr.ph1980.i.preheader ] ; 2 uses
  %.31979.i = phi i16 [ %i.bjn, %.lr.ph1980.i ], [ %.31979.i.ph, %.lr.ph1980.i.preheader ]
  %i.bjl = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %indvars.iv2098.i
  %i.bjm = load i16, ptr %i.bjl, align 2, !tbaa !82
  %i.bjn = add i16 %i.bjm, %.31979.i              ; 2 uses
  %indvars.iv.next2099.i = add nuw nsw i64 %indvars.iv2098.i, 1 ; 2 uses
  %i.bjo = icmp samesign ult i64 %indvars.iv.next2099.i, %.pre2141.i
  br i1 %i.bjo, label %.lr.ph1980.i, label %iter.check2090, !llvm.loop !386

iter.check2090:                                   ; preds = %.lr.ph1980.i, %middle.block2052, %vec.epilog.middle.block2068, %.preheader1843.i
  %.3.lcssa.i = phi i16 [ 0, %.preheader1843.i ], [ %i.bjg, %vec.epilog.middle.block2068 ], [ %i.bjb, %middle.block2052 ], [ %i.bjn, %.lr.ph1980.i ]
  %i.bjp = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.81459.lcssa.i228
  store i16 %.11425.lcssa.i, ptr %i.bjp, align 2, !tbaa !82
  %i.bjq = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.81459.lcssa.i228
  store i16 %.3.lcssa.i, ptr %i.bjq, align 2, !tbaa !82
  %i.bjr = xor i16 %i.bif, -1
  %i.bjs = add i16 %i.bie, %i.bjr
  %i.bjt = getelementptr inbounds nuw i8, ptr %i.acu, i64 4092
  %i.bju = getelementptr inbounds nuw [2 x i8], ptr %i.bjt, i64 %.81459.lcssa.i228
  store i16 %i.bjs, ptr %i.bju, align 2, !tbaa !82
  %i.bjv = load i16, ptr %i.auw, align 2, !tbaa !237
  %i.bjw = xor i16 %i.big, -1
  %i.bjx = add i16 %i.bjv, %i.bjw                 ; 4 uses
  %i.bjy = getelementptr inbounds nuw i8, ptr %i.acu, i64 6092
  %i.bjz = getelementptr inbounds nuw [2 x i8], ptr %i.bjy, i64 %.81459.lcssa.i228
  store i16 %i.bjx, ptr %i.bjz, align 2, !tbaa !82
  %i.bka = zext i16 %i.bjx to i64                 ; 2 uses
  %invariant.gep2384.i = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %.pre2141.i ; 3 uses
  %i.bkb = add nuw nsw i64 %i.bka, 1              ; 5 uses
  %min.iters.check2073.a = icmp ult i16 %i.bjx, 3
  br i1 %min.iters.check2073.a, label %vec.epilog.scalar.ph2091.preheader, label %vector.main.loop.iter.check2074

vector.main.loop.iter.check2074:                  ; preds = %iter.check2090
  %min.iters.check2075 = icmp ult i16 %i.bjx, 15
  br i1 %min.iters.check2075, label %vec.epilog.ph2094, label %vector.ph2076

vector.ph2076:                                    ; preds = %vector.main.loop.iter.check2074
  %i.bkc = and i64 %i.bkb, 12
  %n.vec2077 = and i64 %i.bkb, 131056             ; 4 uses
  br label %vector.body2078

vector.body2078:                                  ; preds = %vector.body2078, %vector.ph2076
  %index2079 = phi i64 [ 0, %vector.ph2076 ], [ %index.next2084, %vector.body2078 ] ; 2 uses
  %vec.phi2080 = phi <8 x i16> [ zeroinitializer, %vector.ph2076 ], [ %i.bkf, %vector.body2078 ]
  %vec.phi2081 = phi <8 x i16> [ zeroinitializer, %vector.ph2076 ], [ %i.bkg, %vector.body2078 ]
  %i.bkd = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2384.i, i64 %index2079 ; 2 uses
  %i.bke = getelementptr inbounds nuw i8, ptr %i.bkd, i64 16
  %wide.load2082 = load <8 x i16>, ptr %i.bkd, align 2, !tbaa !82
  %wide.load2083 = load <8 x i16>, ptr %i.bke, align 2, !tbaa !82
  %i.bkf = add <8 x i16> %wide.load2082, %vec.phi2080 ; 2 uses
  %i.bkg = add <8 x i16> %wide.load2083, %vec.phi2081 ; 2 uses
  %index.next2084 = add nuw i64 %index2079, 16    ; 2 uses
  %i.bkh = icmp eq i64 %index.next2084, %n.vec2077
  br i1 %i.bkh, label %middle.block2085, label %vector.body2078, !llvm.loop !387

middle.block2085:                                 ; preds = %vector.body2078
  %bin.rdx2086 = add <8 x i16> %i.bkg, %i.bkf
  %i.bki = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2086) ; 3 uses
  %cmp.n2087 = icmp eq i64 %i.bkb, %n.vec2077
  br i1 %cmp.n2087, label %.loopexit2122, label %vec.epilog.iter.check2092

vec.epilog.iter.check2092:                        ; preds = %middle.block2085
  %min.epilog.iters.check2093 = icmp eq i64 %i.bkc, 0
  br i1 %min.epilog.iters.check2093, label %vec.epilog.scalar.ph2091.preheader, label %vec.epilog.ph2094, !prof !366

vec.epilog.ph2094:                                ; preds = %vector.main.loop.iter.check2074, %vec.epilog.iter.check2092
  %vec.epilog.resume.val2088 = phi i64 [ %n.vec2077, %vec.epilog.iter.check2092 ], [ 0, %vector.main.loop.iter.check2074 ]
  %bc.merge.rdx2089 = phi i16 [ %i.bki, %vec.epilog.iter.check2092 ], [ 0, %vector.main.loop.iter.check2074 ]
  %n.vec2095 = and i64 %i.bkb, 131068             ; 3 uses
  %i.bkj = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2089, i64 0
  br label %vec.epilog.vector.body2096

vec.epilog.vector.body2096:                       ; preds = %vec.epilog.vector.body2096, %vec.epilog.ph2094
  %index2097 = phi i64 [ %vec.epilog.resume.val2088, %vec.epilog.ph2094 ], [ %index.next2100, %vec.epilog.vector.body2096 ] ; 2 uses
  %vec.phi2098 = phi <4 x i16> [ %i.bkj, %vec.epilog.ph2094 ], [ %i.bkl, %vec.epilog.vector.body2096 ]
  %i.bkk = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2384.i, i64 %index2097
  %wide.load2099 = load <4 x i16>, ptr %i.bkk, align 2, !tbaa !82
  %i.bkl = add <4 x i16> %wide.load2099, %vec.phi2098 ; 2 uses
  %index.next2100 = add nuw i64 %index2097, 4     ; 2 uses
  %i.bkm = icmp eq i64 %index.next2100, %n.vec2095
  br i1 %i.bkm, label %vec.epilog.middle.block2101, label %vec.epilog.vector.body2096, !llvm.loop !388

vec.epilog.middle.block2101:                      ; preds = %vec.epilog.vector.body2096
  %i.bkn = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.bkl) ; 2 uses
  %cmp.n2102 = icmp eq i64 %i.bkb, %n.vec2095
  br i1 %cmp.n2102, label %.loopexit2122, label %vec.epilog.scalar.ph2091.preheader

vec.epilog.scalar.ph2091.preheader:               ; preds = %iter.check2090, %vec.epilog.iter.check2092, %vec.epilog.middle.block2101
  %indvars.iv2100.i.ph = phi i64 [ 0, %iter.check2090 ], [ %n.vec2077, %vec.epilog.iter.check2092 ], [ %n.vec2095, %vec.epilog.middle.block2101 ]
  %.01984.i.ph = phi i16 [ 0, %iter.check2090 ], [ %i.bki, %vec.epilog.iter.check2092 ], [ %i.bkn, %vec.epilog.middle.block2101 ]
  br label %vec.epilog.scalar.ph2091

vec.epilog.scalar.ph2091:                         ; preds = %vec.epilog.scalar.ph2091.preheader, %vec.epilog.scalar.ph2091
  %indvars.iv2100.i = phi i64 [ %indvars.iv.next2101.i, %vec.epilog.scalar.ph2091 ], [ %indvars.iv2100.i.ph, %vec.epilog.scalar.ph2091.preheader ] ; 3 uses
  %.01984.i = phi i16 [ %i.bkp, %vec.epilog.scalar.ph2091 ], [ %.01984.i.ph, %vec.epilog.scalar.ph2091.preheader ]
  %gep2385.i = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2384.i, i64 %indvars.iv2100.i
  %i.bko = load i16, ptr %gep2385.i, align 2, !tbaa !82
  %i.bkp = add i16 %i.bko, %.01984.i              ; 2 uses
  %indvars.iv.next2101.i = add nuw nsw i64 %indvars.iv2100.i, 1
  %.not1692.not.i = icmp samesign ult i64 %indvars.iv2100.i, %i.bka
  br i1 %.not1692.not.i, label %vec.epilog.scalar.ph2091, label %.loopexit2122, !llvm.loop !389

.loopexit2122:                                    ; preds = %vec.epilog.scalar.ph2091, %vec.epilog.middle.block2101, %middle.block2085
  %.lcssa1750 = phi i16 [ %i.bkn, %vec.epilog.middle.block2101 ], [ %i.bki, %middle.block2085 ], [ %i.bkp, %vec.epilog.scalar.ph2091 ]
  %i.bkq = getelementptr inbounds nuw i8, ptr %i.acu, i64 1992182
  %i.bkr = getelementptr inbounds nuw [2 x i8], ptr %i.bkq, i64 %.81459.lcssa.i228
  store i16 %.lcssa1750, ptr %i.bkr, align 2, !tbaa !82
  %i.bks = getelementptr inbounds nuw i8, ptr %i.acu, i64 8092
  %i.bkt = getelementptr inbounds nuw [2 x i8], ptr %i.bks, i64 %.81459.lcssa.i228
  %i.bku = load i16, ptr %i.bkt, align 2, !tbaa !82 ; 2 uses
  %.not1693.i = icmp eq i16 %i.bku, 0
  br i1 %.not1693.i, label %bb.mk, label %bb.mj

bb.mj:                                            ; preds = %.loopexit2122
  %i.bkv = load ptr, ptr %0, align 8, !tbaa !40
  %i.bkw = zext i16 %i.bku to i64
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.bkv, i32 noundef 16, ptr noundef nonnull @.str.649, ptr noundef nonnull @.str.408, i64 noundef %i.bkw, i64 noundef 0) #10
  br label %.thread1807.i

bb.mk:                                            ; preds = %.loopexit2122, %._crit_edge1970.i
  %i.bkx = phi i32 [ %i.bhz, %.loopexit2122 ], [ %i.bhw, %._crit_edge1970.i ] ; 2 uses
  %i.bky = getelementptr inbounds nuw i8, ptr %i.acu, i64 1994182
  %i.bkz = getelementptr inbounds nuw i8, ptr %i.adn, i64 1412
  %i.bla = getelementptr inbounds nuw i8, ptr %i.adn, i64 5412
  %i.blb = getelementptr inbounds nuw i8, ptr %i.adn, i64 3412
  %i.blc = getelementptr inbounds nuw i8, ptr %i.adn, i64 7412
  %wide.trip.count2105.i = zext nneg i32 %i.bkx to i64
  br label %bb.ml

bb.ml:                                            ; preds = %bb.ms, %bb.mk
  %indvars.iv2107.i = phi i64 [ 0, %bb.mk ], [ %indvars.iv.next2108.i, %bb.ms ] ; 7 uses
  %.014281987.i = phi i32 [ 0, %bb.mk ], [ %i.bmc, %bb.ms ]
  %i.bld = getelementptr inbounds nuw [2 x i8], ptr %i.bky, i64 %indvars.iv2107.i ; 2 uses
  store i16 0, ptr %i.bld, align 2, !tbaa !82
  %i.ble = getelementptr inbounds nuw [2 x i8], ptr %i.bkz, i64 %indvars.iv2107.i
  %i.blf = getelementptr inbounds nuw [2 x i8], ptr %i.bla, i64 %indvars.iv2107.i
  %i.blg = getelementptr inbounds nuw [2 x i8], ptr %i.blb, i64 %indvars.iv2107.i
  %i.blh = getelementptr inbounds nuw [2 x i8], ptr %i.blc, i64 %indvars.iv2107.i
  br label %bb.mm

bb.mm:                                            ; preds = %bb.mr, %bb.ml
  %i.bli = phi i16 [ 0, %bb.ml ], [ %i.bma, %bb.mr ] ; 5 uses
  %indvars.iv2102.i = phi i64 [ 0, %bb.ml ], [ %indvars.iv.next2103.i, %bb.mr ] ; 3 uses
  %i.blj = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %indvars.iv2102.i
  %i.blk = load i16, ptr %i.blj, align 2, !tbaa !82 ; 2 uses
  %i.bll = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %indvars.iv2102.i
  %i.blm = load i16, ptr %i.bll, align 2, !tbaa !82 ; 2 uses
  %i.bln = load i16, ptr %i.ble, align 2, !tbaa !82 ; 2 uses
  %.not1697.i = icmp ult i16 %i.blk, %i.bln
  br i1 %.not1697.i, label %bb.mr, label %bb.mn

bb.mn:                                            ; preds = %bb.mm
  %i.blo = zext i16 %i.bln to i32
  %i.blp = zext i16 %i.blk to i32
  %i.blq = load i16, ptr %i.blf, align 2, !tbaa !82
  %i.blr = zext i16 %i.blq to i32
  %i.bls = add nuw nsw i32 %i.blr, %i.blo
  %.not1698.i = icmp samesign ult i32 %i.bls, %i.blp
  br i1 %.not1698.i, label %bb.mr, label %bb.mo

bb.mo:                                            ; preds = %bb.mn
  %i.blt = load i16, ptr %i.blg, align 2, !tbaa !82 ; 2 uses
  %.not1699.i = icmp ult i16 %i.blm, %i.blt
  br i1 %.not1699.i, label %bb.mr, label %bb.mp

bb.mp:                                            ; preds = %bb.mo
end_hunk_1
begin_hunk_2_@cbs_h266_read_pps:bb.a

bb.di:                                            ; preds = %.thread1579, %bb.dh
  %i.sx = phi i16 [ %.pre2025, %.thread1579 ], [ %i.so, %bb.dh ]
  %.not1893 = icmp eq i16 %i.sx, 0
  br i1 %.not1893, label %._crit_edge1872, label %.lr.ph1871

.lr.ph1871:                                       ; preds = %bb.di
  %i.sy = getelementptr inbounds nuw i8, ptr %2, i64 2000222 ; 2 uses
  %i.sz = getelementptr inbounds nuw i8, ptr %i.al, i64 4
  %i.ta = getelementptr inbounds nuw i8, ptr %2, i64 4092 ; 4 uses
  %i.tb = getelementptr inbounds nuw i8, ptr %2, i64 4090 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %2, i64 6092 ; 4 uses
  %i.td = getelementptr inbounds nuw i8, ptr %i.an, i64 4
  %i.te = getelementptr inbounds nuw i8, ptr %2, i64 8092 ; 2 uses
  %i.tf = getelementptr inbounds nuw i8, ptr %2, i64 2002222 ; 3 uses
  %i.tg = getelementptr inbounds nuw i8, ptr %2, i64 1992182 ; 7 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.ap, i64 4
  %i.ti = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.tk = getelementptr inbounds nuw i8, ptr %2, i64 10092
  %i.tl = getelementptr inbounds nuw i8, ptr %i.at, i64 4
  %i.tm = getelementptr inbounds nuw i8, ptr %2, i64 1990092 ; 2 uses
  br label %bb.dj

bb.dj:                                            ; preds = %.lr.ph1871, %bb.ep
  %.012091869 = phi i16 [ 0, %.lr.ph1871 ], [ %.11210, %bb.ep ] ; 9 uses
  %.812421867 = phi i32 [ 0, %.lr.ph1871 ], [ %i.adl, %bb.ep ] ; 10 uses
  %i.tn = zext nneg i32 %.812421867 to i64        ; 26 uses
  %i.to = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %i.tn
  store i16 %.012091869, ptr %i.to, align 2, !tbaa !82
  %i.tp = zext i16 %.012091869 to i32             ; 2 uses
  %i.tq = load i16, ptr %i.qm, align 8, !tbaa !234 ; 4 uses
  %i.tr = udiv i16 %.012091869, %i.tq             ; 7 uses
  %i.ts = urem i16 %.012091869, %i.tq             ; 6 uses
  %i.tt = zext i16 %i.tr to i32                   ; 2 uses
  %i.tu = load i16, ptr %i.rl, align 2, !tbaa !237
  %.not1460 = icmp ult i16 %i.tr, %i.tu
  br i1 %.not1460, label %bb.dk, label %.thread1608

bb.dk:                                            ; preds = %bb.dj
  %i.tv = zext i16 %i.tq to i32                   ; 2 uses
  %i.tw = zext i16 %i.ts to i32                   ; 2 uses
  %i.tx = add nsw i32 %i.tv, -1
  %.not1461 = icmp eq i32 %i.tx, %i.tw
  br i1 %.not1461, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak) #10
  store i32 1, ptr %i.al, align 4, !tbaa !51
  store i32 %.812421867, ptr %i.sz, align 4, !tbaa !51
  %i.ty = xor i32 %i.tw, -1
  %i.tz = add nsw i32 %i.ty, %i.tv
  %i.ua = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.406, ptr noundef nonnull %i.al, ptr noundef nonnull %i.ak, i32 noundef 0, i32 noundef %i.tz) #10 ; 2 uses
  %i.ub = icmp sgt i32 %i.ua, -1
  br i1 %i.ub, label %.thread1581, label %bb.dm

.thread1581:                                      ; preds = %bb.dl
  %i.uc = load i32, ptr %i.ak, align 4, !tbaa !51
  %i.ud = trunc i32 %i.uc to i16
  %i.ue = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %i.tn
  store i16 %i.ud, ptr %i.ue, align 2, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #10
  br label %bb.do

bb.dm:                                            ; preds = %bb.dl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak) #10
  br label %.thread1608

bb.dn:                                            ; preds = %bb.dk
  %i.uf = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %i.tn
  store i16 0, ptr %i.uf, align 2, !tbaa !82
  br label %bb.do

bb.do:                                            ; preds = %.thread1581, %bb.dn
  %i.ug = load i16, ptr %i.rl, align 2, !tbaa !237
  %i.uh = zext i16 %i.ug to i32                   ; 2 uses
  %i.ui = add nsw i32 %i.uh, -1
  %.not1462 = icmp eq i32 %i.ui, %i.tt
  br i1 %.not1462, label %bb.ds, label %bb.dp

bb.dp:                                            ; preds = %bb.do
  %i.uj = load i8, ptr %i.tb, align 2, !tbaa !364
  %i.uk = icmp ne i8 %i.uj, 0
  %i.ul = icmp eq i16 %i.ts, 0
  %or.cond = or i1 %i.ul, %i.uk
  br i1 %or.cond, label %bb.dq, label %.thread2153

bb.dq:                                            ; preds = %bb.dp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am) #10
  store i32 1, ptr %i.an, align 4, !tbaa !51
  store i32 %.812421867, ptr %i.td, align 4, !tbaa !51
  %i.um = xor i32 %i.tt, -1
  %i.un = add nsw i32 %i.uh, %i.um
  %i.uo = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.407, ptr noundef nonnull %i.an, ptr noundef nonnull %i.am, i32 noundef 0, i32 noundef %i.un) #10 ; 2 uses
  %i.up = icmp sgt i32 %i.uo, -1
  br i1 %i.up, label %.thread1583, label %bb.dr

.thread1583:                                      ; preds = %bb.dq
  %i.uq = load i32, ptr %i.am, align 4, !tbaa !51
  %i.ur = trunc i32 %i.uq to i16                  ; 2 uses
  %i.us = getelementptr inbounds nuw [2 x i8], ptr %i.tc, i64 %i.tn
  store i16 %i.ur, ptr %i.us, align 2, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #10
  br label %bb.dt

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am) #10
  br label %.thread1608

bb.ds:                                            ; preds = %bb.do
  %i.ut = getelementptr inbounds nuw [2 x i8], ptr %i.tc, i64 %i.tn
  store i16 0, ptr %i.ut, align 2, !tbaa !82
  br label %bb.dt

.thread2153:                                      ; preds = %bb.dp
  %i.uu = getelementptr [2 x i8], ptr %i.tc, i64 %i.tn ; 2 uses
  %i.uv = getelementptr i8, ptr %i.uu, i64 -2
  %i.uw = load i16, ptr %i.uv, align 2, !tbaa !82 ; 2 uses
  store i16 %i.uw, ptr %i.uu, align 2, !tbaa !82
  br label %iter.check2384

bb.dt:                                            ; preds = %.thread1583, %bb.ds
  %i.ux = phi i16 [ %i.ur, %.thread1583 ], [ 0, %bb.ds ] ; 2 uses
  %.not1894 = icmp eq i16 %i.ts, 0
  br i1 %.not1894, label %.preheader1751, label %iter.check2384

iter.check2384:                                   ; preds = %.thread2153, %bb.dt
  %i.uy = phi i16 [ %i.uw, %.thread2153 ], [ %i.ux, %bb.dt ] ; 3 uses
  %i.uz = zext i16 %i.ts to i64                   ; 4 uses
  %umax2366 = call i64 @llvm.umax.i64(i64 %i.uz, i64 1) ; 3 uses
  %min.iters.check2367 = icmp ult i16 %i.ts, 4
  br i1 %min.iters.check2367, label %.lr.ph1836.preheader, label %vector.main.loop.iter.check2368

vector.main.loop.iter.check2368:                  ; preds = %iter.check2384
  %min.iters.check2369 = icmp ult i16 %i.ts, 16
  br i1 %min.iters.check2369, label %vec.epilog.ph2388, label %vector.ph2370

vector.ph2370:                                    ; preds = %vector.main.loop.iter.check2368
  %i.va = and i64 %umax2366, 12
  %n.vec2371 = and i64 %umax2366, 65520           ; 4 uses
  br label %vector.body2372

vector.body2372:                                  ; preds = %vector.body2372, %vector.ph2370
  %index2373 = phi i64 [ 0, %vector.ph2370 ], [ %index.next2378, %vector.body2372 ] ; 2 uses
  %vec.phi2374.a = phi <8 x i16> [ zeroinitializer, %vector.ph2370 ], [ %i.vd, %vector.body2372 ]
  %vec.phi2375 = phi <8 x i16> [ zeroinitializer, %vector.ph2370 ], [ %i.ve, %vector.body2372 ]
  %i.vb = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %index2373 ; 2 uses
  %i.vc = getelementptr inbounds nuw i8, ptr %i.vb, i64 16
  %wide.load2376.a = load <8 x i16>, ptr %i.vb, align 2, !tbaa !82
  %wide.load2377 = load <8 x i16>, ptr %i.vc, align 2, !tbaa !82
  %i.vd = add <8 x i16> %wide.load2376.a, %vec.phi2374.a ; 2 uses
  %i.ve = add <8 x i16> %wide.load2377, %vec.phi2375 ; 2 uses
  %index.next2378 = add nuw i64 %index2373, 16    ; 2 uses
  %i.vf = icmp eq i64 %index.next2378, %n.vec2371
  br i1 %i.vf, label %middle.block2379, label %vector.body2372, !llvm.loop !601

middle.block2379:                                 ; preds = %vector.body2372
  %bin.rdx2380 = add <8 x i16> %i.ve, %i.vd
  %i.vg = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2380) ; 3 uses
  %cmp.n2381 = icmp eq i64 %n.vec2371, %i.uz
  br i1 %cmp.n2381, label %.preheader1751, label %vec.epilog.iter.check2386

vec.epilog.iter.check2386:                        ; preds = %middle.block2379
  %min.epilog.iters.check2387 = icmp eq i64 %i.va, 0
  br i1 %min.epilog.iters.check2387, label %.lr.ph1836.preheader, label %vec.epilog.ph2388, !prof !366

vec.epilog.ph2388:                                ; preds = %vector.main.loop.iter.check2368, %vec.epilog.iter.check2386
  %vec.epilog.resume.val2382 = phi i64 [ %n.vec2371, %vec.epilog.iter.check2386 ], [ 0, %vector.main.loop.iter.check2368 ]
  %bc.merge.rdx2383 = phi i16 [ %i.vg, %vec.epilog.iter.check2386 ], [ 0, %vector.main.loop.iter.check2368 ]
  %n.vec2389 = and i64 %umax2366, 65532           ; 3 uses
  %i.vh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2383, i64 0
  br label %vec.epilog.vector.body2390

vec.epilog.vector.body2390:                       ; preds = %vec.epilog.vector.body2390, %vec.epilog.ph2388
  %index2391 = phi i64 [ %vec.epilog.resume.val2382, %vec.epilog.ph2388 ], [ %index.next2394, %vec.epilog.vector.body2390 ] ; 2 uses
  %vec.phi2392 = phi <4 x i16> [ %i.vh, %vec.epilog.ph2388 ], [ %i.vj, %vec.epilog.vector.body2390 ]
  %i.vi = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %index2391
  %wide.load2393 = load <4 x i16>, ptr %i.vi, align 2, !tbaa !82
  %i.vj = add <4 x i16> %wide.load2393, %vec.phi2392 ; 2 uses
  %index.next2394 = add nuw i64 %index2391, 4     ; 2 uses
  %i.vk = icmp eq i64 %index.next2394, %n.vec2389
  br i1 %i.vk, label %vec.epilog.middle.block2395, label %vec.epilog.vector.body2390, !llvm.loop !602

vec.epilog.middle.block2395:                      ; preds = %vec.epilog.vector.body2390
  %i.vl = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.vj) ; 2 uses
  %cmp.n2396 = icmp eq i64 %n.vec2389, %i.uz
  br i1 %cmp.n2396, label %.preheader1751, label %.lr.ph1836.preheader

.lr.ph1836.preheader:                             ; preds = %iter.check2384, %vec.epilog.iter.check2386, %vec.epilog.middle.block2395
  %indvars.iv1985.ph = phi i64 [ 0, %iter.check2384 ], [ %n.vec2371, %vec.epilog.iter.check2386 ], [ %n.vec2389, %vec.epilog.middle.block2395 ]
  %.012071834.ph = phi i16 [ 0, %iter.check2384 ], [ %i.vg, %vec.epilog.iter.check2386 ], [ %i.vl, %vec.epilog.middle.block2395 ]
  br label %.lr.ph1836

.preheader1751:                                   ; preds = %.lr.ph1836, %middle.block2379, %vec.epilog.middle.block2395, %bb.dt
  %i.vm = phi i16 [ %i.ux, %bb.dt ], [ %i.uy, %middle.block2379 ], [ %i.uy, %vec.epilog.middle.block2395 ], [ %i.uy, %.lr.ph1836 ] ; 4 uses
  %.01207.lcssa = phi i16 [ 0, %bb.dt ], [ %i.vg, %middle.block2379 ], [ %i.vl, %vec.epilog.middle.block2395 ], [ %i.wc, %.lr.ph1836 ] ; 7 uses
  %.not1895 = icmp ugt i16 %i.tq, %.012091869
  br i1 %.not1895, label %._crit_edge1841, label %iter.check2351

iter.check2351:                                   ; preds = %.preheader1751
  %i.vn = zext i16 %i.tr to i64                   ; 4 uses
  %umax = call i64 @llvm.umax.i64(i64 %i.vn, i64 1) ; 3 uses
  %min.iters.check2334 = icmp ult i16 %i.tr, 4
  br i1 %min.iters.check2334, label %.lr.ph1840.preheader, label %vector.main.loop.iter.check2335

vector.main.loop.iter.check2335:                  ; preds = %iter.check2351
  %min.iters.check2336 = icmp ult i16 %i.tr, 16
  br i1 %min.iters.check2336, label %vec.epilog.ph2355, label %vector.ph2337

vector.ph2337:                                    ; preds = %vector.main.loop.iter.check2335
  %i.vo = and i64 %umax, 12
  %n.vec2338 = and i64 %umax, 65520               ; 4 uses
  br label %vector.body2339

vector.body2339:                                  ; preds = %vector.body2339, %vector.ph2337
  %index2340 = phi i64 [ 0, %vector.ph2337 ], [ %index.next2345, %vector.body2339 ] ; 2 uses
  %vec.phi2341 = phi <8 x i16> [ zeroinitializer, %vector.ph2337 ], [ %i.vr, %vector.body2339 ]
  %vec.phi2342 = phi <8 x i16> [ zeroinitializer, %vector.ph2337 ], [ %i.vs, %vector.body2339 ]
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index2340 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load2343 = load <8 x i16>, ptr %i.vp, align 2, !tbaa !82
  %wide.load2344 = load <8 x i16>, ptr %i.vq, align 2, !tbaa !82
  %i.vr = add <8 x i16> %wide.load2343, %vec.phi2341 ; 2 uses
  %i.vs = add <8 x i16> %wide.load2344, %vec.phi2342 ; 2 uses
  %index.next2345 = add nuw i64 %index2340, 16    ; 2 uses
  %i.vt = icmp eq i64 %index.next2345, %n.vec2338
  br i1 %i.vt, label %middle.block2346, label %vector.body2339, !llvm.loop !603

middle.block2346:                                 ; preds = %vector.body2339
  %bin.rdx2347 = add <8 x i16> %i.vs, %i.vr
  %i.vu = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2347) ; 3 uses
  %cmp.n2348 = icmp eq i64 %n.vec2338, %i.vn
  br i1 %cmp.n2348, label %._crit_edge1841, label %vec.epilog.iter.check2353

vec.epilog.iter.check2353:                        ; preds = %middle.block2346
  %min.epilog.iters.check2354 = icmp eq i64 %i.vo, 0
  br i1 %min.epilog.iters.check2354, label %.lr.ph1840.preheader, label %vec.epilog.ph2355, !prof !366

vec.epilog.ph2355:                                ; preds = %vector.main.loop.iter.check2335, %vec.epilog.iter.check2353
  %vec.epilog.resume.val2349 = phi i64 [ %n.vec2338, %vec.epilog.iter.check2353 ], [ 0, %vector.main.loop.iter.check2335 ]
  %bc.merge.rdx2350 = phi i16 [ %i.vu, %vec.epilog.iter.check2353 ], [ 0, %vector.main.loop.iter.check2335 ]
  %n.vec2356 = and i64 %umax, 65532               ; 3 uses
  %i.vv = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2350, i64 0
  br label %vec.epilog.vector.body2357

vec.epilog.vector.body2357:                       ; preds = %vec.epilog.vector.body2357, %vec.epilog.ph2355
  %index2358 = phi i64 [ %vec.epilog.resume.val2349, %vec.epilog.ph2355 ], [ %index.next2361, %vec.epilog.vector.body2357 ] ; 2 uses
  %vec.phi2359 = phi <4 x i16> [ %i.vv, %vec.epilog.ph2355 ], [ %i.vx, %vec.epilog.vector.body2357 ]
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index2358
  %wide.load2360 = load <4 x i16>, ptr %i.vw, align 2, !tbaa !82
  %i.vx = add <4 x i16> %wide.load2360, %vec.phi2359 ; 2 uses
  %index.next2361 = add nuw i64 %index2358, 4     ; 2 uses
  %i.vy = icmp eq i64 %index.next2361, %n.vec2356
  br i1 %i.vy, label %vec.epilog.middle.block2362, label %vec.epilog.vector.body2357, !llvm.loop !604

vec.epilog.middle.block2362:                      ; preds = %vec.epilog.vector.body2357
  %i.vz = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.vx) ; 2 uses
  %cmp.n2363 = icmp eq i64 %n.vec2356, %i.vn
  br i1 %cmp.n2363, label %._crit_edge1841, label %.lr.ph1840.preheader

.lr.ph1840.preheader:                             ; preds = %iter.check2351, %vec.epilog.iter.check2353, %vec.epilog.middle.block2362
  %indvars.iv1987.ph = phi i64 [ 0, %iter.check2351 ], [ %n.vec2338, %vec.epilog.iter.check2353 ], [ %n.vec2356, %vec.epilog.middle.block2362 ]
  %.012051839.ph = phi i16 [ 0, %iter.check2351 ], [ %i.vu, %vec.epilog.iter.check2353 ], [ %i.vz, %vec.epilog.middle.block2362 ]
  br label %.lr.ph1840

.lr.ph1836:                                       ; preds = %.lr.ph1836.preheader, %.lr.ph1836
  %indvars.iv1985 = phi i64 [ %indvars.iv.next1986, %.lr.ph1836 ], [ %indvars.iv1985.ph, %.lr.ph1836.preheader ] ; 2 uses
  %.012071834 = phi i16 [ %i.wc, %.lr.ph1836 ], [ %.012071834.ph, %.lr.ph1836.preheader ]
  %i.wa = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %indvars.iv1985
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !82
  %i.wc = add i16 %i.wb, %.012071834              ; 2 uses
  %indvars.iv.next1986 = add nuw nsw i64 %indvars.iv1985, 1 ; 2 uses
  %i.wd = icmp samesign ult i64 %indvars.iv.next1986, %i.uz
  br i1 %i.wd, label %.lr.ph1836, label %.preheader1751, !llvm.loop !605

.lr.ph1840:                                       ; preds = %.lr.ph1840.preheader, %.lr.ph1840
  %indvars.iv1987 = phi i64 [ %indvars.iv.next1988, %.lr.ph1840 ], [ %indvars.iv1987.ph, %.lr.ph1840.preheader ] ; 2 uses
  %.012051839 = phi i16 [ %i.wg, %.lr.ph1840 ], [ %.012051839.ph, %.lr.ph1840.preheader ]
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv1987
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !82
  %i.wg = add i16 %i.wf, %.012051839              ; 2 uses
  %indvars.iv.next1988 = add nuw nsw i64 %indvars.iv1987, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next1988, %i.vn
  br i1 %i.wh, label %.lr.ph1840, label %._crit_edge1841, !llvm.loop !606

._crit_edge1841:                                  ; preds = %.lr.ph1840, %middle.block2346, %vec.epilog.middle.block2362, %.preheader1751
  %.01205.lcssa = phi i16 [ 0, %.preheader1751 ], [ %i.vz, %vec.epilog.middle.block2362 ], [ %i.vu, %middle.block2346 ], [ %i.wg, %.lr.ph1840 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %i.tn
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !82
  %i.wk = icmp eq i16 %i.wj, 0
  %i.wl = icmp eq i16 %i.vm, 0
  %or.cond2219 = select i1 %i.wk, i1 %i.wl, i1 false
  br i1 %or.cond2219, label %bb.du, label %iter.check2320

bb.du:                                            ; preds = %._crit_edge1841
  %i.wm = zext i16 %i.tr to i64
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.wm ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !82 ; 2 uses
  %i.wp = zext i16 %i.wo to i32                   ; 2 uses
  %i.wq = icmp ugt i16 %i.wo, 1
  br i1 %i.wq, label %bb.dv, label %bb.ef

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #10
  store i32 1, ptr %i.ap, align 4, !tbaa !51
  store i32 %.812421867, ptr %i.th, align 4, !tbaa !51
  %i.wr = add nsw i32 %i.wp, -1
  %i.ws = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.408, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ao, i32 noundef 0, i32 noundef %i.wr) #10 ; 2 uses
  %i.wt = icmp sgt i32 %i.ws, -1
  br i1 %i.wt, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #10
  br label %.thread1608

bb.dx:                                            ; preds = %bb.dv
  %i.wu = load i32, ptr %i.ao, align 4, !tbaa !51 ; 2 uses
  %i.wv = trunc i32 %i.wu to i16                  ; 2 uses
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %i.tn ; 2 uses
  store i16 %i.wv, ptr %i.ww, align 2, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #10
  %i.wx = icmp eq i16 %i.wv, 0
  br i1 %i.wx, label %.thread2155, label %bb.dy

.thread2155:                                      ; preds = %bb.dx
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.tn
  store i16 1, ptr %i.wy, align 2, !tbaa !82
  %i.wz = load i16, ptr %i.wn, align 2, !tbaa !82
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.tn
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !82
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.tn
  store i16 %.01207.lcssa, ptr %i.xb, align 2, !tbaa !82
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.tn
  store i16 %.01205.lcssa, ptr %i.xc, align 2, !tbaa !82
  br label %.lr.ph1864.preheader

bb.dy:                                            ; preds = %bb.dx
  %i.xd = and i32 %i.wu, 65535                    ; 2 uses
  %i.xe = add nuw nsw i32 %.812421867, %i.xd
  %i.xf = load i16, ptr %i.sp, align 8, !tbaa !363
  %i.xg = zext i16 %i.xf to i32
  %i.xh = add nuw nsw i32 %i.xg, 1
  %i.xi = icmp sgt i32 %i.xe, %i.xh
  br i1 %i.xi, label %.thread1608, label %.lr.ph1848

.lr.ph1848:                                       ; preds = %bb.dy
  %i.xj = getelementptr inbounds nuw [1980 x i8], ptr %i.tk, i64 %i.tn
  br label %bb.dz

bb.dz:                                            ; preds = %.lr.ph1848, %bb.eb
  %indvars.iv1993 = phi i64 [ 0, %.lr.ph1848 ], [ %indvars.iv.next1994, %bb.eb ] ; 4 uses
  %i.xk = phi i32 [ %i.xd, %.lr.ph1848 ], [ %i.yb, %bb.eb ]
  %.012041847 = phi i32 [ %i.wp, %.lr.ph1848 ], [ %i.xz, %bb.eb ] ; 3 uses
  %.112061846 = phi i16 [ %.01205.lcssa, %.lr.ph1848 ], [ %i.xy, %bb.eb ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq) #10
  store i32 2, ptr %i.ar, align 4, !tbaa !51
  store i32 %.812421867, ptr %i.ti, align 4, !tbaa !51
  %i.xl = trunc nuw nsw i64 %indvars.iv1993 to i32 ; 2 uses
  store i32 %i.xl, ptr %i.tj, align 4, !tbaa !51
  %.neg = add i32 %.012041847, %i.xl
  %i.xm = sub i32 %.neg, %i.xk
  %i.xn = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.409, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq, i32 noundef 0, i32 noundef %i.xm) #10 ; 2 uses
  %i.xo = icmp sgt i32 %i.xn, -1
  br i1 %i.xo, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #10
  br label %.thread1608

bb.eb:                                            ; preds = %bb.dz
  %i.xp = load i32, ptr %i.aq, align 4, !tbaa !51 ; 2 uses
  %i.xq = trunc i32 %i.xp to i16                  ; 2 uses
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.xj, i64 %indvars.iv1993
  store i16 %i.xq, ptr %i.xr, align 2, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #10
  %i.xs = add i16 %i.xq, 1                        ; 3 uses
  %i.xt = add nuw nsw i64 %indvars.iv1993, %i.tn  ; 3 uses
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.xt
  store i16 %i.xs, ptr %i.xu, align 2, !tbaa !82
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.xt
  store i16 %.01207.lcssa, ptr %i.xv, align 2, !tbaa !82
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.xt
  store i16 %.112061846, ptr %i.xw, align 2, !tbaa !82
  %i.xx = zext i16 %i.xs to i32
  %i.xy = add i16 %i.xs, %.112061846              ; 7 uses
  %i.xz = sub nsw i32 %.012041847, %i.xx          ; 7 uses
  %indvars.iv.next1994 = add nuw nsw i64 %indvars.iv1993, 1 ; 9 uses
  %i.ya = load i16, ptr %i.ww, align 2, !tbaa !82 ; 2 uses
  %i.yb = zext i16 %i.ya to i32                   ; 2 uses
  %i.yc = zext i16 %i.ya to i64
  %i.yd = icmp samesign ult i64 %indvars.iv.next1994, %i.yc
  br i1 %i.yd, label %bb.dz, label %bb.ec, !llvm.loop !607

bb.ec:                                            ; preds = %bb.eb
  %i.ye = getelementptr [1980 x i8], ptr %2, i64 %i.tn
  %i.yf = getelementptr [2 x i8], ptr %i.ye, i64 %indvars.iv.next1994
  %i.yg = getelementptr i8, ptr %i.yf, i64 10090
  %i.yh = load i16, ptr %i.yg, align 2, !tbaa !82 ; 2 uses
  %i.yi = zext i16 %i.yh to i32                   ; 4 uses
  %i.yj = add nuw nsw i32 %i.yi, 1                ; 5 uses
  %i.yk = add i32 %i.xz, %i.yi
  %i.yl = sdiv i32 %i.yk, %i.yj
  %i.ym = add nuw nsw i32 %.812421867, %i.yb
  %i.yn = add nsw i32 %i.ym, %i.yl
  %i.yo = load i16, ptr %i.sp, align 8, !tbaa !363
  %i.yp = zext i16 %i.yo to i32
  %i.yq = add nuw nsw i32 %i.yp, 1
  %i.yr = icmp sgt i32 %i.yn, %i.yq
  br i1 %i.yr, label %.thread1608, label %.preheader1749

.preheader1749:                                   ; preds = %bb.ec
  %i.ys = icmp sgt i32 %i.xz, %i.yj
  br i1 %i.ys, label %iter.check, label %._crit_edge1858

iter.check:                                       ; preds = %.preheader1749
  %i.yt = trunc i32 %i.yj to i16                  ; 8 uses
  %i.yu = xor i32 %i.yi, -1                       ; 2 uses
  %i.yv = add i32 %.012041847, -2
  %i.yw = add i32 %i.xp, 1
  %i.yx = and i32 %i.yw, 65535
  %i.yy = add nuw nsw i32 %i.yx, %i.yi
  %i.yz = sub i32 %i.yv, %i.yy
  %i.za = zext i32 %i.yz to i64
  %i.zb = zext i16 %i.yh to i64
  %i.zc = add nuw nsw i64 %i.zb, 1
  %i.zd = udiv i64 %i.za, %i.zc                   ; 3 uses
  %i.ze = add nuw nsw i64 %i.zd, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.zd, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2278 = icmp samesign ult i64 %i.zd, 15
  br i1 %min.iters.check2278, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zf = and i64 %i.ze, 12
  %n.vec = and i64 %i.ze, 8589934576              ; 6 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.yt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.zg = add nuw i64 %indvars.iv.next1994, %n.vec ; 2 uses
  %i.zh = trunc i64 %n.vec to i32
  %i.zi = mul i32 %i.zh, %i.yu
end_hunk_2
begin_hunk_3_@cbs_h266_read_pps:bb.a
  %cmp.n2332 = icmp eq i64 %i.abn, %n.vec2325
  br i1 %cmp.n2332, label %.loopexit2497, label %vec.epilog.scalar.ph2321.preheader

vec.epilog.scalar.ph2321.preheader:               ; preds = %iter.check2320, %vec.epilog.iter.check2322, %vec.epilog.middle.block2331
  %indvars.iv1989.ph = phi i64 [ 0, %iter.check2320 ], [ %n.vec2311, %vec.epilog.iter.check2322 ], [ %n.vec2325, %vec.epilog.middle.block2331 ]
  %.012021844.ph = phi i16 [ 0, %iter.check2320 ], [ %i.abu, %vec.epilog.iter.check2322 ], [ %i.abz, %vec.epilog.middle.block2331 ]
  br label %vec.epilog.scalar.ph2321

vec.epilog.scalar.ph2321:                         ; preds = %vec.epilog.scalar.ph2321.preheader, %vec.epilog.scalar.ph2321
  %indvars.iv1989 = phi i64 [ %indvars.iv.next1990, %vec.epilog.scalar.ph2321 ], [ %indvars.iv1989.ph, %vec.epilog.scalar.ph2321.preheader ] ; 3 uses
  %.012021844 = phi i16 [ %i.acb, %vec.epilog.scalar.ph2321 ], [ %.012021844.ph, %vec.epilog.scalar.ph2321.preheader ]
  %gep = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep, i64 %indvars.iv1989
  %i.aca = load i16, ptr %gep, align 2, !tbaa !82
  %i.acb = add i16 %i.aca, %.012021844            ; 2 uses
  %indvars.iv.next1990 = add nuw nsw i64 %indvars.iv1989, 1
  %exitcond1992.not = icmp eq i64 %indvars.iv1989, %i.abl
  br i1 %exitcond1992.not, label %.loopexit2497, label %vec.epilog.scalar.ph2321, !llvm.loop !614

.loopexit2497:                                    ; preds = %vec.epilog.scalar.ph2321, %vec.epilog.middle.block2331, %middle.block2317
  %.lcssa2236 = phi i16 [ %i.abz, %vec.epilog.middle.block2331 ], [ %i.abu, %middle.block2317 ], [ %i.acb, %vec.epilog.scalar.ph2321 ]
  %i.acc = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.tn
  store i16 %.lcssa2236, ptr %i.acc, align 2, !tbaa !82
  %i.acd = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.tn
  store i16 %.01207.lcssa, ptr %i.acd, align 2, !tbaa !82
  %i.ace = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.tn
  store i16 %.01205.lcssa, ptr %i.ace, align 2, !tbaa !82
  br label %bb.eg

bb.eg:                                            ; preds = %._crit_edge1865, %.loopexit2497
  %.101244 = phi i32 [ %i.abg, %._crit_edge1865 ], [ %.812421867, %.loopexit2497 ] ; 5 uses
  %i.acf = load i16, ptr %i.sp, align 8, !tbaa !363
  %i.acg = zext i16 %i.acf to i32
  %i.ach = icmp slt i32 %.101244, %i.acg
  br i1 %i.ach, label %bb.eh, label %bb.ep

bb.eh:                                            ; preds = %bb.eg
  %i.aci = load i8, ptr %i.tb, align 2, !tbaa !364
  %.not1464 = icmp eq i8 %i.aci, 0
  br i1 %.not1464, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as) #10
  store i32 1, ptr %i.at, align 4, !tbaa !51
  store i32 %.101244, ptr %i.tl, align 4, !tbaa !51
  %i.acj = sub nsw i32 0, %i.tp
  %i.ack = load i16, ptr %i.rn, align 4, !tbaa !121
  %i.acl = zext i16 %i.ack to i32
  %i.acm = xor i32 %i.tp, -1
  %i.acn = add nsw i32 %i.acl, %i.acm
  %i.aco = call i32 @ff_cbs_read_se_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.410, ptr noundef nonnull %i.at, ptr noundef nonnull %i.as, i32 noundef %i.acj, i32 noundef %i.acn) #10 ; 2 uses
  %i.acp = icmp sgt i32 %i.aco, -1
  br i1 %i.acp, label %bb.ek, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #10
  br label %.thread1608

bb.ek:                                            ; preds = %bb.ei
  %i.acq = load i32, ptr %i.as, align 4, !tbaa !51
  %i.acr = trunc i32 %i.acq to i16                ; 3 uses
  %i.acs = sext i32 %.101244 to i64
  %i.act = getelementptr inbounds [2 x i8], ptr %i.tm, i64 %i.acs ; 2 uses
  store i16 %i.acr, ptr %i.act, align 2, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as) #10
  %i.acu = icmp eq i16 %i.acr, 0
  br i1 %i.acu, label %bb.el, label %bb.em

bb.el:                                            ; preds = %bb.ek
  %i.acv = load ptr, ptr %0, align 8, !tbaa !40
  call void (ptr, i32, ptr, ...) @av_log(ptr noundef %i.acv, i32 noundef 16, ptr noundef nonnull @.str.411) #10
  %.pre2026 = load i16, ptr %i.act, align 2, !tbaa !82
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.ek
  %i.acw = phi i16 [ %.pre2026, %bb.el ], [ %i.acr, %bb.ek ]
  %i.acx = add i16 %i.acw, %.012091869
  br label %bb.ep

bb.en:                                            ; preds = %bb.eh
  %i.acy = sext i32 %.101244 to i64               ; 3 uses
  %i.acz = getelementptr inbounds [2 x i8], ptr %i.tm, i64 %i.acy
  store i16 0, ptr %i.acz, align 2, !tbaa !82
  %i.ada = getelementptr inbounds [2 x i8], ptr %i.ta, i64 %i.acy
  %i.adb = load i16, ptr %i.ada, align 2, !tbaa !82
  %i.adc = add i16 %.012091869, 1
  %i.add = add i16 %i.adc, %i.adb                 ; 3 uses
  %i.ade = load i16, ptr %i.qm, align 8, !tbaa !234 ; 2 uses
  %i.adf = urem i16 %i.add, %i.ade
  %i.adg = icmp eq i16 %i.adf, 0
  br i1 %i.adg, label %bb.eo, label %bb.ep

bb.eo:                                            ; preds = %bb.en
  %i.adh = getelementptr inbounds [2 x i8], ptr %i.tc, i64 %i.acy
  %i.adi = load i16, ptr %i.adh, align 2, !tbaa !82
  %i.adj = mul i16 %i.adi, %i.ade
  %i.adk = add i16 %i.adj, %i.add
  br label %bb.ep

bb.ep:                                            ; preds = %bb.eg, %bb.en, %bb.eo, %bb.em
  %.11210 = phi i16 [ %i.acx, %bb.em ], [ %i.adk, %bb.eo ], [ %i.add, %bb.en ], [ %.012091869, %bb.eg ] ; 2 uses
  %i.adl = add nsw i32 %.101244, 1                ; 3 uses
  %i.adm = load i16, ptr %i.sp, align 8, !tbaa !363
  %i.adn = zext i16 %i.adm to i32                 ; 2 uses
  %i.ado = icmp slt i32 %i.adl, %i.adn
  br i1 %i.ado, label %bb.dj, label %._crit_edge1872, !llvm.loop !615

._crit_edge1872:                                  ; preds = %bb.ep, %bb.di
  %.81242.lcssa = phi i32 [ 0, %bb.di ], [ %i.adl, %bb.ep ] ; 2 uses
  %.01209.lcssa = phi i16 [ 0, %bb.di ], [ %.11210, %bb.ep ] ; 4 uses
  %.lcssa1773 = phi i32 [ 0, %bb.di ], [ %i.adn, %bb.ep ] ; 2 uses
  %i.adp = icmp eq i32 %.81242.lcssa, %.lcssa1773
  br i1 %i.adp, label %bb.eq, label %bb.er

bb.eq:                                            ; preds = %._crit_edge1872
  %i.adq = getelementptr inbounds nuw i8, ptr %2, i64 2000222
  %i.adr = zext nneg i32 %.81242.lcssa to i64     ; 8 uses
  %i.ads = getelementptr inbounds nuw [2 x i8], ptr %i.adq, i64 %i.adr
  store i16 %.01209.lcssa, ptr %i.ads, align 2, !tbaa !82
  %i.adt = getelementptr inbounds nuw i8, ptr %2, i64 2002222
  %i.adu = getelementptr inbounds nuw [2 x i8], ptr %i.adt, i64 %i.adr
  store i16 1, ptr %i.adu, align 2, !tbaa !82
  %i.adv = load i16, ptr %i.qm, align 8, !tbaa !234 ; 4 uses
  %i.adw = urem i16 %.01209.lcssa, %i.adv         ; 5 uses
  %i.adx = udiv i16 %.01209.lcssa, %i.adv         ; 5 uses
  %i.ady = load i16, ptr %i.rl, align 2, !tbaa !237
  %.not1451 = icmp ult i16 %i.adx, %i.ady
  br i1 %.not1451, label %.preheader1748, label %.thread1608

.preheader1748:                                   ; preds = %bb.eq
  %.not1898 = icmp eq i16 %i.adw, 0
  br i1 %.not1898, label %.preheader1747, label %iter.check2416

iter.check2416:                                   ; preds = %.preheader1748
  %i.adz = zext i16 %i.adw to i64                 ; 6 uses
  %min.iters.check2399 = icmp ult i16 %i.adw, 4
  br i1 %min.iters.check2399, label %vec.epilog.scalar.ph2417.preheader, label %vector.main.loop.iter.check2400

vector.main.loop.iter.check2400:                  ; preds = %iter.check2416
  %min.iters.check2401 = icmp ult i16 %i.adw, 16
  br i1 %min.iters.check2401, label %vec.epilog.ph2420, label %vector.ph2402

vector.ph2402:                                    ; preds = %vector.main.loop.iter.check2400
  %i.aea = and i64 %i.adz, 12
  %n.vec2403 = and i64 %i.adz, 65520              ; 4 uses
  br label %vector.body2404

vector.body2404:                                  ; preds = %vector.body2404, %vector.ph2402
  %index2405 = phi i64 [ 0, %vector.ph2402 ], [ %index.next2410, %vector.body2404 ] ; 2 uses
  %vec.phi2406.a = phi <8 x i16> [ zeroinitializer, %vector.ph2402 ], [ %i.aed, %vector.body2404 ]
  %vec.phi2407 = phi <8 x i16> [ zeroinitializer, %vector.ph2402 ], [ %i.aee, %vector.body2404 ]
  %i.aeb = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %index2405 ; 2 uses
  %i.aec = getelementptr inbounds nuw i8, ptr %i.aeb, i64 16
  %wide.load2408.a = load <8 x i16>, ptr %i.aeb, align 2, !tbaa !82
  %wide.load2409 = load <8 x i16>, ptr %i.aec, align 2, !tbaa !82
  %i.aed = add <8 x i16> %wide.load2408.a, %vec.phi2406.a ; 2 uses
  %i.aee = add <8 x i16> %wide.load2409, %vec.phi2407 ; 2 uses
  %index.next2410 = add nuw i64 %index2405, 16    ; 2 uses
  %i.aef = icmp eq i64 %index.next2410, %n.vec2403
  br i1 %i.aef, label %middle.block2411, label %vector.body2404, !llvm.loop !616

middle.block2411:                                 ; preds = %vector.body2404
  %bin.rdx2412 = add <8 x i16> %i.aee, %i.aed
  %i.aeg = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2412) ; 3 uses
  %cmp.n2413 = icmp eq i64 %n.vec2403, %i.adz
  br i1 %cmp.n2413, label %.preheader1747, label %vec.epilog.iter.check2418

vec.epilog.iter.check2418:                        ; preds = %middle.block2411
  %min.epilog.iters.check2419 = icmp eq i64 %i.aea, 0
  br i1 %min.epilog.iters.check2419, label %vec.epilog.scalar.ph2417.preheader, label %vec.epilog.ph2420, !prof !366

vec.epilog.ph2420:                                ; preds = %vector.main.loop.iter.check2400, %vec.epilog.iter.check2418
  %vec.epilog.resume.val2414 = phi i64 [ %n.vec2403, %vec.epilog.iter.check2418 ], [ 0, %vector.main.loop.iter.check2400 ]
  %bc.merge.rdx2415 = phi i16 [ %i.aeg, %vec.epilog.iter.check2418 ], [ 0, %vector.main.loop.iter.check2400 ]
  %n.vec2421 = and i64 %i.adz, 65532              ; 3 uses
  %i.aeh = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2415, i64 0
  br label %vec.epilog.vector.body2422

vec.epilog.vector.body2422:                       ; preds = %vec.epilog.vector.body2422, %vec.epilog.ph2420
  %index2423 = phi i64 [ %vec.epilog.resume.val2414, %vec.epilog.ph2420 ], [ %index.next2426, %vec.epilog.vector.body2422 ] ; 2 uses
  %vec.phi2424 = phi <4 x i16> [ %i.aeh, %vec.epilog.ph2420 ], [ %i.aej, %vec.epilog.vector.body2422 ]
  %i.aei = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %index2423
  %wide.load2425 = load <4 x i16>, ptr %i.aei, align 2, !tbaa !82
  %i.aej = add <4 x i16> %wide.load2425, %vec.phi2424 ; 2 uses
  %index.next2426 = add nuw i64 %index2423, 4     ; 2 uses
  %i.aek = icmp eq i64 %index.next2426, %n.vec2421
  br i1 %i.aek, label %vec.epilog.middle.block2427, label %vec.epilog.vector.body2422, !llvm.loop !617

vec.epilog.middle.block2427:                      ; preds = %vec.epilog.vector.body2422
  %i.ael = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.aej) ; 2 uses
  %cmp.n2428 = icmp eq i64 %n.vec2421, %i.adz
  br i1 %cmp.n2428, label %.preheader1747, label %vec.epilog.scalar.ph2417.preheader

vec.epilog.scalar.ph2417.preheader:               ; preds = %iter.check2416, %vec.epilog.iter.check2418, %vec.epilog.middle.block2427
  %indvars.iv2000.ph = phi i64 [ 0, %iter.check2416 ], [ %n.vec2403, %vec.epilog.iter.check2418 ], [ %n.vec2421, %vec.epilog.middle.block2427 ]
  %.112081877.ph = phi i16 [ 0, %iter.check2416 ], [ %i.aeg, %vec.epilog.iter.check2418 ], [ %i.ael, %vec.epilog.middle.block2427 ]
  br label %vec.epilog.scalar.ph2417

.preheader1747:                                   ; preds = %vec.epilog.scalar.ph2417, %middle.block2411, %vec.epilog.middle.block2427, %.preheader1748
  %.11208.lcssa = phi i16 [ 0, %.preheader1748 ], [ %i.ael, %vec.epilog.middle.block2427 ], [ %i.aeg, %middle.block2411 ], [ %i.afa, %vec.epilog.scalar.ph2417 ]
  %.not1899 = icmp ugt i16 %i.adv, %.01209.lcssa
  %.pre2032 = zext i16 %i.adx to i64              ; 5 uses
  br i1 %.not1899, label %iter.check2481, label %iter.check2449

iter.check2449:                                   ; preds = %.preheader1747
  %umax2431 = call i64 @llvm.umax.i64(i64 %.pre2032, i64 1) ; 3 uses
  %min.iters.check2432.a = icmp ult i16 %i.adx, 4
  br i1 %min.iters.check2432.a, label %.lr.ph1882.preheader, label %vector.main.loop.iter.check2433

vector.main.loop.iter.check2433:                  ; preds = %iter.check2449
  %min.iters.check2434 = icmp ult i16 %i.adx, 16
  br i1 %min.iters.check2434, label %vec.epilog.ph2453, label %vector.ph2435

vector.ph2435:                                    ; preds = %vector.main.loop.iter.check2433
  %i.aem = and i64 %umax2431, 12
  %n.vec2436 = and i64 %umax2431, 65520           ; 4 uses
  br label %vector.body2437

vector.body2437:                                  ; preds = %vector.body2437, %vector.ph2435
  %index2438 = phi i64 [ 0, %vector.ph2435 ], [ %index.next2443, %vector.body2437 ] ; 2 uses
  %vec.phi2439 = phi <8 x i16> [ zeroinitializer, %vector.ph2435 ], [ %i.aep, %vector.body2437 ]
  %vec.phi2440 = phi <8 x i16> [ zeroinitializer, %vector.ph2435 ], [ %i.aeq, %vector.body2437 ]
  %i.aen = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index2438 ; 2 uses
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.aen, i64 16
  %wide.load2441 = load <8 x i16>, ptr %i.aen, align 2, !tbaa !82
  %wide.load2442 = load <8 x i16>, ptr %i.aeo, align 2, !tbaa !82
  %i.aep = add <8 x i16> %wide.load2441, %vec.phi2439 ; 2 uses
  %i.aeq = add <8 x i16> %wide.load2442, %vec.phi2440 ; 2 uses
  %index.next2443 = add nuw i64 %index2438, 16    ; 2 uses
  %i.aer = icmp eq i64 %index.next2443, %n.vec2436
  br i1 %i.aer, label %middle.block2444, label %vector.body2437, !llvm.loop !618

middle.block2444:                                 ; preds = %vector.body2437
  %bin.rdx2445 = add <8 x i16> %i.aeq, %i.aep
  %i.aes = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2445) ; 3 uses
  %cmp.n2446 = icmp eq i64 %n.vec2436, %.pre2032
  br i1 %cmp.n2446, label %iter.check2481, label %vec.epilog.iter.check2451

vec.epilog.iter.check2451:                        ; preds = %middle.block2444
  %min.epilog.iters.check2452 = icmp eq i64 %i.aem, 0
  br i1 %min.epilog.iters.check2452, label %.lr.ph1882.preheader, label %vec.epilog.ph2453, !prof !366

vec.epilog.ph2453:                                ; preds = %vector.main.loop.iter.check2433, %vec.epilog.iter.check2451
  %vec.epilog.resume.val2447 = phi i64 [ %n.vec2436, %vec.epilog.iter.check2451 ], [ 0, %vector.main.loop.iter.check2433 ]
  %bc.merge.rdx2448 = phi i16 [ %i.aes, %vec.epilog.iter.check2451 ], [ 0, %vector.main.loop.iter.check2433 ]
  %n.vec2454 = and i64 %umax2431, 65532           ; 3 uses
  %i.aet = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2448, i64 0
  br label %vec.epilog.vector.body2455

vec.epilog.vector.body2455:                       ; preds = %vec.epilog.vector.body2455, %vec.epilog.ph2453
  %index2456 = phi i64 [ %vec.epilog.resume.val2447, %vec.epilog.ph2453 ], [ %index.next2459, %vec.epilog.vector.body2455 ] ; 2 uses
  %vec.phi2457 = phi <4 x i16> [ %i.aet, %vec.epilog.ph2453 ], [ %i.aev, %vec.epilog.vector.body2455 ]
  %i.aeu = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index2456
  %wide.load2458 = load <4 x i16>, ptr %i.aeu, align 2, !tbaa !82
  %i.aev = add <4 x i16> %wide.load2458, %vec.phi2457 ; 2 uses
  %index.next2459 = add nuw i64 %index2456, 4     ; 2 uses
  %i.aew = icmp eq i64 %index.next2459, %n.vec2454
  br i1 %i.aew, label %vec.epilog.middle.block2460, label %vec.epilog.vector.body2455, !llvm.loop !619

vec.epilog.middle.block2460:                      ; preds = %vec.epilog.vector.body2455
  %i.aex = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.aev) ; 2 uses
  %cmp.n2461 = icmp eq i64 %n.vec2454, %.pre2032
  br i1 %cmp.n2461, label %iter.check2481, label %.lr.ph1882.preheader

.lr.ph1882.preheader:                             ; preds = %iter.check2449, %vec.epilog.iter.check2451, %vec.epilog.middle.block2460
  %indvars.iv2002.ph = phi i64 [ 0, %iter.check2449 ], [ %n.vec2436, %vec.epilog.iter.check2451 ], [ %n.vec2454, %vec.epilog.middle.block2460 ]
  %.31881.ph = phi i16 [ 0, %iter.check2449 ], [ %i.aes, %vec.epilog.iter.check2451 ], [ %i.aex, %vec.epilog.middle.block2460 ]
  br label %.lr.ph1882

vec.epilog.scalar.ph2417:                         ; preds = %vec.epilog.scalar.ph2417.preheader, %vec.epilog.scalar.ph2417
  %indvars.iv2000 = phi i64 [ %indvars.iv.next2001, %vec.epilog.scalar.ph2417 ], [ %indvars.iv2000.ph, %vec.epilog.scalar.ph2417.preheader ] ; 2 uses
  %.112081877 = phi i16 [ %i.afa, %vec.epilog.scalar.ph2417 ], [ %.112081877.ph, %vec.epilog.scalar.ph2417.preheader ]
  %i.aey = getelementptr inbounds nuw [2 x i8], ptr %i.pb, i64 %indvars.iv2000
  %i.aez = load i16, ptr %i.aey, align 2, !tbaa !82
  %i.afa = add i16 %i.aez, %.112081877            ; 2 uses
  %indvars.iv.next2001 = add nuw nsw i64 %indvars.iv2000, 1 ; 2 uses
  %i.afb = icmp samesign ult i64 %indvars.iv.next2001, %i.adz
  br i1 %i.afb, label %vec.epilog.scalar.ph2417, label %.preheader1747, !llvm.loop !620

.lr.ph1882:                                       ; preds = %.lr.ph1882.preheader, %.lr.ph1882
  %indvars.iv2002 = phi i64 [ %indvars.iv.next2003, %.lr.ph1882 ], [ %indvars.iv2002.ph, %.lr.ph1882.preheader ] ; 2 uses
  %.31881 = phi i16 [ %i.afe, %.lr.ph1882 ], [ %.31881.ph, %.lr.ph1882.preheader ]
  %i.afc = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv2002
  %i.afd = load i16, ptr %i.afc, align 2, !tbaa !82
  %i.afe = add i16 %i.afd, %.31881                ; 2 uses
  %indvars.iv.next2003 = add nuw nsw i64 %indvars.iv2002, 1 ; 2 uses
  %i.aff = icmp samesign ult i64 %indvars.iv.next2003, %.pre2032
  br i1 %i.aff, label %.lr.ph1882, label %iter.check2481, !llvm.loop !621

iter.check2481:                                   ; preds = %.lr.ph1882, %middle.block2444, %vec.epilog.middle.block2460, %.preheader1747
  %.3.lcssa = phi i16 [ 0, %.preheader1747 ], [ %i.aex, %vec.epilog.middle.block2460 ], [ %i.aes, %middle.block2444 ], [ %i.afe, %.lr.ph1882 ]
  %i.afg = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.adr
  store i16 %.11208.lcssa, ptr %i.afg, align 2, !tbaa !82
  %i.afh = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.adr
  store i16 %.3.lcssa, ptr %i.afh, align 2, !tbaa !82
  %i.afi = xor i16 %i.adw, -1
  %i.afj = add i16 %i.adv, %i.afi
  %i.afk = getelementptr inbounds nuw i8, ptr %2, i64 4092
  %i.afl = getelementptr inbounds nuw [2 x i8], ptr %i.afk, i64 %i.adr
  store i16 %i.afj, ptr %i.afl, align 2, !tbaa !82
  %i.afm = load i16, ptr %i.rl, align 2, !tbaa !237
  %i.afn = xor i16 %i.adx, -1
  %i.afo = add i16 %i.afm, %i.afn                 ; 4 uses
  %i.afp = getelementptr inbounds nuw i8, ptr %2, i64 6092
  %i.afq = getelementptr inbounds nuw [2 x i8], ptr %i.afp, i64 %i.adr
  store i16 %i.afo, ptr %i.afq, align 2, !tbaa !82
  %i.afr = zext i16 %i.afo to i64                 ; 2 uses
  %invariant.gep2212 = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %.pre2032 ; 3 uses
  %i.afs = add nuw nsw i64 %i.afr, 1              ; 5 uses
  %min.iters.check2464.a = icmp ult i16 %i.afo, 3
  br i1 %min.iters.check2464.a, label %vec.epilog.scalar.ph2482.preheader, label %vector.main.loop.iter.check2465

vector.main.loop.iter.check2465:                  ; preds = %iter.check2481
  %min.iters.check2466 = icmp ult i16 %i.afo, 15
  br i1 %min.iters.check2466, label %vec.epilog.ph2485, label %vector.ph2467

vector.ph2467:                                    ; preds = %vector.main.loop.iter.check2465
  %i.aft = and i64 %i.afs, 12
  %n.vec2468 = and i64 %i.afs, 131056             ; 4 uses
  br label %vector.body2469

vector.body2469:                                  ; preds = %vector.body2469, %vector.ph2467
  %index2470 = phi i64 [ 0, %vector.ph2467 ], [ %index.next2475, %vector.body2469 ] ; 2 uses
  %vec.phi2471 = phi <8 x i16> [ zeroinitializer, %vector.ph2467 ], [ %i.afw, %vector.body2469 ]
  %vec.phi2472 = phi <8 x i16> [ zeroinitializer, %vector.ph2467 ], [ %i.afx, %vector.body2469 ]
  %i.afu = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2212, i64 %index2470 ; 2 uses
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 16
  %wide.load2473 = load <8 x i16>, ptr %i.afu, align 2, !tbaa !82
  %wide.load2474 = load <8 x i16>, ptr %i.afv, align 2, !tbaa !82
  %i.afw = add <8 x i16> %wide.load2473, %vec.phi2471 ; 2 uses
  %i.afx = add <8 x i16> %wide.load2474, %vec.phi2472 ; 2 uses
  %index.next2475 = add nuw i64 %index2470, 16    ; 2 uses
  %i.afy = icmp eq i64 %index.next2475, %n.vec2468
  br i1 %i.afy, label %middle.block2476, label %vector.body2469, !llvm.loop !622

middle.block2476:                                 ; preds = %vector.body2469
  %bin.rdx2477 = add <8 x i16> %i.afx, %i.afw
  %i.afz = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2477) ; 3 uses
  %cmp.n2478 = icmp eq i64 %i.afs, %n.vec2468
  br i1 %cmp.n2478, label %.loopexit2496, label %vec.epilog.iter.check2483

vec.epilog.iter.check2483:                        ; preds = %middle.block2476
  %min.epilog.iters.check2484 = icmp eq i64 %i.aft, 0
  br i1 %min.epilog.iters.check2484, label %vec.epilog.scalar.ph2482.preheader, label %vec.epilog.ph2485, !prof !366

vec.epilog.ph2485:                                ; preds = %vector.main.loop.iter.check2465, %vec.epilog.iter.check2483
  %vec.epilog.resume.val2479 = phi i64 [ %n.vec2468, %vec.epilog.iter.check2483 ], [ 0, %vector.main.loop.iter.check2465 ]
  %bc.merge.rdx2480 = phi i16 [ %i.afz, %vec.epilog.iter.check2483 ], [ 0, %vector.main.loop.iter.check2465 ]
  %n.vec2486 = and i64 %i.afs, 131068             ; 3 uses
  %i.aga = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2480, i64 0
  br label %vec.epilog.vector.body2487

vec.epilog.vector.body2487:                       ; preds = %vec.epilog.vector.body2487, %vec.epilog.ph2485
  %index2488 = phi i64 [ %vec.epilog.resume.val2479, %vec.epilog.ph2485 ], [ %index.next2491, %vec.epilog.vector.body2487 ] ; 2 uses
  %vec.phi2489 = phi <4 x i16> [ %i.aga, %vec.epilog.ph2485 ], [ %i.agc, %vec.epilog.vector.body2487 ]
  %i.agb = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2212, i64 %index2488
  %wide.load2490 = load <4 x i16>, ptr %i.agb, align 2, !tbaa !82
  %i.agc = add <4 x i16> %wide.load2490, %vec.phi2489 ; 2 uses
  %index.next2491 = add nuw i64 %index2488, 4     ; 2 uses
  %i.agd = icmp eq i64 %index.next2491, %n.vec2486
  br i1 %i.agd, label %vec.epilog.middle.block2492, label %vec.epilog.vector.body2487, !llvm.loop !623

vec.epilog.middle.block2492:                      ; preds = %vec.epilog.vector.body2487
  %i.age = call i16 @llvm.vector.reduce.add.v4i16(<4 x i16> %i.agc) ; 2 uses
  %cmp.n2493 = icmp eq i64 %i.afs, %n.vec2486
  br i1 %cmp.n2493, label %.loopexit2496, label %vec.epilog.scalar.ph2482.preheader

vec.epilog.scalar.ph2482.preheader:               ; preds = %iter.check2481, %vec.epilog.iter.check2483, %vec.epilog.middle.block2492
  %indvars.iv2004.ph = phi i64 [ 0, %iter.check2481 ], [ %n.vec2468, %vec.epilog.iter.check2483 ], [ %n.vec2486, %vec.epilog.middle.block2492 ]
  %.01886.ph = phi i16 [ 0, %iter.check2481 ], [ %i.afz, %vec.epilog.iter.check2483 ], [ %i.age, %vec.epilog.middle.block2492 ]
  br label %vec.epilog.scalar.ph2482

vec.epilog.scalar.ph2482:                         ; preds = %vec.epilog.scalar.ph2482.preheader, %vec.epilog.scalar.ph2482
  %indvars.iv2004 = phi i64 [ %indvars.iv.next2005, %vec.epilog.scalar.ph2482 ], [ %indvars.iv2004.ph, %vec.epilog.scalar.ph2482.preheader ] ; 3 uses
  %.01886 = phi i16 [ %i.agg, %vec.epilog.scalar.ph2482 ], [ %.01886.ph, %vec.epilog.scalar.ph2482.preheader ]
  %gep2213 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2212, i64 %indvars.iv2004
  %i.agf = load i16, ptr %gep2213, align 2, !tbaa !82
  %i.agg = add i16 %i.agf, %.01886                ; 2 uses
  %indvars.iv.next2005 = add nuw nsw i64 %indvars.iv2004, 1
  %.not1452.not = icmp samesign ult i64 %indvars.iv2004, %i.afr
  br i1 %.not1452.not, label %vec.epilog.scalar.ph2482, label %.loopexit2496, !llvm.loop !624

.loopexit2496:                                    ; preds = %vec.epilog.scalar.ph2482, %vec.epilog.middle.block2492, %middle.block2476
  %.lcssa2231 = phi i16 [ %i.age, %vec.epilog.middle.block2492 ], [ %i.afz, %middle.block2476 ], [ %i.agg, %vec.epilog.scalar.ph2482 ]
  %i.agh = getelementptr inbounds nuw i8, ptr %2, i64 1992182
  %i.agi = getelementptr inbounds nuw [2 x i8], ptr %i.agh, i64 %i.adr
  store i16 %.lcssa2231, ptr %i.agi, align 2, !tbaa !82
  %i.agj = getelementptr inbounds nuw i8, ptr %2, i64 8092
  %i.agk = getelementptr inbounds nuw [2 x i8], ptr %i.agj, i64 %i.adr
  store i16 0, ptr %i.agk, align 2, !tbaa !82
  br label %bb.er

bb.er:                                            ; preds = %.loopexit2496, %._crit_edge1872
  %i.agl = getelementptr inbounds nuw i8, ptr %2, i64 1994182
  %i.agm = getelementptr inbounds nuw i8, ptr %i.dc, i64 1412
  %i.agn = getelementptr inbounds nuw i8, ptr %i.dc, i64 5412
  %i.ago = getelementptr inbounds nuw i8, ptr %i.dc, i64 3412
  %i.agp = getelementptr inbounds nuw i8, ptr %i.dc, i64 7412
  %i.agq = add nuw nsw i32 %.lcssa1773, 1         ; 2 uses
  %wide.trip.count2009 = zext nneg i32 %i.agq to i64
  br label %bb.es

bb.es:                                            ; preds = %bb.er, %bb.ez
  %indvars.iv2011 = phi i64 [ 0, %bb.er ], [ %indvars.iv.next2012, %bb.ez ] ; 7 uses
  %.012111889 = phi i32 [ 0, %bb.er ], [ %i.ahq, %bb.ez ]
  %i.agr = getelementptr inbounds nuw [2 x i8], ptr %i.agl, i64 %indvars.iv2011 ; 2 uses
  store i16 0, ptr %i.agr, align 2, !tbaa !82
  %i.ags = getelementptr inbounds nuw [2 x i8], ptr %i.agm, i64 %indvars.iv2011
  %i.agt = getelementptr inbounds nuw [2 x i8], ptr %i.agn, i64 %indvars.iv2011
  %i.agu = getelementptr inbounds nuw [2 x i8], ptr %i.ago, i64 %indvars.iv2011
  %i.agv = getelementptr inbounds nuw [2 x i8], ptr %i.agp, i64 %indvars.iv2011
  br label %bb.et

bb.et:                                            ; preds = %bb.es, %bb.ey
  %i.agw = phi i16 [ 0, %bb.es ], [ %i.aho, %bb.ey ] ; 5 uses
  %indvars.iv2006 = phi i64 [ 0, %bb.es ], [ %indvars.iv.next2007, %bb.ey ] ; 3 uses
  %i.agx = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %indvars.iv2006
  %i.agy = load i16, ptr %i.agx, align 2, !tbaa !82 ; 2 uses
  %i.agz = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %indvars.iv2006
  %i.aha = load i16, ptr %i.agz, align 2, !tbaa !82 ; 2 uses
  %i.ahb = load i16, ptr %i.ags, align 2, !tbaa !82 ; 2 uses
  %.not1456 = icmp ult i16 %i.agy, %i.ahb
  br i1 %.not1456, label %bb.ey, label %bb.eu

bb.eu:                                            ; preds = %bb.et
  %i.ahc = zext i16 %i.ahb to i32
  %i.ahd = zext i16 %i.agy to i32
  %i.ahe = load i16, ptr %i.agt, align 2, !tbaa !82
  %i.ahf = zext i16 %i.ahe to i32
  %i.ahg = add nuw nsw i32 %i.ahf, %i.ahc
  %.not1457 = icmp samesign ult i32 %i.ahg, %i.ahd
  br i1 %.not1457, label %bb.ey, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.ahh = load i16, ptr %i.agu, align 2, !tbaa !82 ; 2 uses
  %.not1458 = icmp ult i16 %i.aha, %i.ahh
  br i1 %.not1458, label %bb.ey, label %bb.ew

bb.ew:                                            ; preds = %bb.ev
  %i.ahi = zext i16 %i.ahh to i32
  %i.ahj = zext i16 %i.aha to i32
  %i.ahk = load i16, ptr %i.agv, align 2, !tbaa !82
  %i.ahl = zext i16 %i.ahk to i32
  %i.ahm = add nuw nsw i32 %i.ahl, %i.ahi
  %.not1459 = icmp samesign ult i32 %i.ahm, %i.ahj
  br i1 %.not1459, label %bb.ey, label %bb.ex
end_hunk_3
