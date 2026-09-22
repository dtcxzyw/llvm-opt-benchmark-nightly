Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/cbs_h266?download=true
inline.NumInlined: 72
inline.NumDeleted: 34
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 33
begin_hunk_0_@cbs_h266_write_nal_unit:bb.a

vector.ph1942:                                    ; preds = %vector.main.loop.iter.check1940
  %i.azm = and i64 %i.azl, 12
  %n.vec1943 = and i64 %i.azl, 65520              ; 4 uses
  br label %vector.body1944

vector.body1944:                                  ; preds = %vector.body1944, %vector.ph1942
  %index1945 = phi i64 [ 0, %vector.ph1942 ], [ %index.next1950, %vector.body1944 ] ; 2 uses
  %vec.phi1946 = phi <8 x i16> [ zeroinitializer, %vector.ph1942 ], [ %i.azp, %vector.body1944 ]
  %vec.phi1947 = phi <8 x i16> [ zeroinitializer, %vector.ph1942 ], [ %i.azq, %vector.body1944 ]
  %i.azn = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %index1945 ; 2 uses
  %i.azo = getelementptr inbounds nuw i8, ptr %i.azn, i64 16
  %wide.load1948 = load <8 x i16>, ptr %i.azn, align 2, !tbaa !56
  %wide.load1949 = load <8 x i16>, ptr %i.azo, align 2, !tbaa !56
  %i.azp = add <8 x i16> %wide.load1948, %vec.phi1946 ; 2 uses
  %i.azq = add <8 x i16> %wide.load1949, %vec.phi1947 ; 2 uses
  %index.next1950 = add nuw i64 %index1945, 16    ; 2 uses
  %i.azr = icmp eq i64 %index.next1950, %n.vec1943
  br i1 %i.azr, label %middle.block1951, label %vector.body1944, !llvm.loop !662

middle.block1951:                                 ; preds = %vector.body1944
  %bin.rdx1952 = add <8 x i16> %i.azq, %i.azp
  %i.azs = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx1952) ; 3 uses
  %cmp.n1953 = icmp eq i64 %n.vec1943, %i.azl
  br i1 %cmp.n1953, label %._crit_edge1939.i, label %vec.epilog.iter.check1958

vec.epilog.iter.check1958:                        ; preds = %middle.block1951
  %min.epilog.iters.check1959 = icmp eq i64 %i.azm, 0
  br i1 %min.epilog.iters.check1959, label %.lr.ph1938.i.preheader, label %vec.epilog.ph1960, !prof !267

vec.epilog.ph1960:                                ; preds = %vector.main.loop.iter.check1940, %vec.epilog.iter.check1958
  %vec.epilog.resume.val1954 = phi i64 [ %n.vec1943, %vec.epilog.iter.check1958 ], [ 0, %vector.main.loop.iter.check1940 ]
  %bc.merge.rdx1955 = phi i16 [ %i.azs, %vec.epilog.iter.check1958 ], [ 0, %vector.main.loop.iter.check1940 ]
  %n.vec1961 = and i64 %i.azl, 65532              ; 3 uses
  %i.azt = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx1955, i64 0
  br label %vec.epilog.vector.body1962

vec.epilog.vector.body1962:                       ; preds = %vec.epilog.vector.body1962, %vec.epilog.ph1960
  %index1963 = phi i64 [ %vec.epilog.resume.val1954, %vec.epilog.ph1960 ], [ %index.next1966, %vec.epilog.vector.body1962 ] ; 2 uses
  %vec.phi1964 = phi <4 x i16> [ %i.azt, %vec.epilog.ph1960 ], [ %i.azv, %vec.epilog.vector.body1962 ]
  %i.azu = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %index1963
  %wide.load1965 = load <4 x i16>, ptr %i.azu, align 2, !tbaa !56
  %i.azv = add <4 x i16> %wide.load1965, %vec.phi1964 ; 2 uses
  %index.next1966 = add nuw i64 %index1963, 4     ; 2 uses
  %i.azw = icmp eq i64 %index.next1966, %n.vec1961
  br i1 %i.azw, label %vec.epilog.middle.block1967, label %vec.epilog.vector.body1962, !llvm.loop !663

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
  %i.azz = load i16, ptr %i.azy, align 2, !tbaa !56
  %i.baa = add i16 %i.azz, %.014241932.i          ; 2 uses
  %indvars.iv.next2082.i = add nuw nsw i64 %indvars.iv2081.i, 1 ; 2 uses
  %i.bab = icmp samesign ult i64 %indvars.iv.next2082.i, %i.ayy
  br i1 %i.bab, label %.lr.ph1934.i, label %.preheader1847.i, !llvm.loop !664

.lr.ph1938.i:                                     ; preds = %.lr.ph1938.i.preheader, %.lr.ph1938.i
  %indvars.iv2083.i = phi i64 [ %indvars.iv.next2084.i, %.lr.ph1938.i ], [ %indvars.iv2083.i.ph, %.lr.ph1938.i.preheader ] ; 2 uses
  %.014221937.i = phi i16 [ %i.bae, %.lr.ph1938.i ], [ %.014221937.i.ph, %.lr.ph1938.i.preheader ]
  %i.bac = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %indvars.iv2083.i
  %i.bad = load i16, ptr %i.bac, align 2, !tbaa !56
  %i.bae = add i16 %i.bad, %.014221937.i          ; 2 uses
  %indvars.iv.next2084.i = add nuw nsw i64 %indvars.iv2083.i, 1 ; 2 uses
  %i.baf = icmp samesign ult i64 %indvars.iv.next2084.i, %i.azl
  br i1 %i.baf, label %.lr.ph1938.i, label %._crit_edge1939.i, !llvm.loop !665

._crit_edge1939.i:                                ; preds = %.lr.ph1938.i, %middle.block1951, %vec.epilog.middle.block1967, %.preheader1847.i
  %.01422.lcssa.i = phi i16 [ 0, %.preheader1847.i ], [ %i.azx, %vec.epilog.middle.block1967 ], [ %i.azs, %middle.block1951 ], [ %i.bae, %.lr.ph1938.i ] ; 3 uses
  %i.bag = load i16, ptr %i.axt, align 2, !tbaa !56
  %i.bah = icmp eq i16 %i.bag, 0
  br i1 %i.bah, label %bb.lm, label %.thread1791.i

bb.lm:                                            ; preds = %._crit_edge1939.i
  %i.bai = getelementptr inbounds nuw [2 x i8], ptr %i.awx, i64 %i.axi
  %i.baj = load i16, ptr %i.bai, align 2, !tbaa !56 ; 2 uses
  %i.bak = icmp eq i16 %i.baj, 0
  br i1 %i.bak, label %bb.ln, label %.thread2334.i

bb.ln:                                            ; preds = %bb.lm
  %i.bal = zext i16 %i.axm to i64
  %i.bam = getelementptr inbounds nuw [2 x i8], ptr %i.atz, i64 %i.bal ; 2 uses
  %i.ban = load i16, ptr %i.bam, align 2, !tbaa !56 ; 2 uses
  %i.bao = zext i16 %i.ban to i32                 ; 2 uses
  %i.bap = icmp ugt i16 %i.ban, 1
  %i.baq = getelementptr inbounds nuw [2 x i8], ptr %i.awz, i64 %i.axi ; 3 uses
  %i.bar = load i16, ptr %i.baq, align 2, !tbaa !56 ; 3 uses
  br i1 %i.bap, label %bb.lo, label %bb.lw

bb.lo:                                            ; preds = %bb.ln
  %i.bas = zext i16 %i.bar to i32
  store i32 1, ptr %i.ae, align 4, !tbaa !35
  store i32 %.814591965.i, ptr %i.axc, align 4, !tbaa !35
  %i.bat = add nsw i32 %i.bao, -1
  %i.bau = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.408, ptr noundef nonnull %i.ae, i32 noundef %i.bas, i32 noundef 0, i32 noundef %i.bat) #10 ; 2 uses
  %i.bav = icmp sgt i32 %i.bau, -1
  br i1 %i.bav, label %bb.lp, label %.thread1807.i

bb.lp:                                            ; preds = %bb.lo
  %i.baw = load i16, ptr %i.baq, align 2, !tbaa !56 ; 2 uses
  %i.bax = icmp eq i16 %i.baw, 0
  br i1 %i.bax, label %.thread2332.i, label %bb.lq

.thread2332.i:                                    ; preds = %bb.lp
  %i.bay = getelementptr inbounds nuw [2 x i8], ptr %i.axa, i64 %i.axi
  store i16 1, ptr %i.bay, align 2, !tbaa !56
  %i.baz = load i16, ptr %i.bam, align 2, !tbaa !56
  %i.bba = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.axi
  store i16 %i.baz, ptr %i.bba, align 2, !tbaa !56
  %i.bbb = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.axi
  store i16 %.01424.lcssa.i, ptr %i.bbb, align 2, !tbaa !56
  %i.bbc = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.axi
  store i16 %.01422.lcssa.i, ptr %i.bbc, align 2, !tbaa !56
  br label %.lr.ph1962.preheader.i

bb.lq:                                            ; preds = %bb.lp
  %i.bbd = zext i16 %i.baw to i32                 ; 2 uses
  %i.bbe = add nuw nsw i32 %.814591965.i, %i.bbd
  %i.bbf = load i16, ptr %i.awf, align 8, !tbaa !265
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
  %i.bbm = load i16, ptr %i.bbl, align 2, !tbaa !56
  %i.bbn = zext i16 %i.bbm to i32
  store i32 2, ptr %i.af, align 4, !tbaa !35
  store i32 %.814591965.i, ptr %i.axe, align 4, !tbaa !35
  %i.bbo = trunc nuw nsw i64 %indvars.iv2089.i to i32 ; 2 uses
  store i32 %i.bbo, ptr %i.axf, align 4, !tbaa !35
  %.neg.i = sub nsw i32 %i.bbo, %i.bbk
  %i.bbp = add i32 %.neg.i, %.014211945.i
  %i.bbq = call i32 @ff_cbs_write_ue_golomb(ptr noundef %0, ptr noundef %2, ptr noundef nonnull @.str.409, ptr noundef nonnull %i.af, i32 noundef %i.bbn, i32 noundef 0, i32 noundef %i.bbp) #10 ; 2 uses
  %i.bbr = icmp sgt i32 %i.bbq, -1
  br i1 %i.bbr, label %bb.ls, label %.thread1807.i

bb.ls:                                            ; preds = %bb.lr
  %i.bbs = load i16, ptr %i.bbl, align 2, !tbaa !56 ; 2 uses
  %i.bbt = add i16 %i.bbs, 1                      ; 3 uses
  %i.bbu = add nuw nsw i64 %indvars.iv2089.i, %i.axi ; 3 uses
  %i.bbv = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.bbu
  store i16 %i.bbt, ptr %i.bbv, align 2, !tbaa !56
  %i.bbw = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bbu
  store i16 %.01424.lcssa.i, ptr %i.bbw, align 2, !tbaa !56
  %i.bbx = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bbu
  store i16 %.114231944.i, ptr %i.bbx, align 2, !tbaa !56
  %i.bby = zext i16 %i.bbt to i32
  %i.bbz = add i16 %i.bbt, %.114231944.i          ; 7 uses
  %i.bca = sub nsw i32 %.014211945.i, %i.bby      ; 7 uses
  %indvars.iv.next2090.i = add nuw nsw i64 %indvars.iv2089.i, 1 ; 9 uses
  %i.bcb = load i16, ptr %i.baq, align 2, !tbaa !56 ; 2 uses
  %i.bcc = zext i16 %i.bcb to i32                 ; 2 uses
  %i.bcd = zext i16 %i.bcb to i64
  %i.bce = icmp samesign ult i64 %indvars.iv.next2090.i, %i.bcd
  br i1 %i.bce, label %bb.lr, label %bb.lt, !llvm.loop !666

bb.lt:                                            ; preds = %bb.ls
  %i.bcf = getelementptr [1980 x i8], ptr %i.acu, i64 %i.axi
  %i.bcg = getelementptr [2 x i8], ptr %i.bcf, i64 %indvars.iv.next2090.i
  %i.bch = getelementptr i8, ptr %i.bcg, i64 10090
  %i.bci = load i16, ptr %i.bch, align 2, !tbaa !56 ; 2 uses
  %i.bcj = zext i16 %i.bci to i32                 ; 4 uses
  %i.bck = add nuw nsw i32 %i.bcj, 1              ; 5 uses
  %i.bcl = add i32 %i.bca, %i.bcj
  %i.bcm = sdiv i32 %i.bcl, %i.bck
  %i.bcn = add nuw nsw i32 %.814591965.i, %i.bcc
  %i.bco = add nsw i32 %i.bcn, %i.bcm
  %i.bcp = load i16, ptr %i.awf, align 8, !tbaa !265
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
  %i.bcw = add i16 %i.bbs, 1
  %i.bcx = zext i16 %i.bcw to i32
  %3 = add i32 %.014211945.i, -2
  %i.bcy = add nuw nsw i32 %i.bcj, %i.bcx
  %i.bcz = sub i32 %3, %i.bcy
  %i.bda = zext i32 %i.bcz to i64
  %i.bdb = zext i16 %i.bci to i64
  %i.bdc = add nuw nsw i64 %i.bdb, 1
  %i.bdd = udiv i64 %i.bda, %i.bdc                ; 3 uses
  %i.bde = add nuw nsw i64 %i.bdd, 1              ; 5 uses
  %min.iters.check1867 = icmp samesign ult i64 %i.bdd, 3
  br i1 %min.iters.check1867, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check1868 = icmp samesign ult i64 %i.bdd, 15
  br i1 %min.iters.check1868, label %vec.epilog.ph, label %vector.ph1869

vector.ph1869:                                    ; preds = %vector.main.loop.iter.check
  %i.bdf = and i64 %i.bde, 12
  %n.vec1870 = and i64 %i.bde, 8589934576         ; 6 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.bcu, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.bdg = add nuw i64 %indvars.iv.next2090.i, %n.vec1870 ; 2 uses
  %i.bdh = trunc i64 %n.vec1870 to i32
  %i.bdi = mul i32 %i.bdh, %i.bcv
  %i.bdj = add i32 %i.bca, %i.bdi                 ; 2 uses
  %i.bdk = trunc i64 %n.vec1870 to i16
  %i.bdl = mul i16 %i.bdk, %i.bcu
  %i.bdm = add i16 %i.bbz, %i.bdl                 ; 3 uses
  %i.bdn = shl <8 x i16> %broadcast.splat, splat (i16 3) ; 3 uses
  %broadcast.splatinsert1871 = insertelement <8 x i16> poison, i16 %i.bcu, i64 0
  %broadcast.splat1872 = shufflevector <8 x i16> %broadcast.splatinsert1871, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1873 = insertelement <8 x i16> poison, i16 %.01424.lcssa.i, i64 0
  %broadcast.splat1874 = shufflevector <8 x i16> %broadcast.splatinsert1873, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1875 = insertelement <8 x i16> poison, i16 %i.bbz, i64 0
  %broadcast.splat1876 = shufflevector <8 x i16> %broadcast.splatinsert1875, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.bdo = mul <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %induction = add <8 x i16> %broadcast.splat1876, %i.bdo
  %invariant.op = add nuw i64 %indvars.iv.next2090.i, %i.axi
  %invariant.op2602 = add <8 x i16> %i.bdn, %i.bdn
  br label %vector.body1877

vector.body1877:                                  ; preds = %vector.body1877, %vector.ph1869
  %index1878 = phi i64 [ 0, %vector.ph1869 ], [ %index.next1879, %vector.body1877 ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph1869 ], [ %vec.ind.next.reass, %vector.body1877 ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, %i.bdn
  %.reass = add nuw i64 %index1878, %invariant.op ; 3 uses
  %i.bdp = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %.reass ; 2 uses
  %i.bdq = getelementptr inbounds nuw i8, ptr %i.bdp, i64 16
  store <8 x i16> %broadcast.splat1872, ptr %i.bdp, align 2, !tbaa !56
  store <8 x i16> %broadcast.splat1872, ptr %i.bdq, align 2, !tbaa !56
  %i.bdr = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.reass ; 2 uses
  %i.bds = getelementptr inbounds nuw i8, ptr %i.bdr, i64 16
  store <8 x i16> %broadcast.splat1874, ptr %i.bdr, align 2, !tbaa !56
  store <8 x i16> %broadcast.splat1874, ptr %i.bds, align 2, !tbaa !56
  %i.bdt = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.reass ; 2 uses
  %i.bdu = getelementptr inbounds nuw i8, ptr %i.bdt, i64 16
  store <8 x i16> %vec.ind, ptr %i.bdt, align 2, !tbaa !56
  store <8 x i16> %step.add, ptr %i.bdu, align 2, !tbaa !56
  %index.next1879 = add nuw i64 %index1878, 16    ; 2 uses
  %vec.ind.next.reass = add <8 x i16> %vec.ind, %invariant.op2602
  %i.bdv = icmp eq i64 %index.next1879, %n.vec1870
  br i1 %i.bdv, label %middle.block1880, label %vector.body1877, !llvm.loop !667

middle.block1880:                                 ; preds = %vector.body1877
  %cmp.n1881 = icmp eq i64 %i.bde, %n.vec1870
  br i1 %cmp.n1881, label %._crit_edge1956.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block1880
  %min.epilog.iters.check = icmp eq i64 %i.bdf, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !267

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec1870, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val1884 = phi i16 [ %i.bdm, %vec.epilog.iter.check ], [ %i.bbz, %vector.main.loop.iter.check ]
  %n.vec1885 = and i64 %i.bde, 8589934588         ; 5 uses
  %i.bdw = add nuw i64 %indvars.iv.next2090.i, %n.vec1885 ; 2 uses
  %i.bdx = trunc i64 %n.vec1885 to i32
  %i.bdy = mul i32 %i.bdx, %i.bcv
  %i.bdz = add i32 %i.bca, %i.bdy                 ; 2 uses
  %i.bea = trunc i64 %n.vec1885 to i16
  %i.beb = mul i16 %i.bea, %i.bcu
  %i.bec = add i16 %i.bbz, %i.beb                 ; 2 uses
  %broadcast.splatinsert1886 = insertelement <4 x i16> poison, i16 %i.bcu, i64 0
  %broadcast.splat1887 = shufflevector <4 x i16> %broadcast.splatinsert1886, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert1888 = insertelement <4 x i16> poison, i16 %.01424.lcssa.i, i64 0
  %broadcast.splat1889 = shufflevector <4 x i16> %broadcast.splatinsert1888, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert1890 = insertelement <4 x i16> poison, i16 %bc.resume.val1884, i64 0
  %broadcast.splat1891 = shufflevector <4 x i16> %broadcast.splatinsert1890, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.bed = mul <4 x i16> %broadcast.splat1887, <i16 0, i16 1, i16 2, i16 3>
  %induction1892 = add <4 x i16> %broadcast.splat1891, %i.bed
  %i.bee = shl i16 %i.bcu, 2
  %broadcast.splatinsert1893 = insertelement <4 x i16> poison, i16 %i.bee, i64 0
  %broadcast.splat1894 = shufflevector <4 x i16> %broadcast.splatinsert1893, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.op2603 = add nuw i64 %indvars.iv.next2090.i, %i.axi
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index1895 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next1897, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind1896 = phi <4 x i16> [ %induction1892, %vec.epilog.ph ], [ %vec.ind.next1898, %vec.epilog.vector.body ] ; 2 uses
  %.reass2604 = add nuw i64 %index1895, %invariant.op2603 ; 3 uses
  %i.bef = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %.reass2604
  store <4 x i16> %broadcast.splat1887, ptr %i.bef, align 2, !tbaa !56
  %i.beg = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %.reass2604
  store <4 x i16> %broadcast.splat1889, ptr %i.beg, align 2, !tbaa !56
  %i.beh = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %.reass2604
  store <4 x i16> %vec.ind1896, ptr %i.beh, align 2, !tbaa !56
  %index.next1897 = add nuw i64 %index1895, 4     ; 2 uses
  %vec.ind.next1898 = add <4 x i16> %vec.ind1896, %broadcast.splat1894
  %i.bei = icmp eq i64 %index.next1897, %n.vec1885
  br i1 %i.bei, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !668

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n1899 = icmp eq i64 %i.bde, %n.vec1885
  br i1 %cmp.n1899, label %._crit_edge1956.i, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv2091.i.ph = phi i64 [ %indvars.iv.next2090.i, %iter.check ], [ %i.bdg, %vec.epilog.iter.check ], [ %i.bdw, %vec.epilog.middle.block ]
  %.11954.i.ph = phi i32 [ %i.bca, %iter.check ], [ %i.bdj, %vec.epilog.iter.check ], [ %i.bdz, %vec.epilog.middle.block ]
  %.21953.i.ph = phi i16 [ %i.bbz, %iter.check ], [ %i.bdm, %vec.epilog.iter.check ], [ %i.bec, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv2091.i = phi i64 [ %indvars.iv.next2092.i, %vec.epilog.scalar.ph ], [ %indvars.iv2091.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.11954.i = phi i32 [ %i.beo, %vec.epilog.scalar.ph ], [ %.11954.i.ph, %vec.epilog.scalar.ph.preheader ]
  %.21953.i = phi i16 [ %i.ben, %vec.epilog.scalar.ph ], [ %.21953.i.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.bej = add nuw nsw i64 %indvars.iv2091.i, %i.axi ; 3 uses
  %i.bek = getelementptr inbounds nuw [2 x i8], ptr %i.axb, i64 %i.bej
  store i16 %i.bcu, ptr %i.bek, align 2, !tbaa !56
  %i.bel = getelementptr inbounds nuw [2 x i8], ptr %i.aa, i64 %i.bej
  store i16 %.01424.lcssa.i, ptr %i.bel, align 2, !tbaa !56
  %i.bem = getelementptr inbounds nuw [2 x i8], ptr %i.ab, i64 %i.bej
  store i16 %.21953.i, ptr %i.bem, align 2, !tbaa !56
  %i.ben = add i16 %.21953.i, %i.bcu              ; 2 uses
  %i.beo = sub nsw i32 %.11954.i, %i.bck          ; 3 uses
  %indvars.iv.next2092.i = add nuw nsw i64 %indvars.iv2091.i, 1 ; 2 uses
  %i.bep = icmp sgt i32 %i.beo, %i.bck
  br i1 %i.bep, label %vec.epilog.scalar.ph, label %._crit_edge1956.i, !llvm.loop !669

._crit_edge1956.i:                                ; preds = %vec.epilog.scalar.ph, %middle.block1880, %vec.epilog.middle.block, %.preheader1845.i
  %.31432.lcssa.in.i = phi i64 [ %indvars.iv.next2090.i, %.preheader1845.i ], [ %i.bdw, %vec.epilog.middle.block ], [ %i.bdg, %middle.block1880 ], [ %indvars.iv.next2092.i, %vec.epilog.scalar.ph ]
  %.2.lcssa.i = phi i16 [ %i.bbz, %.preheader1845.i ], [ %i.bec, %vec.epilog.middle.block ], [ %i.bdm, %middle.block1880 ], [ %i.ben, %vec.epilog.scalar.ph ]
  %.1.lcssa.i = phi i32 [ %i.bca, %.preheader1845.i ], [ %i.bdz, %vec.epilog.middle.block ], [ %i.bdj, %middle.block1880 ], [ %i.beo, %vec.epilog.scalar.ph ] ; 2 uses
  %.31432.lcssa.i = trunc i64 %.31432.lcssa.in.i to i32 ; 3 uses
  %i.beq = icmp sgt i32 %.1.lcssa.i, 0
  br i1 %i.beq, label %bb.lu, label %bb.lv

bb.lu:                                            ; preds = %._crit_edge1956.i
  %i.ber = trunc i32 %.1.lcssa.i to i16
  %i.bes = add nsw i32 %.814591965.i, %.31432.lcssa.i
  %i.bet = sext i32 %i.bes to i64                 ; 3 uses
  %i.beu = getelementptr inbounds [2 x i8], ptr %i.axb, i64 %i.bet
  store i16 %i.ber, ptr %i.beu, align 2, !tbaa !56
  %i.bev = getelementptr inbounds [2 x i8], ptr %i.aa, i64 %i.bet
  store i16 %.01424.lcssa.i, ptr %i.bev, align 2, !tbaa !56
  %i.bew = getelementptr inbounds [2 x i8], ptr %i.ab, i64 %i.bet
  store i16 %.2.lcssa.i, ptr %i.bew, align 2, !tbaa !56
  %i.bex = add nuw nsw i32 %.31432.lcssa.i, 1
  br label %bb.lv

bb.lv:                                            ; preds = %bb.lu, %._crit_edge1956.i
  %.4.i = phi i32 [ %i.bex, %bb.lu ], [ %.31432.lcssa.i, %._crit_edge1956.i ]
  %i.bey = trunc i32 %.4.i to i16                 ; 2 uses
  %i.bez = getelementptr inbounds nuw [2 x i8], ptr %i.axa, i64 %i.axi
  store i16 %i.bey, ptr %i.bez, align 2, !tbaa !56
  %.not1995.i = icmp eq i16 %i.bey, 0
  br i1 %.not1995.i, label %._crit_edge1963.i, label %.lr.ph1962.preheader.i

.lr.ph1962.preheader.i:                           ; preds = %bb.lv, %.thread2332.i
  %i.bfa = getelementptr inbounds nuw [2 x i8], ptr %i.axa, i64 %i.axi
  br label %.lr.ph1962.i

.lr.ph1962.i:                                     ; preds = %.lr.ph1962.i, %.lr.ph1962.preheader.i
  %indvars.iv2093.i = phi i64 [ 0, %.lr.ph1962.preheader.i ], [ %indvars.iv.next2094.i, %.lr.ph1962.i ] ; 2 uses
  %gep2383.i = getelementptr inbounds nuw [2 x i8], ptr %i.axj, i64 %indvars.iv2093.i
  store i16 %.014261967.i, ptr %gep2383.i, align 2, !tbaa !56
  %indvars.iv.next2094.i = add nuw nsw i64 %indvars.iv2093.i, 1 ; 2 uses
  %i.bfb = load i16, ptr %i.bfa, align 2, !tbaa !56 ; 2 uses
  %i.bfc = zext i16 %i.bfb to i64
  %i.bfd = icmp samesign ult i64 %indvars.iv.next2094.i, %i.bfc
  br i1 %i.bfd, label %.lr.ph1962.i, label %._crit_edge1963.i.loopexit, !llvm.loop !670

._crit_edge1963.i.loopexit:                       ; preds = %.lr.ph1962.i
  %i.bfe = zext i16 %i.bfb to i32
  br label %._crit_edge1963.i

._crit_edge1963.i:                                ; preds = %._crit_edge1963.i.loopexit, %bb.lv
  %.lcssa1865.in.i = phi i32 [ 0, %bb.lv ], [ %i.bfe, %._crit_edge1963.i.loopexit ]
  %i.bff = add nsw i32 %.814591965.i, -1
  %i.bfg = add nsw i32 %i.bff, %.lcssa1865.in.i
  br label %bb.ly

bb.lw:                                            ; preds = %bb.ln
  %.not1707.i = icmp eq i16 %i.bar, 0
  br i1 %.not1707.i, label %bb.lx, label %.thread1799.i

.thread2334.i:                                    ; preds = %bb.lm
  %i.bfh = getelementptr inbounds nuw [2 x i8], ptr %i.awz, i64 %i.axi
  %i.bfi = load i16, ptr %i.bfh, align 2, !tbaa !56 ; 2 uses
  %.not17072335.i = icmp eq i16 %i.bfi, 0
  br i1 %.not17072335.i, label %iter.check1923, label %.thread1799.i

.thread1791.i:                                    ; preds = %._crit_edge1939.i
end_hunk_0
begin_hunk_1_@cbs_h266_read_pps:bb.a
  %vec.phi2342 = phi <8 x i16> [ zeroinitializer, %vector.ph2337 ], [ %i.vs, %vector.body2339 ]
  %i.vp = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index2340 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 16
  %wide.load2343 = load <8 x i16>, ptr %i.vp, align 2, !tbaa !56
  %wide.load2344 = load <8 x i16>, ptr %i.vq, align 2, !tbaa !56
  %i.vr = add <8 x i16> %wide.load2343, %vec.phi2341 ; 2 uses
  %i.vs = add <8 x i16> %wide.load2344, %vec.phi2342 ; 2 uses
  %index.next2345 = add nuw i64 %index2340, 16    ; 2 uses
  %i.vt = icmp eq i64 %index.next2345, %n.vec2338
  br i1 %i.vt, label %middle.block2346, label %vector.body2339, !llvm.loop !772

middle.block2346:                                 ; preds = %vector.body2339
  %bin.rdx2347 = add <8 x i16> %i.vs, %i.vr
  %i.vu = call i16 @llvm.vector.reduce.add.v8i16(<8 x i16> %bin.rdx2347) ; 3 uses
  %cmp.n2348 = icmp eq i64 %n.vec2338, %i.vn
  br i1 %cmp.n2348, label %._crit_edge1841, label %vec.epilog.iter.check2353

vec.epilog.iter.check2353:                        ; preds = %middle.block2346
  %min.epilog.iters.check2354 = icmp eq i64 %i.vo, 0
  br i1 %min.epilog.iters.check2354, label %.lr.ph1840.preheader, label %vec.epilog.ph2355, !prof !267

vec.epilog.ph2355:                                ; preds = %vector.main.loop.iter.check2335, %vec.epilog.iter.check2353
  %vec.epilog.resume.val2349 = phi i64 [ %n.vec2338, %vec.epilog.iter.check2353 ], [ 0, %vector.main.loop.iter.check2335 ]
  %bc.merge.rdx2350 = phi i16 [ %i.vu, %vec.epilog.iter.check2353 ], [ 0, %vector.main.loop.iter.check2335 ]
  %n.vec2356 = and i64 %i.vn, 65532               ; 3 uses
  %i.vv = insertelement <4 x i16> <i16 poison, i16 0, i16 0, i16 0>, i16 %bc.merge.rdx2350, i64 0
  br label %vec.epilog.vector.body2357

vec.epilog.vector.body2357:                       ; preds = %vec.epilog.vector.body2357, %vec.epilog.ph2355
  %index2358 = phi i64 [ %vec.epilog.resume.val2349, %vec.epilog.ph2355 ], [ %index.next2361, %vec.epilog.vector.body2357 ] ; 2 uses
  %vec.phi2359 = phi <4 x i16> [ %i.vv, %vec.epilog.ph2355 ], [ %i.vx, %vec.epilog.vector.body2357 ]
  %i.vw = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %index2358
  %wide.load2360 = load <4 x i16>, ptr %i.vw, align 2, !tbaa !56
  %i.vx = add <4 x i16> %wide.load2360, %vec.phi2359 ; 2 uses
  %index.next2361 = add nuw i64 %index2358, 4     ; 2 uses
  %i.vy = icmp eq i64 %index.next2361, %n.vec2356
  br i1 %i.vy, label %vec.epilog.middle.block2362, label %vec.epilog.vector.body2357, !llvm.loop !773

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
  %i.wb = load i16, ptr %i.wa, align 2, !tbaa !56
  %i.wc = add i16 %i.wb, %.012071834              ; 2 uses
  %indvars.iv.next1986 = add nuw nsw i64 %indvars.iv1985, 1 ; 2 uses
  %i.wd = icmp samesign ult i64 %indvars.iv.next1986, %i.uz
  br i1 %i.wd, label %.lr.ph1836, label %.preheader1751, !llvm.loop !774

.lr.ph1840:                                       ; preds = %.lr.ph1840.preheader, %.lr.ph1840
  %indvars.iv1987 = phi i64 [ %indvars.iv.next1988, %.lr.ph1840 ], [ %indvars.iv1987.ph, %.lr.ph1840.preheader ] ; 2 uses
  %.012051839 = phi i16 [ %i.wg, %.lr.ph1840 ], [ %.012051839.ph, %.lr.ph1840.preheader ]
  %i.we = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %indvars.iv1987
  %i.wf = load i16, ptr %i.we, align 2, !tbaa !56
  %i.wg = add i16 %i.wf, %.012051839              ; 2 uses
  %indvars.iv.next1988 = add nuw nsw i64 %indvars.iv1987, 1 ; 2 uses
  %i.wh = icmp samesign ult i64 %indvars.iv.next1988, %i.vn
  br i1 %i.wh, label %.lr.ph1840, label %._crit_edge1841, !llvm.loop !775

._crit_edge1841:                                  ; preds = %.lr.ph1840, %middle.block2346, %vec.epilog.middle.block2362, %.preheader1751
  %.01205.lcssa = phi i16 [ 0, %.preheader1751 ], [ %i.vz, %vec.epilog.middle.block2362 ], [ %i.vu, %middle.block2346 ], [ %i.wg, %.lr.ph1840 ] ; 3 uses
  %i.wi = getelementptr inbounds nuw [2 x i8], ptr %i.ta, i64 %i.tn
  %i.wj = load i16, ptr %i.wi, align 2, !tbaa !56
  %i.wk = icmp eq i16 %i.wj, 0
  %i.wl = icmp eq i16 %i.vm, 0
  %or.cond2219 = select i1 %i.wk, i1 %i.wl, i1 false
  br i1 %or.cond2219, label %bb.du, label %iter.check2320

bb.du:                                            ; preds = %._crit_edge1841
  %i.wm = zext i16 %i.tr to i64
  %i.wn = getelementptr inbounds nuw [2 x i8], ptr %i.qn, i64 %i.wm ; 2 uses
  %i.wo = load i16, ptr %i.wn, align 2, !tbaa !56 ; 2 uses
  %i.wp = zext i16 %i.wo to i32                   ; 2 uses
  %i.wq = icmp ugt i16 %i.wo, 1
  br i1 %i.wq, label %bb.dv, label %bb.ef

bb.dv:                                            ; preds = %bb.du
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao) #10
  store i32 1, ptr %i.ap, align 4, !tbaa !35
  store i32 %.812421867, ptr %i.th, align 4, !tbaa !35
  %i.wr = add nsw i32 %i.wp, -1
  %i.ws = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.408, ptr noundef nonnull %i.ap, ptr noundef nonnull %i.ao, i32 noundef 0, i32 noundef %i.wr) #10 ; 2 uses
  %i.wt = icmp sgt i32 %i.ws, -1
  br i1 %i.wt, label %bb.dx, label %bb.dw

bb.dw:                                            ; preds = %bb.dv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #10
  br label %.thread1608

bb.dx:                                            ; preds = %bb.dv
  %i.wu = load i32, ptr %i.ao, align 4, !tbaa !35 ; 2 uses
  %i.wv = trunc i32 %i.wu to i16                  ; 2 uses
  %i.ww = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %i.tn ; 2 uses
  store i16 %i.wv, ptr %i.ww, align 2, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao) #10
  %i.wx = icmp eq i16 %i.wv, 0
  br i1 %i.wx, label %.thread2155, label %bb.dy

.thread2155:                                      ; preds = %bb.dx
  %i.wy = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.tn
  store i16 1, ptr %i.wy, align 2, !tbaa !56
  %i.wz = load i16, ptr %i.wn, align 2, !tbaa !56
  %i.xa = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.tn
  store i16 %i.wz, ptr %i.xa, align 2, !tbaa !56
  %i.xb = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.tn
  store i16 %.01207.lcssa, ptr %i.xb, align 2, !tbaa !56
  %i.xc = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.tn
  store i16 %.01205.lcssa, ptr %i.xc, align 2, !tbaa !56
  br label %.lr.ph1864.preheader

bb.dy:                                            ; preds = %bb.dx
  %i.xd = and i32 %i.wu, 65535                    ; 2 uses
  %i.xe = add nuw nsw i32 %.812421867, %i.xd
  %i.xf = load i16, ptr %i.sp, align 8, !tbaa !265
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
  store i32 2, ptr %i.ar, align 4, !tbaa !35
  store i32 %.812421867, ptr %i.ti, align 4, !tbaa !35
  %i.xl = trunc nuw nsw i64 %indvars.iv1993 to i32 ; 2 uses
  store i32 %i.xl, ptr %i.tj, align 4, !tbaa !35
  %.neg = add i32 %.012041847, %i.xl
  %i.xm = sub i32 %.neg, %i.xk
  %i.xn = call i32 @ff_cbs_read_ue_golomb(ptr noundef nonnull %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.409, ptr noundef nonnull %i.ar, ptr noundef nonnull %i.aq, i32 noundef 0, i32 noundef %i.xm) #10 ; 2 uses
  %i.xo = icmp sgt i32 %i.xn, -1
  br i1 %i.xo, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #10
  br label %.thread1608

bb.eb:                                            ; preds = %bb.dz
  %i.xp = load i32, ptr %i.aq, align 4, !tbaa !35 ; 2 uses
  %i.xq = trunc i32 %i.xp to i16                  ; 2 uses
  %i.xr = getelementptr inbounds nuw [2 x i8], ptr %i.xj, i64 %indvars.iv1993
  store i16 %i.xq, ptr %i.xr, align 2, !tbaa !56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq) #10
  %i.xs = add i16 %i.xq, 1                        ; 3 uses
  %i.xt = add nuw nsw i64 %indvars.iv1993, %i.tn  ; 3 uses
  %i.xu = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.xt
  store i16 %i.xs, ptr %i.xu, align 2, !tbaa !56
  %i.xv = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.xt
  store i16 %.01207.lcssa, ptr %i.xv, align 2, !tbaa !56
  %i.xw = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.xt
  store i16 %.112061846, ptr %i.xw, align 2, !tbaa !56
  %i.xx = zext i16 %i.xs to i32
  %i.xy = add i16 %i.xs, %.112061846              ; 7 uses
  %i.xz = sub nsw i32 %.012041847, %i.xx          ; 7 uses
  %indvars.iv.next1994 = add nuw nsw i64 %indvars.iv1993, 1 ; 9 uses
  %i.ya = load i16, ptr %i.ww, align 2, !tbaa !56 ; 2 uses
  %i.yb = zext i16 %i.ya to i32                   ; 2 uses
  %i.yc = zext i16 %i.ya to i64
  %i.yd = icmp samesign ult i64 %indvars.iv.next1994, %i.yc
  br i1 %i.yd, label %bb.dz, label %bb.ec, !llvm.loop !776

bb.ec:                                            ; preds = %bb.eb
  %i.ye = getelementptr [1980 x i8], ptr %2, i64 %i.tn
  %i.yf = getelementptr [2 x i8], ptr %i.ye, i64 %indvars.iv.next1994
  %i.yg = getelementptr i8, ptr %i.yf, i64 10090
  %i.yh = load i16, ptr %i.yg, align 2, !tbaa !56 ; 2 uses
  %i.yi = zext i16 %i.yh to i32                   ; 4 uses
  %i.yj = add nuw nsw i32 %i.yi, 1                ; 5 uses
  %i.yk = add i32 %i.xz, %i.yi
  %i.yl = sdiv i32 %i.yk, %i.yj
  %i.ym = add nuw nsw i32 %.812421867, %i.yb
  %i.yn = add nsw i32 %i.ym, %i.yl
  %i.yo = load i16, ptr %i.sp, align 8, !tbaa !265
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
  %i.yv = add i32 %i.xp, 1
  %3 = and i32 %i.yv, 65535
  %4 = add i32 %.012041847, -2
  %i.yw = add nuw nsw i32 %3, %i.yi
  %i.yx = sub i32 %4, %i.yw
  %i.yy = zext i32 %i.yx to i64
  %i.yz = zext i16 %i.yh to i64
  %i.za = add nuw nsw i64 %i.yz, 1
  %i.zb = udiv i64 %i.yy, %i.za                   ; 3 uses
  %i.zc = add nuw nsw i64 %i.zb, 1                ; 5 uses
  %min.iters.check = icmp samesign ult i64 %i.zb, 3
  br i1 %min.iters.check, label %vec.epilog.scalar.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check2278 = icmp samesign ult i64 %i.zb, 15
  br i1 %min.iters.check2278, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.zd = and i64 %i.zc, 12
  %n.vec = and i64 %i.zc, 8589934576              ; 6 uses
  %broadcast.splatinsert = insertelement <8 x i16> poison, i16 %i.yt, i64 0
  %broadcast.splat = shufflevector <8 x i16> %broadcast.splatinsert, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %i.ze = add nuw i64 %indvars.iv.next1994, %n.vec ; 2 uses
  %i.zf = trunc i64 %n.vec to i32
  %i.zg = mul i32 %i.zf, %i.yu
  %i.zh = add i32 %i.xz, %i.zg                    ; 2 uses
  %i.zi = trunc i64 %n.vec to i16
  %i.zj = mul i16 %i.zi, %i.yt
  %i.zk = add i16 %i.xy, %i.zj                    ; 3 uses
  %i.zl = shl <8 x i16> %broadcast.splat, splat (i16 3) ; 3 uses
  %broadcast.splatinsert2279 = insertelement <8 x i16> poison, i16 %i.yt, i64 0
  %broadcast.splat2280 = shufflevector <8 x i16> %broadcast.splatinsert2279, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2281 = insertelement <8 x i16> poison, i16 %.01207.lcssa, i64 0
  %broadcast.splat2282 = shufflevector <8 x i16> %broadcast.splatinsert2281, <8 x i16> poison, <8 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2283 = insertelement <8 x i16> poison, i16 %i.xy, i64 0
  %broadcast.splat2284 = shufflevector <8 x i16> %broadcast.splatinsert2283, <8 x i16> poison, <8 x i32> zeroinitializer
  %i.zm = mul <8 x i16> %broadcast.splat, <i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7>
  %induction = add <8 x i16> %broadcast.splat2284, %i.zm
  %invariant.op = add nuw i64 %indvars.iv.next1994, %i.tn
  %invariant.op2637 = add <8 x i16> %i.zl, %i.zl
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <8 x i16> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <8 x i16> %vec.ind, %i.zl
  %.reass = add nuw i64 %index, %invariant.op     ; 3 uses
  %i.zn = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %.reass ; 2 uses
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 16
  store <8 x i16> %broadcast.splat2280, ptr %i.zn, align 2, !tbaa !56
  store <8 x i16> %broadcast.splat2280, ptr %i.zo, align 2, !tbaa !56
  %i.zp = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.reass ; 2 uses
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zp, i64 16
  store <8 x i16> %broadcast.splat2282, ptr %i.zp, align 2, !tbaa !56
  store <8 x i16> %broadcast.splat2282, ptr %i.zq, align 2, !tbaa !56
  %i.zr = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.reass ; 2 uses
  %i.zs = getelementptr inbounds nuw i8, ptr %i.zr, i64 16
  store <8 x i16> %vec.ind, ptr %i.zr, align 2, !tbaa !56
  store <8 x i16> %step.add, ptr %i.zs, align 2, !tbaa !56
  %index.next = add nuw i64 %index, 16            ; 2 uses
  %vec.ind.next.reass = add <8 x i16> %vec.ind, %invariant.op2637
  %i.zt = icmp eq i64 %index.next, %n.vec
  br i1 %i.zt, label %middle.block, label %vector.body, !llvm.loop !777

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.zc, %n.vec
  br i1 %cmp.n, label %._crit_edge1858, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.zd, 0
  br i1 %min.epilog.iters.check, label %vec.epilog.scalar.ph.preheader, label %vec.epilog.ph, !prof !267

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val2286 = phi i16 [ %i.zk, %vec.epilog.iter.check ], [ %i.xy, %vector.main.loop.iter.check ]
  %n.vec2287 = and i64 %i.zc, 8589934588          ; 5 uses
  %i.zu = add nuw i64 %indvars.iv.next1994, %n.vec2287 ; 2 uses
  %i.zv = trunc i64 %n.vec2287 to i32
  %i.zw = mul i32 %i.zv, %i.yu
  %i.zx = add i32 %i.xz, %i.zw                    ; 2 uses
  %i.zy = trunc i64 %n.vec2287 to i16
  %i.zz = mul i16 %i.zy, %i.yt
  %i.aaa = add i16 %i.xy, %i.zz                   ; 2 uses
  %broadcast.splatinsert2288 = insertelement <4 x i16> poison, i16 %i.yt, i64 0
  %broadcast.splat2289 = shufflevector <4 x i16> %broadcast.splatinsert2288, <4 x i16> poison, <4 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert2290 = insertelement <4 x i16> poison, i16 %.01207.lcssa, i64 0
  %broadcast.splat2291 = shufflevector <4 x i16> %broadcast.splatinsert2290, <4 x i16> poison, <4 x i32> zeroinitializer
  %broadcast.splatinsert2292 = insertelement <4 x i16> poison, i16 %bc.resume.val2286, i64 0
  %broadcast.splat2293 = shufflevector <4 x i16> %broadcast.splatinsert2292, <4 x i16> poison, <4 x i32> zeroinitializer
  %i.aab = mul <4 x i16> %broadcast.splat2289, <i16 0, i16 1, i16 2, i16 3>
  %induction2294 = add <4 x i16> %broadcast.splat2293, %i.aab
  %i.aac = shl i16 %i.yt, 2
  %broadcast.splatinsert2295 = insertelement <4 x i16> poison, i16 %i.aac, i64 0
  %broadcast.splat2296 = shufflevector <4 x i16> %broadcast.splatinsert2295, <4 x i16> poison, <4 x i32> zeroinitializer
  %invariant.op2638 = add nuw i64 %indvars.iv.next1994, %i.tn
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index2297 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next2299, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind2298 = phi <4 x i16> [ %induction2294, %vec.epilog.ph ], [ %vec.ind.next2300, %vec.epilog.vector.body ] ; 2 uses
  %.reass2639 = add nuw i64 %index2297, %invariant.op2638 ; 3 uses
  %i.aad = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %.reass2639
  store <4 x i16> %broadcast.splat2289, ptr %i.aad, align 2, !tbaa !56
  %i.aae = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %.reass2639
  store <4 x i16> %broadcast.splat2291, ptr %i.aae, align 2, !tbaa !56
  %i.aaf = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %.reass2639
  store <4 x i16> %vec.ind2298, ptr %i.aaf, align 2, !tbaa !56
  %index.next2299 = add nuw i64 %index2297, 4     ; 2 uses
  %vec.ind.next2300 = add <4 x i16> %vec.ind2298, %broadcast.splat2296
  %i.aag = icmp eq i64 %index.next2299, %n.vec2287
  br i1 %i.aag, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !778

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n2301 = icmp eq i64 %i.zc, %n.vec2287
  br i1 %cmp.n2301, label %._crit_edge1858, label %vec.epilog.scalar.ph.preheader

vec.epilog.scalar.ph.preheader:                   ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv1995.ph = phi i64 [ %indvars.iv.next1994, %iter.check ], [ %i.ze, %vec.epilog.iter.check ], [ %i.zu, %vec.epilog.middle.block ]
  %.11856.ph = phi i32 [ %i.xz, %iter.check ], [ %i.zh, %vec.epilog.iter.check ], [ %i.zx, %vec.epilog.middle.block ]
  %.21855.ph = phi i16 [ %i.xy, %iter.check ], [ %i.zk, %vec.epilog.iter.check ], [ %i.aaa, %vec.epilog.middle.block ]
  br label %vec.epilog.scalar.ph

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph.preheader, %vec.epilog.scalar.ph
  %indvars.iv1995 = phi i64 [ %indvars.iv.next1996, %vec.epilog.scalar.ph ], [ %indvars.iv1995.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %.11856 = phi i32 [ %i.aam, %vec.epilog.scalar.ph ], [ %.11856.ph, %vec.epilog.scalar.ph.preheader ]
  %.21855 = phi i16 [ %i.aal, %vec.epilog.scalar.ph ], [ %.21855.ph, %vec.epilog.scalar.ph.preheader ] ; 2 uses
  %i.aah = add nuw nsw i64 %indvars.iv1995, %i.tn ; 3 uses
  %i.aai = getelementptr inbounds nuw [2 x i8], ptr %i.tg, i64 %i.aah
  store i16 %i.yt, ptr %i.aai, align 2, !tbaa !56
  %i.aaj = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.aah
  store i16 %.01207.lcssa, ptr %i.aaj, align 2, !tbaa !56
  %i.aak = getelementptr inbounds nuw [2 x i8], ptr %i.ah, i64 %i.aah
  store i16 %.21855, ptr %i.aak, align 2, !tbaa !56
  %i.aal = add i16 %.21855, %i.yt                 ; 2 uses
  %i.aam = sub nsw i32 %.11856, %i.yj             ; 3 uses
  %indvars.iv.next1996 = add nuw nsw i64 %indvars.iv1995, 1 ; 2 uses
  %i.aan = icmp sgt i32 %i.aam, %i.yj
  br i1 %i.aan, label %vec.epilog.scalar.ph, label %._crit_edge1858, !llvm.loop !779

._crit_edge1858:                                  ; preds = %vec.epilog.scalar.ph, %middle.block, %vec.epilog.middle.block, %.preheader1749
  %.31215.lcssa.in = phi i64 [ %indvars.iv.next1994, %.preheader1749 ], [ %i.zu, %vec.epilog.middle.block ], [ %i.ze, %middle.block ], [ %indvars.iv.next1996, %vec.epilog.scalar.ph ]
  %.2.lcssa = phi i16 [ %i.xy, %.preheader1749 ], [ %i.aaa, %vec.epilog.middle.block ], [ %i.zk, %middle.block ], [ %i.aal, %vec.epilog.scalar.ph ]
  %.1.lcssa = phi i32 [ %i.xz, %.preheader1749 ], [ %i.zx, %vec.epilog.middle.block ], [ %i.zh, %middle.block ], [ %i.aam, %vec.epilog.scalar.ph ] ; 2 uses
  %.31215.lcssa = trunc i64 %.31215.lcssa.in to i32 ; 3 uses
  %i.aao = icmp sgt i32 %.1.lcssa, 0
  br i1 %i.aao, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %._crit_edge1858
  %i.aap = trunc i32 %.1.lcssa to i16
  %i.aaq = add nsw i32 %.812421867, %.31215.lcssa
  %i.aar = sext i32 %i.aaq to i64                 ; 3 uses
  %i.aas = getelementptr inbounds [2 x i8], ptr %i.tg, i64 %i.aar
  store i16 %i.aap, ptr %i.aas, align 2, !tbaa !56
  %i.aat = getelementptr inbounds [2 x i8], ptr %i.ag, i64 %i.aar
  store i16 %.01207.lcssa, ptr %i.aat, align 2, !tbaa !56
  %i.aau = getelementptr inbounds [2 x i8], ptr %i.ah, i64 %i.aar
  store i16 %.2.lcssa, ptr %i.aau, align 2, !tbaa !56
  %i.aav = add nuw nsw i32 %.31215.lcssa, 1
  br label %bb.ee

bb.ee:                                            ; preds = %bb.ed, %._crit_edge1858
  %.4 = phi i32 [ %i.aav, %bb.ed ], [ %.31215.lcssa, %._crit_edge1858 ]
  %i.aaw = trunc i32 %.4 to i16                   ; 2 uses
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.tn
  store i16 %i.aaw, ptr %i.aax, align 2, !tbaa !56
  %.not1897 = icmp eq i16 %i.aaw, 0
  br i1 %.not1897, label %._crit_edge1865, label %.lr.ph1864.preheader

.lr.ph1864.preheader:                             ; preds = %.thread2155, %bb.ee
  %i.aay = getelementptr inbounds nuw [2 x i8], ptr %i.tf, i64 %i.tn
  %invariant.gep2210 = getelementptr inbounds nuw [2 x i8], ptr %i.sy, i64 %i.tn
  br label %.lr.ph1864

.lr.ph1864:                                       ; preds = %.lr.ph1864.preheader, %.lr.ph1864
  %indvars.iv1997 = phi i64 [ 0, %.lr.ph1864.preheader ], [ %indvars.iv.next1998, %.lr.ph1864 ] ; 2 uses
  %gep2211 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep2210, i64 %indvars.iv1997
  store i16 %.012091869, ptr %gep2211, align 2, !tbaa !56
  %indvars.iv.next1998 = add nuw nsw i64 %indvars.iv1997, 1 ; 2 uses
  %i.aaz = load i16, ptr %i.aay, align 2, !tbaa !56 ; 2 uses
  %i.aba = zext i16 %i.aaz to i64
  %i.abb = icmp samesign ult i64 %indvars.iv.next1998, %i.aba
  br i1 %i.abb, label %.lr.ph1864, label %._crit_edge1865.loopexit, !llvm.loop !780

._crit_edge1865.loopexit:                         ; preds = %.lr.ph1864
  %i.abc = zext i16 %i.aaz to i32
  br label %._crit_edge1865

._crit_edge1865:                                  ; preds = %._crit_edge1865.loopexit, %bb.ee
  %.lcssa1768.in = phi i32 [ 0, %bb.ee ], [ %i.abc, %._crit_edge1865.loopexit ]
  %i.abd = add nsw i32 %.812421867, -1
  %i.abe = add nsw i32 %i.abd, %.lcssa1768.in
  br label %bb.eg

bb.ef:                                            ; preds = %bb.du
  %i.abf = getelementptr inbounds nuw [2 x i8], ptr %i.te, i64 %i.tn
  store i16 0, ptr %i.abf, align 2, !tbaa !56
  br label %iter.check2320

iter.check2320:                                   ; preds = %._crit_edge1841, %bb.ef
  %i.abg = phi i64 [ 8092, %._crit_edge1841 ], [ 2002222, %bb.ef ]
  %.sink = phi i16 [ 0, %._crit_edge1841 ], [ 1, %bb.ef ]
  %i.abh = getelementptr inbounds nuw i8, ptr %2, i64 %i.abg
  %i.abi = getelementptr inbounds nuw [2 x i8], ptr %i.abh, i64 %i.tn
  store i16 %.sink, ptr %i.abi, align 2, !tbaa !56
  %i.abj = zext i16 %i.vm to i64                  ; 2 uses
end_hunk_1
