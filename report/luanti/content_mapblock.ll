Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/content_mapblock?download=true
inline.NumInlined: 881
inline.NumDeleted: 329
loop-unroll.NumCompletelyUnrolled: 77
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 79
begin_hunk_0_@_ZN21MapblockMeshGenerator24prepareLiquidNodeDrawingEv:bb.a
  %i.fs = zext i1 %i.fq to i8
  store i8 %i.fs, ptr %i.fr, align 1, !tbaa !158
  br i1 %i.fq, label %bb.n, label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !40 ; 2 uses
  %i.fv = zext i16 %.sroa.0.0.insert.insert.i44 to i64 ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 24
  %i.fx = getelementptr inbounds nuw i8, ptr %i.fu, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !139
  %i.fz = load ptr, ptr %i.fw, align 8, !tbaa !141 ; 3 uses
  %i.ga = ptrtoint ptr %i.fy to i64
  %i.gb = ptrtoint ptr %i.fz to i64
  %i.gc = sub i64 %i.ga, %i.gb
  %i.gd = sdiv exact i64 %i.gc, 2080
  %i.ge = icmp ugt i64 %i.gd, %i.fv
  br i1 %i.ge, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.gf = getelementptr inbounds nuw [2080 x i8], ptr %i.fz, i64 %i.fv ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  %i.gh = load i64, ptr %i.gg, align 8, !tbaa !142
  %i.gi = icmp eq i64 %i.gh, 0
  br i1 %i.gi, label %bb.p, label %_ZNK14NodeDefManager3getEt.exit

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.gj = getelementptr inbounds nuw i8, ptr %i.fz, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.o, %bb.p
  %i.gk = phi ptr [ %i.gj, %bb.p ], [ %i.gf, %bb.o ]
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 1400
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !59
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 1248
  %i.go = load i8, ptr %i.gn, align 8, !tbaa !143
  %i.gp = icmp ugt i8 %i.go, 1
  br i1 %i.gp, label %bb.q, label %bb.r

bb.q:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit
  store i8 0, ptr %i.fr, align 1, !tbaa !158
  br label %bb.r

.critedge:                                        ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit45
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 145
  store i8 0, ptr %i.gq, align 1, !tbaa !158
  br label %bb.r

bb.r:                                             ; preds = %_ZNK14NodeDefManager3getEt.exit, %bb.q, %.critedge, %bb.m
  %i.gr = load ptr, ptr %0, align 8, !tbaa !9
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 65
  %i.gt = load i8, ptr %i.gs, align 1, !tbaa !114, !range !106, !noundef !107
  %i.gu = trunc nuw i8 %i.gt to i1
  br i1 %i.gu, label %bb.x, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 52
  %.sroa.04.0.copyload = load i32, ptr %i.gv, align 4
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.gx = load ptr, ptr %i.gw, align 8, !tbaa !40
  %i.gy = call noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %.sroa.04.0.copyload, i32 noundef 0, ptr noundef %i.gx) ; 2 uses
  %.sroa.055.0.extract.trunc57 = trunc i16 %i.gy to i8 ; 2 uses
  %.sroa.9.0.extract.shift65 = lshr i16 %i.gy, 8  ; 2 uses
  %i.gz = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 1410
  %i.hb = load i8, ptr %i.ha, align 2, !tbaa !113 ; 3 uses
  %.not6 = icmp eq i8 %i.hb, 0
  br i1 %.not6, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %.sroa.9.0.extract.trunc66 = trunc nuw i16 %.sroa.9.0.extract.shift65 to i8
  %spec.store.select.i = call i8 @llvm.umin.i8(i8 %i.hb, i8 15)
  %i.hc = load ptr, ptr @light_decode_table, align 8, !tbaa !159
  %i.hd = zext nneg i8 %spec.store.select.i to i64
  %i.he = getelementptr inbounds nuw i8, ptr %i.hc, i64 %i.hd
  %i.hf = load i8, ptr %i.he, align 1, !tbaa !55  ; 2 uses
  %.sroa.speculated51 = call i8 @llvm.umax.i8(i8 %i.hf, i8 %.sroa.055.0.extract.trunc57)
  %.sroa.speculated = call i8 @llvm.umax.i8(i8 %i.hf, i8 %.sroa.9.0.extract.trunc66)
  %i.hg = zext i8 %.sroa.speculated to i16
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.hh = load ptr, ptr %i.gw, align 8, !tbaa !40 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 336
  %.sroa.090.0.extract.trunc.mask = and i32 %.sroa.0.0.insert.insert.i24, 65535
  %i.hj = zext nneg i32 %.sroa.090.0.extract.trunc.mask to i64
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hi, i64 %i.hj
  %.sroa.0.0.copyload.i.i = load i8, ptr %i.hk, align 1, !tbaa !55
  %i.hl = and i8 %.sroa.0.0.copyload.i.i, 16
  %.not7 = icmp eq i8 %i.hl, 0
  br i1 %.not7, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.hm = call noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32 %.sroa.0.0.insert.insert.i24, i32 noundef 0, ptr noundef nonnull %i.hh) ; 2 uses
  %.sroa.055.0.extract.trunc = trunc i16 %i.hm to i8
  %.sroa.9.0.extract.shift = lshr i16 %i.hm, 8
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !58
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 1410
  %.pre104 = load i8, ptr %.phi.trans.insert, align 2, !tbaa !113
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.t
  %i.hn = phi i8 [ 0, %bb.u ], [ %.pre104, %bb.v ], [ %i.hb, %bb.t ]
  %.sroa.9.0 = phi i16 [ %.sroa.9.0.extract.shift65, %bb.u ], [ %.sroa.9.0.extract.shift, %bb.v ], [ %i.hg, %bb.t ]
  %.sroa.055.0 = phi i8 [ %.sroa.055.0.extract.trunc57, %bb.u ], [ %.sroa.055.0.extract.trunc, %bb.v ], [ %.sroa.speculated51, %bb.t ]
  %.sroa.9.0.insert.shift = shl nuw i16 %.sroa.9.0, 8
  %.sroa.055.0.insert.ext = zext i8 %.sroa.055.0 to i16
  %.sroa.055.0.insert.insert = or disjoint i16 %.sroa.9.0.insert.shift, %.sroa.055.0.insert.ext ; 2 uses
  %i.ho = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.055.0.insert.insert, i8 noundef zeroext %i.hn)
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 364
  store i32 %i.ho, ptr %i.hp, align 4, !tbaa !115
  %i.hq = load ptr, ptr %i.c, align 8, !tbaa !58
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 1410
  %i.hs = load i8, ptr %i.hr, align 2, !tbaa !113
  %i.ht = call i32 @_Z12encode_lightth(i16 noundef zeroext %.sroa.055.0.insert.insert, i8 noundef zeroext %i.hs)
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.ht, ptr %i.hu, align 8, !tbaa !115
  br label %bb.x

bb.x:                                             ; preds = %bb.r, %bb.w
  ret void
}

declare noundef zeroext i16 @_Z16getInteriorLight7MapNodeiPK14NodeDefManager(i32, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21MapblockMeshGenerator21getLiquidNeighborhoodEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(496) %0) local_unnamed_addr #4 align 2 {
bb.a:
  %1 = alloca %class.VoxelArea, align 8           ; 8 uses
  %2 = alloca %class.VoxelArea, align 8           ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !40   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8, !tbaa !155
  %i.e = zext i16 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !139
  %i.i = load ptr, ptr %i.f, align 8, !tbaa !141  ; 3 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = sdiv exact i64 %i.l, 2080
  %i.n = icmp ugt i64 %i.m, %i.e
  br i1 %i.n, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw [2080 x i8], ptr %i.i, i64 %i.e ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = load i64, ptr %i.p, align 8, !tbaa !142
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZNK14NodeDefManager3getEt.exit

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 260000
  br label %_ZNK14NodeDefManager3getEt.exit

_ZNK14NodeDefManager3getEt.exit:                  ; preds = %bb.b, %bb.c
  %i.t = phi ptr [ %i.s, %bb.c ], [ %i.o, %bb.b ]
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 1540
  %i.v = load i8, ptr %i.u, align 1, !tbaa !55    ; 2 uses
  %i.w = icmp eq i8 %i.v, 0
  %spec.select.i = tail call i8 @llvm.umin.i8(i8 %i.v, i8 8)
  %.0.i = select i1 %i.w, i8 1, i8 %spec.select.i ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 34
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %2, i64 6
  %i.ae = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 362 ; 2 uses
  %narrow = sub nuw nsw i8 8, %.0.i               ; 2 uses
  %i.ai = zext nneg i8 %narrow to i32
  %i.aj = uitofp nneg i8 %.0.i to float
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 20
  br label %.preheader

.preheader:                                       ; preds = %_ZNK14NodeDefManager3getEt.exit, %bb.e
  %indvars.iv84 = phi i64 [ -1, %_ZNK14NodeDefManager3getEt.exit ], [ %indvars.iv.next85, %bb.e ] ; 3 uses
  %i.ao = getelementptr [24 x i8], ptr %0, i64 %indvars.iv84
  %i.ap = getelementptr i8, ptr %i.ao, i64 392
  %i.aq = trunc i64 %indvars.iv84 to i16
  br label %bb.f

bb.d:                                             ; preds = %bb.e
  ret void

bb.e:                                             ; preds = %bb.o
  %indvars.iv.next85 = add nsw i64 %indvars.iv84, 1 ; 2 uses
  %exitcond87.not = icmp eq i64 %indvars.iv.next85, 2
  br i1 %exitcond87.not, label %bb.d, label %.preheader, !llvm.loop !160

bb.f:                                             ; preds = %.preheader, %bb.o
  %.02681 = phi i32 [ -1, %.preheader ], [ %3, %bb.o ] ; 2 uses
  %3 = add nsw i32 %.02681, 1                     ; 3 uses
  %4 = zext nneg i32 %3 to i64
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %4 ; 9 uses
  %i.as = trunc nsw i32 %.02681 to i16
  %i.at = load i16, ptr %i.x, align 8, !tbaa !41
  %i.au = add i16 %i.at, %i.as                    ; 2 uses
  %i.av = load i16, ptr %i.y, align 2, !tbaa !42  ; 2 uses
  %i.aw = load i16, ptr %i.z, align 4, !tbaa !43
  %i.ax = add i16 %i.aw, %i.aq                    ; 2 uses
  %i.ay = load ptr, ptr %0, align 8, !tbaa !9     ; 8 uses
  %i.az = load i16, ptr %i.aa, align 8, !tbaa !41
  %i.ba = add i16 %i.az, %i.au                    ; 2 uses
  %i.bb = load i16, ptr %i.ab, align 2, !tbaa !42
  %i.bc = add i16 %i.bb, %i.av                    ; 2 uses
  %i.bd = load i16, ptr %i.ac, align 4, !tbaa !43
  %i.be = add i16 %i.bd, %i.ax                    ; 2 uses
  %.sroa.3.0.insert.ext.i31 = zext i16 %i.be to i48
  %.sroa.3.0.insert.shift.i32 = shl nuw i48 %.sroa.3.0.insert.ext.i31, 32
  %.sroa.2.0.insert.ext.i33 = zext i16 %i.bc to i48
  %.sroa.2.0.insert.shift.i34 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i33, 16
  %.sroa.0.0.insert.ext.i36 = zext i16 %i.ba to i48
  %i.bf = or disjoint i48 %.sroa.2.0.insert.shift.i34, %.sroa.0.0.insert.ext.i36
  %.sroa.0.0.insert.insert.i37 = or disjoint i48 %i.bf, %.sroa.3.0.insert.shift.i32 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #26
  store i48 %.sroa.0.0.insert.insert.i37, ptr %2, align 8
  store i48 %.sroa.0.0.insert.insert.i37, ptr %i.ad, align 2
  %i.bg = sext i16 %i.be to i32
  store i32 1, ptr %i.ae, align 4, !tbaa !115
  store i32 1, ptr %i.af, align 8, !tbaa !115
  store i32 1, ptr %i.ag, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.ay, ptr noundef nonnull align 4 dereferenceable(24) %2)
  %i.bh = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %i.bj = load i16, ptr %i.bi, align 4, !tbaa !131
  %i.bk = sext i16 %i.bj to i32
  %i.bl = sub nsw i32 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.ay, i64 20
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !132
  %i.bp = mul nsw i32 %i.bl, %i.bo
  %i.bq = load i32, ptr %i.bm, align 4, !tbaa !133
  %i.br = sext i16 %i.bc to i32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ay, i64 10
  %i.bt = load i16, ptr %i.bs, align 2, !tbaa !134
  %i.bu = sext i16 %i.bt to i32
  %i.bv = add i32 %i.bp, %i.br
  %i.bw = sub i32 %i.bv, %i.bu
  %i.bx = mul i32 %i.bw, %i.bq
  %i.by = sext i16 %i.ba to i32
  %i.bz = load i16, ptr %i.bh, align 4, !tbaa !135
  %i.ca = sext i16 %i.bz to i32
  %i.cb = sub nsw i32 %i.by, %i.ca
  %i.cc = add nsw i32 %i.cb, %i.bx
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !136
  %i.cf = sext i32 %i.cc to i64                   ; 2 uses
  %i.cg = getelementptr inbounds i8, ptr %i.ce, i64 %i.cf
  %i.ch = load i8, ptr %i.cg, align 1, !tbaa !55
  %i.ci = and i8 %i.ch, 1
  %.not.i = icmp eq i8 %i.ci, 0
  br i1 %.not.i, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 127, ptr %i.cj, align 4, !tbaa !161
  store float -5.000000e-01, ptr %i.ar, align 8, !tbaa !163
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ar, i64 6
  store i8 0, ptr %i.ck, align 2, !tbaa !164
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ar, i64 7
  store i8 0, ptr %i.cl, align 1, !tbaa !165
  br label %bb.o

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit: ; preds = %bb.f
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !137
  %i.co = getelementptr inbounds [4 x i8], ptr %i.cn, i64 %i.cf
  %i.cp = load i32, ptr %i.co, align 4            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #26
  %.sroa.056.0.extract.trunc = trunc i32 %i.cp to i16 ; 4 uses
  %.sroa.762.0.extract.shift = lshr i32 %i.cp, 24 ; 2 uses
  %.sroa.762.0.extract.trunc = trunc nuw i32 %.sroa.762.0.extract.shift to i8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.ar, i64 4
  store i16 %.sroa.056.0.extract.trunc, ptr %i.cq, align 4, !tbaa !161
  store float -5.000000e-01, ptr %i.ar, align 8, !tbaa !163
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 6 ; 3 uses
  store i8 0, ptr %i.cr, align 2, !tbaa !164
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ar, i64 7 ; 2 uses
  store i8 0, ptr %i.cs, align 1, !tbaa !165
  %i.ct = icmp eq i16 %.sroa.056.0.extract.trunc, 127
  br i1 %i.ct, label %bb.o, label %bb.g

bb.g:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %i.cu = load i16, ptr %i.ah, align 2, !tbaa !156
  %i.cv = icmp eq i16 %i.cu, %.sroa.056.0.extract.trunc
  br i1 %i.cv, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i8 1, ptr %i.cr, align 2, !tbaa !164
  br label %.sink.split

bb.i:                                             ; preds = %bb.g
  %i.cw = load i16, ptr %i.c, align 8, !tbaa !155
  %i.cx = icmp eq i16 %i.cw, %.sroa.056.0.extract.trunc
  br i1 %i.cx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.cr, align 2, !tbaa !164
  %i.cy = and i8 %.sroa.762.0.extract.trunc, 7
  %i.cz = and i32 %.sroa.762.0.extract.shift, 7
  %.not = icmp samesign ugt i32 %i.cz, %i.ai
  %i.da = sub nsw i8 %i.cy, %narrow
  %i.db = uitofp i8 %i.da to float
  %i.dc = fadd nsz float %i.db, 5.000000e-01
  %.0 = select i1 %.not, float %i.dc, float 5.000000e-01
  %i.dd = fdiv nsz float %.0, %i.aj
  %i.de = fadd nsz float %i.dd, -5.000000e-01
  br label %.sink.split

.sink.split:                                      ; preds = %bb.h, %bb.j
  %.sink = phi float [ %i.de, %bb.j ], [ 5.000000e-01, %bb.h ]
  store float %.sink, ptr %i.ar, align 8, !tbaa !163
  br label %bb.k

bb.k:                                             ; preds = %.sink.split, %bb.i
  %i.df = add i16 %i.av, 1
  %i.dg = load ptr, ptr %0, align 8, !tbaa !9     ; 8 uses
  %i.dh = load i16, ptr %i.aa, align 8, !tbaa !41
  %i.di = add i16 %i.dh, %i.au                    ; 2 uses
  %i.dj = load i16, ptr %i.ab, align 2, !tbaa !42
  %i.dk = add i16 %i.df, %i.dj                    ; 2 uses
  %i.dl = load i16, ptr %i.ac, align 4, !tbaa !43
  %i.dm = add i16 %i.dl, %i.ax                    ; 2 uses
  %.sroa.3.0.insert.ext.i39 = zext i16 %i.dm to i48
  %.sroa.3.0.insert.shift.i40 = shl nuw i48 %.sroa.3.0.insert.ext.i39, 32
  %.sroa.2.0.insert.ext.i41 = zext i16 %i.dk to i48
  %.sroa.2.0.insert.shift.i42 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i41, 16
  %.sroa.0.0.insert.ext.i44 = zext i16 %i.di to i48
  %i.dn = or disjoint i48 %.sroa.2.0.insert.shift.i42, %.sroa.0.0.insert.ext.i44
  %.sroa.0.0.insert.insert.i45 = or disjoint i48 %i.dn, %.sroa.3.0.insert.shift.i40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #26
  store i48 %.sroa.0.0.insert.insert.i45, ptr %1, align 8
  store i48 %.sroa.0.0.insert.insert.i45, ptr %i.ak, align 2
  %i.do = sext i16 %i.dm to i32
  store i32 1, ptr %i.al, align 4, !tbaa !115
  store i32 1, ptr %i.am, align 8, !tbaa !115
  store i32 1, ptr %i.an, align 4, !tbaa !115
  call void @_ZN16VoxelManipulator7addAreaERK9VoxelArea(ptr noundef nonnull align 8 dereferenceable(48) %i.dg, ptr noundef nonnull align 4 dereferenceable(24) %1)
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dg, i64 12
  %i.dr = load i16, ptr %i.dq, align 4, !tbaa !131
  %i.ds = sext i16 %i.dr to i32
  %i.dt = sub nsw i32 %i.do, %i.ds
  %i.du = getelementptr inbounds nuw i8, ptr %i.dg, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dg, i64 24
  %i.dw = load i32, ptr %i.dv, align 4, !tbaa !132
  %i.dx = mul nsw i32 %i.dt, %i.dw
  %i.dy = load i32, ptr %i.du, align 4, !tbaa !133
  %i.dz = sext i16 %i.dk to i32
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dg, i64 10
  %i.eb = load i16, ptr %i.ea, align 2, !tbaa !134
  %i.ec = sext i16 %i.eb to i32
  %i.ed = add i32 %i.dx, %i.dz
  %i.ee = sub i32 %i.ed, %i.ec
  %i.ef = mul i32 %i.ee, %i.dy
  %i.eg = sext i16 %i.di to i32
  %i.eh = load i16, ptr %i.dp, align 4, !tbaa !135
  %i.ei = sext i16 %i.eh to i32
  %i.ej = sub nsw i32 %i.eg, %i.ei
  %i.ek = add nsw i32 %i.ej, %i.ef
  %i.el = getelementptr inbounds nuw i8, ptr %i.dg, i64 40
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !136
  %i.en = sext i32 %i.ek to i64                   ; 2 uses
  %i.eo = getelementptr inbounds i8, ptr %i.em, i64 %i.en
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !55
  %i.eq = and i8 %i.ep, 1
  %.not.i50 = icmp eq i8 %i.eq, 0
  br i1 %.not.i50, label %bb.l, label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit52

bb.l:                                             ; preds = %bb.k
  %i.er = getelementptr inbounds nuw i8, ptr %i.dg, i64 32
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !137
  %i.et = getelementptr inbounds [4 x i8], ptr %i.es, i64 %i.en
  %i.eu = load i32, ptr %i.et, align 4
  %i.ev = trunc i32 %i.eu to i16
  br label %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit52

_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit52: ; preds = %bb.k, %bb.l
  %.sroa.0.0.insert.insert.i51 = phi i16 [ %i.ev, %bb.l ], [ 127, %bb.k ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #26
  %i.ew = load i16, ptr %i.ah, align 2, !tbaa !156
  %i.ex = icmp eq i16 %.sroa.0.0.insert.insert.i51, %i.ew
  br i1 %i.ex, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit52
  %i.ey = load i16, ptr %i.c, align 8, !tbaa !155
  %i.ez = icmp eq i16 %.sroa.0.0.insert.insert.i51, %i.ey
  br i1 %i.ez, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit52
  store i8 1, ptr %i.cs, align 1, !tbaa !165
  br label %bb.o

bb.o:                                             ; preds = %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit.thread, %bb.m, %bb.n, %_ZN16VoxelManipulator11getNodeNoExERKN4core8vector3dIsEE.exit
  %exitcond.not = icmp eq i32 %3, 2
  br i1 %exitcond.not, label %bb.e, label %bb.f, !llvm.loop !166
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN21MapblockMeshGenerator21calculateCornerLevelsEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(496) initializes((440, 456)) %0) local_unnamed_addr #3 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 362 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 392 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 375
  %i.g = load i8, ptr %i.f, align 1, !tbaa !165, !range !106, !noundef !107
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.a

bb.a:                                             ; preds = %.preheader
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.j = load i16, ptr %i.i, align 4, !tbaa !161  ; 3 uses
  %i.k = load i16, ptr %i.d, align 2, !tbaa !156  ; 4 uses
  %i.l = icmp eq i16 %i.j, %i.k
  br i1 %i.l, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load i16, ptr %i.b, align 8, !tbaa !155  ; 4 uses
  %i.n = icmp eq i16 %i.j, %i.m                   ; 4 uses
  %i.o = icmp eq i16 %i.j, 126
  %i.p = load float, ptr %i.a, align 8
  %.341.ph.i = select i1 %i.n, float %i.p, float 0.000000e+00 ; 2 uses
  %.335.ph.i = zext i1 %i.n to i32
  %not. = xor i1 %i.n, true
  %narrow = and i1 %i.o, %not.
  %.3.ph.i = zext i1 %narrow to i32               ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 383
  %i.s = load i8, ptr %i.r, align 1, !tbaa !165, !range !106, !noundef !107
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.v = load i16, ptr %i.u, align 4, !tbaa !161  ; 3 uses
  %i.w = icmp eq i16 %i.v, %i.k
  br i1 %i.w, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp eq i16 %i.v, %i.m
  br i1 %i.x, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = icmp eq i16 %i.v, 126
  %i.z = zext i1 %i.y to i32
  %spec.select.1.i = add nuw nsw i32 %.3.ph.i, %i.z
  br label %.preheader.1.i

bb.f:                                             ; preds = %bb.d
  %i.aa = load float, ptr %i.q, align 8, !tbaa !163
  %i.ab = fadd nsz float %.341.ph.i, %i.aa
  %i.ac = select i1 %i.n, i32 2, i32 1
  br label %.preheader.1.i

.preheader.1.i:                                   ; preds = %bb.f, %bb.e
  %.341.ph.1.i = phi float [ %.341.ph.i, %bb.e ], [ %i.ab, %bb.f ] ; 2 uses
  %.335.ph.1.i = phi i32 [ %.335.ph.i, %bb.e ], [ %i.ac, %bb.f ] ; 2 uses
  %.3.ph.1.i = phi i32 [ %spec.select.1.i, %bb.e ], [ %.3.ph.i, %bb.f ] ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 399
  %i.ae = load i8, ptr %i.ad, align 1, !tbaa !165, !range !106, !noundef !107
  %i.af = trunc nuw i8 %i.ae to i1
  br i1 %i.af, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.g

bb.g:                                             ; preds = %.preheader.1.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ah = load i16, ptr %i.ag, align 4, !tbaa !161 ; 3 uses
  %i.ai = icmp eq i16 %i.ah, %i.k
  br i1 %i.ai, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aj = icmp eq i16 %i.ah, %i.m
  br i1 %i.aj, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = icmp eq i16 %i.ah, 126
  %i.al = zext i1 %i.ak to i32
  %spec.select.187.i = add nuw nsw i32 %.3.ph.1.i, %i.al
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.am = load float, ptr %i.e, align 8, !tbaa !163
  %i.an = fadd nsz float %.341.ph.1.i, %i.am
  %i.ao = add nuw nsw i32 %.335.ph.1.i, 1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.341.ph.188.i = phi float [ %.341.ph.1.i, %bb.i ], [ %i.an, %bb.j ] ; 2 uses
  %.335.ph.189.i = phi i32 [ %.335.ph.1.i, %bb.i ], [ %i.ao, %bb.j ] ; 2 uses
  %.3.ph.190.i = phi i32 [ %spec.select.187.i, %bb.i ], [ %.3.ph.1.i, %bb.j ] ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 407
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !165, !range !106, !noundef !107
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.au = load i16, ptr %i.at, align 4, !tbaa !161 ; 3 uses
  %i.av = icmp eq i16 %i.au, %i.k
  br i1 %i.av, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = icmp eq i16 %i.au, %i.m
  br i1 %i.aw, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ax = icmp eq i16 %i.au, 126
  %i.ay = zext i1 %i.ax to i32
  %spec.select.1.1.i = add nuw nsw i32 %.3.ph.190.i, %i.ay
  br label %.thread63.i

bb.o:                                             ; preds = %bb.m
  %i.az = load float, ptr %i.ap, align 8, !tbaa !163
  %i.ba = fadd nsz float %.341.ph.188.i, %i.az
  %i.bb = add nuw nsw i32 %.335.ph.189.i, 1
  br label %.thread63.i

.thread63.i:                                      ; preds = %bb.o, %bb.n
  %.341.ph.1.1.i = phi float [ %.341.ph.188.i, %bb.n ], [ %i.ba, %bb.o ]
  %.335.ph.1.1.i = phi i32 [ %.335.ph.189.i, %bb.n ], [ %i.bb, %bb.o ] ; 2 uses
  %.3.ph.1.1.i = phi i32 [ %spec.select.1.1.i, %bb.n ], [ %.3.ph.190.i, %bb.o ]
  %i.bc = icmp samesign ugt i32 %.3.ph.1.1.i, 1
  br i1 %i.bc, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.p

bb.p:                                             ; preds = %.thread63.i
  %.not.i = icmp eq i32 %.335.ph.1.1.i, 0
  br i1 %.not.i, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = uitofp nneg i32 %.335.ph.1.1.i to float
  %i.be = fdiv nsz float %.341.ph.1.1.i, %i.bd
  br label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit

_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit: ; preds = %.preheader, %bb.a, %bb.b, %bb.c, %.preheader.1.i, %bb.g, %bb.k, %bb.l, %.thread63.i, %bb.p, %bb.q
  %.549.i = phi nsz float [ 0.000000e+00, %bb.p ], [ %i.be, %bb.q ], [ -4.800000e-01, %.thread63.i ], [ 5.000000e-01, %bb.l ], [ 5.000000e-01, %bb.k ], [ 5.000000e-01, %bb.g ], [ 5.000000e-01, %.preheader.1.i ], [ 5.000000e-01, %bb.c ], [ 5.000000e-01, %bb.b ], [ 5.000000e-01, %.preheader ], [ 5.000000e-01, %bb.a ]
  store float %.549.i, ptr %i.c, align 8, !tbaa !44
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 383
  %i.bh = load i8, ptr %i.bg, align 1, !tbaa !165, !range !106, !noundef !107
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit.1, label %bb.r

bb.r:                                             ; preds = %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.bk = load i16, ptr %i.bj, align 4, !tbaa !161 ; 3 uses
  %i.bl = load i16, ptr %i.d, align 2, !tbaa !156 ; 4 uses
  %i.bm = icmp eq i16 %i.bk, %i.bl
  br i1 %i.bm, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit.1, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bn = load i16, ptr %i.b, align 8, !tbaa !155 ; 4 uses
  %i.bo = icmp eq i16 %i.bk, %i.bn                ; 4 uses
  %i.bp = icmp eq i16 %i.bk, 126
  %i.bq = load float, ptr %i.bf, align 8
  %.341.ph.i.1 = select i1 %i.bo, float %i.bq, float 0.000000e+00 ; 2 uses
  %.335.ph.i.1 = zext i1 %i.bo to i32
  %not.53 = xor i1 %i.bo, true
  %narrow52 = and i1 %i.bp, %not.53
  %.3.ph.i.1 = zext i1 %narrow52 to i32           ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 391
  %i.bt = load i8, ptr %i.bs, align 1, !tbaa !165, !range !106, !noundef !107
  %i.bu = trunc nuw i8 %i.bt to i1
  br i1 %i.bu, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit.1, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 388
  %i.bw = load i16, ptr %i.bv, align 4, !tbaa !161 ; 3 uses
  %i.bx = icmp eq i16 %i.bw, %i.bl
  br i1 %i.bx, label %_ZNK21MapblockMeshGenerator14getCornerLevelEii.exit.1, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.by = icmp eq i16 %i.bw, %i.bn
  br i1 %i.by, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bz = icmp eq i16 %i.bw, 126
  %i.ca = zext i1 %i.bz to i32
  %spec.select.1.i.1 = add nuw nsw i32 %.3.ph.i.1, %i.ca
  br label %.preheader.1.i.1

bb.w:                                             ; preds = %bb.u
  %i.cb = load float, ptr %i.br, align 8, !tbaa !163
  %i.cc = fadd nsz float %.341.ph.i.1, %i.cb
  %i.cd = select i1 %i.bo, i32 2, i32 1
  br label %.preheader.1.i.1

.preheader.1.i.1:                                 ; preds = %bb.w, %bb.v
  %.341.ph.1.i.1 = phi float [ %.341.ph.i.1, %bb.v ], [ %i.cc, %bb.w ] ; 2 uses
  %.335.ph.1.i.1 = phi i32 [ %.335.ph.i.1, %bb.v ], [ %i.cd, %bb.w ] ; 2 uses
  %.3.ph.1.i.1 = phi i32 [ %spec.select.1.i.1, %bb.v ], [ %.3.ph.i.1, %bb.w ] ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 407
end_hunk_0
