Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/hevc?download=true
inline.NumInlined: 239
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 10
begin_hunk_0_@hvcc_write:bb.a
  %indvars.iv.next223 = add nuw nsw i64 %indvars.iv222, 1 ; 2 uses
  %exitcond225.not = icmp eq i64 %indvars.iv.next223, 5
  br i1 %exitcond225.not, label %bb.i, label %bb.j, !llvm.loop !73

bb.o:                                             ; preds = %bb.i
  %i.yn = add i16 %i.uh, -1
  %or.cond = icmp ult i16 %i.yn, 16
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.b
  br i1 %or.cond5, label %bb.p, label %.loopexit189

bb.p:                                             ; preds = %bb.o
  %i.yo = add i16 %i.ug, -17
  %or.cond9 = icmp ult i16 %i.yo, -16
  %i.yp = add i16 %i.uf, -65
  %i.yq = icmp ult i16 %i.yp, -64
  %or.cond16 = select i1 %or.cond9, i1 true, i1 %i.yq
  br i1 %or.cond16, label %.loopexit189, label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.p
  %i.yr = load i8, ptr %2, align 8, !tbaa !18
  %i.ys = zext i8 %i.yr to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.ys) #7
  br i1 %i.b, label %.critedge187, label %bb.q

bb.q:                                             ; preds = %.critedge
  %i.yt = getelementptr inbounds nuw i8, ptr %2, i64 1
  %i.yu = load i8, ptr %i.yt, align 1, !tbaa !19
  %i.yv = zext i8 %i.yu to i32
  %i.yw = shl nuw nsw i32 %i.yv, 6
  %i.yx = getelementptr inbounds nuw i8, ptr %2, i64 2
  %i.yy = load i8, ptr %i.yx, align 2, !tbaa !20
  %i.yz = zext i8 %i.yy to i32
  %i.za = shl nuw nsw i32 %i.yz, 5
  %i.zb = or i32 %i.za, %i.yw
  %i.zc = getelementptr inbounds nuw i8, ptr %2, i64 3
  %i.zd = load i8, ptr %i.zc, align 1, !tbaa !21
  %i.ze = zext i8 %i.zd to i32
  %i.zf = or i32 %i.zb, %i.ze
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.zf) #7
  %i.zg = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.zh = load i32, ptr %i.zg, align 4, !tbaa !22
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.zh) #7
  %i.zi = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.zj = load i64, ptr %i.zi, align 8, !tbaa !23
  %i.zk = lshr i64 %i.zj, 16
  %i.zl = trunc i64 %i.zk to i32
  tail call void @avio_wb32(ptr noundef %1, i32 noundef %i.zl) #7
  %i.zm = load i64, ptr %i.zi, align 8, !tbaa !23
  %i.zn = trunc i64 %i.zm to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.zn) #7
  %i.zo = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.zp = load i8, ptr %i.zo, align 8, !tbaa !24
  %i.zq = zext i8 %i.zp to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.zq) #7
  %i.zr = load i16, ptr %i.c, align 2, !tbaa !25
  %i.zs = or i16 %i.zr, -4096
  %i.zt = zext i16 %i.zs to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.zt) #7
  %i.zu = load i8, ptr %i.vx, align 4, !tbaa !26
  %i.zv = or i8 %i.zu, -4
  %i.zw = zext i8 %i.zv to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.zw) #7
  %i.zx = getelementptr inbounds nuw i8, ptr %2, i64 21
  %i.zy = load i8, ptr %i.zx, align 1, !tbaa !27
  %i.zz = or i8 %i.zy, -4
  %i.aaa = zext i8 %i.zz to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.aaa) #7
  %i.aab = getelementptr inbounds nuw i8, ptr %2, i64 22
  %i.aac = load i8, ptr %i.aab, align 2, !tbaa !28
  %i.aad = or i8 %i.aac, -8
  %i.aae = zext i8 %i.aad to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.aae) #7
  %i.aaf = getelementptr inbounds nuw i8, ptr %2, i64 23
  %i.aag = load i8, ptr %i.aaf, align 1, !tbaa !29
  %i.aah = or i8 %i.aag, -8
  %i.aai = zext i8 %i.aah to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.aai) #7
  %i.aaj = load i16, ptr %i.g, align 8, !tbaa !30
  %i.aak = zext i16 %i.aaj to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.aak) #7
  br label %bb.r

.critedge187:                                     ; preds = %.critedge
  %i.aal = load i16, ptr %i.c, align 2, !tbaa !25
  %i.aam = or i16 %i.aal, -4096
  %i.aan = zext i16 %i.aam to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.aan) #7
  %i.aao = load i8, ptr %i.vx, align 4, !tbaa !26
  %i.aap = or i8 %i.aao, -4
  %i.aaq = zext i8 %i.aap to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.aaq) #7
  br label %bb.r

bb.r:                                             ; preds = %.critedge187, %bb.q
  %i.aar = load <4 x i8>, ptr %i.i, align 2, !tbaa !13
  %i.aas = zext <4 x i8> %i.aar to <4 x i16>
  %i.aat = shl nuw nsw <4 x i16> %i.aas, <i16 6, i16 3, i16 2, i16 0>
  %i.aau = tail call i16 @llvm.vector.reduce.or.v4i16(<4 x i16> %i.aat)
  %i.aav = zext nneg i16 %i.aau to i32
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.aav) #7
  tail call void @avio_w8(ptr noundef %1, i32 noundef %.us-phi196) #7
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %.loopexit
  %indvars.iv232 = phi i64 [ 0, %bb.r ], [ %indvars.iv.next233, %.loopexit ] ; 3 uses
  %i.aaw = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %indvars.iv232 ; 4 uses
  %i.aax = getelementptr inbounds nuw [2 x i8], ptr %i.a, i64 %indvars.iv232
  %i.aay = load i16, ptr %i.aax, align 2, !tbaa !76 ; 2 uses
  %.not185 = icmp eq i16 %i.aay, 0
  br i1 %.not185, label %.loopexit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.aaz = load i8, ptr %i.aaw, align 8, !tbaa !44
  %i.aba = zext i8 %i.aaz to i32
  %i.abb = shl nuw nsw i32 %i.aba, 7
  %i.abc = getelementptr inbounds nuw i8, ptr %i.aaw, i64 1
  %i.abd = load i8, ptr %i.abc, align 1, !tbaa !45
  %i.abe = and i8 %i.abd, 63
  %i.abf = zext nneg i8 %i.abe to i32
  %i.abg = or disjoint i32 %i.abb, %i.abf
  tail call void @avio_w8(ptr noundef %1, i32 noundef %i.abg) #7
  %i.abh = zext i16 %i.aay to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.abh) #7
  %i.abi = getelementptr inbounds nuw i8, ptr %i.aaw, i64 2 ; 3 uses
  %i.abj = load i16, ptr %i.abi, align 2, !tbaa !37 ; 2 uses
  %.not206 = icmp eq i16 %i.abj, 0
  br i1 %.not206, label %.loopexit, label %.lr.ph203

.lr.ph203:                                        ; preds = %bb.t
  %i.abk = getelementptr inbounds nuw i8, ptr %i.aaw, i64 8 ; 2 uses
  br i1 %i.b, label %.lr.ph203.split.us, label %.lr.ph203.split

.lr.ph203.split.us:                               ; preds = %.lr.ph203, %bb.v
  %i.abl = phi i16 [ %i.abx, %bb.v ], [ %i.abj, %.lr.ph203 ]
  %indvars.iv229 = phi i64 [ %indvars.iv.next230, %bb.v ], [ 0, %.lr.ph203 ] ; 2 uses
  %i.abm = load ptr, ptr %i.abk, align 8, !tbaa !38
  %i.abn = getelementptr inbounds nuw [24 x i8], ptr %i.abm, i64 %indvars.iv229 ; 3 uses
  %i.abo = load i8, ptr %i.abn, align 8, !tbaa !40
  %i.abp = icmp eq i8 %i.abo, 0
  br i1 %i.abp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.lr.ph203.split.us
  %i.abq = getelementptr inbounds nuw i8, ptr %i.abn, i64 2 ; 2 uses
  %i.abr = load i16, ptr %i.abq, align 2, !tbaa !46
  %i.abs = zext i16 %i.abr to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.abs) #7
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abn, i64 8
  %i.abu = load ptr, ptr %i.abt, align 8, !tbaa !47
  %i.abv = load i16, ptr %i.abq, align 2, !tbaa !46
  %i.abw = zext i16 %i.abv to i32
  tail call void @avio_write(ptr noundef %1, ptr noundef %i.abu, i32 noundef %i.abw) #7
  %.pre236 = load i16, ptr %i.abi, align 2, !tbaa !37
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph203.split.us
  %i.abx = phi i16 [ %.pre236, %bb.u ], [ %i.abl, %.lr.ph203.split.us ] ; 2 uses
  %indvars.iv.next230 = add nuw nsw i64 %indvars.iv229, 1 ; 2 uses
  %i.aby = zext i16 %i.abx to i64
  %i.abz = icmp samesign ult i64 %indvars.iv.next230, %i.aby
  br i1 %i.abz, label %.lr.ph203.split.us, label %.loopexit, !llvm.loop !74

.lr.ph203.split:                                  ; preds = %.lr.ph203, %.lr.ph203.split
  %indvars.iv226 = phi i64 [ %indvars.iv.next227, %.lr.ph203.split ], [ 0, %.lr.ph203 ] ; 2 uses
  %i.aca = load ptr, ptr %i.abk, align 8, !tbaa !38
  %i.acb = getelementptr inbounds nuw [24 x i8], ptr %i.aca, i64 %indvars.iv226 ; 2 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %i.acb, i64 2 ; 2 uses
  %i.acd = load i16, ptr %i.acc, align 2, !tbaa !46
  %i.ace = zext i16 %i.acd to i32
  tail call void @avio_wb16(ptr noundef %1, i32 noundef %i.ace) #7
  %i.acf = getelementptr inbounds nuw i8, ptr %i.acb, i64 8
  %i.acg = load ptr, ptr %i.acf, align 8, !tbaa !47
  %i.ach = load i16, ptr %i.acc, align 2, !tbaa !46
  %i.aci = zext i16 %i.ach to i32
  tail call void @avio_write(ptr noundef %1, ptr noundef %i.acg, i32 noundef %i.aci) #7
  %indvars.iv.next227 = add nuw nsw i64 %indvars.iv226, 1 ; 2 uses
  %i.acj = load i16, ptr %i.abi, align 2, !tbaa !37
  %i.ack = zext i16 %i.acj to i64
  %i.acl = icmp samesign ult i64 %indvars.iv.next227, %i.ack
  br i1 %i.acl, label %.lr.ph203.split, label %.loopexit, !llvm.loop !74

.loopexit:                                        ; preds = %.lr.ph203.split, %bb.v, %bb.t, %bb.s
  %indvars.iv.next233 = add nuw nsw i64 %indvars.iv232, 1 ; 2 uses
  %exitcond235.not = icmp eq i64 %indvars.iv.next233, 5
  br i1 %exitcond235.not, label %.loopexit189, label %bb.s, !llvm.loop !75

.loopexit189:                                     ; preds = %.loopexit, %bb.p, %bb.o
  %.0178 = phi i32 [ -1094995529, %bb.o ], [ -1094995529, %bb.p ], [ 0, %.loopexit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret i32 %.0178
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #3

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -2147483648, 1) i32 @hvcc_add_nal_unit(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, i32 noundef range(i32 0, 8) %3, i32 noundef %4) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i32], align 16              ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 21 uses
  %i.c = alloca [16 x i8], align 16               ; 10 uses
  %i.d = alloca [64 x i8], align 16               ; 16 uses
  %i.e = alloca [17 x i8], align 16               ; 13 uses
  %5 = alloca %struct.GetBitContext, align 8      ; 22 uses
  %i.f = alloca i32, align 4                      ; 4 uses
  %i.g = and i32 %3, 2
  %.not = icmp eq i32 %i.g, 0
  %i.h = icmp samesign ult i32 %3, 4
  %i.i = trunc nuw nsw i32 %3 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.k = zext i32 %4 to i64
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %i.j, i64 %i.k ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #7
  %i.m = call ptr @ff_nal_unit_extract_rbsp(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %i.f, i32 noundef 2) #7 ; 5 uses
  %.not46 = icmp eq ptr %i.m, null
  br i1 %.not46, label %hvcc_parse_vps.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = load i32, ptr %i.f, align 4, !tbaa !9    ; 2 uses
  %or.cond.i = icmp ugt i32 %i.n, 268435455
  %i.o = shl nuw nsw i32 %i.n, 3
  %i.p = select i1 %or.cond.i, i32 -8, i32 %i.o   ; 2 uses
  %or.cond.i.i = icmp ugt i32 %i.p, 2147483134    ; 3 uses
  %.014.i.i = select i1 %or.cond.i.i, ptr null, ptr %i.m
  %.013.i.i = select i1 %or.cond.i.i, i32 0, i32 %i.p ; 2 uses
  store ptr %.014.i.i, ptr %5, align 8, !tbaa !49
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 2 uses
  store i32 %.013.i.i, ptr %i.q, align 4, !tbaa !98
  %i.r = add nuw nsw i32 %.013.i.i, 8             ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 12 uses
  store i32 %i.r, ptr %i.s, align 8, !tbaa !50
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 192 uses
  store i32 0, ptr %i.t, align 8, !tbaa !51
  br i1 %or.cond.i.i, label %hvcc_parse_vps.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %i.t, align 8, !tbaa !51
  %i.u = load i32, ptr %i.m, align 1, !tbaa !13
  store i32 7, ptr %i.t, align 8, !tbaa !51
  %i.v = trunc i32 %i.u to i8
  %i.w = lshr i8 %i.v, 1
  %i.x = and i8 %i.w, 63                          ; 3 uses
  %i.y = load i32, ptr %i.m, align 1, !tbaa !13
  %i.z = call i32 @llvm.bswap.i32(i32 %i.y)
  %i.aa = lshr i32 %i.z, 19
  %i.ab = call i32 @llvm.umin.i32(i32 %i.r, i32 13)
  %i.ac = trunc i32 %i.aa to i8
  %i.ad = and i8 %i.ac, 63                        ; 3 uses
  %i.ae = add nuw nsw i32 %i.ab, 3
  %i.af = call i32 @llvm.umin.i32(i32 %i.r, i32 %i.ae)
  store i32 %i.af, ptr %i.t, align 8, !tbaa !51
  %i.ag = icmp ne i8 %i.ad, 0                     ; 2 uses
  %or.cond = select i1 %i.h, i1 %i.ag, i1 false
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !99
  %.not47 = icmp eq i8 %i.ad, %i.ai
  br i1 %.not47, label %bb.e, label %hvcc_parse_vps.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.l, i64 2 ; 3 uses
  %i.ak = load i16, ptr %i.aj, align 2, !tbaa !37
  %i.al = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  %i.am = zext i16 %i.ak to i64                   ; 2 uses
  %i.an = add nuw nsw i64 %i.am, 1
  %i.ao = call i32 @av_reallocp_array(ptr noundef nonnull %i.al, i64 noundef %i.an, i64 noundef 24) #7 ; 2 uses
  %i.ap = icmp slt i32 %i.ao, 0
  br i1 %i.ap, label %hvcc_parse_vps.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.aq = load ptr, ptr %i.al, align 8, !tbaa !38 ; 2 uses
  %i.ar = getelementptr inbounds nuw [24 x i8], ptr %i.aq, i64 %i.am ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store ptr %0, ptr %i.as, align 8, !tbaa !47
  %i.at = trunc i32 %1 to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 2
  store i16 %i.at, ptr %i.au, align 2, !tbaa !46
  %i.av = load i16, ptr %i.aj, align 2, !tbaa !37 ; 2 uses
  %i.aw = add i16 %i.av, 1                        ; 2 uses
  store i16 %i.aw, ptr %i.aj, align 2, !tbaa !37
  %i.ax = icmp eq i16 %i.av, 0
  br i1 %i.ax, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.ay = getelementptr inbounds nuw i8, ptr %2, i64 30 ; 2 uses
  %i.az = load i8, ptr %i.ay, align 2, !tbaa !100
  %i.ba = add i8 %i.az, 1
  store i8 %i.ba, ptr %i.ay, align 2, !tbaa !100
  %i.bb = getelementptr inbounds nuw i8, ptr %i.l, i64 1
  store i8 %i.x, ptr %i.bb, align 1, !tbaa !45
  %i.bc = add nsw i8 %i.x, -32
  %or.cond8 = icmp ult i8 %i.bc, 3
  br i1 %or.cond8, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bd = and i8 %i.i, 1
  store i8 %i.bd, ptr %i.l, align 8, !tbaa !44
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %i.be = zext i16 %i.aw to i64
  %i.bf = getelementptr [24 x i8], ptr %i.aq, i64 %i.be ; 6 uses
  %i.bg = getelementptr i8, ptr %i.bf, i64 -24
  store i8 %i.ad, ptr %i.bg, align 8, !tbaa !40
  br i1 %.not, label %bb.j, label %hvcc_parse_vps.exit

bb.j:                                             ; preds = %bb.i
  switch i8 %i.x, label %hvcc_parse_vps.exit [
    i8 32, label %bb.k
    i8 33, label %bb.ca
    i8 34, label %bb.fl
  ]

bb.k:                                             ; preds = %bb.j
  %i.bh = load i32, ptr %i.t, align 8, !tbaa !51  ; 3 uses
  %i.bi = load i32, ptr %i.s, align 8, !tbaa !50  ; 6 uses
  %i.bj = load ptr, ptr %5, align 8, !tbaa !49    ; 4 uses
  %i.bk = lshr i32 %i.bh, 3
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bl
  %i.bn = load i32, ptr %i.bm, align 1, !tbaa !13
  %i.bo = call i32 @llvm.bswap.i32(i32 %i.bn)
  %i.bp = and i32 %i.bh, 7
  %i.bq = shl i32 %i.bo, %i.bp
  %i.br = lshr i32 %i.bq, 28
  %i.bs = add i32 %i.bh, 4
  %i.bt = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.bs) ; 4 uses
  store i32 %i.bt, ptr %i.t, align 8, !tbaa !51
  %i.bu = trunc nuw nsw i32 %i.br to i8
  %i.bv = getelementptr i8, ptr %i.bf, i64 -23
  store i8 %i.bu, ptr %i.bv, align 1, !tbaa !101
  %i.bw = lshr i32 %i.bt, 3
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.bx
  %i.bz = load i32, ptr %i.by, align 1, !tbaa !13
  %i.ca = add i32 %i.bt, 1
  %i.cb = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.ca)
  %i.cc = add i32 %i.cb, 1
  %i.cd = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.cc) ; 4 uses
  store i32 %i.cd, ptr %i.t, align 8, !tbaa !51
  %i.ce = lshr i32 %i.cd, 3
  %i.cf = zext nneg i32 %i.ce to i64
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 1, !tbaa !13
  %i.ci = add i32 %i.cd, 6
  %i.cj = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.ci) ; 4 uses
  store i32 %i.cj, ptr %i.t, align 8, !tbaa !51
  %i.ck = lshr i32 %i.cj, 3
  %i.cl = zext nneg i32 %i.ck to i64
  %i.cm = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 1, !tbaa !13
  %i.co = call i32 @llvm.bswap.i32(i32 %i.cn)
  %i.cp = and i32 %i.cj, 7
  %i.cq = shl i32 %i.co, %i.cp
  %i.cr = lshr i32 %i.cq, 29                      ; 3 uses
  %i.cs = add i32 %i.cj, 3
  %i.ct = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.cs)
  %i.cu = trunc nuw nsw i32 %i.cr to i8
  %i.cv = getelementptr i8, ptr %i.bf, i64 -8     ; 4 uses
  store i8 %i.cu, ptr %i.cv, align 8, !tbaa !102
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 27 ; 2 uses
  %i.cx = load i8, ptr %i.cw, align 1, !tbaa !32
  %i.cy = zext i8 %i.cx to i32
  %i.cz = add nuw nsw i32 %i.cr, 1
  %i.da = call i32 @llvm.umax.i32(i32 %i.cz, i32 %i.cy)
  %i.db = trunc nuw i32 %i.da to i8
  store i8 %i.db, ptr %i.cw, align 1, !tbaa !32
  %i.dc = add i32 %i.ct, 17
  %i.dd = call i32 @llvm.umin.i32(i32 %i.bi, i32 %i.dc)
  store i32 %i.dd, ptr %i.t, align 8, !tbaa !51
  call fastcc void @hvcc_parse_ptl(ptr noundef nonnull %5, ptr noundef nonnull %2, i32 noundef 1, i32 noundef %i.cr)
  %i.de = load i32, ptr %i.t, align 8, !tbaa !51  ; 3 uses
  %i.df = load i32, ptr %i.s, align 8, !tbaa !50  ; 18 uses
  %i.dg = load ptr, ptr %5, align 8, !tbaa !49    ; 14 uses
  %i.dh = lshr i32 %i.de, 3
  %i.di = zext nneg i32 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.di
  %i.dk = load i32, ptr %i.dj, align 1, !tbaa !13
  %i.dl = call i32 @llvm.bswap.i32(i32 %i.dk)
  %i.dm = and i32 %i.de, 7
  %i.dn = shl i32 %i.dl, %i.dm
  %i.do = add i32 %i.de, 1
  %i.dp = call i32 @llvm.umin.i32(i32 %i.df, i32 %i.do) ; 2 uses
  store i32 %i.dp, ptr %i.t, align 8, !tbaa !51
  %.pre.i = load i8, ptr %i.cv, align 8, !tbaa !102
  %i.dq = zext i8 %.pre.i to i32                  ; 3 uses
  %.not.inv.i = icmp slt i32 %i.dn, 0
  %..i = select i1 %.not.inv.i, i32 0, i32 %i.dq
  br label %bb.l

bb.l:                                             ; preds = %get_ue_golomb.exit83.i, %bb.k
  %storemerge139152.i = phi i32 [ %i.dp, %bb.k ], [ %..i82.i, %get_ue_golomb.exit83.i ] ; 4 uses
  %.051151.i = phi i32 [ %..i, %bb.k ], [ %i.gc, %get_ue_golomb.exit83.i ] ; 2 uses
  %i.dr = lshr i32 %storemerge139152.i, 3
  %i.ds = zext nneg i32 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dg, i64 %i.ds
  %i.du = load i32, ptr %i.dt, align 1, !tbaa !13
  %i.dv = call i32 @llvm.bswap.i32(i32 %i.du)
  %i.dw = and i32 %storemerge139152.i, 7
end_hunk_0
begin_hunk_1_@hvcc_add_nal_unit:bb.a
  %i.vi = add i32 %i.ux, 1
  %i.vj = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.vi) ; 4 uses
  store i32 %i.vj, ptr %i.t, align 8, !tbaa !51
  %.not79.14.i.i = icmp sgt i32 %i.vh, -1
  br i1 %.not79.14.i.i, label %bb.bn, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.vk = add nuw nsw i8 %.169.13.i.i, 1
  %i.vl = zext nneg i8 %.169.13.i.i to i64
  %i.vm = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vl
  store i8 14, ptr %i.vm, align 1, !tbaa !13
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bl
  %.169.14.i.i = phi i8 [ %i.vk, %bb.bm ], [ %.169.13.i.i, %bb.bl ] ; 3 uses
  %i.vn = lshr i32 %i.vj, 3
  %i.vo = zext nneg i32 %i.vn to i64
  %i.vp = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.vo
  %i.vq = load i32, ptr %i.vp, align 1, !tbaa !13
  %i.vr = call i32 @llvm.bswap.i32(i32 %i.vq)
  %i.vs = and i32 %i.vj, 7
  %i.vt = shl i32 %i.vr, %i.vs
  %i.vu = add i32 %i.vj, 1
  %i.vv = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.vu) ; 3 uses
  store i32 %i.vv, ptr %i.t, align 8, !tbaa !51
  %.not79.15.i.i = icmp sgt i32 %i.vt, -1
  br i1 %.not79.15.i.i, label %.preheader81.i.i, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.vw = add nuw nsw i8 %.169.14.i.i, 1
  %i.vx = zext nneg i8 %.169.14.i.i to i64
  %i.vy = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.vx
  store i8 15, ptr %i.vy, align 1, !tbaa !13
  br label %.preheader81.i.i

.preheader81.i.i:                                 ; preds = %bb.bo, %bb.bn
  %.169.15.i.i = phi i8 [ %i.vw, %bb.bo ], [ %.169.14.i.i, %bb.bn ] ; 7 uses
  %i.vz = call i32 @llvm.bswap.i32(i32 %i.op)
  %i.wa = and i32 %i.ol, 7
  %i.wb = shl i32 %i.vz, %i.wa                    ; 3 uses
  %.neg.i.i = ashr i32 %i.wb, 31
  %i.wc = zext nneg i8 %.169.15.i.i to i32
  %i.wd = add nsw i32 %.neg.i.i, %i.wc            ; 2 uses
  %i.we = icmp sgt i32 %i.wd, 0
  br i1 %i.we, label %.lr.ph.i.i, label %._crit_edge.i.i

bb.bp:                                            ; preds = %bb.bp, %.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.bp ] ; 2 uses
  %i.wf = phi i32 [ %i.vv, %.lr.ph.i.i ], [ %i.wp, %bb.bp ] ; 3 uses
  %i.wg = lshr i32 %i.wf, 3
  %i.wh = zext nneg i32 %i.wg to i64
  %i.wi = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.wh
  %i.wj = load i32, ptr %i.wi, align 1, !tbaa !13
  %i.wk = call i32 @llvm.bswap.i32(i32 %i.wj)
  %i.wl = and i32 %i.wf, 7
  %i.wm = shl i32 %i.wk, %i.wl
  %i.wn = lshr i32 %i.wm, 29
  %i.wo = add i32 %i.wf, 3
  %i.wp = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.wo) ; 3 uses
  store i32 %i.wp, ptr %i.t, align 8, !tbaa !51
  %i.wq = trunc nuw nsw i32 %i.wn to i8
  %i.wr = add nuw nsw i8 %i.wq, 1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv.i.i
  store i8 %i.wr, ptr %i.ws, align 1, !tbaa !13
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %wide.trip.count.i.i
  br i1 %exitcond.not.i.i, label %._crit_edge.i.i, label %bb.bp, !llvm.loop !79

._crit_edge.i.i:                                  ; preds = %bb.bp, %.preheader81.i.i
  %i.wt = phi i32 [ %i.vv, %.preheader81.i.i ], [ %i.wp, %bb.bp ] ; 3 uses
  %i.wu = lshr i32 %i.wt, 3
  %i.wv = zext nneg i32 %i.wu to i64
  %i.ww = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.wv
  %i.wx = load i32, ptr %i.ww, align 1, !tbaa !13
  %i.wy = add i32 %i.wt, 1
  %i.wz = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.wy) ; 4 uses
  store i32 %i.wz, ptr %i.t, align 8, !tbaa !51
  %i.xa = zext nneg i8 %i.oe to i32               ; 2 uses
  br i1 %i.of, label %.lr.ph93.i.i, label %._crit_edge94.i.i

.lr.ph93.i.i:                                     ; preds = %._crit_edge.i.i
  %i.xb = call i32 @llvm.bswap.i32(i32 %i.wx)
  %i.xc = and i32 %i.wt, 7
  %i.xd = shl i32 %i.xb, %i.xc
  %.not77.i.i = icmp sgt i32 %i.xd, -1            ; 2 uses
  %.not78.i.i = icmp sgt i32 %i.wb, -1
  %.not111.i.i = icmp eq i8 %.169.15.i.i, 0
  %i.xe = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.xf = add nuw nsw i32 %i.xa, 1
  %wide.trip.count133.i.i = zext nneg i32 %i.xf to i64 ; 2 uses
  br i1 %.not78.i.i, label %.lr.ph93.split.us.preheader.i.i, label %.lr.ph93.split.i.i

.lr.ph93.split.us.preheader.i.i:                  ; preds = %.lr.ph93.i.i
  %wide.trip.count128.i.i = zext nneg i8 %.169.15.i.i to i64
  br label %.lr.ph93.split.us.i.i

.lr.ph93.split.us.i.i:                            ; preds = %.loopexit.us.i.i, %.lr.ph93.split.us.preheader.i.i
  %i.xg = phi i32 [ %i.wz, %.lr.ph93.split.us.preheader.i.i ], [ %i.yp, %.loopexit.us.i.i ] ; 4 uses
  %indvars.iv130.i.i = phi i64 [ 1, %.lr.ph93.split.us.preheader.i.i ], [ %indvars.iv.next131.i.i, %.loopexit.us.i.i ] ; 3 uses
  br i1 %.not77.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %.lr.ph93.split.us.i.i
  %i.xh = lshr i32 %i.xg, 3
  %i.xi = zext nneg i32 %i.xh to i64
  %i.xj = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.xi
  %i.xk = load i32, ptr %i.xj, align 1, !tbaa !13
  %i.xl = call i32 @llvm.bswap.i32(i32 %i.xk)
  %i.xm = and i32 %i.xg, 7
  %i.xn = shl i32 %i.xl, %i.xm
  %i.xo = lshr i32 %i.xn, 26
  %i.xp = add i32 %i.xg, 6
  %i.xq = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.xp) ; 2 uses
  store i32 %i.xq, ptr %i.t, align 8, !tbaa !51
  %i.xr = trunc nuw nsw i32 %i.xo to i8
  br label %.preheader80.us.i.i

bb.br:                                            ; preds = %.lr.ph93.split.us.i.i
  %i.xs = trunc i64 %indvars.iv130.i.i to i8
  br label %.preheader80.us.i.i

.preheader80.us.i.i:                              ; preds = %bb.br, %bb.bq
  %i.xt = phi i32 [ %i.xg, %bb.br ], [ %i.xq, %bb.bq ] ; 2 uses
  %i.xu = phi i8 [ %i.xs, %bb.br ], [ %i.xr, %bb.bq ] ; 2 uses
  %i.xv = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv130.i.i
  store i8 %i.xu, ptr %i.xv, align 1, !tbaa !13
  br i1 %.not111.i.i, label %.loopexit.us.i.i, label %.lr.ph88.us.i.i

.lr.ph88.us.i.i:                                  ; preds = %.preheader80.us.i.i, %bb.bu
  %i.xw = phi i32 [ %i.yk, %bb.bu ], [ %i.xt, %.preheader80.us.i.i ] ; 3 uses
  %indvars.iv125.i.i = phi i64 [ %indvars.iv.next126.i.i, %bb.bu ], [ 0, %.preheader80.us.i.i ] ; 3 uses
  %i.xx = getelementptr inbounds nuw i8, ptr %i.c, i64 %indvars.iv125.i.i
  %i.xy = load i8, ptr %i.xx, align 1, !tbaa !13
  %i.xz = zext i8 %i.xy to i32                    ; 2 uses
  %i.ya = lshr i32 %i.xw, 3
  %i.yb = zext nneg i32 %i.ya to i64
  %i.yc = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.yb
  %i.yd = load i32, ptr %i.yc, align 1, !tbaa !13
  %i.ye = call i32 @llvm.bswap.i32(i32 %i.yd)
  %i.yf = and i32 %i.xw, 7
  %i.yg = shl i32 %i.ye, %i.yf
  %i.yh = sub nsw i32 32, %i.xz
  %i.yi = lshr i32 %i.yg, %i.yh
  %i.yj = add i32 %i.xw, %i.xz
  %i.yk = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.yj) ; 3 uses
  store i32 %i.yk, ptr %i.t, align 8, !tbaa !51
  %i.yl = icmp eq i32 %i.yi, 1
  br i1 %i.yl, label %bb.bs, label %bb.bu

bb.bs:                                            ; preds = %.lr.ph88.us.i.i
  %i.ym = getelementptr inbounds nuw i8, ptr %i.b, i64 %indvars.iv125.i.i
  %i.yn = load i8, ptr %i.ym, align 1, !tbaa !13
  %i.yo = icmp eq i8 %i.yn, 3
  br i1 %i.yo, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %bb.bs
  store i8 %i.xu, ptr %i.xe, align 8, !tbaa !99
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs, %.lr.ph88.us.i.i
  %indvars.iv.next126.i.i = add nuw nsw i64 %indvars.iv125.i.i, 1 ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %indvars.iv.next126.i.i, %wide.trip.count128.i.i
  br i1 %exitcond129.not.i.i, label %.loopexit.us.i.i, label %.lr.ph88.us.i.i, !llvm.loop !80

.loopexit.us.i.i:                                 ; preds = %bb.bu, %.preheader80.us.i.i
  %i.yp = phi i32 [ %i.xt, %.preheader80.us.i.i ], [ %i.yk, %bb.bu ]
  %indvars.iv.next131.i.i = add nuw nsw i64 %indvars.iv130.i.i, 1 ; 2 uses
  %exitcond134.not.i.i = icmp eq i64 %indvars.iv.next131.i.i, %wide.trip.count133.i.i
  br i1 %exitcond134.not.i.i, label %._crit_edge94.i.i, label %.lr.ph93.split.us.i.i, !llvm.loop !81

.lr.ph93.split.i.i:                               ; preds = %.lr.ph93.i.i
  br i1 %.not77.i.i, label %iter.check, label %.lr.ph93.split.split.i.i.preheader

.lr.ph93.split.split.i.i.preheader:               ; preds = %.lr.ph93.split.i.i
  %i.yq = lshr i32 %i.gi, 26                      ; 2 uses
  %i.yr = call i32 @llvm.umin.i32(i32 %i.yq, i32 62) ; 2 uses
  %umin383 = zext nneg i32 %i.yr to i64           ; 2 uses
  %xtraiter384 = and i64 %umin383, 1
  %i.ys = icmp eq i32 %i.yq, 1
  br i1 %i.ys, label %.lr.ph93.split.split.i.i.epil.preheader, label %.lr.ph93.split.split.i.i.preheader.new

.lr.ph93.split.split.i.i.preheader.new:           ; preds = %.lr.ph93.split.split.i.i.preheader
  %unroll_iter389 = and i64 %umin383, 62
  br label %.lr.ph93.split.split.i.i

iter.check:                                       ; preds = %.lr.ph93.split.i.i
  %i.yt = lshr i32 %i.gi, 26
  %i.yu = call i32 @llvm.umin.i32(i32 %i.yt, i32 62)
  %umin = zext nneg i32 %i.yu to i64              ; 5 uses
  %min.iters.check = icmp ult i32 %i.gi, 268435456
  br i1 %min.iters.check, label %.lr.ph93.split.split.us.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check362 = icmp ult i32 %i.gi, 1073741824
  br i1 %min.iters.check362, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.yv = and i64 %umin, 12
  %n.vec = and i64 %umin, 48                      ; 5 uses
  %i.yw = or disjoint i64 %n.vec, 1               ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  %6 = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  store <8 x i8> <i8 1, i8 2, i8 3, i8 4, i8 5, i8 6, i8 7, i8 8>, ptr %i.yx, align 1, !tbaa !13
  store <8 x i8> <i8 9, i8 10, i8 11, i8 12, i8 13, i8 14, i8 15, i8 16>, ptr %6, align 1, !tbaa !13
  %i.yy = icmp eq i64 %n.vec, 16
  br i1 %i.yy, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %i.yz = getelementptr inbounds nuw i8, ptr %i.d, i64 17
  %7 = getelementptr inbounds nuw i8, ptr %i.d, i64 25
  store <8 x i8> <i8 17, i8 18, i8 19, i8 20, i8 21, i8 22, i8 23, i8 24>, ptr %i.yz, align 1, !tbaa !13
  store <8 x i8> <i8 25, i8 26, i8 27, i8 28, i8 29, i8 30, i8 31, i8 32>, ptr %7, align 1, !tbaa !13
  %i.za = icmp eq i64 %n.vec, 32
  br i1 %i.za, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %i.zb = getelementptr inbounds nuw i8, ptr %i.d, i64 33
  %8 = getelementptr inbounds nuw i8, ptr %i.d, i64 41
  store <8 x i8> <i8 33, i8 34, i8 35, i8 36, i8 37, i8 38, i8 39, i8 40>, ptr %i.zb, align 1, !tbaa !13
  store <8 x i8> <i8 41, i8 42, i8 43, i8 44, i8 45, i8 46, i8 47, i8 48>, ptr %8, align 1, !tbaa !13
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %umin
  br i1 %cmp.n, label %._crit_edge94.thread.i.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.yv, 0
  br i1 %min.epilog.iters.check, label %.lr.ph93.split.split.us.i.i.preheader, label %vec.epilog.ph, !prof !43

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %bc.resume.val = phi i64 [ %i.yw, %vec.epilog.iter.check ], [ 1, %vector.main.loop.iter.check ]
  %n.vec363 = and i64 %umin, 60                   ; 3 uses
  %i.zc = or disjoint i64 %n.vec363, 1
  %i.zd = trunc nsw i64 %bc.resume.val to i8
  %broadcast.splatinsert = insertelement <4 x i8> poison, i8 %i.zd, i64 0
  %broadcast.splat = shufflevector <4 x i8> %broadcast.splatinsert, <4 x i8> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i8> %broadcast.splat, <i8 0, i8 1, i8 2, i8 3>
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index364 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next366, %vec.epilog.vector.body ] ; 2 uses
  %vec.ind365 = phi <4 x i8> [ %induction, %vec.epilog.ph ], [ %vec.ind.next367, %vec.epilog.vector.body ] ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %i.d, i64 %index364
  %i.zf = getelementptr inbounds nuw i8, ptr %i.ze, i64 1
  store <4 x i8> %vec.ind365, ptr %i.zf, align 1, !tbaa !13
  %index.next366 = add nuw i64 %index364, 4       ; 2 uses
  %vec.ind.next367 = add <4 x i8> %vec.ind365, splat (i8 4)
  %i.zg = icmp eq i64 %index.next366, %n.vec363
  br i1 %i.zg, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !82

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n368 = icmp eq i64 %n.vec363, %umin
  br i1 %cmp.n368, label %._crit_edge94.thread.i.i, label %.lr.ph93.split.split.us.i.i.preheader

.lr.ph93.split.split.us.i.i.preheader:            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %indvars.iv120.i.i.ph = phi i64 [ 1, %iter.check ], [ %i.yw, %vec.epilog.iter.check ], [ %i.zc, %vec.epilog.middle.block ]
  br label %.lr.ph93.split.split.us.i.i

.lr.ph93.split.split.us.i.i:                      ; preds = %.lr.ph93.split.split.us.i.i.preheader, %.lr.ph93.split.split.us.i.i
  %indvars.iv120.i.i = phi i64 [ %indvars.iv.next121.i.i, %.lr.ph93.split.split.us.i.i ], [ %indvars.iv120.i.i.ph, %.lr.ph93.split.split.us.i.i.preheader ] ; 3 uses
  %i.zh = trunc i64 %indvars.iv120.i.i to i8
  %i.zi = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv120.i.i
  store i8 %i.zh, ptr %i.zi, align 1, !tbaa !13
  %indvars.iv.next121.i.i = add nuw nsw i64 %indvars.iv120.i.i, 1 ; 2 uses
  %exitcond124.not.i.i = icmp eq i64 %indvars.iv.next121.i.i, %wide.trip.count133.i.i
  br i1 %exitcond124.not.i.i, label %._crit_edge94.thread.i.i, label %.lr.ph93.split.split.us.i.i, !llvm.loop !83

.lr.ph93.split.split.i.i:                         ; preds = %.lr.ph93.split.split.i.i, %.lr.ph93.split.split.i.i.preheader.new
  %indvars.iv115.i.i = phi i64 [ 1, %.lr.ph93.split.split.i.i.preheader.new ], [ %indvars.iv.next116.i.i.1, %.lr.ph93.split.split.i.i ] ; 3 uses
  %i.zj = phi i32 [ %i.wz, %.lr.ph93.split.split.i.i.preheader.new ], [ %i.aaf, %.lr.ph93.split.split.i.i ] ; 3 uses
  %niter390 = phi i64 [ 0, %.lr.ph93.split.split.i.i.preheader.new ], [ %niter390.next.1, %.lr.ph93.split.split.i.i ]
  %i.zk = lshr i32 %i.zj, 3
  %i.zl = zext nneg i32 %i.zk to i64
  %i.zm = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.zl
  %i.zn = load i32, ptr %i.zm, align 1, !tbaa !13
  %i.zo = call i32 @llvm.bswap.i32(i32 %i.zn)
  %i.zp = and i32 %i.zj, 7
  %i.zq = shl i32 %i.zo, %i.zp
  %i.zr = lshr i32 %i.zq, 26
  %i.zs = add i32 %i.zj, 6
  %i.zt = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.zs) ; 4 uses
  store i32 %i.zt, ptr %i.t, align 8, !tbaa !51
  %i.zu = trunc nuw nsw i32 %i.zr to i8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv115.i.i
  store i8 %i.zu, ptr %i.zv, align 1, !tbaa !13
  %i.zw = lshr i32 %i.zt, 3
  %i.zx = zext nneg i32 %i.zw to i64
  %i.zy = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.zx
  %i.zz = load i32, ptr %i.zy, align 1, !tbaa !13
  %i.aaa = call i32 @llvm.bswap.i32(i32 %i.zz)
  %i.aab = and i32 %i.zt, 7
  %i.aac = shl i32 %i.aaa, %i.aab
  %i.aad = lshr i32 %i.aac, 26
  %i.aae = add i32 %i.zt, 6
  %i.aaf = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.aae) ; 3 uses
  store i32 %i.aaf, ptr %i.t, align 8, !tbaa !51
  %i.aag = trunc nuw nsw i32 %i.aad to i8
  %i.aah = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv115.i.i
  %i.aai = getelementptr inbounds nuw i8, ptr %i.aah, i64 1
  store i8 %i.aag, ptr %i.aai, align 1, !tbaa !13
  %indvars.iv.next116.i.i.1 = add nuw nsw i64 %indvars.iv115.i.i, 2 ; 2 uses
  %niter390.next.1 = add nuw i64 %niter390, 2     ; 2 uses
  %niter390.ncmp.1 = icmp eq i64 %niter390.next.1, %unroll_iter389
  br i1 %niter390.ncmp.1, label %._crit_edge94.thread.i.i.loopexit370.unr-lcssa, label %.lr.ph93.split.split.i.i, !llvm.loop !81

._crit_edge94.i.i:                                ; preds = %.loopexit.us.i.i, %._crit_edge.i.i
  %.not74.i.i = icmp sgt i32 %i.wb, -1
  br i1 %.not74.i.i, label %hvcc_parse_vps_extension.exit.i, label %._crit_edge94.thread.i.i

._crit_edge94.thread.i.i.loopexit370.unr-lcssa:   ; preds = %.lr.ph93.split.split.i.i
  %lcmp.mod387.not = icmp eq i64 %xtraiter384, 0
  br i1 %lcmp.mod387.not, label %._crit_edge94.thread.i.i, label %.lr.ph93.split.split.i.i.epil.preheader

.lr.ph93.split.split.i.i.epil.preheader:          ; preds = %._crit_edge94.thread.i.i.loopexit370.unr-lcssa, %.lr.ph93.split.split.i.i.preheader
  %indvars.iv115.i.i.epil.init = phi i64 [ 1, %.lr.ph93.split.split.i.i.preheader ], [ %indvars.iv.next116.i.i.1, %._crit_edge94.thread.i.i.loopexit370.unr-lcssa ]
  %.epil.init386 = phi i32 [ %i.wz, %.lr.ph93.split.split.i.i.preheader ], [ %i.aaf, %._crit_edge94.thread.i.i.loopexit370.unr-lcssa ] ; 3 uses
  %lcmp.mod388 = trunc i32 %i.yr to i1
  call void @llvm.assume(i1 %lcmp.mod388)
  %i.aaj = lshr i32 %.epil.init386, 3
  %i.aak = zext nneg i32 %i.aaj to i64
  %i.aal = getelementptr inbounds nuw i8, ptr %i.oj, i64 %i.aak
  %i.aam = load i32, ptr %i.aal, align 1, !tbaa !13
  %i.aan = call i32 @llvm.bswap.i32(i32 %i.aam)
  %i.aao = and i32 %.epil.init386, 7
  %i.aap = shl i32 %i.aan, %i.aao
  %i.aaq = lshr i32 %i.aap, 26
  %i.aar = add i32 %.epil.init386, 6
  %i.aas = call i32 @llvm.umin.i32(i32 %i.ok, i32 %i.aar)
  store i32 %i.aas, ptr %i.t, align 8, !tbaa !51
  %i.aat = trunc nuw nsw i32 %i.aaq to i8
  %i.aau = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv115.i.i.epil.init
  store i8 %i.aat, ptr %i.aau, align 1, !tbaa !13
  br label %._crit_edge94.thread.i.i

._crit_edge94.thread.i.i:                         ; preds = %.lr.ph93.split.split.i.i.epil.preheader, %._crit_edge94.thread.i.i.loopexit370.unr-lcssa, %.lr.ph93.split.split.us.i.i, %middle.block, %vec.epilog.middle.block, %._crit_edge94.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #7
  %i.aav = icmp ugt i8 %.169.15.i.i, 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(17) %i.e, i8 0, i64 17, i1 false)
  %wide.trip.count138.i.i = zext i8 %.169.15.i.i to i64 ; 5 uses
  br i1 %i.aav, label %.lr.ph103.i.i.preheader, label %._crit_edge104.i.i

.lr.ph103.i.i.preheader:                          ; preds = %._crit_edge94.thread.i.i
  %i.aaw = add nsw i64 %wide.trip.count138.i.i, -1 ; 2 uses
  %xtraiter391 = and i64 %i.aaw, 3                ; 3 uses
  %i.aax = add i8 %.169.15.i.i, -2
  %i.aay = icmp ult i8 %i.aax, 3
  br i1 %i.aay, label %.lr.ph103.i.i.epil.preheader, label %.lr.ph103.i.i.preheader.new

.lr.ph103.i.i.preheader.new:                      ; preds = %.lr.ph103.i.i.preheader
  %unroll_iter396 = and i64 %i.aaw, -4
  br label %.lr.ph103.i.i

.lr.ph103.i.i:                                    ; preds = %.lr.ph103.i.i, %.lr.ph103.i.i.preheader.new
  %i.aaz = phi i8 [ 0, %.lr.ph103.i.i.preheader.new ], [ %i.abs, %.lr.ph103.i.i ]
  %indvars.iv135.i.i = phi i64 [ 1, %.lr.ph103.i.i.preheader.new ], [ %indvars.iv.next136.i.i.3, %.lr.ph103.i.i ] ; 7 uses
  %niter397 = phi i64 [ 0, %.lr.ph103.i.i.preheader.new ], [ %niter397.next.3, %.lr.ph103.i.i ]
  %i.aba = getelementptr i8, ptr %i.c, i64 %indvars.iv135.i.i
  %i.abb = getelementptr i8, ptr %i.aba, i64 -1
  %i.abc = load i8, ptr %i.abb, align 1, !tbaa !13
  %i.abd = add i8 %i.abc, %i.aaz                  ; 2 uses
  %i.abe = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv135.i.i
  store i8 %i.abd, ptr %i.abe, align 1, !tbaa !13
  %i.abf = getelementptr i8, ptr %i.c, i64 %indvars.iv135.i.i
  %i.abg = load i8, ptr %i.abf, align 1, !tbaa !13
  %i.abh = add i8 %i.abg, %i.abd                  ; 2 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv135.i.i
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 1
  store i8 %i.abh, ptr %i.abj, align 1, !tbaa !13
  %indvars.iv.next136.i.i.1 = add nuw nsw i64 %indvars.iv135.i.i, 2 ; 2 uses
  %i.abk = getelementptr i8, ptr %i.c, i64 %indvars.iv.next136.i.i.1
  %i.abl = getelementptr i8, ptr %i.abk, i64 -1
  %i.abm = load i8, ptr %i.abl, align 1, !tbaa !13
  %i.abn = add i8 %i.abm, %i.abh                  ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next136.i.i.1
  store i8 %i.abn, ptr %i.abo, align 1, !tbaa !13
  %indvars.iv.next136.i.i.2 = add nuw nsw i64 %indvars.iv135.i.i, 3 ; 2 uses
  %i.abp = getelementptr i8, ptr %i.c, i64 %indvars.iv.next136.i.i.2
  %i.abq = getelementptr i8, ptr %i.abp, i64 -1
  %i.abr = load i8, ptr %i.abq, align 1, !tbaa !13
  %i.abs = add i8 %i.abr, %i.abn                  ; 3 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv.next136.i.i.2
  store i8 %i.abs, ptr %i.abt, align 1, !tbaa !13
  %indvars.iv.next136.i.i.3 = add nuw nsw i64 %indvars.iv135.i.i, 4 ; 2 uses
  %niter397.next.3 = add nuw i64 %niter397, 4     ; 2 uses
  %niter397.ncmp.3 = icmp eq i64 %niter397.next.3, %unroll_iter396
  br i1 %niter397.ncmp.3, label %._crit_edge104.thread.i.i.unr-lcssa, label %.lr.ph103.i.i, !llvm.loop !84

._crit_edge104.thread.i.i.unr-lcssa:              ; preds = %.lr.ph103.i.i
  %lcmp.mod394.not = icmp eq i64 %xtraiter391, 0
  br i1 %lcmp.mod394.not, label %._crit_edge104.thread.i.i, label %.lr.ph103.i.i.epil.preheader

.lr.ph103.i.i.epil.preheader:                     ; preds = %._crit_edge104.thread.i.i.unr-lcssa, %.lr.ph103.i.i.preheader
  %.epil.init393 = phi i8 [ 0, %.lr.ph103.i.i.preheader ], [ %i.abs, %._crit_edge104.thread.i.i.unr-lcssa ]
  %indvars.iv135.i.i.epil.init = phi i64 [ 1, %.lr.ph103.i.i.preheader ], [ %indvars.iv.next136.i.i.3, %._crit_edge104.thread.i.i.unr-lcssa ]
  %lcmp.mod395 = icmp ne i64 %xtraiter391, 0
  call void @llvm.assume(i1 %lcmp.mod395)
  br label %.lr.ph103.i.i.epil

.lr.ph103.i.i.epil:                               ; preds = %.lr.ph103.i.i.epil, %.lr.ph103.i.i.epil.preheader
  %i.abu = phi i8 [ %i.aby, %.lr.ph103.i.i.epil ], [ %.epil.init393, %.lr.ph103.i.i.epil.preheader ]
  %indvars.iv135.i.i.epil = phi i64 [ %indvars.iv.next136.i.i.epil, %.lr.ph103.i.i.epil ], [ %indvars.iv135.i.i.epil.init, %.lr.ph103.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph103.i.i.epil ], [ 0, %.lr.ph103.i.i.epil.preheader ]
  %i.abv = getelementptr i8, ptr %i.c, i64 %indvars.iv135.i.i.epil
  %i.abw = getelementptr i8, ptr %i.abv, i64 -1
  %i.abx = load i8, ptr %i.abw, align 1, !tbaa !13
  %i.aby = add i8 %i.abx, %i.abu                  ; 2 uses
  %i.abz = getelementptr inbounds nuw i8, ptr %i.e, i64 %indvars.iv135.i.i.epil
  store i8 %i.aby, ptr %i.abz, align 1, !tbaa !13
  %indvars.iv.next136.i.i.epil = add nuw nsw i64 %indvars.iv135.i.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter391
  br i1 %epil.iter.cmp.not, label %._crit_edge104.thread.i.i, label %.lr.ph103.i.i.epil, !llvm.loop !85

._crit_edge104.thread.i.i:                        ; preds = %.lr.ph103.i.i.epil, %._crit_edge104.thread.i.i.unr-lcssa
  %i.aca = getelementptr inbounds nuw i8, ptr %i.e, i64 %wide.trip.count138.i.i
  store i8 6, ptr %i.aca, align 1, !tbaa !13
  br label %bb.bv

end_hunk_1
