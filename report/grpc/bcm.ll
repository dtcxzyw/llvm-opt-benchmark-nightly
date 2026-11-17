Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/grpc/original/bcm?download=true
inline.NumInlined: 5611
inline.NumDeleted: 1017
loop-unroll.NumCompletelyUnrolled: 187
loop-unroll.NumRuntimeUnrolled: 127
loop-unroll.NumUnrolled: 367
begin_hunk_0_@_ZN5mldsa12_GLOBAL__N_111matrix_multILi6ELi5EEEvPNS0_6vectorIXT_EEEPKNS0_6matrixIXT_EXT0_EEEPKNS2_IXT0_EEE:bb.a
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !84
  %i.bq = add i32 %i.bp, %i.bn                    ; 2 uses
  %i.br = zext i32 %i.bq to i64                   ; 2 uses
  %i.bs = add nsw i64 %i.br, -8380417
  %.neg.i.i.i.i.1 = ashr i64 %i.bs, 63
  %i.bt = add i32 %i.bq, -8380417
  %i.bu = zext i32 %i.bt to i64
  %i.bv = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.bw = and i64 %i.bv, %i.br
  %i.bx = xor i64 %i.bv, -1
  %i.by = and i64 %i.bu, %i.bx
  %i.bz = or disjoint i64 %i.by, %i.bw
  %i.ca = trunc nuw i64 %i.bz to i32
  store i32 %i.ca, ptr %i.bm, align 4, !tbaa !84
  %indvars.iv.next.i15.1 = add nuw nsw i64 %indvars.iv.i14.1, 1 ; 2 uses
  %exitcond.not.i16.1 = icmp eq i64 %indvars.iv.next.i15.1, 256
  br i1 %exitcond.not.i16.1, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 2048
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.e ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.2
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !84
  %i.ce = zext i32 %i.cd to i64
  %i.cf = getelementptr inbounds nuw [4 x i8], ptr %i.b, i64 %indvars.iv.i.2
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !84
  %i.ch = zext i32 %i.cg to i64
  %i.ci = mul nuw i64 %i.ch, %i.ce                ; 2 uses
  %i.cj = mul i64 %i.ci, 4236238847
  %i.ck = and i64 %i.cj, 4294967295
  %i.cl = mul nuw nsw i64 %i.ck, 8380417
  %i.cm = add i64 %i.cl, %i.ci
  %i.cn = lshr i64 %i.cm, 32                      ; 3 uses
  %i.co = add nsw i64 %i.cn, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.co, 63
  %i.cp = add nuw nsw i64 %i.cn, 4286586879
  %i.cq = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.cr = and i64 %i.cn, %i.cq
  %i.cs = xor i64 %i.cq, -1
  %i.ct = and i64 %i.cp, %i.cs
  %i.cu = or disjoint i64 %i.ct, %i.cr
  %i.cv = trunc i64 %i.cu to i32
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.2
  store i32 %i.cv, ptr %i.cw, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.e, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i14.2 = phi i64 [ %indvars.iv.next.i15.2, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2 ], [ 0, %bb.e ] ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i14.2 ; 2 uses
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !84
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i14.2
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !84
  %i.db = add i32 %i.da, %i.cy                    ; 2 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = add nsw i64 %i.dc, -8380417
  %.neg.i.i.i.i.2 = ashr i64 %i.dd, 63
  %i.de = add i32 %i.db, -8380417
  %i.df = zext i32 %i.de to i64
  %i.dg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.dh = and i64 %i.dg, %i.dc
  %i.di = xor i64 %i.dg, -1
  %i.dj = and i64 %i.df, %i.di
  %i.dk = or disjoint i64 %i.dj, %i.dh
  %i.dl = trunc nuw i64 %i.dk to i32
  store i32 %i.dl, ptr %i.cx, align 4, !tbaa !84
  %indvars.iv.next.i15.2 = add nuw nsw i64 %indvars.iv.i14.2, 1 ; 2 uses
  %exitcond.not.i16.2 = icmp eq i64 %indvars.iv.next.i15.2, 256
  br i1 %exitcond.not.i16.2, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.dm = getelementptr inbounds nuw i8, ptr %i.e, i64 3072
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.f ] ; 4 uses
  %i.dn = getelementptr inbounds nuw [4 x i8], ptr %i.dm, i64 %indvars.iv.i.3
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !84
  %i.dp = zext i32 %i.do to i64
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv.i.3
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !84
  %i.ds = zext i32 %i.dr to i64
  %i.dt = mul nuw i64 %i.ds, %i.dp                ; 2 uses
  %i.du = mul i64 %i.dt, 4236238847
  %i.dv = and i64 %i.du, 4294967295
  %i.dw = mul nuw nsw i64 %i.dv, 8380417
  %i.dx = add i64 %i.dw, %i.dt
  %i.dy = lshr i64 %i.dx, 32                      ; 3 uses
  %i.dz = add nsw i64 %i.dy, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.dz, 63
  %i.ea = add nuw nsw i64 %i.dy, 4286586879
  %i.eb = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.ec = and i64 %i.dy, %i.eb
  %i.ed = xor i64 %i.eb, -1
  %i.ee = and i64 %i.ea, %i.ed
  %i.ef = or disjoint i64 %i.ee, %i.ec
  %i.eg = trunc i64 %i.ef to i32
  %i.eh = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.3
  store i32 %i.eg, ptr %i.eh, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.f, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i14.3 = phi i64 [ %indvars.iv.next.i15.3, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3 ], [ 0, %bb.f ] ; 3 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i14.3 ; 2 uses
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i14.3
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !84
  %i.em = add i32 %i.el, %i.ej                    ; 2 uses
  %i.en = zext i32 %i.em to i64                   ; 2 uses
  %i.eo = add nsw i64 %i.en, -8380417
  %.neg.i.i.i.i.3 = ashr i64 %i.eo, 63
  %i.ep = add i32 %i.em, -8380417
  %i.eq = zext i32 %i.ep to i64
  %i.er = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.es = and i64 %i.er, %i.en
  %i.et = xor i64 %i.er, -1
  %i.eu = and i64 %i.eq, %i.et
  %i.ev = or disjoint i64 %i.eu, %i.es
  %i.ew = trunc nuw i64 %i.ev to i32
  store i32 %i.ew, ptr %i.ei, align 4, !tbaa !84
  %indvars.iv.next.i15.3 = add nuw nsw i64 %indvars.iv.i14.3, 1 ; 2 uses
  %exitcond.not.i16.3 = icmp eq i64 %indvars.iv.next.i15.3, 256
  br i1 %exitcond.not.i16.3, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #36
  %i.ex = getelementptr inbounds nuw i8, ptr %i.e, i64 4096
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.g ] ; 4 uses
  %i.ey = getelementptr inbounds nuw [4 x i8], ptr %i.ex, i64 %indvars.iv.i.4
  %i.ez = load i32, ptr %i.ey, align 4, !tbaa !84
  %i.fa = zext i32 %i.ez to i64
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %indvars.iv.i.4
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !84
  %i.fd = zext i32 %i.fc to i64
  %i.fe = mul nuw i64 %i.fd, %i.fa                ; 2 uses
  %i.ff = mul i64 %i.fe, 4236238847
  %i.fg = and i64 %i.ff, 4294967295
  %i.fh = mul nuw nsw i64 %i.fg, 8380417
  %i.fi = add i64 %i.fh, %i.fe
  %i.fj = lshr i64 %i.fi, 32                      ; 3 uses
  %i.fk = add nsw i64 %i.fj, -8380417
  %.neg.i.i.i.i.i.4 = ashr i64 %i.fk, 63
  %i.fl = add nuw nsw i64 %i.fj, 4286586879
  %i.fm = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.fn = and i64 %i.fj, %i.fm
  %i.fo = xor i64 %i.fm, -1
  %i.fp = and i64 %i.fl, %i.fo
  %i.fq = or disjoint i64 %i.fp, %i.fn
  %i.fr = trunc i64 %i.fq to i32
  %i.fs = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i.4
  store i32 %i.fr, ptr %i.fs, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.g, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i14.4 = phi i64 [ %indvars.iv.next.i15.4, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4 ], [ 0, %bb.g ] ; 3 uses
  %i.ft = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.i14.4 ; 2 uses
  %i.fu = load i32, ptr %i.ft, align 4, !tbaa !84
  %i.fv = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.i14.4
  %i.fw = load i32, ptr %i.fv, align 4, !tbaa !84
  %i.fx = add i32 %i.fw, %i.fu                    ; 2 uses
  %i.fy = zext i32 %i.fx to i64                   ; 2 uses
  %i.fz = add nsw i64 %i.fy, -8380417
  %.neg.i.i.i.i.4 = ashr i64 %i.fz, 63
  %i.ga = add i32 %i.fx, -8380417
  %i.gb = zext i32 %i.ga to i64
  %i.gc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.gd = and i64 %i.gc, %i.fy
  %i.ge = xor i64 %i.gc, -1
  %i.gf = and i64 %i.gb, %i.ge
  %i.gg = or disjoint i64 %i.gf, %i.gd
  %i.gh = trunc nuw i64 %i.gg to i32
  store i32 %i.gh, ptr %i.ft, align 4, !tbaa !84
  %indvars.iv.next.i15.4 = add nuw nsw i64 %indvars.iv.i14.4, 1 ; 2 uses
  %exitcond.not.i16.4 = icmp eq i64 %indvars.iv.next.i15.4, 256
  br i1 %exitcond.not.i16.4, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 6
  br i1 %exitcond.not, label %bb.b, label %.preheader, !llvm.loop !1577
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_addILi6EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = add i32 %i.d, %i.b                       ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = add nsw i64 %i.f, -8380417
  %.neg.i.i.i.i = ashr i64 %i.g, 63
  %i.h = add i32 %i.e, -8380417
  %i.i = zext i32 %i.h to i64
  %i.j = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.k = and i64 %i.j, %i.f
  %i.l = xor i64 %i.j, -1
  %i.m = and i64 %i.i, %i.l
  %i.n = or disjoint i64 %i.m, %i.k
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.o, ptr %i.p, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.1
  %i.u = load i32, ptr %i.t, align 4, !tbaa !84
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.1
  %i.w = load i32, ptr %i.v, align 4, !tbaa !84
  %i.x = add i32 %i.w, %i.u                       ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = add nsw i64 %i.y, -8380417
  %.neg.i.i.i.i.1 = ashr i64 %i.z, 63
  %i.aa = add i32 %i.x, -8380417
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.ad = and i64 %i.ac, %i.y
  %i.ae = xor i64 %i.ac, -1
  %i.af = and i64 %i.ab, %i.ae
  %i.ag = or disjoint i64 %i.af, %i.ad
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.1
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !84
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84
  %i.aq = add i32 %i.ap, %i.an                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = add nsw i64 %i.ar, -8380417
  %.neg.i.i.i.i.2 = ashr i64 %i.as, 63
  %i.at = add i32 %i.aq, -8380417
  %i.au = zext i32 %i.at to i64
  %i.av = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.aw = and i64 %i.av, %i.ar
  %i.ax = xor i64 %i.av, -1
  %i.ay = and i64 %i.au, %i.ax
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.2
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.3
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !84
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.3
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  %i.bj = add i32 %i.bi, %i.bg                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = add nsw i64 %i.bk, -8380417
  %.neg.i.i.i.i.3 = ashr i64 %i.bl, 63
  %i.bm = add i32 %i.bj, -8380417
  %i.bn = zext i32 %i.bm to i64
  %i.bo = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.bp = and i64 %i.bo, %i.bk
  %i.bq = xor i64 %i.bo, -1
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = or disjoint i64 %i.br, %i.bp
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.3
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !84
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.cc = add i32 %i.cb, %i.bz                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = add nsw i64 %i.cd, -8380417
  %.neg.i.i.i.i.4 = ashr i64 %i.ce, 63
  %i.cf = add i32 %i.cc, -8380417
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.ci = and i64 %i.ch, %i.cd
  %i.cj = xor i64 %i.ch, -1
  %i.ck = and i64 %i.cg, %i.cj
  %i.cl = or disjoint i64 %i.ck, %i.ci
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.f, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 5120
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i.5
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !84
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.5
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !84
  %i.cv = add i32 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = add nsw i64 %i.cw, -8380417
  %.neg.i.i.i.i.5 = ashr i64 %i.cx, 63
  %i.cy = add i32 %i.cv, -8380417
  %i.cz = zext i32 %i.cy to i64
  %i.da = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.5) #38, !srcloc !110 ; 2 uses
  %i.db = and i64 %i.da, %i.cw
  %i.dc = xor i64 %i.da, -1
  %i.dd = and i64 %i.cz, %i.dc
  %i.de = or disjoint i64 %i.dd, %i.db
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.5
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !84
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.5, label %bb.g, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.5: ; preds = %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_119vector_power2_roundILi6EEEvPNS0_6vectorIXT_EEES4_PKS3_(ptr nofree noundef captures(none) initializes((0, 1024)) %0, ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  %i.a = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) -1) #38, !srcloc !110 ; 7 uses
  %i.b = xor i64 %i.a, -1                         ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i ; 4 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i ; 2 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.f = load i32, ptr %i.e, align 4, !tbaa !84   ; 3 uses
  %i.g = lshr i32 %i.f, 13
  store i32 %i.g, ptr %i.c, align 4, !tbaa !84
  %i.h = and i32 %i.f, 8191                       ; 4 uses
  store i32 %i.h, ptr %i.d, align 4, !tbaa !84
  %i.i = add nuw nsw i32 %i.h, 8372225
  %i.j = zext nneg i32 %i.i to i64
  %i.k = or i32 %i.f, -8192
  %i.l = zext i32 %i.k to i64
  %i.m = and i64 %i.a, %i.j
  %i.n = and i64 %i.l, %i.b
  %i.o = or disjoint i64 %i.m, %i.n
  %i.p = load i32, ptr %i.c, align 4, !tbaa !84
  %i.q = add i32 %i.p, 1
  %i.r = zext nneg i32 %i.h to i64
  %i.s = icmp samesign ugt i32 %i.h, 4096
  %.neg.i.i.i.i = sext i1 %i.s to i64
  %i.t = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !110 ; 3 uses
  %i.u = and i64 %i.o, %i.t
  %i.v = xor i64 %i.t, -1                         ; 2 uses
  %i.w = and i64 %i.v, %i.r
  %i.x = or disjoint i64 %i.u, %i.w
  %i.y = trunc nuw i64 %i.x to i32
  store i32 %i.y, ptr %i.d, align 4, !tbaa !84
  %i.z = load i32, ptr %i.c, align 4, !tbaa !84
  %i.aa = zext i32 %i.q to i64
  %i.ab = zext i32 %i.z to i64
  %i.ac = and i64 %i.t, %i.aa
  %i.ad = and i64 %i.ab, %i.v
  %i.ae = or disjoint i64 %i.ad, %i.ac
  %i.af = trunc nuw i64 %i.ae to i32
  store i32 %i.af, ptr %i.c, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit, label %bb.b, !llvm.loop !46

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit: ; preds = %bb.b
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %indvars.iv.i.1 ; 4 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %indvars.iv.i.1 ; 2 uses
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv.i.1
  %i.am = load i32, ptr %i.al, align 4, !tbaa !84 ; 3 uses
  %i.an = lshr i32 %i.am, 13
  store i32 %i.an, ptr %i.aj, align 4, !tbaa !84
  %i.ao = and i32 %i.am, 8191                     ; 4 uses
  store i32 %i.ao, ptr %i.ak, align 4, !tbaa !84
  %i.ap = add nuw nsw i32 %i.ao, 8372225
  %i.aq = zext nneg i32 %i.ap to i64
  %i.ar = or i32 %i.am, -8192
  %i.as = zext i32 %i.ar to i64
  %i.at = and i64 %i.a, %i.aq
  %i.au = and i64 %i.as, %i.b
  %i.av = or disjoint i64 %i.at, %i.au
  %i.aw = load i32, ptr %i.aj, align 4, !tbaa !84
  %i.ax = add i32 %i.aw, 1
  %i.ay = zext nneg i32 %i.ao to i64
  %i.az = icmp samesign ugt i32 %i.ao, 4096
  %.neg.i.i.i.i.1 = sext i1 %i.az to i64
  %i.ba = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.1) #38, !srcloc !110 ; 3 uses
  %i.bb = and i64 %i.av, %i.ba
  %i.bc = xor i64 %i.ba, -1                       ; 2 uses
  %i.bd = and i64 %i.bc, %i.ay
  %i.be = or disjoint i64 %i.bb, %i.bd
  %i.bf = trunc nuw i64 %i.be to i32
  store i32 %i.bf, ptr %i.ak, align 4, !tbaa !84
  %i.bg = load i32, ptr %i.aj, align 4, !tbaa !84
  %i.bh = zext i32 %i.ax to i64
  %i.bi = zext i32 %i.bg to i64
  %i.bj = and i64 %i.ba, %i.bh
  %i.bk = and i64 %i.bi, %i.bc
  %i.bl = or disjoint i64 %i.bk, %i.bj
  %i.bm = trunc nuw i64 %i.bl to i32
  store i32 %i.bm, ptr %i.aj, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.1, label %bb.c, !llvm.loop !46

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.1: ; preds = %bb.c
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.bq = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %indvars.iv.i.2 ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bo, i64 %indvars.iv.i.2 ; 2 uses
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.2
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !84 ; 3 uses
  %i.bu = lshr i32 %i.bt, 13
  store i32 %i.bu, ptr %i.bq, align 4, !tbaa !84
  %i.bv = and i32 %i.bt, 8191                     ; 4 uses
  store i32 %i.bv, ptr %i.br, align 4, !tbaa !84
  %i.bw = add nuw nsw i32 %i.bv, 8372225
  %i.bx = zext nneg i32 %i.bw to i64
  %i.by = or i32 %i.bt, -8192
  %i.bz = zext i32 %i.by to i64
  %i.ca = and i64 %i.a, %i.bx
  %i.cb = and i64 %i.bz, %i.b
  %i.cc = or disjoint i64 %i.ca, %i.cb
  %i.cd = load i32, ptr %i.bq, align 4, !tbaa !84
  %i.ce = add i32 %i.cd, 1
  %i.cf = zext nneg i32 %i.bv to i64
  %i.cg = icmp samesign ugt i32 %i.bv, 4096
  %.neg.i.i.i.i.2 = sext i1 %i.cg to i64
  %i.ch = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.2) #38, !srcloc !110 ; 3 uses
  %i.ci = and i64 %i.cc, %i.ch
  %i.cj = xor i64 %i.ch, -1                       ; 2 uses
  %i.ck = and i64 %i.cj, %i.cf
  %i.cl = or disjoint i64 %i.ci, %i.ck
  %i.cm = trunc nuw i64 %i.cl to i32
  store i32 %i.cm, ptr %i.br, align 4, !tbaa !84
  %i.cn = load i32, ptr %i.bq, align 4, !tbaa !84
  %i.co = zext i32 %i.ce to i64
  %i.cp = zext i32 %i.cn to i64
  %i.cq = and i64 %i.ch, %i.co
  %i.cr = and i64 %i.cp, %i.cj
  %i.cs = or disjoint i64 %i.cr, %i.cq
  %i.ct = trunc nuw i64 %i.cs to i32
  store i32 %i.ct, ptr %i.bq, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.2, label %bb.d, !llvm.loop !46

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.2: ; preds = %bb.d
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.cw = getelementptr inbounds nuw i8, ptr %2, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.3 ; 4 uses
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.3 ; 2 uses
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.cw, i64 %indvars.iv.i.3
  %i.da = load i32, ptr %i.cz, align 4, !tbaa !84 ; 3 uses
  %i.db = lshr i32 %i.da, 13
  store i32 %i.db, ptr %i.cx, align 4, !tbaa !84
  %i.dc = and i32 %i.da, 8191                     ; 4 uses
  store i32 %i.dc, ptr %i.cy, align 4, !tbaa !84
  %i.dd = add nuw nsw i32 %i.dc, 8372225
  %i.de = zext nneg i32 %i.dd to i64
  %i.df = or i32 %i.da, -8192
  %i.dg = zext i32 %i.df to i64
  %i.dh = and i64 %i.a, %i.de
  %i.di = and i64 %i.dg, %i.b
  %i.dj = or disjoint i64 %i.dh, %i.di
  %i.dk = load i32, ptr %i.cx, align 4, !tbaa !84
  %i.dl = add i32 %i.dk, 1
  %i.dm = zext nneg i32 %i.dc to i64
  %i.dn = icmp samesign ugt i32 %i.dc, 4096
  %.neg.i.i.i.i.3 = sext i1 %i.dn to i64
  %i.do = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.3) #38, !srcloc !110 ; 3 uses
  %i.dp = and i64 %i.dj, %i.do
  %i.dq = xor i64 %i.do, -1                       ; 2 uses
  %i.dr = and i64 %i.dq, %i.dm
  %i.ds = or disjoint i64 %i.dp, %i.dr
  %i.dt = trunc nuw i64 %i.ds to i32
  store i32 %i.dt, ptr %i.cy, align 4, !tbaa !84
  %i.du = load i32, ptr %i.cx, align 4, !tbaa !84
  %i.dv = zext i32 %i.dl to i64
  %i.dw = zext i32 %i.du to i64
  %i.dx = and i64 %i.do, %i.dv
  %i.dy = and i64 %i.dw, %i.dq
  %i.dz = or disjoint i64 %i.dy, %i.dx
  %i.ea = trunc nuw i64 %i.dz to i32
  store i32 %i.ea, ptr %i.cx, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.3, label %bb.e, !llvm.loop !46

_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.3: ; preds = %bb.e
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.ed = getelementptr inbounds nuw i8, ptr %2, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_119scalar_power2_roundEPNS0_6scalarES2_PKS1_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.ee = getelementptr inbounds nuw [4 x i8], ptr %i.eb, i64 %indvars.iv.i.4 ; 4 uses
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.ec, i64 %indvars.iv.i.4 ; 2 uses
  %i.eg = getelementptr inbounds nuw [4 x i8], ptr %i.ed, i64 %indvars.iv.i.4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !84 ; 3 uses
  %i.ei = lshr i32 %i.eh, 13
end_hunk_0
begin_hunk_1_@_ZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS0_11private_keyIXT_EXT0_EEEPKhmS8_mS8_mS8_:bb.a
  %.2.i.i.1 = phi i32 [ %i.atx, %bb.az ], [ %.2.i.i, %bb.ax ] ; 3 uses
  %indvars.iv.next.i.i210.1 = add nuw nsw i64 %indvars.iv.i.i209, 2 ; 2 uses
  %exitcond.not.i.i211.1 = icmp eq i64 %indvars.iv.next.i.i210.1, 256
  br i1 %exitcond.not.i.i211.1, label %.preheader.1.i.i, label %bb.au, !llvm.loop !1611

bb.bb:                                            ; preds = %bb.at
  %i.aua = trunc i32 %.2.5.i.i.1 to i8
  %i.aub = getelementptr inbounds nuw i8, ptr %i.aqj, i64 60
  store i8 %i.aua, ptr %i.aub, align 1, !tbaa !82
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.auc = call i64 @CBB_len(ptr noundef nonnull %12) #36
  %i.aud = icmp eq i64 %i.auc, 3309
  br i1 %i.aud, label %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  call void @abort() #37
  unreachable

bb.bd:                                            ; preds = %_ZN5mldsa12_GLOBAL__N_117vector_max_signedILi6EEEjPKNS0_6vectorIXT_EEE.exit, %_ZN5mldsa12_GLOBAL__N_117vector_count_onesILi6EEEmPKNS0_6vectorIXT_EEE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  %i.aue = add i16 %.0, 5
  br label %vector.ph506, !llvm.loop !1612

_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split: ; preds = %bb.i, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread219
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br label %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread

_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread: ; preds = %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split, %bb.h, %bb.bb
  %.134 = phi i32 [ 0, %bb.h ], [ 1, %bb.bb ], [ 0, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.m) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_132mldsa_sign_internal_no_self_testILi6ELi5EEEiPhPKNS1_11private_keyIXT_EXT0_EEEPKhmS9_mS9_mS9_E9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread
  %.4227 = phi i32 [ %.134, %_ZN5mldsa12_GLOBAL__N_123mldsa_marshal_signatureILi6ELi5EEEiP6cbb_stPKNS0_9signatureIXT_EXT0_EEE.exit.thread ], [ 0, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #36
  ret i32 %.4227
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_129scalar_sample_in_ball_vartimeEPNS0_6scalarEPKhii(ptr nofree noundef nonnull captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef range(i32 48, 65) %2, i32 noundef range(i32 49, 61) %3) unnamed_addr #5 {
.preheader.lr.ph:
  %4 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 11 uses
  %i.a = alloca [136 x i8], align 16              ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #36
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 6 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store i32 3, ptr %4, align 8, !tbaa !322
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  store i32 0, ptr %i.c, align 4, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 208 ; 4 uses
  store i64 136, ptr %i.d, align 8, !tbaa !324
  %i.e = zext nneg i32 %2 to i64
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %4, ptr noundef %1, i64 noundef %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %4, ptr noundef nonnull %i.a, i64 noundef 136)
  %.0.copyload.i = load i64, ptr %i.a, align 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1024) %0, i8 0, i64 1024, i1 false)
  %i.f = sub nuw nsw i32 256, %3
  %i.g = zext nneg i32 %i.f to i64
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 216
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 224 ; 3 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.j
  %.023 = phi i64 [ %i.g, %.preheader.lr.ph ], [ %i.be, %bb.j ] ; 3 uses
  %.01722 = phi i32 [ 8, %.preheader.lr.ph ], [ %i.ai, %bb.j ]
  %.01821 = phi i64 [ %.0.copyload.i, %.preheader.lr.ph ], [ %i.bd, %bb.j ] ; 2 uses
  br label %bb.a

._crit_edge:                                      ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #36
  ret void

bb.a:                                             ; preds = %.preheader, %BORINGSSL_keccak_squeeze.exit
  %.1 = phi i32 [ %i.ai, %BORINGSSL_keccak_squeeze.exit ], [ %.01722, %.preheader ] ; 2 uses
  %i.j = icmp eq i32 %.1, 136
  br i1 %i.j, label %bb.b, label %BORINGSSL_keccak_squeeze.exit

bb.b:                                             ; preds = %bb.a
  %i.k = load i32, ptr %i.c, align 4, !tbaa !323
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.m = load i32, ptr %4, align 8, !tbaa !322    ; 2 uses
  %i.n = icmp ult i32 %i.m, 4
  br i1 %i.n, label %switch.lookup, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.c
  %switch.shiftamt = shl nuw nsw i32 %i.m, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.o = load i64, ptr %i.h, align 8, !tbaa !325
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o ; 2 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !82
  %i.r = xor i8 %i.q, %switch.masked
  store i8 %i.r, ptr %i.p, align 1, !tbaa !82
  %i.s = load i64, ptr %i.d, align 8, !tbaa !324
  %i.t = getelementptr i8, ptr %i.b, i64 %i.s
  %i.u = getelementptr i8, ptr %i.t, i64 -1       ; 2 uses
  %i.v = load i8, ptr %i.u, align 1, !tbaa !82
  %i.w = xor i8 %i.v, -128
  store i8 %i.w, ptr %i.u, align 1, !tbaa !82
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.b)
  store i32 1, ptr %i.c, align 4, !tbaa !323
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.b
  %.pre.i = load i64, ptr %i.i, align 8, !tbaa !326
  %.pre31.i = load i64, ptr %i.d, align 8, !tbaa !324 ; 2 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.e
  %.pre30.i25 = phi i64 [ %.pre31.i, %bb.e ], [ %.pre30.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ]
  %i.x = phi i64 [ %.pre31.i, %bb.e ], [ %i.ae, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.y = phi i64 [ %.pre.i, %bb.e ], [ %i.ah, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %.02429.i = phi i64 [ 136, %bb.e ], [ %i.ag, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %.02528.i = phi ptr [ %i.a, %bb.e ], [ %i.af, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.z = icmp eq i64 %i.y, %i.x
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.b)
  store i64 0, ptr %i.i, align 8, !tbaa !326
  %.pre32.i = load i64, ptr %i.d, align 8, !tbaa !324 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.pre30.i = phi i64 [ %.pre32.i, %bb.g ], [ %.pre30.i25, %bb.f ] ; 2 uses
  %.pre33.i = phi i64 [ 0, %bb.g ], [ %i.y, %bb.f ] ; 5 uses
  %i.aa = phi i64 [ %.pre32.i, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.ab = sub i64 %i.aa, %.pre33.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ab) ; 4 uses
  %i.ac = icmp eq i64 %i.aa, %.pre33.i
  br i1 %i.ac, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 %.pre33.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.ad, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.i, %bb.h
  %i.ae = phi i64 [ %.pre33.i, %bb.h ], [ %.pre30.i, %bb.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.ag = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.ah = add i64 %.pre33.i, %spec.select.i       ; 2 uses
  store i64 %i.ah, ptr %i.i, align 8, !tbaa !326
  %.not.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i, label %BORINGSSL_keccak_squeeze.exit, label %bb.f, !llvm.loop !38

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.a
  %.2 = phi i32 [ %.1, %bb.a ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 2 uses
  %i.ai = add nsw i32 %.2, 1                      ; 2 uses
  %i.aj = sext i32 %.2 to i64
  %i.ak = getelementptr inbounds i8, ptr %i.a, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !82
  %i.am = zext i8 %i.al to i64                    ; 2 uses
  %.not = icmp samesign ult i64 %.023, %i.am
  br i1 %.not, label %bb.a, label %bb.j, !llvm.loop !1613

bb.j:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.am ; 2 uses
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !84
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %.023
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !84
  %.018.tr = trunc i64 %.01821 to i32
  %i.aq = shl i32 %.018.tr, 1
  %i.ar = and i32 %i.aq, 2                        ; 2 uses
  %i.as = sub nuw nsw i32 8380418, %i.ar
  %i.at = zext nneg i32 %i.as to i64              ; 2 uses
  %i.au = add nsw i64 %i.at, -8380418
  %.neg.i.i.i.i = ashr i64 %i.au, 63
  %i.av = sub nsw i32 1, %i.ar
  %i.aw = zext i32 %i.av to i64
  %i.ax = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.ay = and i64 %i.ax, %i.at
  %i.az = xor i64 %i.ax, -1
  %i.ba = and i64 %i.az, %i.aw
  %i.bb = or disjoint i64 %i.ay, %i.ba
  %i.bc = trunc nuw i64 %i.bb to i32
  store i32 %i.bc, ptr %i.an, align 4, !tbaa !84
  %i.bd = lshr i64 %.01821, 1
  %i.be = add nuw nsw i64 %.023, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.be, 256
  br i1 %exitcond.not, label %._crit_edge, label %.preheader, !llvm.loop !1614
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_118vector_mult_scalarILi6EEEvPNS0_6vectorIXT_EEEPKS3_PKNS0_6scalarE(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, %i.c                   ; 2 uses
  %i.h = mul i64 %i.g, 4236238847
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 8380417
  %i.k = add i64 %i.j, %i.g
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = add nsw i64 %i.l, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.m, 63
  %i.n = add nuw nsw i64 %i.l, 4286586879
  %i.o = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.p = and i64 %i.l, %i.o
  %i.q = xor i64 %i.o, -1
  %i.r = and i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.t, ptr %i.u, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.1
  %i.y = load i32, ptr %i.x, align 4, !tbaa !84
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !84
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.z                 ; 2 uses
  %i.ae = mul i64 %i.ad, 4236238847
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul nuw nsw i64 %i.af, 8380417
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 32                      ; 3 uses
  %i.aj = add nsw i64 %i.ai, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.aj, 63
  %i.ak = add nuw nsw i64 %i.ai, 4286586879
  %i.al = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.am = and i64 %i.ai, %i.al
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = or disjoint i64 %i.ao, %i.am
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.1
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !84
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw                ; 2 uses
  %i.bb = mul i64 %i.ba, 4236238847
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = mul nuw nsw i64 %i.bc, 8380417
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32                      ; 3 uses
  %i.bg = add nsw i64 %i.bf, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.bg, 63
  %i.bh = add nuw nsw i64 %i.bf, 4286586879
  %i.bi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.bj = and i64 %i.bf, %i.bi
  %i.bk = xor i64 %i.bi, -1
  %i.bl = and i64 %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.bl, %i.bj
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.2
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.3
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !84
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.3
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !84
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bt                ; 2 uses
  %i.by = mul i64 %i.bx, 4236238847
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = mul nuw nsw i64 %i.bz, 8380417
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = lshr i64 %i.cb, 32                      ; 3 uses
  %i.cd = add nsw i64 %i.cc, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.cd, 63
  %i.ce = add nuw nsw i64 %i.cc, 4286586879
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.cg = and i64 %i.cc, %i.cf
  %i.ch = xor i64 %i.cf, -1
  %i.ci = and i64 %i.ce, %i.ch
  %i.cj = or disjoint i64 %i.ci, %i.cg
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.3
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !84
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !84
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw i64 %i.ct, %i.cq                ; 2 uses
  %i.cv = mul i64 %i.cu, 4236238847
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = mul nuw nsw i64 %i.cw, 8380417
  %i.cy = add i64 %i.cx, %i.cu
  %i.cz = lshr i64 %i.cy, 32                      ; 3 uses
  %i.da = add nsw i64 %i.cz, -8380417
  %.neg.i.i.i.i.i.4 = ashr i64 %i.da, 63
  %i.db = add nuw nsw i64 %i.cz, 4286586879
  %i.dc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.dd = and i64 %i.cz, %i.dc
  %i.de = xor i64 %i.dc, -1
  %i.df = and i64 %i.db, %i.de
  %i.dg = or disjoint i64 %i.df, %i.dd
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i.4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.f, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.5
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !84
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.5
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !84
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw i64 %i.dq, %i.dn                ; 2 uses
  %i.ds = mul i64 %i.dr, 4236238847
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = mul nuw nsw i64 %i.dt, 8380417
  %i.dv = add i64 %i.du, %i.dr
  %i.dw = lshr i64 %i.dv, 32                      ; 3 uses
  %i.dx = add nsw i64 %i.dw, -8380417
  %.neg.i.i.i.i.i.5 = ashr i64 %i.dx, 63
  %i.dy = add nuw nsw i64 %i.dw, 4286586879
  %i.dz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.5) #38, !srcloc !110 ; 2 uses
  %i.ea = and i64 %i.dw, %i.dz
  %i.eb = xor i64 %i.dz, -1
  %i.ec = and i64 %i.dy, %i.eb
  %i.ed = or disjoint i64 %i.ec, %i.ea
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.5
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !84
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.5, label %bb.g, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.5: ; preds = %bb.g
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_subILi6EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = add i32 %i.b, 8380417
  %i.f = sub i32 %i.e, %i.d                       ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add nsw i64 %i.g, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.h, 63
  %i.i = add i32 %i.f, -8380417
  %i.j = zext i32 %i.i to i64
  %i.k = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.l = and i64 %i.k, %i.g
  %i.m = xor i64 %i.k, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = or disjoint i64 %i.n, %i.l
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.1
  %i.v = load i32, ptr %i.u, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !84
  %i.y = add i32 %i.v, 8380417
  %i.z = sub i32 %i.y, %i.x                       ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.ab, 63
  %i.ac = add i32 %i.z, -8380417
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.af = and i64 %i.ae, %i.aa
  %i.ag = xor i64 %i.ae, -1
  %i.ah = and i64 %i.ad, %i.ag
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !84
  %i.as = add i32 %i.ap, 8380417
  %i.at = sub i32 %i.as, %i.ar                    ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = add nsw i64 %i.au, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.av, 63
  %i.aw = add i32 %i.at, -8380417
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.az = and i64 %i.ay, %i.au
  %i.ba = xor i64 %i.ay, -1
  %i.bb = and i64 %i.ax, %i.ba
  %i.bc = or disjoint i64 %i.bb, %i.az
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.2
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.3
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !84
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.3
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !84
  %i.bm = add i32 %i.bj, 8380417
  %i.bn = sub i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = add nsw i64 %i.bo, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.bp, 63
  %i.bq = add i32 %i.bn, -8380417
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.bt = and i64 %i.bs, %i.bo
  %i.bu = xor i64 %i.bs, -1
  %i.bv = and i64 %i.br, %i.bu
  %i.bw = or disjoint i64 %i.bv, %i.bt
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.3
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i.4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !84
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !84
  %i.cg = add i32 %i.cd, 8380417
  %i.ch = sub i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = add nsw i64 %i.ci, -8380417
  %.neg.i.i.i.i.i.4 = ashr i64 %i.cj, 63
  %i.ck = add i32 %i.ch, -8380417
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.cn = and i64 %i.cm, %i.ci
  %i.co = xor i64 %i.cm, -1
  %i.cp = and i64 %i.cl, %i.co
  %i.cq = or disjoint i64 %i.cp, %i.cn
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.f, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 5120
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.5
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.5
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !84
  %i.da = add i32 %i.cx, 8380417
  %i.db = sub i32 %i.da, %i.cz                    ; 2 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = add nsw i64 %i.dc, -8380417
  %.neg.i.i.i.i.i.5 = ashr i64 %i.dd, 63
  %i.de = add i32 %i.db, -8380417
  %i.df = zext i32 %i.de to i64
  %i.dg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.5) #38, !srcloc !110 ; 2 uses
  %i.dh = and i64 %i.dg, %i.dc
  %i.di = xor i64 %i.dg, -1
  %i.dj = and i64 %i.df, %i.di
  %i.dk = or disjoint i64 %i.dj, %i.dh
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.5
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !84
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.5, label %bb.g, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.5: ; preds = %bb.g
  ret void
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read) uwtable
define internal fastcc noundef i32 @_ZN5mldsa12_GLOBAL__N_110vector_maxILi5EEEjPKNS0_6vectorIXT_EEE(ptr nofree noundef readonly captures(none) %0) unnamed_addr #20 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %.1 = phi i32 [ 0, %bb.a ], [ %i.t, %bb.b ]     ; 2 uses
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84   ; 3 uses
  %i.c = zext i32 %i.b to i64
  %i.d = icmp ugt i32 %i.b, 4190208
  %.neg.i.i.i.i = sext i1 %i.d to i64
end_hunk_1
begin_hunk_2_@_ZN5mlkem12_GLOBAL__N_110vector_nttILi3EEEvPNS0_6vectorIXT_EEE:bb.a
middle.block22:                                   ; preds = %vector.body17
  br i1 %cmp.n23, label %._crit_edge.i.loopexit.1, label %.lr.ph.i.1.preheader

.lr.ph.i.1.preheader:                             ; preds = %.lr.ph.i.preheader.1, %middle.block22
  %indvars.iv42.i.1.ph = phi i64 [ %indvars.iv.i.1, %.lr.ph.i.preheader.1 ], [ %i.bv, %middle.block22 ]
  br label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %.lr.ph.i.1.preheader, %.lr.ph.i.1
  %indvars.iv42.i.1 = phi i64 [ %indvars.iv.next43.i.1, %.lr.ph.i.1 ], [ %indvars.iv42.i.1.ph, %.lr.ph.i.1.preheader ] ; 3 uses
  %gep.i.1 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.1, i64 %indvars.iv42.i.1 ; 2 uses
  %i.da = load i16, ptr %gep.i.1, align 2, !tbaa !141
  %i.db = zext i16 %i.da to i32
  %i.dc = mul nuw i32 %i.db, %i.bu                ; 2 uses
  %i.dd = zext i32 %i.dc to i64
  %i.de = mul nuw nsw i64 %i.dd, 5039
  %i.df = lshr i64 %i.de, 24
  %i.dg = trunc nuw nsw i64 %i.df to i32
  %.neg.i.i.1 = mul i32 %i.dg, 62207
  %i.dh = add i32 %.neg.i.i.1, %i.dc
  %i.di = trunc i32 %i.dh to i16                  ; 2 uses
  %i.dj = add i16 %i.di, -3329                    ; 2 uses
  %isneg.i.i.i.1 = icmp slt i16 %i.dj, 0
  %i.dk = select i1 %isneg.i.i.i.1, i16 %i.di, i16 0
  %i.dl = tail call i16 @llvm.smax.i16(i16 %i.dj, i16 0)
  %i.dm = or i16 %i.dk, %i.dl                     ; 2 uses
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr %i.bn, i64 %indvars.iv42.i.1 ; 2 uses
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !141 ; 2 uses
  %i.dp = add i16 %i.dm, %i.do                    ; 2 uses
  %i.dq = add i16 %i.dp, -3329                    ; 2 uses
  %isneg.i.i.1 = icmp slt i16 %i.dq, 0
  %i.dr = select i1 %isneg.i.i.1, i16 %i.dp, i16 0
  %i.ds = tail call i16 @llvm.smax.i16(i16 %i.dq, i16 0)
  %i.dt = or i16 %i.dr, %i.ds
  store i16 %i.dt, ptr %i.dn, align 2, !tbaa !141
  %i.du = sub i16 %i.do, %i.dm                    ; 3 uses
  %i.dv = add i16 %i.du, 3329
  %isneg.i33.i.1 = icmp slt i16 %i.du, 0
  %i.dw = select i1 %isneg.i33.i.1, i16 %i.dv, i16 0
  %i.dx = tail call i16 @llvm.smax.i16(i16 %i.du, i16 0)
  %i.dy = or i16 %i.dw, %i.dx
  store i16 %i.dy, ptr %gep.i.1, align 2, !tbaa !141
  %indvars.iv.next43.i.1 = add nuw nsw i64 %indvars.iv42.i.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next43.i.1, %indvars.iv.1
  br i1 %exitcond.1.not, label %._crit_edge.i.loopexit.1, label %.lr.ph.i.1, !llvm.loop !1656

._crit_edge.i.loopexit.1:                         ; preds = %.lr.ph.i.1, %middle.block22
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, %i.bq
  %indvars.iv.next45.i.1 = add nuw nsw i64 %indvars.iv44.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next45.i.1, %i.bs
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv.1, %i.bq
  br i1 %exitcond.not.i.1, label %._crit_edge39.i.1, label %.lr.ph.i.preheader.1, !llvm.loop !66

._crit_edge39.i.1:                                ; preds = %._crit_edge.i.loopexit.1, %.lr.ph38.i.1
  %i.dz = shl i32 %.02940.i.1, 1                  ; 2 uses
  %i.ea = icmp slt i32 %i.dz, 128
  br i1 %i.ea, label %.lr.ph38.i.1, label %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1, !llvm.loop !65

_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1: ; preds = %._crit_edge39.i.1
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 1024 ; 3 uses
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge39.i.2, %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1
  %.041.i.2 = phi i32 [ 256, %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1 ], [ %i.ec, %._crit_edge39.i.2 ] ; 3 uses
  %.02940.i.2 = phi i32 [ 1, %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.1 ], [ %i.go, %._crit_edge39.i.2 ] ; 3 uses
  %i.ec = lshr i32 %.041.i.2, 1                   ; 3 uses
  %i.ed = icmp sgt i32 %.02940.i.2, 0
  br i1 %i.ed, label %.lr.ph38.i.2, label %._crit_edge39.i.2

.lr.ph38.i.2:                                     ; preds = %bb.b
  %i.ee = and i32 %.041.i.2, 510
  %i.ef = zext nneg i32 %i.ee to i64              ; 2 uses
  %i.eg = zext nneg i32 %i.ec to i64              ; 4 uses
  %i.eh = zext nneg i32 %.02940.i.2 to i64        ; 2 uses
  %invariant.gep47.i.2 = getelementptr inbounds nuw [2 x i8], ptr @_ZN5mlkem12_GLOBAL__N_19kNTTRootsE, i64 %i.eh
  %.not.i.2 = icmp eq i32 %i.ec, 0
  %invariant.gep.i.2 = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.eg ; 2 uses
  br i1 %.not.i.2, label %._crit_edge39.i.2, label %.lr.ph.i.preheader.2.preheader

.lr.ph.i.preheader.2.preheader:                   ; preds = %.lr.ph38.i.2
  %min.iters.check26 = icmp samesign ult i32 %.041.i.2, 16
  %n.vec28 = and i64 %i.eg, 248                   ; 3 uses
  %cmp.n37 = icmp eq i64 %n.vec28, %i.eg
  br label %.lr.ph.i.preheader.2

.lr.ph.i.preheader.2:                             ; preds = %.lr.ph.i.preheader.2.preheader, %._crit_edge.i.loopexit.2
  %indvars.iv.2 = phi i64 [ %indvars.iv.next.2, %._crit_edge.i.loopexit.2 ], [ %i.eg, %.lr.ph.i.preheader.2.preheader ] ; 2 uses
  %indvars.iv44.i.2 = phi i64 [ %indvars.iv.next45.i.2, %._crit_edge.i.loopexit.2 ], [ 0, %.lr.ph.i.preheader.2.preheader ] ; 2 uses
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %._crit_edge.i.loopexit.2 ], [ 0, %.lr.ph.i.preheader.2.preheader ] ; 4 uses
  %gep48.i.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep47.i.2, i64 %indvars.iv44.i.2
  %i.ei = load i16, ptr %gep48.i.2, align 2, !tbaa !141
  %i.ej = zext i16 %i.ei to i32                   ; 2 uses
  br i1 %min.iters.check26, label %.lr.ph.i.2.preheader, label %vector.ph27

vector.ph27:                                      ; preds = %.lr.ph.i.preheader.2
  %i.ek = add nuw i64 %indvars.iv.i.2, %n.vec28
  %broadcast.splatinsert29 = insertelement <8 x i32> poison, i32 %i.ej, i64 0
  %broadcast.splat30 = shufflevector <8 x i32> %broadcast.splatinsert29, <8 x i32> poison, <8 x i32> zeroinitializer
  br label %vector.body31

vector.body31:                                    ; preds = %vector.body31, %vector.ph27
  %index32 = phi i64 [ 0, %vector.ph27 ], [ %index.next35, %vector.body31 ] ; 2 uses
  %i.el = add nuw i64 %indvars.iv.i.2, %index32   ; 2 uses
  %i.em = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.2, i64 %i.el ; 2 uses
  %wide.load33 = load <8 x i16>, ptr %i.em, align 2, !tbaa !141
  %i.en = zext <8 x i16> %wide.load33 to <8 x i32>
  %i.eo = mul nuw <8 x i32> %broadcast.splat30, %i.en ; 2 uses
  %i.ep = zext <8 x i32> %i.eo to <8 x i64>
  %i.eq = mul nuw nsw <8 x i64> %i.ep, splat (i64 5039)
  %i.er = lshr <8 x i64> %i.eq, splat (i64 24)
  %i.es = trunc nuw nsw <8 x i64> %i.er to <8 x i32>
  %i.et = mul <8 x i32> %i.es, splat (i32 62207)
  %i.eu = add <8 x i32> %i.et, %i.eo
  %i.ev = trunc <8 x i32> %i.eu to <8 x i16>      ; 2 uses
  %i.ew = add <8 x i16> %i.ev, splat (i16 -3329)  ; 2 uses
  %i.ex = icmp slt <8 x i16> %i.ew, zeroinitializer
  %i.ey = select <8 x i1> %i.ex, <8 x i16> %i.ev, <8 x i16> zeroinitializer
  %i.ez = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.ew, <8 x i16> zeroinitializer)
  %i.fa = or <8 x i16> %i.ey, %i.ez               ; 2 uses
  %i.fb = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %i.el ; 2 uses
  %wide.load34 = load <8 x i16>, ptr %i.fb, align 2, !tbaa !141 ; 2 uses
  %i.fc = add <8 x i16> %i.fa, %wide.load34       ; 2 uses
  %i.fd = add <8 x i16> %i.fc, splat (i16 -3329)  ; 2 uses
  %i.fe = icmp slt <8 x i16> %i.fd, zeroinitializer
  %i.ff = select <8 x i1> %i.fe, <8 x i16> %i.fc, <8 x i16> zeroinitializer
  %i.fg = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fd, <8 x i16> zeroinitializer)
  %i.fh = or <8 x i16> %i.ff, %i.fg
  store <8 x i16> %i.fh, ptr %i.fb, align 2, !tbaa !141
  %i.fi = sub <8 x i16> %wide.load34, %i.fa       ; 3 uses
  %i.fj = add <8 x i16> %i.fi, splat (i16 3329)
  %i.fk = icmp slt <8 x i16> %i.fi, zeroinitializer
  %i.fl = select <8 x i1> %i.fk, <8 x i16> %i.fj, <8 x i16> zeroinitializer
  %i.fm = tail call <8 x i16> @llvm.smax.v8i16(<8 x i16> %i.fi, <8 x i16> zeroinitializer)
  %i.fn = or <8 x i16> %i.fl, %i.fm
  store <8 x i16> %i.fn, ptr %i.em, align 2, !tbaa !141
  %index.next35 = add nuw i64 %index32, 8         ; 2 uses
  %i.fo = icmp eq i64 %index.next35, %n.vec28
  br i1 %i.fo, label %middle.block36, label %vector.body31, !llvm.loop !1657

middle.block36:                                   ; preds = %vector.body31
  br i1 %cmp.n37, label %._crit_edge.i.loopexit.2, label %.lr.ph.i.2.preheader

.lr.ph.i.2.preheader:                             ; preds = %.lr.ph.i.preheader.2, %middle.block36
  %indvars.iv42.i.2.ph = phi i64 [ %indvars.iv.i.2, %.lr.ph.i.preheader.2 ], [ %i.ek, %middle.block36 ]
  br label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %.lr.ph.i.2.preheader, %.lr.ph.i.2
  %indvars.iv42.i.2 = phi i64 [ %indvars.iv.next43.i.2, %.lr.ph.i.2 ], [ %indvars.iv42.i.2.ph, %.lr.ph.i.2.preheader ] ; 3 uses
  %gep.i.2 = getelementptr inbounds nuw [2 x i8], ptr %invariant.gep.i.2, i64 %indvars.iv42.i.2 ; 2 uses
  %i.fp = load i16, ptr %gep.i.2, align 2, !tbaa !141
  %i.fq = zext i16 %i.fp to i32
  %i.fr = mul nuw i32 %i.fq, %i.ej                ; 2 uses
  %i.fs = zext i32 %i.fr to i64
  %i.ft = mul nuw nsw i64 %i.fs, 5039
  %i.fu = lshr i64 %i.ft, 24
  %i.fv = trunc nuw nsw i64 %i.fu to i32
  %.neg.i.i.2 = mul i32 %i.fv, 62207
  %i.fw = add i32 %.neg.i.i.2, %i.fr
  %i.fx = trunc i32 %i.fw to i16                  ; 2 uses
  %i.fy = add i16 %i.fx, -3329                    ; 2 uses
  %isneg.i.i.i.2 = icmp slt i16 %i.fy, 0
  %i.fz = select i1 %isneg.i.i.i.2, i16 %i.fx, i16 0
  %i.ga = tail call i16 @llvm.smax.i16(i16 %i.fy, i16 0)
  %i.gb = or i16 %i.fz, %i.ga                     ; 2 uses
  %i.gc = getelementptr inbounds nuw [2 x i8], ptr %i.eb, i64 %indvars.iv42.i.2 ; 2 uses
  %i.gd = load i16, ptr %i.gc, align 2, !tbaa !141 ; 2 uses
  %i.ge = add i16 %i.gb, %i.gd                    ; 2 uses
  %i.gf = add i16 %i.ge, -3329                    ; 2 uses
  %isneg.i.i.2 = icmp slt i16 %i.gf, 0
  %i.gg = select i1 %isneg.i.i.2, i16 %i.ge, i16 0
  %i.gh = tail call i16 @llvm.smax.i16(i16 %i.gf, i16 0)
  %i.gi = or i16 %i.gg, %i.gh
  store i16 %i.gi, ptr %i.gc, align 2, !tbaa !141
  %i.gj = sub i16 %i.gd, %i.gb                    ; 3 uses
  %i.gk = add i16 %i.gj, 3329
  %isneg.i33.i.2 = icmp slt i16 %i.gj, 0
  %i.gl = select i1 %isneg.i33.i.2, i16 %i.gk, i16 0
  %i.gm = tail call i16 @llvm.smax.i16(i16 %i.gj, i16 0)
  %i.gn = or i16 %i.gl, %i.gm
  store i16 %i.gn, ptr %gep.i.2, align 2, !tbaa !141
  %indvars.iv.next43.i.2 = add nuw nsw i64 %indvars.iv42.i.2, 1 ; 2 uses
  %exitcond.2.not = icmp eq i64 %indvars.iv.next43.i.2, %indvars.iv.2
  br i1 %exitcond.2.not, label %._crit_edge.i.loopexit.2, label %.lr.ph.i.2, !llvm.loop !1658

._crit_edge.i.loopexit.2:                         ; preds = %.lr.ph.i.2, %middle.block36
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, %i.ef
  %indvars.iv.next45.i.2 = add nuw nsw i64 %indvars.iv44.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next45.i.2, %i.eh
  %indvars.iv.next.2 = add nuw nsw i64 %indvars.iv.2, %i.ef
  br i1 %exitcond.not.i.2, label %._crit_edge39.i.2, label %.lr.ph.i.preheader.2, !llvm.loop !66

._crit_edge39.i.2:                                ; preds = %._crit_edge.i.loopexit.2, %.lr.ph38.i.2, %bb.b
  %i.go = shl i32 %.02940.i.2, 1                  ; 2 uses
  %i.gp = icmp slt i32 %i.go, 128
  br i1 %i.gp, label %bb.b, label %_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.2, !llvm.loop !65

_ZN5mlkem12_GLOBAL__N_110scalar_nttEPNS0_6scalarE.exit.2: ; preds = %._crit_edge39.i.2
  ret void
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mlkem12_GLOBAL__N_152scalar_centered_binomial_distribution_eta_2_with_prfEPNS0_6scalarEPKh(ptr nofree noundef writeonly captures(none) initializes((0, 508)) %0, ptr nofree noundef nonnull readonly captures(none) %1) unnamed_addr #2 {
vector.ph:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 8 uses
  %i.a = alloca [128 x i8], align 16              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(224) %i.b, i8 0, i64 224, i1 false)
  store i32 3, ptr %2, align 8, !tbaa !322
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !323
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 208
  store i64 136, ptr %i.d, align 8, !tbaa !324
  call void @BORINGSSL_keccak_absorb(ptr noundef nonnull %2, ptr noundef nonnull readonly %1, i64 noundef 33)
  call void @BORINGSSL_keccak_squeeze(ptr noundef nonnull %2, ptr noundef nonnull %i.a, i64 noundef 128)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 %index
  %wide.load = load <4 x i8>, ptr %i.e, align 4, !tbaa !82 ; 2 uses
  %i.f = zext <4 x i8> %wide.load to <4 x i32>    ; 4 uses
  %i.g = and <4 x i32> %i.f, splat (i32 1)
  %i.h = lshr <4 x i32> %i.f, splat (i32 1)
  %i.i = and <4 x i32> %i.h, splat (i32 1)
  %i.j = shl <4 x i32> %i.f, splat (i32 29)
  %i.k = ashr <4 x i32> %i.j, splat (i32 31)
  %i.l = shl <4 x i32> %i.f, splat (i32 28)
  %i.m = ashr <4 x i32> %i.l, splat (i32 31)
  %i.n = add nuw nsw <4 x i32> %i.i, %i.g
  %i.o = add nsw <4 x i32> %i.n, %i.m
  %i.p = add nsw <4 x i32> %i.o, %i.k             ; 3 uses
  %i.q = add nsw <4 x i32> %i.p, splat (i32 3329)
  %i.r = and <4 x i32> %i.p, splat (i32 32768)
  %i.s = icmp eq <4 x i32> %i.r, zeroinitializer
  %i.t = select <4 x i1> %i.s, <4 x i32> %i.p, <4 x i32> %i.q
  %i.u = trunc nsw <4 x i32> %i.t to <4 x i16>
  %.idx = shl nuw i64 %index, 2
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 %.idx
  %i.w = lshr <4 x i8> %wide.load, splat (i8 4)
  %i.x = zext nneg <4 x i8> %i.w to <4 x i16>     ; 4 uses
  %i.y = and <4 x i16> %i.x, splat (i16 1)
  %i.z = lshr <4 x i16> %i.x, splat (i16 1)
  %i.aa = and <4 x i16> %i.z, splat (i16 1)
  %i.ab = shl <4 x i16> %i.x, splat (i16 13)
  %i.ac = ashr <4 x i16> %i.ab, splat (i16 15)
  %i.ad = lshr <4 x i16> %i.x, splat (i16 3)
  %i.ae = sub nsw <4 x i16> %i.y, %i.ad
  %i.af = add nsw <4 x i16> %i.ae, %i.aa
  %i.ag = add nsw <4 x i16> %i.af, %i.ac          ; 3 uses
  %i.ah = add nsw <4 x i16> %i.ag, splat (i16 3329)
  %i.ai = icmp slt <4 x i16> %i.ag, zeroinitializer
  %i.aj = select <4 x i1> %i.ai, <4 x i16> %i.ah, <4 x i16> zeroinitializer
  %i.ak = tail call <4 x i16> @llvm.smax.v4i16(<4 x i16> %i.ag, <4 x i16> zeroinitializer)
  %i.al = or <4 x i16> %i.aj, %i.ak
  %interleaved.vec = shufflevector <4 x i16> %i.u, <4 x i16> %i.al, <8 x i32> <i32 0, i32 4, i32 1, i32 5, i32 2, i32 6, i32 3, i32 7>
  store <8 x i16> %interleaved.vec, ptr %i.v, align 2, !tbaa !141
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, 128
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !1659

middle.block:                                     ; preds = %vector.body
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  ret void
}

declare void @CRYPTO_sysrand_for_seed(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define internal void @_ZL20g_small_factors_initv() #16 {
bb.a:
  store ptr @_ZL18kSmallFactorsLimbs, ptr @_ZL23g_small_factors_storage, align 8, !tbaa !114
  store <4 x i32> <i32 17, i32 17, i32 0, i32 2>, ptr getelementptr inbounds nuw (i8, ptr @_ZL23g_small_factors_storage, i64 8), align 8, !tbaa !84
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL17ensure_fixed_copyPP9bignum_stPKS_i(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address) %1, i32 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %.split

bb.b:                                             ; preds = %bb.a
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %.split, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 12 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.split, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20 ; 5 uses
  store i32 1, ptr %i.e, align 4, !tbaa !117
  %i.f = tail call ptr @BN_copy(ptr noundef nonnull %i.c, ptr noundef nonnull readonly %1)
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %bb.e, label %BN_dup.exit

bb.e:                                             ; preds = %bb.d
  %i.g = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.h = and i32 %i.g, 2
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr %i.c, align 8, !tbaa !114
  tail call void @OPENSSL_free(ptr noundef %i.j) #36
  %.pre.i.i = load i32, ptr %i.e, align 4, !tbaa !117
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = phi i32 [ %.pre.i.i, %bb.f ], [ %i.g, %bb.e ]
  %i.l = and i32 %i.k, 1
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #36
  br label %.split

bb.i:                                             ; preds = %bb.g
  store ptr null, ptr %i.c, align 8, !tbaa !114
  br label %.split

BN_dup.exit:                                      ; preds = %bb.d
  %i.m = sext i32 %2 to i64
  %i.n = tail call i32 @bn_resize_words(ptr noundef nonnull %i.c, i64 noundef %i.m)
  %.not11 = icmp eq i32 %i.n, 0
  br i1 %.not11, label %.split9, label %bb.n

.split9:                                          ; preds = %BN_dup.exit
  %i.o = load i32, ptr %i.e, align 4, !tbaa !117  ; 2 uses
  %i.p = and i32 %i.o, 2
  %i.q = icmp eq i32 %i.p, 0
  br i1 %i.q, label %bb.j, label %bb.k

bb.j:                                             ; preds = %.split9
  %i.r = load ptr, ptr %i.c, align 8, !tbaa !114
  tail call void @OPENSSL_free(ptr noundef %i.r) #36
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !117
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %.split9
  %i.s = phi i32 [ %.pre.i, %bb.j ], [ %i.o, %.split9 ]
  %i.t = and i32 %i.s, 1
  %.not.i12 = icmp eq i32 %i.t, 0
  br i1 %.not.i12, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @OPENSSL_free(ptr noundef nonnull %i.c) #36
  br label %.split

bb.m:                                             ; preds = %bb.k
  store ptr null, ptr %i.c, align 8, !tbaa !114
  br label %.split

bb.n:                                             ; preds = %BN_dup.exit
  store ptr %i.c, ptr %0, align 8, !tbaa !129
  br label %.split

.split:                                           ; preds = %bb.m, %bb.l, %bb.c, %bb.h, %bb.i, %bb.b, %bb.n, %bb.a
  %.1 = phi i32 [ 1, %bb.a ], [ 1, %bb.n ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.i ], [ 0, %bb.h ], [ 0, %bb.l ], [ 0, %bb.m ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare noundef ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #22

declare i32 @ERR_peek_error() local_unnamed_addr #7

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc noundef range(i32 0, 2) i32 @_ZL13ensure_bignumPP9bignum_st(ptr nofree noundef nonnull captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !129
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @OPENSSL_malloc(i64 noundef 24) #36 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %BN_new.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.c, i8 0, i64 20, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i32 1, ptr %i.e, align 4, !tbaa !117
  br label %BN_new.exit

BN_new.exit:                                      ; preds = %bb.b, %bb.c
  store ptr %i.c, ptr %0, align 8, !tbaa !129
  %i.f = icmp ne ptr %i.c, null
  %i.g = zext i1 %i.f to i32
  br label %bb.d

bb.d:                                             ; preds = %BN_new.exit, %bb.a
  %i.h = phi i32 [ %i.g, %BN_new.exit ], [ 1, %bb.a ]
  ret i32 %i.h
}
end_hunk_2
begin_hunk_3_@_ZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS0_10public_keyIXT_EEEPKhPS6_mS8_mS8_m:bb.a

.thread75:                                        ; preds = %bb.g, %bb.o, %bb.q, %bb.u, %bb.b, %bb.c, %bb.e, %bb.d, %._crit_edge.i.i, %bb.f, %._crit_edge.6.i.i, %._crit_edge.5.i.i, %._crit_edge.4.i.i, %._crit_edge.3.i.i, %._crit_edge.2.i.i, %._crit_edge.1.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ab

.loopexit:                                        ; preds = %bb.i, %bb.k, %bb.m, %bb.s, %.lr.ph66.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #36
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %.thread75, %.thread72
  %.074 = phi i32 [ %i.byg, %.thread72 ], [ 0, %.loopexit ], [ 0, %.thread75 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #36
  call void @OPENSSL_free(ptr noundef nonnull %i.e) #36
  br label %_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS1_10public_keyIXT_EEEPKhPS7_mS9_mS9_mE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit

_ZNSt10unique_ptrIZN5mldsa12_GLOBAL__N_134mldsa_verify_internal_no_self_testILi8ELi7EEEiPKNS1_10public_keyIXT_EEEPKhPS7_mS9_mS9_mE9values_stNS1_11DeleterFreeISA_EEED2Ev.exit: ; preds = %bb.a, %bb.ab
  %.171 = phi i32 [ %.074, %bb.ab ], [ 0, %bb.a ]
  ret i32 %.171
}

; Function Attrs: mustprogress nofree nounwind uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_113matrix_expandILi8ELi7EEEvPNS0_6matrixIXT_EXT0_EEEPKh(ptr nofree noundef writeonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #2 {
bb.a:
  %2 = alloca %struct.BORINGSSL_keccak_st, align 8 ; 13 uses
  %i.a = alloca [168 x i8], align 16              ; 4 uses
  %i.b = load <16 x i8>, ptr %1, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load <16 x i8>, ptr %.sroa.19.0..sroa_idx, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 208 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 216 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 224 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 41
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.c
  %indvars.iv20 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next21, %bb.c ] ; 3 uses
  %i.m = trunc i64 %indvars.iv20 to i8
  %i.n = getelementptr inbounds nuw [7168 x i8], ptr %0, i64 %indvars.iv20
  br label %BORINGSSL_keccak_absorb.exit

bb.b:                                             ; preds = %bb.c
  ret void

bb.c:                                             ; preds = %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit
  %indvars.iv.next21 = add nuw nsw i64 %indvars.iv20, 1 ; 2 uses
  %exitcond23.not = icmp eq i64 %indvars.iv.next21, 8
  br i1 %exitcond23.not, label %bb.b, label %.preheader, !llvm.loop !1710

BORINGSSL_keccak_absorb.exit:                     ; preds = %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit, %.preheader
  %indvars.iv = phi i64 [ 0, %.preheader ], [ %indvars.iv.next, %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit ] ; 3 uses
  %i.o = trunc i64 %indvars.iv to i8
  %i.p = getelementptr inbounds nuw [1024 x i8], ptr %i.n, i64 %indvars.iv
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.i, i8 0, i64 192, i1 false)
  store i32 2, ptr %2, align 8, !tbaa !322
  store i32 0, ptr %i.e, align 4, !tbaa !323
  store i64 168, ptr %i.f, align 8, !tbaa !324
  store <16 x i8> %i.b, ptr %i.d, align 8, !tbaa !82
  store <16 x i8> %i.c, ptr %i.j, align 8, !tbaa !82
  store i8 %i.o, ptr %i.k, align 8, !tbaa !82
  store i8 %i.m, ptr %i.l, align 1, !tbaa !82
  store i64 34, ptr %i.g, align 8, !tbaa !325
  br label %bb.d

bb.d:                                             ; preds = %bb.k, %BORINGSSL_keccak_absorb.exit
  %.pre30.i33 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre30.i, %bb.k ]
  %.pre31.i26 = phi i64 [ 168, %BORINGSSL_keccak_absorb.exit ], [ %.pre31.i27, %bb.k ]
  %.pre.i25 = phi i64 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %i.an, %bb.k ]
  %.01115.i = phi i32 [ 0, %BORINGSSL_keccak_absorb.exit ], [ %.2.i, %bb.k ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #36
  %i.q = load i32, ptr %i.e, align 4, !tbaa !323
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %.preheader40

bb.e:                                             ; preds = %bb.d
  %i.s = load i32, ptr %2, align 8, !tbaa !322    ; 2 uses
  %i.t = icmp ult i32 %i.s, 4
  br i1 %i.t, label %switch.lookup, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @abort() #37
  unreachable

switch.lookup:                                    ; preds = %bb.e
  %switch.shiftamt = shl nuw nsw i32 %i.s, 3
  %switch.downshift = lshr i32 522126854, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %i.u = load i64, ptr %i.g, align 8, !tbaa !325
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.u ; 2 uses
  %i.w = load i8, ptr %i.v, align 1, !tbaa !82
  %i.x = xor i8 %i.w, %switch.masked
  store i8 %i.x, ptr %i.v, align 1, !tbaa !82
  %i.y = load i64, ptr %i.f, align 8, !tbaa !324
  %i.z = getelementptr i8, ptr %i.d, i64 %i.y
  %i.aa = getelementptr i8, ptr %i.z, i64 -1      ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !82
  %i.ac = xor i8 %i.ab, -128
  store i8 %i.ac, ptr %i.aa, align 1, !tbaa !82
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i32 1, ptr %i.e, align 4, !tbaa !323
  %.pre.i.pre = load i64, ptr %i.h, align 8, !tbaa !326
  %.pre31.i.pre = load i64, ptr %i.f, align 8, !tbaa !324 ; 2 uses
  br label %.preheader40

.preheader40:                                     ; preds = %switch.lookup, %bb.d
  %.pre30.i31.ph = phi i64 [ %.pre30.i33, %bb.d ], [ %.pre31.i.pre, %switch.lookup ]
  %.ph = phi i64 [ %.pre31.i26, %bb.d ], [ %.pre31.i.pre, %switch.lookup ] ; 2 uses
  %.ph41 = phi i64 [ %.pre.i25, %bb.d ], [ %.pre.i.pre, %switch.lookup ]
  br label %bb.g

bb.g:                                             ; preds = %.preheader40, %_ZL14OPENSSL_memcpyPvPKvm.exit.i
  %.pre30.i31 = phi i64 [ %.pre30.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.pre30.i31.ph, %.preheader40 ]
  %.pre31.i29 = phi i64 [ %.pre31.i27, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader40 ]
  %i.ad = phi i64 [ %i.ak, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph, %.preheader40 ] ; 2 uses
  %i.ae = phi i64 [ %i.an, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %.ph41, %.preheader40 ] ; 2 uses
  %.02429.i = phi i64 [ %i.am, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ 168, %.preheader40 ] ; 2 uses
  %.02528.i = phi ptr [ %i.al, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ], [ %i.a, %.preheader40 ] ; 2 uses
  %i.af = icmp eq i64 %i.ae, %i.ad
  br i1 %i.af, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call fastcc void @_ZL8keccak_fPm(ptr noundef nonnull %i.d)
  store i64 0, ptr %i.h, align 8, !tbaa !326
  %.pre32.i = load i64, ptr %i.f, align 8, !tbaa !324 ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pre30.i = phi i64 [ %.pre32.i, %bb.h ], [ %.pre30.i31, %bb.g ] ; 4 uses
  %.pre31.i28 = phi i64 [ %.pre32.i, %bb.h ], [ %.pre31.i29, %bb.g ]
  %.pre33.i = phi i64 [ 0, %bb.h ], [ %i.ae, %bb.g ] ; 5 uses
  %i.ag = phi i64 [ %.pre32.i, %bb.h ], [ %i.ad, %bb.g ] ; 2 uses
  %i.ah = sub i64 %i.ag, %.pre33.i
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %.02429.i, i64 %i.ah) ; 4 uses
  %i.ai = icmp eq i64 %i.ag, %.pre33.i
  br i1 %i.ai, label %_ZL14OPENSSL_memcpyPvPKvm.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %.pre33.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.02528.i, ptr nonnull readonly align 1 %i.aj, i64 %spec.select.i, i1 false)
  br label %_ZL14OPENSSL_memcpyPvPKvm.exit.i

_ZL14OPENSSL_memcpyPvPKvm.exit.i:                 ; preds = %bb.j, %bb.i
  %.pre31.i27 = phi i64 [ %.pre31.i28, %bb.i ], [ %.pre30.i, %bb.j ] ; 2 uses
  %i.ak = phi i64 [ %.pre33.i, %bb.i ], [ %.pre30.i, %bb.j ]
  %i.al = getelementptr inbounds nuw i8, ptr %.02528.i, i64 %spec.select.i
  %i.am = sub nuw nsw i64 %.02429.i, %spec.select.i ; 2 uses
  %i.an = add i64 %.pre33.i, %spec.select.i       ; 3 uses
  store i64 %i.an, ptr %i.h, align 8, !tbaa !326
  %.not.i = icmp eq i64 %i.am, 0
  br i1 %.not.i, label %BORINGSSL_keccak_squeeze.exit, label %bb.g, !llvm.loop !38

bb.k:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  br i1 %i.bd, label %bb.d, label %_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit, !llvm.loop !57

BORINGSSL_keccak_squeeze.exit:                    ; preds = %_ZL14OPENSSL_memcpyPvPKvm.exit.i, %bb.m
  %.014.i = phi i64 [ %i.bb, %bb.m ], [ 0, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %.113.i = phi i32 [ %.2.i, %bb.m ], [ %.01115.i, %_ZL14OPENSSL_memcpyPvPKvm.exit.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 %.014.i ; 2 uses
  %i.ap = load i16, ptr %i.ao, align 1
  %i.aq = zext i16 %i.ap to i32
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 2
  %i.as = load i8, ptr %i.ar, align 1, !tbaa !82
  %i.at = and i8 %i.as, 127
  %i.au = zext nneg i8 %i.at to i32
  %i.av = shl nuw nsw i32 %i.au, 16
  %i.aw = or disjoint i32 %i.av, %i.aq            ; 2 uses
  %i.ax = icmp samesign ult i32 %i.aw, 8380417
  br i1 %i.ax, label %bb.l, label %bb.m

bb.l:                                             ; preds = %BORINGSSL_keccak_squeeze.exit
  %i.ay = add nsw i32 %.113.i, 1
  %i.az = sext i32 %.113.i to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %i.p, i64 %i.az
  store i32 %i.aw, ptr %i.ba, align 4, !tbaa !84
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %BORINGSSL_keccak_squeeze.exit
  %.2.i = phi i32 [ %i.ay, %bb.l ], [ %.113.i, %BORINGSSL_keccak_squeeze.exit ] ; 3 uses
  %i.bb = add nuw nsw i64 %.014.i, 3
  %i.bc = icmp samesign ult i64 %.014.i, 165
  %i.bd = icmp slt i32 %.2.i, 256                 ; 2 uses
  %i.be = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %i.be, label %BORINGSSL_keccak_squeeze.exit, label %bb.k, !llvm.loop !58

_ZN5mldsa12_GLOBAL__N_126scalar_from_keccak_vartimeEPNS0_6scalarEPKh.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #36
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 7
  br i1 %exitcond.not, label %bb.c, label %BORINGSSL_keccak_absorb.exit, !llvm.loop !1711
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_118vector_mult_scalarILi8EEEvPNS0_6vectorIXT_EEEPKS3_PKNS0_6scalarE(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.e = load i32, ptr %i.d, align 4, !tbaa !84
  %i.f = zext i32 %i.e to i64
  %i.g = mul nuw i64 %i.f, %i.c                   ; 2 uses
  %i.h = mul i64 %i.g, 4236238847
  %i.i = and i64 %i.h, 4294967295
  %i.j = mul nuw nsw i64 %i.i, 8380417
  %i.k = add i64 %i.j, %i.g
  %i.l = lshr i64 %i.k, 32                        ; 3 uses
  %i.m = add nsw i64 %i.l, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.m, 63
  %i.n = add nuw nsw i64 %i.l, 4286586879
  %i.o = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.p = and i64 %i.l, %i.o
  %i.q = xor i64 %i.o, -1
  %i.r = and i64 %i.n, %i.q
  %i.s = or disjoint i64 %i.r, %i.p
  %i.t = trunc i64 %i.s to i32
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.t, ptr %i.u, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv.i.1
  %i.y = load i32, ptr %i.x, align 4, !tbaa !84
  %i.z = zext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.1
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !84
  %i.ac = zext i32 %i.ab to i64
  %i.ad = mul nuw i64 %i.ac, %i.z                 ; 2 uses
  %i.ae = mul i64 %i.ad, 4236238847
  %i.af = and i64 %i.ae, 4294967295
  %i.ag = mul nuw nsw i64 %i.af, 8380417
  %i.ah = add i64 %i.ag, %i.ad
  %i.ai = lshr i64 %i.ah, 32                      ; 3 uses
  %i.aj = add nsw i64 %i.ai, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.aj, 63
  %i.ak = add nuw nsw i64 %i.ai, 4286586879
  %i.al = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.am = and i64 %i.ai, %i.al
  %i.an = xor i64 %i.al, -1
  %i.ao = and i64 %i.ak, %i.an
  %i.ap = or disjoint i64 %i.ao, %i.am
  %i.aq = trunc i64 %i.ap to i32
  %i.ar = getelementptr inbounds nuw [4 x i8], ptr %i.v, i64 %indvars.iv.i.1
  store i32 %i.aq, ptr %i.ar, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.au = getelementptr inbounds nuw [4 x i8], ptr %i.at, i64 %indvars.iv.i.2
  %i.av = load i32, ptr %i.au, align 4, !tbaa !84
  %i.aw = zext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.2
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !84
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul nuw i64 %i.az, %i.aw                ; 2 uses
  %i.bb = mul i64 %i.ba, 4236238847
  %i.bc = and i64 %i.bb, 4294967295
  %i.bd = mul nuw nsw i64 %i.bc, 8380417
  %i.be = add i64 %i.bd, %i.ba
  %i.bf = lshr i64 %i.be, 32                      ; 3 uses
  %i.bg = add nsw i64 %i.bf, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.bg, 63
  %i.bh = add nuw nsw i64 %i.bf, 4286586879
  %i.bi = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.bj = and i64 %i.bf, %i.bi
  %i.bk = xor i64 %i.bi, -1
  %i.bl = and i64 %i.bh, %i.bk
  %i.bm = or disjoint i64 %i.bl, %i.bj
  %i.bn = trunc i64 %i.bm to i32
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv.i.2
  store i32 %i.bn, ptr %i.bo, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.bq, i64 %indvars.iv.i.3
  %i.bs = load i32, ptr %i.br, align 4, !tbaa !84
  %i.bt = zext i32 %i.bs to i64
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.3
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !84
  %i.bw = zext i32 %i.bv to i64
  %i.bx = mul nuw i64 %i.bw, %i.bt                ; 2 uses
  %i.by = mul i64 %i.bx, 4236238847
  %i.bz = and i64 %i.by, 4294967295
  %i.ca = mul nuw nsw i64 %i.bz, 8380417
  %i.cb = add i64 %i.ca, %i.bx
  %i.cc = lshr i64 %i.cb, 32                      ; 3 uses
  %i.cd = add nsw i64 %i.cc, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.cd, 63
  %i.ce = add nuw nsw i64 %i.cc, 4286586879
  %i.cf = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.cg = and i64 %i.cc, %i.cf
  %i.ch = xor i64 %i.cf, -1
  %i.ci = and i64 %i.ce, %i.ch
  %i.cj = or disjoint i64 %i.ci, %i.cg
  %i.ck = trunc i64 %i.cj to i32
  %i.cl = getelementptr inbounds nuw [4 x i8], ptr %i.bp, i64 %indvars.iv.i.3
  store i32 %i.ck, ptr %i.cl, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cn, i64 %indvars.iv.i.4
  %i.cp = load i32, ptr %i.co, align 4, !tbaa !84
  %i.cq = zext i32 %i.cp to i64
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.4
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !84
  %i.ct = zext i32 %i.cs to i64
  %i.cu = mul nuw i64 %i.ct, %i.cq                ; 2 uses
  %i.cv = mul i64 %i.cu, 4236238847
  %i.cw = and i64 %i.cv, 4294967295
  %i.cx = mul nuw nsw i64 %i.cw, 8380417
  %i.cy = add i64 %i.cx, %i.cu
  %i.cz = lshr i64 %i.cy, 32                      ; 3 uses
  %i.da = add nsw i64 %i.cz, -8380417
  %.neg.i.i.i.i.i.4 = ashr i64 %i.da, 63
  %i.db = add nuw nsw i64 %i.cz, 4286586879
  %i.dc = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.dd = and i64 %i.cz, %i.dc
  %i.de = xor i64 %i.dc, -1
  %i.df = and i64 %i.db, %i.de
  %i.dg = or disjoint i64 %i.df, %i.dd
  %i.dh = trunc i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.cm, i64 %indvars.iv.i.4
  store i32 %i.dh, ptr %i.di, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.f, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.f
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.dl = getelementptr inbounds nuw [4 x i8], ptr %i.dk, i64 %indvars.iv.i.5
  %i.dm = load i32, ptr %i.dl, align 4, !tbaa !84
  %i.dn = zext i32 %i.dm to i64
  %i.do = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.5
  %i.dp = load i32, ptr %i.do, align 4, !tbaa !84
  %i.dq = zext i32 %i.dp to i64
  %i.dr = mul nuw i64 %i.dq, %i.dn                ; 2 uses
  %i.ds = mul i64 %i.dr, 4236238847
  %i.dt = and i64 %i.ds, 4294967295
  %i.du = mul nuw nsw i64 %i.dt, 8380417
  %i.dv = add i64 %i.du, %i.dr
  %i.dw = lshr i64 %i.dv, 32                      ; 3 uses
  %i.dx = add nsw i64 %i.dw, -8380417
  %.neg.i.i.i.i.i.5 = ashr i64 %i.dx, 63
  %i.dy = add nuw nsw i64 %i.dw, 4286586879
  %i.dz = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.5) #38, !srcloc !110 ; 2 uses
  %i.ea = and i64 %i.dw, %i.dz
  %i.eb = xor i64 %i.dz, -1
  %i.ec = and i64 %i.dy, %i.eb
  %i.ed = or disjoint i64 %i.ec, %i.ea
  %i.ee = trunc i64 %i.ed to i32
  %i.ef = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.5
  store i32 %i.ee, ptr %i.ef, align 4, !tbaa !84
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.5, label %bb.g, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.5: ; preds = %bb.g
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 6144
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.5
  %indvars.iv.i.6 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.5 ], [ %indvars.iv.next.i.6, %bb.h ] ; 4 uses
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.eh, i64 %indvars.iv.i.6
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !84
  %i.ek = zext i32 %i.ej to i64
  %i.el = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.6
  %i.em = load i32, ptr %i.el, align 4, !tbaa !84
  %i.en = zext i32 %i.em to i64
  %i.eo = mul nuw i64 %i.en, %i.ek                ; 2 uses
  %i.ep = mul i64 %i.eo, 4236238847
  %i.eq = and i64 %i.ep, 4294967295
  %i.er = mul nuw nsw i64 %i.eq, 8380417
  %i.es = add i64 %i.er, %i.eo
  %i.et = lshr i64 %i.es, 32                      ; 3 uses
  %i.eu = add nsw i64 %i.et, -8380417
  %.neg.i.i.i.i.i.6 = ashr i64 %i.eu, 63
  %i.ev = add nuw nsw i64 %i.et, 4286586879
  %i.ew = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.6) #38, !srcloc !110 ; 2 uses
  %i.ex = and i64 %i.et, %i.ew
  %i.ey = xor i64 %i.ew, -1
  %i.ez = and i64 %i.ev, %i.ey
  %i.fa = or disjoint i64 %i.ez, %i.ex
  %i.fb = trunc i64 %i.fa to i32
  %i.fc = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %indvars.iv.i.6
  store i32 %i.fb, ptr %i.fc, align 4, !tbaa !84
  %indvars.iv.next.i.6 = add nuw nsw i64 %indvars.iv.i.6, 1 ; 2 uses
  %exitcond.not.i.6 = icmp eq i64 %indvars.iv.next.i.6, 256
  br i1 %exitcond.not.i.6, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.6, label %bb.h, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.6: ; preds = %bb.h
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 7168
  %i.fe = getelementptr inbounds nuw i8, ptr %1, i64 7168
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.6
  %indvars.iv.i.7 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.6 ], [ %indvars.iv.next.i.7, %bb.i ] ; 4 uses
  %i.ff = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %indvars.iv.i.7
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !84
  %i.fh = zext i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i.7
  %i.fj = load i32, ptr %i.fi, align 4, !tbaa !84
  %i.fk = zext i32 %i.fj to i64
  %i.fl = mul nuw i64 %i.fk, %i.fh                ; 2 uses
  %i.fm = mul i64 %i.fl, 4236238847
  %i.fn = and i64 %i.fm, 4294967295
  %i.fo = mul nuw nsw i64 %i.fn, 8380417
  %i.fp = add i64 %i.fo, %i.fl
  %i.fq = lshr i64 %i.fp, 32                      ; 3 uses
  %i.fr = add nsw i64 %i.fq, -8380417
  %.neg.i.i.i.i.i.7 = ashr i64 %i.fr, 63
  %i.fs = add nuw nsw i64 %i.fq, 4286586879
  %i.ft = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.7) #38, !srcloc !110 ; 2 uses
  %i.fu = and i64 %i.fq, %i.ft
  %i.fv = xor i64 %i.ft, -1
  %i.fw = and i64 %i.fs, %i.fv
  %i.fx = or disjoint i64 %i.fw, %i.fu
  %i.fy = trunc i64 %i.fx to i32
  %i.fz = getelementptr inbounds nuw [4 x i8], ptr %i.fd, i64 %indvars.iv.i.7
  store i32 %i.fy, ptr %i.fz, align 4, !tbaa !84
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i.7, 1 ; 2 uses
  %exitcond.not.i.7 = icmp eq i64 %indvars.iv.next.i.7, 256
  br i1 %exitcond.not.i.7, label %_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.7, label %bb.i, !llvm.loop !43

_ZN5mldsa12_GLOBAL__N_111scalar_multEPNS0_6scalarEPKS1_S4_.exit.7: ; preds = %bb.i
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_subILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = add i32 %i.b, 8380417
  %i.f = sub i32 %i.e, %i.d                       ; 2 uses
  %i.g = zext i32 %i.f to i64                     ; 2 uses
  %i.h = add nsw i64 %i.g, -8380417
  %.neg.i.i.i.i.i = ashr i64 %i.h, 63
  %i.i = add i32 %i.f, -8380417
  %i.j = zext i32 %i.i to i64
  %i.k = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.l = and i64 %i.k, %i.g
  %i.m = xor i64 %i.k, -1
  %i.n = and i64 %i.j, %i.m
  %i.o = or disjoint i64 %i.n, %i.l
  %i.p = trunc nuw i64 %i.o to i32
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.p, ptr %i.q, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.1
  %i.v = load i32, ptr %i.u, align 4, !tbaa !84
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %indvars.iv.i.1
  %i.x = load i32, ptr %i.w, align 4, !tbaa !84
  %i.y = add i32 %i.v, 8380417
  %i.z = sub i32 %i.y, %i.x                       ; 2 uses
  %i.aa = zext i32 %i.z to i64                    ; 2 uses
  %i.ab = add nsw i64 %i.aa, -8380417
  %.neg.i.i.i.i.i.1 = ashr i64 %i.ab, 63
  %i.ac = add i32 %i.z, -8380417
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.af = and i64 %i.ae, %i.aa
  %i.ag = xor i64 %i.ae, -1
  %i.ah = and i64 %i.ad, %i.ag
  %i.ai = or disjoint i64 %i.ah, %i.af
  %i.aj = trunc nuw i64 %i.ai to i32
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.1
  store i32 %i.aj, ptr %i.ak, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %indvars.iv.i.2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !84
  %i.as = add i32 %i.ap, 8380417
  %i.at = sub i32 %i.as, %i.ar                    ; 2 uses
  %i.au = zext i32 %i.at to i64                   ; 2 uses
  %i.av = add nsw i64 %i.au, -8380417
  %.neg.i.i.i.i.i.2 = ashr i64 %i.av, 63
  %i.aw = add i32 %i.at, -8380417
  %i.ax = zext i32 %i.aw to i64
  %i.ay = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.az = and i64 %i.ay, %i.au
  %i.ba = xor i64 %i.ay, -1
  %i.bb = and i64 %i.ax, %i.ba
  %i.bc = or disjoint i64 %i.bb, %i.az
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.2
  store i32 %i.bd, ptr %i.be, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %i.bg, i64 %indvars.iv.i.3
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !84
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.bh, i64 %indvars.iv.i.3
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !84
  %i.bm = add i32 %i.bj, 8380417
  %i.bn = sub i32 %i.bm, %i.bl                    ; 2 uses
  %i.bo = zext i32 %i.bn to i64                   ; 2 uses
  %i.bp = add nsw i64 %i.bo, -8380417
  %.neg.i.i.i.i.i.3 = ashr i64 %i.bp, 63
  %i.bq = add i32 %i.bn, -8380417
  %i.br = zext i32 %i.bq to i64
  %i.bs = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.bt = and i64 %i.bs, %i.bo
  %i.bu = xor i64 %i.bs, -1
  %i.bv = and i64 %i.br, %i.bu
  %i.bw = or disjoint i64 %i.bv, %i.bt
  %i.bx = trunc nuw i64 %i.bw to i32
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bf, i64 %indvars.iv.i.3
  store i32 %i.bx, ptr %i.by, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.cb = getelementptr inbounds nuw i8, ptr %2, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %indvars.iv.i.4
  %i.cd = load i32, ptr %i.cc, align 4, !tbaa !84
  %i.ce = getelementptr inbounds nuw [4 x i8], ptr %i.cb, i64 %indvars.iv.i.4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !84
  %i.cg = add i32 %i.cd, 8380417
  %i.ch = sub i32 %i.cg, %i.cf                    ; 2 uses
  %i.ci = zext i32 %i.ch to i64                   ; 2 uses
  %i.cj = add nsw i64 %i.ci, -8380417
  %.neg.i.i.i.i.i.4 = ashr i64 %i.cj, 63
  %i.ck = add i32 %i.ch, -8380417
  %i.cl = zext i32 %i.ck to i64
  %i.cm = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.cn = and i64 %i.cm, %i.ci
  %i.co = xor i64 %i.cm, -1
  %i.cp = and i64 %i.cl, %i.co
  %i.cq = or disjoint i64 %i.cp, %i.cn
  %i.cr = trunc nuw i64 %i.cq to i32
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.bz, i64 %indvars.iv.i.4
  store i32 %i.cr, ptr %i.cs, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.f, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.f
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 5120
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cu, i64 %indvars.iv.i.5
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !84
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %indvars.iv.i.5
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !84
  %i.da = add i32 %i.cx, 8380417
  %i.db = sub i32 %i.da, %i.cz                    ; 2 uses
  %i.dc = zext i32 %i.db to i64                   ; 2 uses
  %i.dd = add nsw i64 %i.dc, -8380417
  %.neg.i.i.i.i.i.5 = ashr i64 %i.dd, 63
  %i.de = add i32 %i.db, -8380417
  %i.df = zext i32 %i.de to i64
  %i.dg = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.i.5) #38, !srcloc !110 ; 2 uses
  %i.dh = and i64 %i.dg, %i.dc
  %i.di = xor i64 %i.dg, -1
  %i.dj = and i64 %i.df, %i.di
  %i.dk = or disjoint i64 %i.dj, %i.dh
  %i.dl = trunc nuw i64 %i.dk to i32
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.ct, i64 %indvars.iv.i.5
  store i32 %i.dl, ptr %i.dm, align 4, !tbaa !84
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.5, label %bb.g, !llvm.loop !62

_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.5: ; preds = %bb.g
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 6144
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.5
  %indvars.iv.i.6 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_subEPNS0_6scalarEPKS1_S4_.exit.5 ], [ %indvars.iv.next.i.6, %bb.h ] ; 4 uses
  %i.dq = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %indvars.iv.i.6
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !84
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.dp, i64 %indvars.iv.i.6
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !84
  %i.du = add i32 %i.dr, 8380417
  %i.dv = sub i32 %i.du, %i.dt                    ; 2 uses
  %i.dw = zext i32 %i.dv to i64                   ; 2 uses
  %i.dx = add nsw i64 %i.dw, -8380417
  %.neg.i.i.i.i.i.6 = ashr i64 %i.dx, 63
end_hunk_3
begin_hunk_4_@_ZN5mldsa12_GLOBAL__N_113vector_encodeILi8EEEvPhPKNS0_6vectorIXT_EEEi:bb.a
  %i.of = trunc i32 %i.oe to i8
  %i.og = getelementptr inbounds nuw i8, ptr %i.no, i64 4
  store i8 %i.of, ptr %i.og, align 1, !tbaa !82
  %indvars.iv.next.i18.3 = add nuw nsw i64 %indvars.iv.i16.3, 1 ; 2 uses
  %exitcond.not.i19.3 = icmp eq i64 %indvars.iv.next.i18.3, 64
  br i1 %exitcond.not.i19.3, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.3, label %bb.e, !llvm.loop !41

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.3: ; preds = %bb.e
  %i.oh = shl nuw nsw i64 %i.s, 2
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %1, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.3
  %indvars.iv.i16.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.3 ], [ %indvars.iv.next.i18.4, %bb.f ] ; 3 uses
  %.idx.i17.4 = shl nuw nsw i64 %indvars.iv.i16.4, 4
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 %.idx.i17.4 ; 4 uses
  %i.ol = load i32, ptr %i.ok, align 4, !tbaa !84 ; 2 uses
  %i.om = getelementptr inbounds nuw i8, ptr %i.ok, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !84 ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %i.ok, i64 8
  %i.op = load i32, ptr %i.oo, align 4, !tbaa !84 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %i.ok, i64 12
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !84 ; 2 uses
  %i.os = trunc i32 %i.ol to i8
  %i.ot = mul nuw nsw i64 %indvars.iv.i16.4, 5
  %i.ou = getelementptr inbounds nuw i8, ptr %i.oi, i64 %i.ot ; 5 uses
  store i8 %i.os, ptr %i.ou, align 1, !tbaa !82
  %i.ov = lshr i32 %i.ol, 8
  %i.ow = shl i32 %i.on, 2
  %i.ox = or i32 %i.ow, %i.ov
  %i.oy = trunc i32 %i.ox to i8
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ou, i64 1
  store i8 %i.oy, ptr %i.oz, align 1, !tbaa !82
  %i.pa = lshr i32 %i.on, 6
  %i.pb = shl i32 %i.op, 4
  %i.pc = or i32 %i.pb, %i.pa
  %i.pd = trunc i32 %i.pc to i8
  %i.pe = getelementptr inbounds nuw i8, ptr %i.ou, i64 2
  store i8 %i.pd, ptr %i.pe, align 1, !tbaa !82
  %i.pf = lshr i32 %i.op, 4
  %i.pg = shl i32 %i.or, 6
  %i.ph = or i32 %i.pg, %i.pf
  %i.pi = trunc i32 %i.ph to i8
  %i.pj = getelementptr inbounds nuw i8, ptr %i.ou, i64 3
  store i8 %i.pi, ptr %i.pj, align 1, !tbaa !82
  %i.pk = lshr i32 %i.or, 2
  %i.pl = trunc i32 %i.pk to i8
  %i.pm = getelementptr inbounds nuw i8, ptr %i.ou, i64 4
  store i8 %i.pl, ptr %i.pm, align 1, !tbaa !82
  %indvars.iv.next.i18.4 = add nuw nsw i64 %indvars.iv.i16.4, 1 ; 2 uses
  %exitcond.not.i19.4 = icmp eq i64 %indvars.iv.next.i18.4, 64
  br i1 %exitcond.not.i19.4, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.4, label %bb.f, !llvm.loop !41

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.4: ; preds = %bb.f
  %i.pn = mul nuw nsw i64 %i.s, 5
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 %i.pn
  %i.pp = getelementptr inbounds nuw i8, ptr %1, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.4
  %indvars.iv.i16.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.4 ], [ %indvars.iv.next.i18.5, %bb.g ] ; 3 uses
  %.idx.i17.5 = shl nuw nsw i64 %indvars.iv.i16.5, 4
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 %.idx.i17.5 ; 4 uses
  %i.pr = load i32, ptr %i.pq, align 4, !tbaa !84 ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %i.pq, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !84 ; 2 uses
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pq, i64 8
  %i.pv = load i32, ptr %i.pu, align 4, !tbaa !84 ; 2 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pq, i64 12
  %i.px = load i32, ptr %i.pw, align 4, !tbaa !84 ; 2 uses
  %i.py = trunc i32 %i.pr to i8
  %i.pz = mul nuw nsw i64 %indvars.iv.i16.5, 5
  %i.qa = getelementptr inbounds nuw i8, ptr %i.po, i64 %i.pz ; 5 uses
  store i8 %i.py, ptr %i.qa, align 1, !tbaa !82
  %i.qb = lshr i32 %i.pr, 8
  %i.qc = shl i32 %i.pt, 2
  %i.qd = or i32 %i.qc, %i.qb
  %i.qe = trunc i32 %i.qd to i8
  %i.qf = getelementptr inbounds nuw i8, ptr %i.qa, i64 1
  store i8 %i.qe, ptr %i.qf, align 1, !tbaa !82
  %i.qg = lshr i32 %i.pt, 6
  %i.qh = shl i32 %i.pv, 4
  %i.qi = or i32 %i.qh, %i.qg
  %i.qj = trunc i32 %i.qi to i8
  %i.qk = getelementptr inbounds nuw i8, ptr %i.qa, i64 2
  store i8 %i.qj, ptr %i.qk, align 1, !tbaa !82
  %i.ql = lshr i32 %i.pv, 4
  %i.qm = shl i32 %i.px, 6
  %i.qn = or i32 %i.qm, %i.ql
  %i.qo = trunc i32 %i.qn to i8
  %i.qp = getelementptr inbounds nuw i8, ptr %i.qa, i64 3
  store i8 %i.qo, ptr %i.qp, align 1, !tbaa !82
  %i.qq = lshr i32 %i.px, 2
  %i.qr = trunc i32 %i.qq to i8
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qa, i64 4
  store i8 %i.qr, ptr %i.qs, align 1, !tbaa !82
  %indvars.iv.next.i18.5 = add nuw nsw i64 %indvars.iv.i16.5, 1 ; 2 uses
  %exitcond.not.i19.5 = icmp eq i64 %indvars.iv.next.i18.5, 64
  br i1 %exitcond.not.i19.5, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.5, label %bb.g, !llvm.loop !41

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.5: ; preds = %bb.g
  %i.qt = mul nuw nsw i64 %i.s, 6
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 %i.qt
  %i.qv = getelementptr inbounds nuw i8, ptr %1, i64 6144
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.5
  %indvars.iv.i16.6 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.5 ], [ %indvars.iv.next.i18.6, %bb.h ] ; 3 uses
  %.idx.i17.6 = shl nuw nsw i64 %indvars.iv.i16.6, 4
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 %.idx.i17.6 ; 4 uses
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !84 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qw, i64 4
  %i.qz = load i32, ptr %i.qy, align 4, !tbaa !84 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qw, i64 8
  %i.rb = load i32, ptr %i.ra, align 4, !tbaa !84 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.qw, i64 12
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !84 ; 2 uses
  %i.re = trunc i32 %i.qx to i8
  %i.rf = mul nuw nsw i64 %indvars.iv.i16.6, 5
  %i.rg = getelementptr inbounds nuw i8, ptr %i.qu, i64 %i.rf ; 5 uses
  store i8 %i.re, ptr %i.rg, align 1, !tbaa !82
  %i.rh = lshr i32 %i.qx, 8
  %i.ri = shl i32 %i.qz, 2
  %i.rj = or i32 %i.ri, %i.rh
  %i.rk = trunc i32 %i.rj to i8
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rg, i64 1
  store i8 %i.rk, ptr %i.rl, align 1, !tbaa !82
  %i.rm = lshr i32 %i.qz, 6
  %i.rn = shl i32 %i.rb, 4
  %i.ro = or i32 %i.rn, %i.rm
  %i.rp = trunc i32 %i.ro to i8
  %i.rq = getelementptr inbounds nuw i8, ptr %i.rg, i64 2
  store i8 %i.rp, ptr %i.rq, align 1, !tbaa !82
  %i.rr = lshr i32 %i.rb, 4
  %i.rs = shl i32 %i.rd, 6
  %i.rt = or i32 %i.rs, %i.rr
  %i.ru = trunc i32 %i.rt to i8
  %i.rv = getelementptr inbounds nuw i8, ptr %i.rg, i64 3
  store i8 %i.ru, ptr %i.rv, align 1, !tbaa !82
  %i.rw = lshr i32 %i.rd, 2
  %i.rx = trunc i32 %i.rw to i8
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rg, i64 4
  store i8 %i.rx, ptr %i.ry, align 1, !tbaa !82
  %indvars.iv.next.i18.6 = add nuw nsw i64 %indvars.iv.i16.6, 1 ; 2 uses
  %exitcond.not.i19.6 = icmp eq i64 %indvars.iv.next.i18.6, 64
  br i1 %exitcond.not.i19.6, label %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.6, label %bb.h, !llvm.loop !41

_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.6: ; preds = %bb.h
  %i.rz = mul nuw nsw i64 %i.s, 7
  %i.sa = getelementptr inbounds nuw i8, ptr %0, i64 %i.rz
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 7168
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.6
  %indvars.iv.i16.7 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_116scalar_encode_10EPhPKNS0_6scalarE.exit.6 ], [ %indvars.iv.next.i18.7, %bb.i ] ; 3 uses
  %.idx.i17.7 = shl nuw nsw i64 %indvars.iv.i16.7, 4
  %i.sc = getelementptr inbounds nuw i8, ptr %i.sb, i64 %.idx.i17.7 ; 4 uses
  %i.sd = load i32, ptr %i.sc, align 4, !tbaa !84 ; 2 uses
  %i.se = getelementptr inbounds nuw i8, ptr %i.sc, i64 4
  %i.sf = load i32, ptr %i.se, align 4, !tbaa !84 ; 2 uses
  %i.sg = getelementptr inbounds nuw i8, ptr %i.sc, i64 8
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !84 ; 2 uses
  %i.si = getelementptr inbounds nuw i8, ptr %i.sc, i64 12
  %i.sj = load i32, ptr %i.si, align 4, !tbaa !84 ; 2 uses
  %i.sk = trunc i32 %i.sd to i8
  %i.sl = mul nuw nsw i64 %indvars.iv.i16.7, 5
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sa, i64 %i.sl ; 5 uses
  store i8 %i.sk, ptr %i.sm, align 1, !tbaa !82
  %i.sn = lshr i32 %i.sd, 8
  %i.so = shl i32 %i.sf, 2
  %i.sp = or i32 %i.so, %i.sn
  %i.sq = trunc i32 %i.sp to i8
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 1
  store i8 %i.sq, ptr %i.sr, align 1, !tbaa !82
  %i.ss = lshr i32 %i.sf, 6
  %i.st = shl i32 %i.sh, 4
  %i.su = or i32 %i.st, %i.ss
  %i.sv = trunc i32 %i.su to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sm, i64 2
  store i8 %i.sv, ptr %i.sw, align 1, !tbaa !82
  %i.sx = lshr i32 %i.sh, 4
  %i.sy = shl i32 %i.sj, 6
  %i.sz = or i32 %i.sy, %i.sx
  %i.ta = trunc i32 %i.sz to i8
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sm, i64 3
  store i8 %i.ta, ptr %i.tb, align 1, !tbaa !82
  %i.tc = lshr i32 %i.sj, 2
  %i.td = trunc i32 %i.tc to i8
  %i.te = getelementptr inbounds nuw i8, ptr %i.sm, i64 4
  store i8 %i.td, ptr %i.te, align 1, !tbaa !82
  %indvars.iv.next.i18.7 = add nuw nsw i64 %indvars.iv.i16.7, 1 ; 2 uses
  %exitcond.not.i19.7 = icmp eq i64 %indvars.iv.next.i18.7, 64
  br i1 %exitcond.not.i19.7, label %.loopexit, label %bb.i, !llvm.loop !41

.loopexit:                                        ; preds = %bb.i, %vector.body171, %scalar.ph165
  ret void
}

; Function Attrs: mustprogress nounwind memory(argmem: readwrite) uwtable
define internal fastcc void @_ZN5mldsa12_GLOBAL__N_110vector_addILi8EEEvPNS0_6vectorIXT_EEEPKS3_S6_(ptr nofree noundef writeonly captures(none) initializes((0, 1024)) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #18 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %indvars.iv.i = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.i, %bb.b ] ; 4 uses
  %i.a = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.i
  %i.b = load i32, ptr %i.a, align 4, !tbaa !84
  %i.c = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv.i
  %i.d = load i32, ptr %i.c, align 4, !tbaa !84
  %i.e = add i32 %i.d, %i.b                       ; 2 uses
  %i.f = zext i32 %i.e to i64                     ; 2 uses
  %i.g = add nsw i64 %i.f, -8380417
  %.neg.i.i.i.i = ashr i64 %i.g, 63
  %i.h = add i32 %i.e, -8380417
  %i.i = zext i32 %i.h to i64
  %i.j = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i) #38, !srcloc !110 ; 2 uses
  %i.k = and i64 %i.j, %i.f
  %i.l = xor i64 %i.j, -1
  %i.m = and i64 %i.i, %i.l
  %i.n = or disjoint i64 %i.m, %i.k
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.i
  store i32 %i.o, ptr %i.p, align 4, !tbaa !84
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, 256
  br i1 %exitcond.not.i, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit, label %bb.b, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit: ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1024
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 1024
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 1024
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit
  %indvars.iv.i.1 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit ], [ %indvars.iv.next.i.1, %bb.c ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.i.1
  %i.u = load i32, ptr %i.t, align 4, !tbaa !84
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.s, i64 %indvars.iv.i.1
  %i.w = load i32, ptr %i.v, align 4, !tbaa !84
  %i.x = add i32 %i.w, %i.u                       ; 2 uses
  %i.y = zext i32 %i.x to i64                     ; 2 uses
  %i.z = add nsw i64 %i.y, -8380417
  %.neg.i.i.i.i.1 = ashr i64 %i.z, 63
  %i.aa = add i32 %i.x, -8380417
  %i.ab = zext i32 %i.aa to i64
  %i.ac = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.1) #38, !srcloc !110 ; 2 uses
  %i.ad = and i64 %i.ac, %i.y
  %i.ae = xor i64 %i.ac, -1
  %i.af = and i64 %i.ab, %i.ae
  %i.ag = or disjoint i64 %i.af, %i.ad
  %i.ah = trunc nuw i64 %i.ag to i32
  %i.ai = getelementptr inbounds nuw [4 x i8], ptr %i.q, i64 %indvars.iv.i.1
  store i32 %i.ah, ptr %i.ai, align 4, !tbaa !84
  %indvars.iv.next.i.1 = add nuw nsw i64 %indvars.iv.i.1, 1 ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %indvars.iv.next.i.1, 256
  br i1 %exitcond.not.i.1, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1, label %bb.c, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1: ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 2048
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 2048
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 2048
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1
  %indvars.iv.i.2 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.1 ], [ %indvars.iv.next.i.2, %bb.d ] ; 4 uses
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ak, i64 %indvars.iv.i.2
  %i.an = load i32, ptr %i.am, align 4, !tbaa !84
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %indvars.iv.i.2
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !84
  %i.aq = add i32 %i.ap, %i.an                    ; 2 uses
  %i.ar = zext i32 %i.aq to i64                   ; 2 uses
  %i.as = add nsw i64 %i.ar, -8380417
  %.neg.i.i.i.i.2 = ashr i64 %i.as, 63
  %i.at = add i32 %i.aq, -8380417
  %i.au = zext i32 %i.at to i64
  %i.av = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.2) #38, !srcloc !110 ; 2 uses
  %i.aw = and i64 %i.av, %i.ar
  %i.ax = xor i64 %i.av, -1
  %i.ay = and i64 %i.au, %i.ax
  %i.az = or disjoint i64 %i.ay, %i.aw
  %i.ba = trunc nuw i64 %i.az to i32
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %indvars.iv.i.2
  store i32 %i.ba, ptr %i.bb, align 4, !tbaa !84
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %exitcond.not.i.2 = icmp eq i64 %indvars.iv.next.i.2, 256
  br i1 %exitcond.not.i.2, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2, label %bb.d, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2: ; preds = %bb.d
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 3072
  %i.be = getelementptr inbounds nuw i8, ptr %2, i64 3072
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2
  %indvars.iv.i.3 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.2 ], [ %indvars.iv.next.i.3, %bb.e ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %indvars.iv.i.3
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !84
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.be, i64 %indvars.iv.i.3
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !84
  %i.bj = add i32 %i.bi, %i.bg                    ; 2 uses
  %i.bk = zext i32 %i.bj to i64                   ; 2 uses
  %i.bl = add nsw i64 %i.bk, -8380417
  %.neg.i.i.i.i.3 = ashr i64 %i.bl, 63
  %i.bm = add i32 %i.bj, -8380417
  %i.bn = zext i32 %i.bm to i64
  %i.bo = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.3) #38, !srcloc !110 ; 2 uses
  %i.bp = and i64 %i.bo, %i.bk
  %i.bq = xor i64 %i.bo, -1
  %i.br = and i64 %i.bn, %i.bq
  %i.bs = or disjoint i64 %i.br, %i.bp
  %i.bt = trunc nuw i64 %i.bs to i32
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.bc, i64 %indvars.iv.i.3
  store i32 %i.bt, ptr %i.bu, align 4, !tbaa !84
  %indvars.iv.next.i.3 = add nuw nsw i64 %indvars.iv.i.3, 1 ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %indvars.iv.next.i.3, 256
  br i1 %exitcond.not.i.3, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3, label %bb.e, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3: ; preds = %bb.e
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 4096
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 4096
  %i.bx = getelementptr inbounds nuw i8, ptr %2, i64 4096
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3
  %indvars.iv.i.4 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.3 ], [ %indvars.iv.next.i.4, %bb.f ] ; 4 uses
  %i.by = getelementptr inbounds nuw [4 x i8], ptr %i.bw, i64 %indvars.iv.i.4
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !84
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %indvars.iv.i.4
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !84
  %i.cc = add i32 %i.cb, %i.bz                    ; 2 uses
  %i.cd = zext i32 %i.cc to i64                   ; 2 uses
  %i.ce = add nsw i64 %i.cd, -8380417
  %.neg.i.i.i.i.4 = ashr i64 %i.ce, 63
  %i.cf = add i32 %i.cc, -8380417
  %i.cg = zext i32 %i.cf to i64
  %i.ch = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.4) #38, !srcloc !110 ; 2 uses
  %i.ci = and i64 %i.ch, %i.cd
  %i.cj = xor i64 %i.ch, -1
  %i.ck = and i64 %i.cg, %i.cj
  %i.cl = or disjoint i64 %i.ck, %i.ci
  %i.cm = trunc nuw i64 %i.cl to i32
  %i.cn = getelementptr inbounds nuw [4 x i8], ptr %i.bv, i64 %indvars.iv.i.4
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !84
  %indvars.iv.next.i.4 = add nuw nsw i64 %indvars.iv.i.4, 1 ; 2 uses
  %exitcond.not.i.4 = icmp eq i64 %indvars.iv.next.i.4, 256
  br i1 %exitcond.not.i.4, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4, label %bb.f, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4: ; preds = %bb.f
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 5120
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 5120
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 5120
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4
  %indvars.iv.i.5 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.4 ], [ %indvars.iv.next.i.5, %bb.g ] ; 4 uses
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.cp, i64 %indvars.iv.i.5
  %i.cs = load i32, ptr %i.cr, align 4, !tbaa !84
  %i.ct = getelementptr inbounds nuw [4 x i8], ptr %i.cq, i64 %indvars.iv.i.5
  %i.cu = load i32, ptr %i.ct, align 4, !tbaa !84
  %i.cv = add i32 %i.cu, %i.cs                    ; 2 uses
  %i.cw = zext i32 %i.cv to i64                   ; 2 uses
  %i.cx = add nsw i64 %i.cw, -8380417
  %.neg.i.i.i.i.5 = ashr i64 %i.cx, 63
  %i.cy = add i32 %i.cv, -8380417
  %i.cz = zext i32 %i.cy to i64
  %i.da = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.5) #38, !srcloc !110 ; 2 uses
  %i.db = and i64 %i.da, %i.cw
  %i.dc = xor i64 %i.da, -1
  %i.dd = and i64 %i.cz, %i.dc
  %i.de = or disjoint i64 %i.dd, %i.db
  %i.df = trunc nuw i64 %i.de to i32
  %i.dg = getelementptr inbounds nuw [4 x i8], ptr %i.co, i64 %indvars.iv.i.5
  store i32 %i.df, ptr %i.dg, align 4, !tbaa !84
  %indvars.iv.next.i.5 = add nuw nsw i64 %indvars.iv.i.5, 1 ; 2 uses
  %exitcond.not.i.5 = icmp eq i64 %indvars.iv.next.i.5, 256
  br i1 %exitcond.not.i.5, label %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.5, label %bb.g, !llvm.loop !44

_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.5: ; preds = %bb.g
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 6144
  %i.di = getelementptr inbounds nuw i8, ptr %1, i64 6144
  %i.dj = getelementptr inbounds nuw i8, ptr %2, i64 6144
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.5
  %indvars.iv.i.6 = phi i64 [ 0, %_ZN5mldsa12_GLOBAL__N_110scalar_addEPNS0_6scalarEPKS1_S4_.exit.5 ], [ %indvars.iv.next.i.6, %bb.h ] ; 4 uses
  %i.dk = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %indvars.iv.i.6
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !84
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.dj, i64 %indvars.iv.i.6
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !84
  %i.do = add i32 %i.dn, %i.dl                    ; 2 uses
  %i.dp = zext i32 %i.do to i64                   ; 2 uses
  %i.dq = add nsw i64 %i.dp, -8380417
  %.neg.i.i.i.i.6 = ashr i64 %i.dq, 63
  %i.dr = add i32 %i.do, -8380417
  %i.ds = zext i32 %i.dr to i64
  %i.dt = tail call noundef i64 asm "", "=r,0,~{dirflag},~{fpsr},~{flags}"(i64 range(i64 -1, 1) %.neg.i.i.i.i.6) #38, !srcloc !110 ; 2 uses
  %i.du = and i64 %i.dt, %i.dp
  %i.dv = xor i64 %i.dt, -1
  %i.dw = and i64 %i.ds, %i.dv
  %i.dx = or disjoint i64 %i.dw, %i.du
end_hunk_4
