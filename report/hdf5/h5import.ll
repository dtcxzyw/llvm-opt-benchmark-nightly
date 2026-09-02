Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hdf5/original/h5import?download=true
inline.NumInlined: 47
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 8
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 15
begin_hunk_0_@createInputDataType:bb.a

bb.fo:                                            ; preds = %.split4
  %i.qg = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.qh = trunc nuw i8 %i.qg to i1
  %i.qi = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.qj = trunc nuw i8 %i.qi to i1
  %i.qk = select i1 %i.qh, i1 true, i1 %i.qj
  br i1 %i.qk, label %bb.fq, label %bb.fp, !prof !40

bb.fp:                                            ; preds = %bb.fo
  %i.ql = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.fq

bb.fq:                                            ; preds = %bb.fo, %bb.fp
  %i.qm = load i64, ptr @H5T_NATIVE_LLONG_g, align 8, !tbaa !32
  %i.qn = tail call i64 @H5Tcopy(i64 noundef %i.qm) #20
  br label %bb.gt

bb.fr:                                            ; preds = %bb.fe, %.split4
  %i.qo = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.qp = tail call i64 @fwrite(ptr nonnull @.str.22, i64 30, i64 1, ptr %i.qo) ; 0 uses
  br label %bb.gt

bb.fs:                                            ; preds = %bb.fd, %bb.fd, %bb.fd
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.qr = load i32, ptr %i.qq, align 8, !tbaa !21
  switch i32 %i.qr, label %bb.gc [
    i32 16, label %bb.ft
    i32 32, label %bb.fw
    i32 64, label %bb.fz
  ]

bb.ft:                                            ; preds = %bb.fs
  %i.qs = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.qt = trunc nuw i8 %i.qs to i1
  %i.qu = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.qv = trunc nuw i8 %i.qu to i1
  %i.qw = select i1 %i.qt, i1 true, i1 %i.qv
  br i1 %i.qw, label %bb.fv, label %bb.fu, !prof !40

bb.fu:                                            ; preds = %bb.ft
  %i.qx = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.fv

bb.fv:                                            ; preds = %bb.ft, %bb.fu
  %i.qy = load i64, ptr @H5T_NATIVE_FLOAT16_g, align 8, !tbaa !32
  %i.qz = tail call i64 @H5Tcopy(i64 noundef %i.qy) #20
  br label %bb.gt

bb.fw:                                            ; preds = %bb.fs
  %i.ra = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.rb = trunc nuw i8 %i.ra to i1
  %i.rc = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.rd = trunc nuw i8 %i.rc to i1
  %i.re = select i1 %i.rb, i1 true, i1 %i.rd
  br i1 %i.re, label %bb.fy, label %bb.fx, !prof !40

bb.fx:                                            ; preds = %bb.fw
  %i.rf = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fw, %bb.fx
  %i.rg = load i64, ptr @H5T_NATIVE_FLOAT_g, align 8, !tbaa !32
  %i.rh = tail call i64 @H5Tcopy(i64 noundef %i.rg) #20
  br label %bb.gt

bb.fz:                                            ; preds = %bb.fs
  %i.ri = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.rj = trunc nuw i8 %i.ri to i1
  %i.rk = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.rl = trunc nuw i8 %i.rk to i1
  %i.rm = select i1 %i.rj, i1 true, i1 %i.rl
  br i1 %i.rm, label %bb.gb, label %bb.ga, !prof !40

bb.ga:                                            ; preds = %bb.fz
  %i.rn = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.gb

bb.gb:                                            ; preds = %bb.fz, %bb.ga
  %i.ro = load i64, ptr @H5T_NATIVE_DOUBLE_g, align 8, !tbaa !32
  %i.rp = tail call i64 @H5Tcopy(i64 noundef %i.ro) #20
  br label %bb.gt

bb.gc:                                            ; preds = %bb.fs
  %i.rq = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.rr = tail call i64 @fwrite(ptr nonnull @.str.22, i64 30, i64 1, ptr %i.rq) ; 0 uses
  br label %bb.gt

bb.gd:                                            ; preds = %bb.fd
  %i.rs = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.rt = tail call i64 @fwrite(ptr nonnull @.str.21, i64 31, i64 1, ptr %i.rs) ; 0 uses
  br label %bb.gt

bb.ge:                                            ; preds = %bb.fd, %bb.fd
  %i.ru = getelementptr inbounds nuw i8, ptr %0, i64 5112
  %i.rv = load i32, ptr %i.ru, align 8, !tbaa !21 ; 2 uses
  %i.rw = tail call range(i32 0, 33) i32 @llvm.ctpop.i32(i32 %i.rv)
  %i.rx = icmp eq i32 %i.rw, 1
  br i1 %i.rx, label %.split5, label %bb.gr

.split5:                                          ; preds = %bb.ge
  %i.ry = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.rv, i1 true)
  switch i32 %i.ry, label %bb.gr [
    i32 3, label %bb.gf
    i32 4, label %bb.gi
    i32 5, label %bb.gl
    i32 6, label %bb.go
  ]

bb.gf:                                            ; preds = %.split5
  %i.rz = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.sa = trunc nuw i8 %i.rz to i1
  %i.sb = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.sc = trunc nuw i8 %i.sb to i1
  %i.sd = select i1 %i.sa, i1 true, i1 %i.sc
  br i1 %i.sd, label %bb.gh, label %bb.gg, !prof !40

bb.gg:                                            ; preds = %bb.gf
  %i.se = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.gh

bb.gh:                                            ; preds = %bb.gf, %bb.gg
  %i.sf = load i64, ptr @H5T_NATIVE_UCHAR_g, align 8, !tbaa !32
  %i.sg = tail call i64 @H5Tcopy(i64 noundef %i.sf) #20
  br label %bb.gt

bb.gi:                                            ; preds = %.split5
  %i.sh = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.si = trunc nuw i8 %i.sh to i1
  %i.sj = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.sk = trunc nuw i8 %i.sj to i1
  %i.sl = select i1 %i.si, i1 true, i1 %i.sk
  br i1 %i.sl, label %bb.gk, label %bb.gj, !prof !40

bb.gj:                                            ; preds = %bb.gi
  %i.sm = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.gk

bb.gk:                                            ; preds = %bb.gi, %bb.gj
  %i.sn = load i64, ptr @H5T_NATIVE_USHORT_g, align 8, !tbaa !32
  %i.so = tail call i64 @H5Tcopy(i64 noundef %i.sn) #20
  br label %bb.gt

bb.gl:                                            ; preds = %.split5
  %i.sp = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.sq = trunc nuw i8 %i.sp to i1
  %i.sr = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.ss = trunc nuw i8 %i.sr to i1
  %i.st = select i1 %i.sq, i1 true, i1 %i.ss
  br i1 %i.st, label %bb.gn, label %bb.gm, !prof !40

bb.gm:                                            ; preds = %bb.gl
  %i.su = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.gn

bb.gn:                                            ; preds = %bb.gl, %bb.gm
  %i.sv = load i64, ptr @H5T_NATIVE_UINT_g, align 8, !tbaa !32
  %i.sw = tail call i64 @H5Tcopy(i64 noundef %i.sv) #20
  br label %bb.gt

bb.go:                                            ; preds = %.split5
  %i.sx = load i8, ptr @H5_libinit_g, align 1, !tbaa !37, !range !38, !noundef !39
  %i.sy = trunc nuw i8 %i.sx to i1
  %i.sz = load i8, ptr @H5_libterm_g, align 1, !range !38
  %i.ta = trunc nuw i8 %i.sz to i1
  %i.tb = select i1 %i.sy, i1 true, i1 %i.ta
  br i1 %i.tb, label %bb.gq, label %bb.gp, !prof !40

bb.gp:                                            ; preds = %bb.go
  %i.tc = tail call i32 @H5open() #20             ; 0 uses
  br label %bb.gq

bb.gq:                                            ; preds = %bb.go, %bb.gp
  %i.td = load i64, ptr @H5T_NATIVE_ULLONG_g, align 8, !tbaa !32
  %i.te = tail call i64 @H5Tcopy(i64 noundef %i.td) #20
  br label %bb.gt

bb.gr:                                            ; preds = %bb.ge, %.split5
  %i.tf = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.tg = tail call i64 @fwrite(ptr nonnull @.str.22, i64 30, i64 1, ptr %i.tf) ; 0 uses
  br label %bb.gt

bb.gs:                                            ; preds = %bb.fd
  %i.th = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.ti = tail call i64 @fwrite(ptr nonnull @.str.21, i64 31, i64 1, ptr %i.th) ; 0 uses
  br label %bb.gt

bb.gt:                                            ; preds = %bb.dq, %bb.dp, %bb.do, %bb.eu, %bb.ex, %bb.em, %bb.ep, %bb.ee, %bb.eh, %bb.dw, %bb.dz, %bb.be, %bb.bd, %bb.bc, %bb.cb, %bb.ce, %bb.bt, %bb.bw, %bb.bl, %bb.bo, %bb.da, %bb.dd, %bb.cv, %bb.cq, %bb.cl, %bb.l, %bb.k, %bb.j, %bb.ap, %bb.as, %bb.ah, %bb.ak, %bb.z, %bb.ac, %bb.r, %bb.u, %bb.gh, %bb.gk, %bb.gn, %bb.gq, %bb.fv, %bb.fy, %bb.gb, %bb.fh, %bb.fk, %bb.fn, %bb.fq, %bb.gs, %bb.gr, %bb.gd, %bb.gc, %bb.fr, %bb.fc, %bb.fb, %bb.fa, %bb.ez, %bb.ey, %bb.eq, %bb.ei, %bb.ea, %bb.dr, %bb.dn, %bb.dg, %bb.df, %bb.de, %bb.cw, %bb.cr, %bb.cm, %bb.cg, %bb.cf, %bb.bx, %bb.bp, %bb.bg, %bb.bf, %bb.bb, %bb.av, %bb.au, %bb.at, %bb.al, %bb.ad, %bb.v, %bb.m, %bb.i
  %.082 = phi i64 [ -1, %bb.fc ], [ -1, %bb.av ], [ -1, %bb.i ], [ -1, %bb.m ], [ -1, %bb.gr ], [ -1, %bb.au ], [ -1, %bb.v ], [ -1, %bb.ad ], [ -1, %bb.al ], [ -1, %bb.at ], [ -1, %bb.dg ], [ -1, %bb.bb ], [ -1, %bb.bf ], [ -1, %bb.bg ], [ -1, %bb.cg ], [ -1, %bb.bp ], [ -1, %bb.bx ], [ -1, %bb.cf ], [ -1, %bb.df ], [ -1, %bb.cm ], [ -1, %bb.cr ], [ -1, %bb.cw ], [ -1, %bb.de ], [ -1, %bb.fb ], [ -1, %bb.dn ], [ -1, %bb.dr ], [ -1, %bb.ez ], [ -1, %bb.ea ], [ -1, %bb.ei ], [ -1, %bb.eq ], [ -1, %bb.ey ], [ -1, %bb.fa ], [ -1, %bb.gs ], [ -1, %bb.fr ], [ -1, %bb.gc ], [ -1, %bb.gd ], [ %i.ai, %bb.j ], [ %i.ai, %bb.k ], [ %i.ai, %bb.l ], [ %i.bd, %bb.r ], [ %i.bl, %bb.u ], [ %i.bx, %bb.z ], [ %i.cf, %bb.ac ], [ %i.cr, %bb.ah ], [ %i.cz, %bb.ak ], [ %i.dl, %bb.ap ], [ %i.dt, %bb.as ], [ %i.ex, %bb.bc ], [ %i.ex, %bb.bd ], [ %i.ex, %bb.be ], [ %i.fr, %bb.bl ], [ %i.fz, %bb.bo ], [ %i.gl, %bb.bt ], [ %i.gt, %bb.bw ], [ %i.hf, %bb.cb ], [ %i.hn, %bb.ce ], [ %i.id, %bb.cl ], [ %i.ip, %bb.cq ], [ %i.jb, %bb.cv ], [ %i.jn, %bb.da ], [ %i.jv, %bb.dd ], [ %i.lh, %bb.do ], [ %i.lh, %bb.dp ], [ %i.lh, %bb.dq ], [ %i.mc, %bb.dw ], [ %i.mk, %bb.dz ], [ %i.mw, %bb.ee ], [ %i.ne, %bb.eh ], [ %i.nq, %bb.em ], [ %i.ny, %bb.ep ], [ %i.ok, %bb.eu ], [ %i.os, %bb.ex ], [ %i.pp, %bb.fh ], [ %i.px, %bb.fk ], [ %i.qf, %bb.fn ], [ %i.qn, %bb.fq ], [ %i.qz, %bb.fv ], [ %i.rh, %bb.fy ], [ %i.rp, %bb.gb ], [ %i.sg, %bb.gh ], [ %i.so, %bb.gk ], [ %i.sw, %bb.gn ], [ %i.te, %bb.gq ]
  ret i64 %.082
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i16 @swap_uint16(i16 noundef zeroext %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i16 @llvm.bswap.i16(i16 %0)
  ret i16 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local signext i16 @swap_int16(i16 noundef signext %0) local_unnamed_addr #11 {
bb.a:
  %1 = sext i16 %0 to i32                         ; 2 uses
  %2 = shl nsw i32 %1, 8
  %3 = lshr i32 %1, 8
  %4 = and i32 %3, 255
  %5 = or disjoint i32 %4, %2
  %6 = trunc i32 %5 to i16
  ret i16 %6
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @swap_uint32(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i32 @swap_int32(i32 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i32 @llvm.bswap.i32(i32 %0)
  ret i32 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @swap_int64(i64 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef i64 @swap_uint64(i64 noundef %0) local_unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @llvm.bswap.i64(i64 %0)
  ret i64 %i.a
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: mustprogress nocallback nofree nounwind willreturn
declare ptr @strtok(ptr noundef, ptr noundef readonly captures(none)) local_unnamed_addr #12

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias noundef readonly captures(none), i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #13

; Function Attrs: nounwind
declare i64 @__isoc23_strtoull(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #8

declare i32 @H5Eauto_is_v2(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eget_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eset_auto2(i64 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eget_auto1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @H5Eset_auto1(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @H5Fopen(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @H5Fcreate(ptr noundef, i32 noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @processConfigurationFile(ptr noundef nonnull %0, ptr nofree noundef nonnull initializes((5116, 5124)) %1) unnamed_addr #0 {
OutputByteOrderStrToInt.exit.thread:
  %i.a = alloca [255 x i8], align 16              ; 8 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %i.c = alloca [255 x i8], align 16              ; 6 uses
  %i.d = alloca i32, align 4                      ; 5 uses
  %i.e = alloca [255 x i8], align 16              ; 6 uses
  %i.f = alloca i64, align 8                      ; 6 uses
  %i.g = alloca [255 x i8], align 16              ; 8 uses
  %i.h = alloca [255 x i8], align 16              ; 5 uses
  %i.i = alloca i32, align 4                      ; 5 uses
  %i.j = alloca [255 x i8], align 16              ; 9 uses
  %i.k = alloca i64, align 8                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 5 uses
  %i.m = alloca [255 x i8], align 16              ; 37 uses
  %i.n = alloca [255 x i8], align 16              ; 230 uses
  %i.o = alloca i32, align 4                      ; 8 uses
  %i.p = alloca i32, align 4                      ; 4 uses
  %i.q = alloca ptr, align 8                      ; 5 uses
  %i.r = alloca [32 x i64], align 16              ; 6 uses
  %i.s = alloca ptr, align 8                      ; 9 uses
  %i.t = alloca ptr, align 8                      ; 4 uses
  %i.u = alloca ptr, align 8                      ; 9 uses
  %i.v = alloca [32 x i64], align 16              ; 10 uses
  %i.w = alloca ptr, align 8                      ; 9 uses
  %i.x = alloca ptr, align 8                      ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store volatile i32 19088743, ptr %i.p, align 4, !tbaa !15
  %.0..0..0..0. = load volatile i8, ptr %i.p, align 4, !tbaa !14
  %i.y = icmp eq i8 %.0..0..0..0., 103
  %.0468 = zext i1 %i.y to i32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 5120 ; 2 uses
  store i32 %.0468, ptr %i.z, align 8, !tbaa !24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 5116
  store i32 0, ptr %i.aa, align 4, !tbaa !45
  %i.ab = tail call noalias ptr @fopen64(ptr noundef nonnull %0, ptr noundef nonnull @.str.361) ; 75 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %validateConfigurationParameters.exit.thread845, label %bb.a

validateConfigurationParameters.exit.thread845:   ; preds = %OutputByteOrderStrToInt.exit.thread
  %i.ad = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.ae = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.ad, ptr noundef nonnull @.str.319, ptr noundef nonnull %0) #20 ; 0 uses
  br label %bb.ve

bb.a:                                             ; preds = %OutputByteOrderStrToInt.exit.thread
  %i.af = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.m) #20
  %cond = icmp eq i32 %i.af, 1
  br i1 %cond, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.ag = load i32, ptr %i.m, align 16
  %i.ah = xor i32 893797448, %i.ag
  %i.ai = getelementptr i8, ptr %i.m, i64 4
  %i.aj = load i8, ptr %i.ai, align 4
  %i.ak = zext i8 %i.aj to i32
  %i.al = or i32 %i.ah, %i.ak
  %i.am = icmp ne i32 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %.not = icmp eq i32 %i.an, 0
  br i1 %.not, label %bb.c, label %.lr.ph

bb.c:                                             ; preds = %bb.b
  store i32 1, ptr %1, align 8, !tbaa !19
  %i.ao = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.n) #20 ; 0 uses
  %i.ap = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.n) #20 ; 0 uses
  %i.aq = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.m) #20
  %i.ar = icmp eq i32 %i.aq, 1
  br i1 %i.ar, label %.lr.ph927, label %validateConfigurationParameters.exit.thread842

.lr.ph927:                                        ; preds = %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 5124 ; 6 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 5204 ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 5128 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 5208 ; 4 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 5232
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 5172
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 5168
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 5152 ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 5228
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 5160 ; 3 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 5244
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 5196 ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 5112 ; 48 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 5200 ; 45 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 5144 ; 51 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 5148 ; 30 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 5216 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 5140 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 5108 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 5212 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 5136 ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 5192 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 4
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph927, %.loopexit
  %rhsv = load i64, ptr %i.m, align 16            ; 2 uses
  %.not491 = icmp eq i64 %rhsv, 23720121924337988
  br i1 %.not491, label %bb.e, label %bb.l

bb.e:                                             ; preds = %bb.d
  %i.bp = load i32, ptr %i.bn, align 8, !tbaa !15
  %i.bq = icmp eq i32 %i.bp, 1
  br i1 %i.bq, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.br = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.bs = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.br, ptr noundef nonnull @.str.321, ptr noundef nonnull %0) #20 ; 0 uses
  br label %validateConfigurationParameters.exit.thread842

bb.g:                                             ; preds = %bb.e
  %i.bt = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.n) #20
  %.not492 = icmp eq i32 %i.bt, 1
  br i1 %.not492, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.bv = call i64 @fwrite(ptr nonnull @.str.356, i64 28, i64 1, ptr %i.bu) ; 0 uses
  br label %validateConfigurationParameters.exit.thread842

bb.i:                                             ; preds = %bb.g
  %i.bw = call fastcc i32 @parsePathInfo(ptr noundef nonnull %i.bo, ptr noundef nonnull %i.n)
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.by = load ptr, ptr @rawerrorstream, align 8, !tbaa !11
  %i.bz = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.by, ptr noundef nonnull @.str.322, ptr noundef nonnull %0) #20 ; 0 uses
  br label %validateConfigurationParameters.exit.thread842

bb.k:                                             ; preds = %bb.i
  store i32 1, ptr %i.bn, align 8, !tbaa !15
  %i.ca = call i32 (ptr, ptr, ...) @__isoc23_fscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.362, ptr noundef nonnull %i.n) #20 ; 0 uses
  br label %.loopexit
end_hunk_0
