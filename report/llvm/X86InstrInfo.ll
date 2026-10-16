Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/X86InstrInfo?download=true
inline.NumInlined: 6257
inline.NumDeleted: 2374
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 38
begin_hunk_0_@_ZNK4llvm12X86InstrInfo18setExecutionDomainERNS_12MachineInstrEj:bb.a
.lr.ph.i58.18:                                    ; preds = %.lr.ph.i58.17
  %i.cd = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 108), i64 %i.l
  %i.ce = load i16, ptr %i.cd, align 2, !tbaa !479
  %i.cf = zext i16 %i.ce to i32
  %.not15.i60.18 = icmp eq i32 %i.j, %i.cf
  br i1 %.not15.i60.18, label %.thread117, label %.lr.ph.i58.19

.lr.ph.i58.19:                                    ; preds = %.lr.ph.i58.18
  %i.cg = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 114), i64 %i.l
  %i.ch = load i16, ptr %i.cg, align 2, !tbaa !479
  %i.ci = zext i16 %i.ch to i32
  %.not15.i60.19 = icmp eq i32 %i.j, %i.ci
  br i1 %.not15.i60.19, label %.thread117, label %.lr.ph.i58.20

.lr.ph.i58.20:                                    ; preds = %.lr.ph.i58.19
  %i.cj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 120), i64 %i.l
  %i.ck = load i16, ptr %i.cj, align 2, !tbaa !479
  %i.cl = zext i16 %i.ck to i32
  %.not15.i60.20 = icmp eq i32 %i.j, %i.cl
  br i1 %.not15.i60.20, label %.thread117, label %.lr.ph.i58.21

.lr.ph.i58.21:                                    ; preds = %.lr.ph.i58.20
  %i.cm = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 126), i64 %i.l
  %i.cn = load i16, ptr %i.cm, align 2, !tbaa !479
  %i.co = zext i16 %i.cn to i32
  %.not15.i60.21 = icmp eq i32 %i.j, %i.co
  br i1 %.not15.i60.21, label %.thread117, label %.lr.ph.i58.22

.lr.ph.i58.22:                                    ; preds = %.lr.ph.i58.21
  %i.cp = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 132), i64 %i.l
  %i.cq = load i16, ptr %i.cp, align 2, !tbaa !479
  %i.cr = zext i16 %i.cq to i32
  %.not15.i60.22 = icmp eq i32 %i.j, %i.cr
  br i1 %.not15.i60.22, label %.thread117, label %.lr.ph.i58.23

.lr.ph.i58.23:                                    ; preds = %.lr.ph.i58.22
  %i.cs = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 138), i64 %i.l
  %i.ct = load i16, ptr %i.cs, align 2, !tbaa !479
  %i.cu = zext i16 %i.ct to i32
  %.not15.i60.23 = icmp eq i32 %i.j, %i.cu
  br i1 %.not15.i60.23, label %.thread117, label %.lr.ph.i58.24

.lr.ph.i58.24:                                    ; preds = %.lr.ph.i58.23
  %i.cv = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 144), i64 %i.l
  %i.cw = load i16, ptr %i.cv, align 2, !tbaa !479
  %i.cx = zext i16 %i.cw to i32
  %.not15.i60.24 = icmp eq i32 %i.j, %i.cx
  br i1 %.not15.i60.24, label %.thread117, label %.lr.ph.i58.25

.lr.ph.i58.25:                                    ; preds = %.lr.ph.i58.24
  %i.cy = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 150), i64 %i.l
  %i.cz = load i16, ptr %i.cy, align 2, !tbaa !479
  %i.da = zext i16 %i.cz to i32
  %.not15.i60.25 = icmp eq i32 %i.j, %i.da
  br i1 %.not15.i60.25, label %.thread117, label %.lr.ph.i58.26

.lr.ph.i58.26:                                    ; preds = %.lr.ph.i58.25
  %i.db = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 156), i64 %i.l
  %i.dc = load i16, ptr %i.db, align 2, !tbaa !479
  %i.dd = zext i16 %i.dc to i32
  %.not15.i60.26 = icmp eq i32 %i.j, %i.dd
  br i1 %.not15.i60.26, label %.thread117, label %.lr.ph.i58.27

.lr.ph.i58.27:                                    ; preds = %.lr.ph.i58.26
  %i.de = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 162), i64 %i.l
  %i.df = load i16, ptr %i.de, align 2, !tbaa !479
  %i.dg = zext i16 %i.df to i32
  %.not15.i60.27 = icmp eq i32 %i.j, %i.dg
  br i1 %.not15.i60.27, label %.thread117, label %.lr.ph.i58.28

.lr.ph.i58.28:                                    ; preds = %.lr.ph.i58.27
  %i.dh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 168), i64 %i.l
  %i.di = load i16, ptr %i.dh, align 2, !tbaa !479
  %i.dj = zext i16 %i.di to i32
  %.not15.i60.28 = icmp eq i32 %i.j, %i.dj
  br i1 %.not15.i60.28, label %.thread117, label %.lr.ph.i58.29

.lr.ph.i58.29:                                    ; preds = %.lr.ph.i58.28
  %i.dk = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 174), i64 %i.l
  %i.dl = load i16, ptr %i.dk, align 2, !tbaa !479
  %i.dm = zext i16 %i.dl to i32
  %.not15.i60.29 = icmp eq i32 %i.j, %i.dm
  br i1 %.not15.i60.29, label %.thread117, label %.lr.ph.i58.30

.lr.ph.i58.30:                                    ; preds = %.lr.ph.i58.29
  %i.dn = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 180), i64 %i.l
  %i.do = load i16, ptr %i.dn, align 2, !tbaa !479
  %i.dp = zext i16 %i.do to i32
  %.not15.i60.30 = icmp eq i32 %i.j, %i.dp
  br i1 %.not15.i60.30, label %.thread117, label %.lr.ph.i63.preheader

.lr.ph.i63.preheader:                             ; preds = %.lr.ph.i58.30
  %i.dq = getelementptr inbounds nuw [2 x i8], ptr @_ZL19ReplaceableInstrsFP, i64 %i.l
  %i.dr = load i16, ptr %i.dq, align 2, !tbaa !479
  %i.ds = zext i16 %i.dr to i32
  %.not15.i65 = icmp eq i32 %i.j, %i.ds
  br i1 %.not15.i65, label %.thread117, label %.lr.ph.i63.1

.lr.ph.i63.1:                                     ; preds = %.lr.ph.i63.preheader
  %i.dt = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 6), i64 %i.l
  %i.du = load i16, ptr %i.dt, align 2, !tbaa !479
  %i.dv = zext i16 %i.du to i32
  %.not15.i65.1 = icmp eq i32 %i.j, %i.dv
  br i1 %.not15.i65.1, label %.thread117, label %.lr.ph.i63.2

.lr.ph.i63.2:                                     ; preds = %.lr.ph.i63.1
  %i.dw = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 12), i64 %i.l
  %i.dx = load i16, ptr %i.dw, align 2, !tbaa !479
  %i.dy = zext i16 %i.dx to i32
  %.not15.i65.2 = icmp eq i32 %i.j, %i.dy
  br i1 %.not15.i65.2, label %.thread117, label %.lr.ph.i63.3

.lr.ph.i63.3:                                     ; preds = %.lr.ph.i63.2
  %i.dz = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 18), i64 %i.l
  %i.ea = load i16, ptr %i.dz, align 2, !tbaa !479
  %i.eb = zext i16 %i.ea to i32
  %.not15.i65.3 = icmp eq i32 %i.j, %i.eb
  br i1 %.not15.i65.3, label %.thread117, label %.lr.ph.i63.4

.lr.ph.i63.4:                                     ; preds = %.lr.ph.i63.3
  %i.ec = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 24), i64 %i.l
  %i.ed = load i16, ptr %i.ec, align 2, !tbaa !479
  %i.ee = zext i16 %i.ed to i32
  %.not15.i65.4 = icmp eq i32 %i.j, %i.ee
  br i1 %.not15.i65.4, label %.thread117, label %.lr.ph.i63.5

.lr.ph.i63.5:                                     ; preds = %.lr.ph.i63.4
  %i.ef = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 30), i64 %i.l
  %i.eg = load i16, ptr %i.ef, align 2, !tbaa !479
  %i.eh = zext i16 %i.eg to i32
  %.not15.i65.5 = icmp eq i32 %i.j, %i.eh
  br i1 %.not15.i65.5, label %.thread117, label %.lr.ph.i63.6

.lr.ph.i63.6:                                     ; preds = %.lr.ph.i63.5
  %i.ei = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 36), i64 %i.l
  %i.ej = load i16, ptr %i.ei, align 2, !tbaa !479
  %i.ek = zext i16 %i.ej to i32
  %.not15.i65.6 = icmp eq i32 %i.j, %i.ek
  br i1 %.not15.i65.6, label %.thread117, label %.lr.ph.i63.7

.lr.ph.i63.7:                                     ; preds = %.lr.ph.i63.6
  %i.el = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 42), i64 %i.l
  %i.em = load i16, ptr %i.el, align 2, !tbaa !479
  %i.en = zext i16 %i.em to i32
  %.not15.i65.7 = icmp eq i32 %i.j, %i.en
  br i1 %.not15.i65.7, label %.thread117, label %.lr.ph.i63.8

.lr.ph.i63.8:                                     ; preds = %.lr.ph.i63.7
  %i.eo = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 48), i64 %i.l
  %i.ep = load i16, ptr %i.eo, align 2, !tbaa !479
  %i.eq = zext i16 %i.ep to i32
  %.not15.i65.8 = icmp eq i32 %i.j, %i.eq
  br i1 %.not15.i65.8, label %.thread117, label %.lr.ph.i68.preheader

.lr.ph.i68.preheader:                             ; preds = %.lr.ph.i63.8
  %i.er = getelementptr inbounds nuw [2 x i8], ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 %i.l
  %i.es = load i16, ptr %i.er, align 2, !tbaa !479
  %i.et = zext i16 %i.es to i32
  %.not15.i70 = icmp eq i32 %i.j, %i.et
  br i1 %.not15.i70, label %.thread117, label %.lr.ph.i68.1

.lr.ph.i68.1:                                     ; preds = %.lr.ph.i68.preheader
  %i.eu = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 6), i64 %i.l
  %i.ev = load i16, ptr %i.eu, align 2, !tbaa !479
  %i.ew = zext i16 %i.ev to i32
  %.not15.i70.1 = icmp eq i32 %i.j, %i.ew
  br i1 %.not15.i70.1, label %.thread117, label %.lr.ph.i68.2

.lr.ph.i68.2:                                     ; preds = %.lr.ph.i68.1
  %i.ex = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 12), i64 %i.l
  %i.ey = load i16, ptr %i.ex, align 2, !tbaa !479
  %i.ez = zext i16 %i.ey to i32
  %.not15.i70.2 = icmp eq i32 %i.j, %i.ez
  br i1 %.not15.i70.2, label %.thread117, label %.lr.ph.i68.3

.lr.ph.i68.3:                                     ; preds = %.lr.ph.i68.2
  %i.fa = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 18), i64 %i.l
  %i.fb = load i16, ptr %i.fa, align 2, !tbaa !479
  %i.fc = zext i16 %i.fb to i32
  %.not15.i70.3 = icmp eq i32 %i.j, %i.fc
  br i1 %.not15.i70.3, label %.thread117, label %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit72

_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit72:        ; preds = %.lr.ph.i68.3
  %i.fd = icmp eq i32 %i.h, 3
  %i.fe = getelementptr inbounds nuw [2 x i8], ptr @_ZL23ReplaceableInstrsAVX512, i64 %i.l
  %i.ff = load i16, ptr %i.fe, align 2, !tbaa !479
  %i.fg = zext i16 %i.ff to i32
  %i.fh = icmp eq i32 %i.j, %i.fg                 ; 2 uses
  br i1 %i.fd, label %.lr.ph.split.us.i.preheader, label %.lr.ph.split.i.preheader

.lr.ph.split.i.preheader:                         ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit72
  br i1 %i.fh, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.1

.lr.ph.split.us.i.preheader:                      ; preds = %_ZL6lookupjjN4llvm8ArrayRefIA3_tEE.exit72
  %i.fi = icmp eq i32 %i.j, 13607
  %or.cond = or i1 %i.fh, %i.fi
  br i1 %or.cond, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.1

.lr.ph.split.us.i.1:                              ; preds = %.lr.ph.split.us.i.preheader
  %i.fj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 8), i64 %i.l
  %i.fk = load i16, ptr %i.fj, align 4, !tbaa !479
  %i.fl = zext i16 %i.fk to i32
  %i.fm = icmp eq i32 %i.j, %i.fl
  %i.fn = icmp eq i32 %i.j, 13609
  %or.cond165 = or i1 %i.fm, %i.fn
  br i1 %or.cond165, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.2

.lr.ph.split.us.i.2:                              ; preds = %.lr.ph.split.us.i.1
  %i.fo = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 16), i64 %i.l
  %i.fp = load i16, ptr %i.fo, align 4, !tbaa !479
  %i.fq = zext i16 %i.fp to i32
  %i.fr = icmp eq i32 %i.j, %i.fq
  %i.fs = icmp eq i32 %i.j, 13612
  %or.cond166 = or i1 %i.fr, %i.fs
  br i1 %or.cond166, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.3

.lr.ph.split.us.i.3:                              ; preds = %.lr.ph.split.us.i.2
  %i.ft = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 24), i64 %i.l
  %i.fu = load i16, ptr %i.ft, align 4, !tbaa !479
  %i.fv = zext i16 %i.fu to i32
  %i.fw = icmp eq i32 %i.j, %i.fv
  %i.fx = icmp eq i32 %i.j, 13714
  %or.cond167 = or i1 %i.fw, %i.fx
  br i1 %or.cond167, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.4

.lr.ph.split.us.i.4:                              ; preds = %.lr.ph.split.us.i.3
  %i.fy = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 32), i64 %i.l
  %i.fz = load i16, ptr %i.fy, align 4, !tbaa !479
  %i.ga = zext i16 %i.fz to i32
  %i.gb = icmp eq i32 %i.j, %i.ga
  %i.gc = icmp eq i32 %i.j, 13716
  %or.cond168 = or i1 %i.gb, %i.gc
  br i1 %or.cond168, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.5

.lr.ph.split.us.i.5:                              ; preds = %.lr.ph.split.us.i.4
  %i.gd = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 40), i64 %i.l
  %i.ge = load i16, ptr %i.gd, align 4, !tbaa !479
  %i.gf = zext i16 %i.ge to i32
  %i.gg = icmp eq i32 %i.j, %i.gf
  %i.gh = icmp eq i32 %i.j, 13618
  %or.cond169 = or i1 %i.gg, %i.gh
  br i1 %or.cond169, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.6

.lr.ph.split.us.i.6:                              ; preds = %.lr.ph.split.us.i.5
  %i.gi = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 48), i64 %i.l
  %i.gj = load i16, ptr %i.gi, align 4, !tbaa !479
  %i.gk = zext i16 %i.gj to i32
  %i.gl = icmp eq i32 %i.j, %i.gk
  %i.gm = icmp eq i32 %i.j, 13620
  %or.cond170 = or i1 %i.gl, %i.gm
  br i1 %or.cond170, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.7

.lr.ph.split.us.i.7:                              ; preds = %.lr.ph.split.us.i.6
  %i.gn = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 56), i64 %i.l
  %i.go = load i16, ptr %i.gn, align 4, !tbaa !479
  %i.gp = zext i16 %i.go to i32
  %i.gq = icmp eq i32 %i.j, %i.gp
  %i.gr = icmp eq i32 %i.j, 13623
  %or.cond171 = or i1 %i.gq, %i.gr
  br i1 %or.cond171, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.8

.lr.ph.split.us.i.8:                              ; preds = %.lr.ph.split.us.i.7
  %i.gs = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 64), i64 %i.l
  %i.gt = load i16, ptr %i.gs, align 4, !tbaa !479
  %i.gu = zext i16 %i.gt to i32
  %i.gv = icmp eq i32 %i.j, %i.gu
  %i.gw = icmp eq i32 %i.j, 13725
  %or.cond172 = or i1 %i.gv, %i.gw
  br i1 %or.cond172, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.9

.lr.ph.split.us.i.9:                              ; preds = %.lr.ph.split.us.i.8
  %i.gx = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 72), i64 %i.l
  %i.gy = load i16, ptr %i.gx, align 4, !tbaa !479
  %i.gz = zext i16 %i.gy to i32
  %i.ha = icmp eq i32 %i.j, %i.gz
  %i.hb = icmp eq i32 %i.j, 13727
  %or.cond173 = or i1 %i.ha, %i.hb
  br i1 %or.cond173, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.10

.lr.ph.split.us.i.10:                             ; preds = %.lr.ph.split.us.i.9
  %i.hc = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 80), i64 %i.l
  %i.hd = load i16, ptr %i.hc, align 4, !tbaa !479
  %i.he = zext i16 %i.hd to i32
  %i.hf = icmp eq i32 %i.j, %i.he
  %i.hg = icmp eq i32 %i.j, 13629
  %or.cond174 = or i1 %i.hf, %i.hg
  br i1 %or.cond174, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.11

.lr.ph.split.us.i.11:                             ; preds = %.lr.ph.split.us.i.10
  %i.hh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 88), i64 %i.l
  %i.hi = load i16, ptr %i.hh, align 4, !tbaa !479
  %i.hj = zext i16 %i.hi to i32
  %i.hk = icmp eq i32 %i.j, %i.hj
  %i.hl = icmp eq i32 %i.j, 13631
  %or.cond175 = or i1 %i.hk, %i.hl
  br i1 %or.cond175, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.12

.lr.ph.split.us.i.12:                             ; preds = %.lr.ph.split.us.i.11
  %i.hm = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 96), i64 %i.l
  %i.hn = load i16, ptr %i.hm, align 4, !tbaa !479
  %i.ho = zext i16 %i.hn to i32
  %i.hp = icmp eq i32 %i.j, %i.ho
  %i.hq = icmp eq i32 %i.j, 13634
  %or.cond176 = or i1 %i.hp, %i.hq
  br i1 %or.cond176, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.13

.lr.ph.split.us.i.13:                             ; preds = %.lr.ph.split.us.i.12
  %i.hr = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 104), i64 %i.l
  %i.hs = load i16, ptr %i.hr, align 4, !tbaa !479
  %i.ht = zext i16 %i.hs to i32
  %i.hu = icmp eq i32 %i.j, %i.ht
  %i.hv = icmp eq i32 %i.j, 13736
  %or.cond177 = or i1 %i.hu, %i.hv
  br i1 %or.cond177, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i.14

.lr.ph.split.us.i.14:                             ; preds = %.lr.ph.split.us.i.13
  %i.hw = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 112), i64 %i.l
  %i.hx = load i16, ptr %i.hw, align 4, !tbaa !479
  %i.hy = zext i16 %i.hx to i32
  %i.hz = icmp eq i32 %i.j, %i.hy
  %i.ia = icmp eq i32 %i.j, 13738
  %or.cond178 = or i1 %i.hz, %i.ia
  br i1 %or.cond178, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.us.i79.preheader

.lr.ph.split.i.1:                                 ; preds = %.lr.ph.split.i.preheader
  %i.ib = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 8), i64 %i.l
  %i.ic = load i16, ptr %i.ib, align 2, !tbaa !479
  %i.id = zext i16 %i.ic to i32
  %i.ie = icmp eq i32 %i.j, %i.id
  br i1 %i.ie, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.2

.lr.ph.split.i.2:                                 ; preds = %.lr.ph.split.i.1
  %i.if = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 16), i64 %i.l
  %i.ig = load i16, ptr %i.if, align 2, !tbaa !479
  %i.ih = zext i16 %i.ig to i32
  %i.ii = icmp eq i32 %i.j, %i.ih
  br i1 %i.ii, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.3

.lr.ph.split.i.3:                                 ; preds = %.lr.ph.split.i.2
  %i.ij = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 24), i64 %i.l
  %i.ik = load i16, ptr %i.ij, align 2, !tbaa !479
  %i.il = zext i16 %i.ik to i32
  %i.im = icmp eq i32 %i.j, %i.il
  br i1 %i.im, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.4

.lr.ph.split.i.4:                                 ; preds = %.lr.ph.split.i.3
  %i.in = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 32), i64 %i.l
  %i.io = load i16, ptr %i.in, align 2, !tbaa !479
  %i.ip = zext i16 %i.io to i32
  %i.iq = icmp eq i32 %i.j, %i.ip
  br i1 %i.iq, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.5

.lr.ph.split.i.5:                                 ; preds = %.lr.ph.split.i.4
  %i.ir = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 40), i64 %i.l
  %i.is = load i16, ptr %i.ir, align 2, !tbaa !479
  %i.it = zext i16 %i.is to i32
  %i.iu = icmp eq i32 %i.j, %i.it
  br i1 %i.iu, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.6

.lr.ph.split.i.6:                                 ; preds = %.lr.ph.split.i.5
  %i.iv = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 48), i64 %i.l
  %i.iw = load i16, ptr %i.iv, align 2, !tbaa !479
  %i.ix = zext i16 %i.iw to i32
  %i.iy = icmp eq i32 %i.j, %i.ix
  br i1 %i.iy, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.7

.lr.ph.split.i.7:                                 ; preds = %.lr.ph.split.i.6
  %i.iz = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 56), i64 %i.l
  %i.ja = load i16, ptr %i.iz, align 2, !tbaa !479
  %i.jb = zext i16 %i.ja to i32
  %i.jc = icmp eq i32 %i.j, %i.jb
  br i1 %i.jc, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.8

.lr.ph.split.i.8:                                 ; preds = %.lr.ph.split.i.7
  %i.jd = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 64), i64 %i.l
  %i.je = load i16, ptr %i.jd, align 2, !tbaa !479
  %i.jf = zext i16 %i.je to i32
  %i.jg = icmp eq i32 %i.j, %i.jf
  br i1 %i.jg, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.9

.lr.ph.split.i.9:                                 ; preds = %.lr.ph.split.i.8
  %i.jh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 72), i64 %i.l
  %i.ji = load i16, ptr %i.jh, align 2, !tbaa !479
  %i.jj = zext i16 %i.ji to i32
  %i.jk = icmp eq i32 %i.j, %i.jj
  br i1 %i.jk, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.10

.lr.ph.split.i.10:                                ; preds = %.lr.ph.split.i.9
  %i.jl = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 80), i64 %i.l
  %i.jm = load i16, ptr %i.jl, align 2, !tbaa !479
  %i.jn = zext i16 %i.jm to i32
  %i.jo = icmp eq i32 %i.j, %i.jn
  br i1 %i.jo, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.11

.lr.ph.split.i.11:                                ; preds = %.lr.ph.split.i.10
  %i.jp = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 88), i64 %i.l
  %i.jq = load i16, ptr %i.jp, align 2, !tbaa !479
  %i.jr = zext i16 %i.jq to i32
  %i.js = icmp eq i32 %i.j, %i.jr
  br i1 %i.js, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.12

.lr.ph.split.i.12:                                ; preds = %.lr.ph.split.i.11
  %i.jt = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 96), i64 %i.l
  %i.ju = load i16, ptr %i.jt, align 2, !tbaa !479
  %i.jv = zext i16 %i.ju to i32
  %i.jw = icmp eq i32 %i.j, %i.jv
  br i1 %i.jw, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.13

.lr.ph.split.i.13:                                ; preds = %.lr.ph.split.i.12
  %i.jx = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 104), i64 %i.l
  %i.jy = load i16, ptr %i.jx, align 2, !tbaa !479
  %i.jz = zext i16 %i.jy to i32
  %i.ka = icmp eq i32 %i.j, %i.jz
  br i1 %i.ka, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i.14

.lr.ph.split.i.14:                                ; preds = %.lr.ph.split.i.13
  %i.kb = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 112), i64 %i.l
  %i.kc = load i16, ptr %i.kb, align 2, !tbaa !479
  %i.kd = zext i16 %i.kc to i32
  %i.ke = icmp eq i32 %i.j, %i.kd
  br i1 %i.ke, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, label %.lr.ph.split.i76.preheader

_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit:   ; preds = %.lr.ph.split.i.preheader, %.lr.ph.split.i.1, %.lr.ph.split.i.2, %.lr.ph.split.i.3, %.lr.ph.split.i.4, %.lr.ph.split.i.5, %.lr.ph.split.i.6, %.lr.ph.split.i.7, %.lr.ph.split.i.8, %.lr.ph.split.i.9, %.lr.ph.split.i.10, %.lr.ph.split.i.11, %.lr.ph.split.i.12, %.lr.ph.split.i.13, %.lr.ph.split.i.14, %.lr.ph.split.us.i.preheader, %.lr.ph.split.us.i.1, %.lr.ph.split.us.i.2, %.lr.ph.split.us.i.3, %.lr.ph.split.us.i.4, %.lr.ph.split.us.i.5, %.lr.ph.split.us.i.6, %.lr.ph.split.us.i.7, %.lr.ph.split.us.i.8, %.lr.ph.split.us.i.9, %.lr.ph.split.us.i.10, %.lr.ph.split.us.i.11, %.lr.ph.split.us.i.12, %.lr.ph.split.us.i.13, %.lr.ph.split.us.i.14
  %i.kf = phi ptr [ @_ZL23ReplaceableInstrsAVX512, %.lr.ph.split.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 112), %.lr.ph.split.i.14 ], [ @_ZL23ReplaceableInstrsAVX512, %.lr.ph.split.us.i.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 8), %.lr.ph.split.us.i.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 104), %.lr.ph.split.i.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 16), %.lr.ph.split.us.i.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 96), %.lr.ph.split.i.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 24), %.lr.ph.split.us.i.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 88), %.lr.ph.split.i.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 32), %.lr.ph.split.us.i.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 80), %.lr.ph.split.i.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 40), %.lr.ph.split.us.i.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 72), %.lr.ph.split.i.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 48), %.lr.ph.split.us.i.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 64), %.lr.ph.split.i.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 56), %.lr.ph.split.us.i.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 56), %.lr.ph.split.i.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 64), %.lr.ph.split.us.i.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 48), %.lr.ph.split.i.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 72), %.lr.ph.split.us.i.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 40), %.lr.ph.split.i.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 80), %.lr.ph.split.us.i.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 32), %.lr.ph.split.i.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 88), %.lr.ph.split.us.i.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 24), %.lr.ph.split.i.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 96), %.lr.ph.split.us.i.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 16), %.lr.ph.split.i.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 104), %.lr.ph.split.us.i.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 8), %.lr.ph.split.i.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL23ReplaceableInstrsAVX512, i64 112), %.lr.ph.split.us.i.14 ] ; 3 uses
  %i.kg = icmp eq i32 %2, 3
  br i1 %i.kg, label %bb.d, label %.thread117

bb.d:                                             ; preds = %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kf, i64 6
  %i.ki = load i16, ptr %i.kh, align 2, !tbaa !479
  %i.kj = zext i16 %i.ki to i32
  %i.kk = icmp eq i32 %i.j, %i.kj
  %spec.select = select i1 %i.kk, i32 4, i32 3
  br label %.thread117

.lr.ph.split.i76.preheader:                       ; preds = %.lr.ph.split.i.14
  %i.kl = getelementptr inbounds nuw [2 x i8], ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 %i.l
  %i.km = load i16, ptr %i.kl, align 2, !tbaa !479
  %i.kn = zext i16 %i.km to i32
  %i.ko = icmp eq i32 %i.j, %i.kn
  br i1 %i.ko, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.1

.lr.ph.split.us.i79.preheader:                    ; preds = %.lr.ph.split.us.i.14
  %i.kp = getelementptr inbounds nuw [2 x i8], ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 %i.l
  %i.kq = load i16, ptr %i.kp, align 4, !tbaa !479
  %i.kr = zext i16 %i.kq to i32
  %i.ks = icmp eq i32 %i.j, %i.kr
  %i.kt = icmp eq i32 %i.j, 14849
  %or.cond179 = or i1 %i.ks, %i.kt
  br i1 %or.cond179, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.1

.lr.ph.split.us.i79.1:                            ; preds = %.lr.ph.split.us.i79.preheader
  %i.ku = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 8), i64 %i.l
  %i.kv = load i16, ptr %i.ku, align 4, !tbaa !479
  %i.kw = zext i16 %i.kv to i32
  %i.kx = icmp eq i32 %i.j, %i.kw
  %i.ky = icmp eq i32 %i.j, 14855
  %or.cond180 = or i1 %i.kx, %i.ky
  br i1 %or.cond180, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.2

.lr.ph.split.us.i79.2:                            ; preds = %.lr.ph.split.us.i79.1
  %i.kz = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 16), i64 %i.l
  %i.la = load i16, ptr %i.kz, align 4, !tbaa !479
  %i.lb = zext i16 %i.la to i32
  %i.lc = icmp eq i32 %i.j, %i.lb
  %i.ld = icmp eq i32 %i.j, 14822
  %or.cond181 = or i1 %i.lc, %i.ld
  br i1 %or.cond181, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.3

.lr.ph.split.us.i79.3:                            ; preds = %.lr.ph.split.us.i79.2
  %i.le = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 24), i64 %i.l
  %i.lf = load i16, ptr %i.le, align 4, !tbaa !479
  %i.lg = zext i16 %i.lf to i32
  %i.lh = icmp eq i32 %i.j, %i.lg
  %i.li = icmp eq i32 %i.j, 14828
  %or.cond182 = or i1 %i.lh, %i.li
  br i1 %or.cond182, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.4

.lr.ph.split.us.i79.4:                            ; preds = %.lr.ph.split.us.i79.3
  %i.lj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 32), i64 %i.l
  %i.lk = load i16, ptr %i.lj, align 4, !tbaa !479
  %i.ll = zext i16 %i.lk to i32
  %i.lm = icmp eq i32 %i.j, %i.ll
  %i.ln = icmp eq i32 %i.j, 18411
  %or.cond183 = or i1 %i.lm, %i.ln
  br i1 %or.cond183, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.5

.lr.ph.split.us.i79.5:                            ; preds = %.lr.ph.split.us.i79.4
  %i.lo = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 40), i64 %i.l
  %i.lp = load i16, ptr %i.lo, align 4, !tbaa !479
  %i.lq = zext i16 %i.lp to i32
  %i.lr = icmp eq i32 %i.j, %i.lq
  %i.ls = icmp eq i32 %i.j, 18417
  %or.cond184 = or i1 %i.lr, %i.ls
  br i1 %or.cond184, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.6

.lr.ph.split.us.i79.6:                            ; preds = %.lr.ph.split.us.i79.5
  %i.lt = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 48), i64 %i.l
  %i.lu = load i16, ptr %i.lt, align 4, !tbaa !479
  %i.lv = zext i16 %i.lu to i32
  %i.lw = icmp eq i32 %i.j, %i.lv
  %i.lx = icmp eq i32 %i.j, 20438
  %or.cond185 = or i1 %i.lw, %i.lx
  br i1 %or.cond185, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.7

.lr.ph.split.us.i79.7:                            ; preds = %.lr.ph.split.us.i79.6
  %i.ly = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 56), i64 %i.l
  %i.lz = load i16, ptr %i.ly, align 4, !tbaa !479
  %i.ma = zext i16 %i.lz to i32
  %i.mb = icmp eq i32 %i.j, %i.ma
  %i.mc = icmp eq i32 %i.j, 20444
  %or.cond186 = or i1 %i.mb, %i.mc
  br i1 %or.cond186, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.8

.lr.ph.split.us.i79.8:                            ; preds = %.lr.ph.split.us.i79.7
  %i.md = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 64), i64 %i.l
  %i.me = load i16, ptr %i.md, align 4, !tbaa !479
  %i.mf = zext i16 %i.me to i32
  %i.mg = icmp eq i32 %i.j, %i.mf
  %i.mh = icmp eq i32 %i.j, 14858
  %or.cond187 = or i1 %i.mg, %i.mh
  br i1 %or.cond187, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.9

.lr.ph.split.us.i79.9:                            ; preds = %.lr.ph.split.us.i79.8
  %i.mi = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 72), i64 %i.l
  %i.mj = load i16, ptr %i.mi, align 4, !tbaa !479
  %i.mk = zext i16 %i.mj to i32
  %i.ml = icmp eq i32 %i.j, %i.mk
  %i.mm = icmp eq i32 %i.j, 14864
  %or.cond188 = or i1 %i.ml, %i.mm
  br i1 %or.cond188, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.10

.lr.ph.split.us.i79.10:                           ; preds = %.lr.ph.split.us.i79.9
  %i.mn = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 80), i64 %i.l
  %i.mo = load i16, ptr %i.mn, align 4, !tbaa !479
  %i.mp = zext i16 %i.mo to i32
  %i.mq = icmp eq i32 %i.j, %i.mp
  %i.mr = icmp eq i32 %i.j, 14831
  %or.cond189 = or i1 %i.mq, %i.mr
  br i1 %or.cond189, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.11

.lr.ph.split.us.i79.11:                           ; preds = %.lr.ph.split.us.i79.10
  %i.ms = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 88), i64 %i.l
  %i.mt = load i16, ptr %i.ms, align 4, !tbaa !479
  %i.mu = zext i16 %i.mt to i32
  %i.mv = icmp eq i32 %i.j, %i.mu
  %i.mw = icmp eq i32 %i.j, 14837
  %or.cond190 = or i1 %i.mv, %i.mw
  br i1 %or.cond190, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.12

.lr.ph.split.us.i79.12:                           ; preds = %.lr.ph.split.us.i79.11
  %i.mx = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 96), i64 %i.l
  %i.my = load i16, ptr %i.mx, align 4, !tbaa !479
  %i.mz = zext i16 %i.my to i32
  %i.na = icmp eq i32 %i.j, %i.mz
  %i.nb = icmp eq i32 %i.j, 18420
  %or.cond191 = or i1 %i.na, %i.nb
  br i1 %or.cond191, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.13

.lr.ph.split.us.i79.13:                           ; preds = %.lr.ph.split.us.i79.12
  %i.nc = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 104), i64 %i.l
  %i.nd = load i16, ptr %i.nc, align 4, !tbaa !479
  %i.ne = zext i16 %i.nd to i32
  %i.nf = icmp eq i32 %i.j, %i.ne
  %i.ng = icmp eq i32 %i.j, 18426
  %or.cond192 = or i1 %i.nf, %i.ng
  br i1 %or.cond192, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.14

.lr.ph.split.us.i79.14:                           ; preds = %.lr.ph.split.us.i79.13
  %i.nh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 112), i64 %i.l
  %i.ni = load i16, ptr %i.nh, align 4, !tbaa !479
  %i.nj = zext i16 %i.ni to i32
  %i.nk = icmp eq i32 %i.j, %i.nj
  %i.nl = icmp eq i32 %i.j, 20447
  %or.cond193 = or i1 %i.nk, %i.nl
  br i1 %or.cond193, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.15

.lr.ph.split.us.i79.15:                           ; preds = %.lr.ph.split.us.i79.14
  %i.nm = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 120), i64 %i.l
  %i.nn = load i16, ptr %i.nm, align 4, !tbaa !479
  %i.no = zext i16 %i.nn to i32
  %i.np = icmp eq i32 %i.j, %i.no
  %i.nq = icmp eq i32 %i.j, 20453
  %or.cond194 = or i1 %i.np, %i.nq
  br i1 %or.cond194, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.16

.lr.ph.split.us.i79.16:                           ; preds = %.lr.ph.split.us.i79.15
  %i.nr = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 128), i64 %i.l
  %i.ns = load i16, ptr %i.nr, align 4, !tbaa !479
  %i.nt = zext i16 %i.ns to i32
  %i.nu = icmp eq i32 %i.j, %i.nt
  %i.nv = icmp eq i32 %i.j, 14867
  %or.cond195 = or i1 %i.nu, %i.nv
  br i1 %or.cond195, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.17

.lr.ph.split.us.i79.17:                           ; preds = %.lr.ph.split.us.i79.16
  %i.nw = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 136), i64 %i.l
  %i.nx = load i16, ptr %i.nw, align 4, !tbaa !479
  %i.ny = zext i16 %i.nx to i32
  %i.nz = icmp eq i32 %i.j, %i.ny
  %i.oa = icmp eq i32 %i.j, 14873
  %or.cond196 = or i1 %i.nz, %i.oa
  br i1 %or.cond196, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.18

.lr.ph.split.us.i79.18:                           ; preds = %.lr.ph.split.us.i79.17
  %i.ob = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 144), i64 %i.l
  %i.oc = load i16, ptr %i.ob, align 4, !tbaa !479
  %i.od = zext i16 %i.oc to i32
  %i.oe = icmp eq i32 %i.j, %i.od
  %i.of = icmp eq i32 %i.j, 14840
  %or.cond197 = or i1 %i.oe, %i.of
  br i1 %or.cond197, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.19

.lr.ph.split.us.i79.19:                           ; preds = %.lr.ph.split.us.i79.18
  %i.og = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 152), i64 %i.l
  %i.oh = load i16, ptr %i.og, align 4, !tbaa !479
  %i.oi = zext i16 %i.oh to i32
  %i.oj = icmp eq i32 %i.j, %i.oi
  %i.ok = icmp eq i32 %i.j, 14846
  %or.cond198 = or i1 %i.oj, %i.ok
  br i1 %or.cond198, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.20

.lr.ph.split.us.i79.20:                           ; preds = %.lr.ph.split.us.i79.19
  %i.ol = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 160), i64 %i.l
  %i.om = load i16, ptr %i.ol, align 4, !tbaa !479
  %i.on = zext i16 %i.om to i32
  %i.oo = icmp eq i32 %i.j, %i.on
  %i.op = icmp eq i32 %i.j, 18429
  %or.cond199 = or i1 %i.oo, %i.op
  br i1 %or.cond199, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.21

.lr.ph.split.us.i79.21:                           ; preds = %.lr.ph.split.us.i79.20
  %i.oq = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 168), i64 %i.l
  %i.or = load i16, ptr %i.oq, align 4, !tbaa !479
  %i.os = zext i16 %i.or to i32
  %i.ot = icmp eq i32 %i.j, %i.os
  %i.ou = icmp eq i32 %i.j, 18435
  %or.cond200 = or i1 %i.ot, %i.ou
  br i1 %or.cond200, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.22

.lr.ph.split.us.i79.22:                           ; preds = %.lr.ph.split.us.i79.21
  %i.ov = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 176), i64 %i.l
  %i.ow = load i16, ptr %i.ov, align 4, !tbaa !479
  %i.ox = zext i16 %i.ow to i32
  %i.oy = icmp eq i32 %i.j, %i.ox
  %i.oz = icmp eq i32 %i.j, 20456
  %or.cond201 = or i1 %i.oy, %i.oz
  br i1 %or.cond201, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i79.23

.lr.ph.split.us.i79.23:                           ; preds = %.lr.ph.split.us.i79.22
  %i.pa = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 184), i64 %i.l
  %i.pb = load i16, ptr %i.pa, align 4, !tbaa !479
  %i.pc = zext i16 %i.pb to i32
  %i.pd = icmp eq i32 %i.j, %i.pc
  %i.pe = icmp eq i32 %i.j, 20462
  %or.cond202 = or i1 %i.pd, %i.pe
  br i1 %or.cond202, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.us.i87.preheader

.lr.ph.split.i76.1:                               ; preds = %.lr.ph.split.i76.preheader
  %i.pf = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 8), i64 %i.l
  %i.pg = load i16, ptr %i.pf, align 2, !tbaa !479
  %i.ph = zext i16 %i.pg to i32
  %i.pi = icmp eq i32 %i.j, %i.ph
  br i1 %i.pi, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.2

.lr.ph.split.i76.2:                               ; preds = %.lr.ph.split.i76.1
  %i.pj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 16), i64 %i.l
  %i.pk = load i16, ptr %i.pj, align 2, !tbaa !479
  %i.pl = zext i16 %i.pk to i32
  %i.pm = icmp eq i32 %i.j, %i.pl
  br i1 %i.pm, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.3

.lr.ph.split.i76.3:                               ; preds = %.lr.ph.split.i76.2
  %i.pn = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 24), i64 %i.l
  %i.po = load i16, ptr %i.pn, align 2, !tbaa !479
  %i.pp = zext i16 %i.po to i32
  %i.pq = icmp eq i32 %i.j, %i.pp
  br i1 %i.pq, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.4

.lr.ph.split.i76.4:                               ; preds = %.lr.ph.split.i76.3
  %i.pr = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 32), i64 %i.l
  %i.ps = load i16, ptr %i.pr, align 2, !tbaa !479
  %i.pt = zext i16 %i.ps to i32
  %i.pu = icmp eq i32 %i.j, %i.pt
  br i1 %i.pu, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.5

.lr.ph.split.i76.5:                               ; preds = %.lr.ph.split.i76.4
  %i.pv = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 40), i64 %i.l
  %i.pw = load i16, ptr %i.pv, align 2, !tbaa !479
  %i.px = zext i16 %i.pw to i32
  %i.py = icmp eq i32 %i.j, %i.px
  br i1 %i.py, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.6

.lr.ph.split.i76.6:                               ; preds = %.lr.ph.split.i76.5
  %i.pz = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 48), i64 %i.l
  %i.qa = load i16, ptr %i.pz, align 2, !tbaa !479
  %i.qb = zext i16 %i.qa to i32
  %i.qc = icmp eq i32 %i.j, %i.qb
  br i1 %i.qc, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.7

.lr.ph.split.i76.7:                               ; preds = %.lr.ph.split.i76.6
  %i.qd = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 56), i64 %i.l
  %i.qe = load i16, ptr %i.qd, align 2, !tbaa !479
  %i.qf = zext i16 %i.qe to i32
  %i.qg = icmp eq i32 %i.j, %i.qf
  br i1 %i.qg, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.8

.lr.ph.split.i76.8:                               ; preds = %.lr.ph.split.i76.7
  %i.qh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 64), i64 %i.l
  %i.qi = load i16, ptr %i.qh, align 2, !tbaa !479
  %i.qj = zext i16 %i.qi to i32
  %i.qk = icmp eq i32 %i.j, %i.qj
  br i1 %i.qk, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.9

.lr.ph.split.i76.9:                               ; preds = %.lr.ph.split.i76.8
  %i.ql = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 72), i64 %i.l
  %i.qm = load i16, ptr %i.ql, align 2, !tbaa !479
  %i.qn = zext i16 %i.qm to i32
  %i.qo = icmp eq i32 %i.j, %i.qn
  br i1 %i.qo, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.10

.lr.ph.split.i76.10:                              ; preds = %.lr.ph.split.i76.9
  %i.qp = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 80), i64 %i.l
  %i.qq = load i16, ptr %i.qp, align 2, !tbaa !479
  %i.qr = zext i16 %i.qq to i32
  %i.qs = icmp eq i32 %i.j, %i.qr
  br i1 %i.qs, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.11

.lr.ph.split.i76.11:                              ; preds = %.lr.ph.split.i76.10
  %i.qt = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 88), i64 %i.l
  %i.qu = load i16, ptr %i.qt, align 2, !tbaa !479
  %i.qv = zext i16 %i.qu to i32
  %i.qw = icmp eq i32 %i.j, %i.qv
  br i1 %i.qw, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.12

.lr.ph.split.i76.12:                              ; preds = %.lr.ph.split.i76.11
  %i.qx = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 96), i64 %i.l
  %i.qy = load i16, ptr %i.qx, align 2, !tbaa !479
  %i.qz = zext i16 %i.qy to i32
  %i.ra = icmp eq i32 %i.j, %i.qz
  br i1 %i.ra, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.13

.lr.ph.split.i76.13:                              ; preds = %.lr.ph.split.i76.12
  %i.rb = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 104), i64 %i.l
  %i.rc = load i16, ptr %i.rb, align 2, !tbaa !479
  %i.rd = zext i16 %i.rc to i32
  %i.re = icmp eq i32 %i.j, %i.rd
  br i1 %i.re, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.14

.lr.ph.split.i76.14:                              ; preds = %.lr.ph.split.i76.13
  %i.rf = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 112), i64 %i.l
  %i.rg = load i16, ptr %i.rf, align 2, !tbaa !479
  %i.rh = zext i16 %i.rg to i32
  %i.ri = icmp eq i32 %i.j, %i.rh
  br i1 %i.ri, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.15

.lr.ph.split.i76.15:                              ; preds = %.lr.ph.split.i76.14
  %i.rj = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 120), i64 %i.l
  %i.rk = load i16, ptr %i.rj, align 2, !tbaa !479
  %i.rl = zext i16 %i.rk to i32
  %i.rm = icmp eq i32 %i.j, %i.rl
  br i1 %i.rm, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.16

.lr.ph.split.i76.16:                              ; preds = %.lr.ph.split.i76.15
  %i.rn = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 128), i64 %i.l
  %i.ro = load i16, ptr %i.rn, align 2, !tbaa !479
  %i.rp = zext i16 %i.ro to i32
  %i.rq = icmp eq i32 %i.j, %i.rp
  br i1 %i.rq, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.17

.lr.ph.split.i76.17:                              ; preds = %.lr.ph.split.i76.16
  %i.rr = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 136), i64 %i.l
  %i.rs = load i16, ptr %i.rr, align 2, !tbaa !479
  %i.rt = zext i16 %i.rs to i32
  %i.ru = icmp eq i32 %i.j, %i.rt
  br i1 %i.ru, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.18

.lr.ph.split.i76.18:                              ; preds = %.lr.ph.split.i76.17
  %i.rv = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 144), i64 %i.l
  %i.rw = load i16, ptr %i.rv, align 2, !tbaa !479
  %i.rx = zext i16 %i.rw to i32
  %i.ry = icmp eq i32 %i.j, %i.rx
  br i1 %i.ry, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.19

.lr.ph.split.i76.19:                              ; preds = %.lr.ph.split.i76.18
  %i.rz = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 152), i64 %i.l
  %i.sa = load i16, ptr %i.rz, align 2, !tbaa !479
  %i.sb = zext i16 %i.sa to i32
  %i.sc = icmp eq i32 %i.j, %i.sb
  br i1 %i.sc, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.20

.lr.ph.split.i76.20:                              ; preds = %.lr.ph.split.i76.19
  %i.sd = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 160), i64 %i.l
  %i.se = load i16, ptr %i.sd, align 2, !tbaa !479
  %i.sf = zext i16 %i.se to i32
  %i.sg = icmp eq i32 %i.j, %i.sf
  br i1 %i.sg, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.21

.lr.ph.split.i76.21:                              ; preds = %.lr.ph.split.i76.20
  %i.sh = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 168), i64 %i.l
  %i.si = load i16, ptr %i.sh, align 2, !tbaa !479
  %i.sj = zext i16 %i.si to i32
  %i.sk = icmp eq i32 %i.j, %i.sj
  br i1 %i.sk, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.22

.lr.ph.split.i76.22:                              ; preds = %.lr.ph.split.i76.21
  %i.sl = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 176), i64 %i.l
  %i.sm = load i16, ptr %i.sl, align 2, !tbaa !479
  %i.sn = zext i16 %i.sm to i32
  %i.so = icmp eq i32 %i.j, %i.sn
  br i1 %i.so, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i76.23

.lr.ph.split.i76.23:                              ; preds = %.lr.ph.split.i76.22
  %i.sp = getelementptr inbounds nuw [2 x i8], ptr getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 184), i64 %i.l
  %i.sq = load i16, ptr %i.sp, align 2, !tbaa !479
  %i.sr = zext i16 %i.sq to i32
  %i.ss = icmp eq i32 %i.j, %i.sr
  br i1 %i.ss, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, label %.lr.ph.split.i84.preheader

_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82: ; preds = %.lr.ph.split.i76.preheader, %.lr.ph.split.i76.1, %.lr.ph.split.i76.2, %.lr.ph.split.i76.3, %.lr.ph.split.i76.4, %.lr.ph.split.i76.5, %.lr.ph.split.i76.6, %.lr.ph.split.i76.7, %.lr.ph.split.i76.8, %.lr.ph.split.i76.9, %.lr.ph.split.i76.10, %.lr.ph.split.i76.11, %.lr.ph.split.i76.12, %.lr.ph.split.i76.13, %.lr.ph.split.i76.14, %.lr.ph.split.i76.15, %.lr.ph.split.i76.16, %.lr.ph.split.i76.17, %.lr.ph.split.i76.18, %.lr.ph.split.i76.19, %.lr.ph.split.i76.20, %.lr.ph.split.i76.21, %.lr.ph.split.i76.22, %.lr.ph.split.i76.23, %.lr.ph.split.us.i79.preheader, %.lr.ph.split.us.i79.1, %.lr.ph.split.us.i79.2, %.lr.ph.split.us.i79.3, %.lr.ph.split.us.i79.4, %.lr.ph.split.us.i79.5, %.lr.ph.split.us.i79.6, %.lr.ph.split.us.i79.7, %.lr.ph.split.us.i79.8, %.lr.ph.split.us.i79.9, %.lr.ph.split.us.i79.10, %.lr.ph.split.us.i79.11, %.lr.ph.split.us.i79.12, %.lr.ph.split.us.i79.13, %.lr.ph.split.us.i79.14, %.lr.ph.split.us.i79.15, %.lr.ph.split.us.i79.16, %.lr.ph.split.us.i79.17, %.lr.ph.split.us.i79.18, %.lr.ph.split.us.i79.19, %.lr.ph.split.us.i79.20, %.lr.ph.split.us.i79.21, %.lr.ph.split.us.i79.22, %.lr.ph.split.us.i79.23
  %i.st = phi ptr [ @_ZL25ReplaceableInstrsAVX512DQ, %.lr.ph.split.i76.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 184), %.lr.ph.split.i76.23 ], [ @_ZL25ReplaceableInstrsAVX512DQ, %.lr.ph.split.us.i79.preheader ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 8), %.lr.ph.split.us.i79.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 176), %.lr.ph.split.i76.22 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 16), %.lr.ph.split.us.i79.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 168), %.lr.ph.split.i76.21 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 24), %.lr.ph.split.us.i79.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 160), %.lr.ph.split.i76.20 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 32), %.lr.ph.split.us.i79.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 152), %.lr.ph.split.i76.19 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 40), %.lr.ph.split.us.i79.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 144), %.lr.ph.split.i76.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 48), %.lr.ph.split.us.i79.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 136), %.lr.ph.split.i76.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 56), %.lr.ph.split.us.i79.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 128), %.lr.ph.split.i76.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 64), %.lr.ph.split.us.i79.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 120), %.lr.ph.split.i76.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 72), %.lr.ph.split.us.i79.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 112), %.lr.ph.split.i76.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 80), %.lr.ph.split.us.i79.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 104), %.lr.ph.split.i76.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 88), %.lr.ph.split.us.i79.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 96), %.lr.ph.split.i76.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 96), %.lr.ph.split.us.i79.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 88), %.lr.ph.split.i76.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 104), %.lr.ph.split.us.i79.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 80), %.lr.ph.split.i76.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 112), %.lr.ph.split.us.i79.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 72), %.lr.ph.split.i76.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 120), %.lr.ph.split.us.i79.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 64), %.lr.ph.split.i76.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 128), %.lr.ph.split.us.i79.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 56), %.lr.ph.split.i76.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 136), %.lr.ph.split.us.i79.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 48), %.lr.ph.split.i76.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 144), %.lr.ph.split.us.i79.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 40), %.lr.ph.split.i76.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 152), %.lr.ph.split.us.i79.19 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 32), %.lr.ph.split.i76.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 160), %.lr.ph.split.us.i79.20 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 24), %.lr.ph.split.i76.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 168), %.lr.ph.split.us.i79.21 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 16), %.lr.ph.split.i76.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 176), %.lr.ph.split.us.i79.22 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 8), %.lr.ph.split.i76.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL25ReplaceableInstrsAVX512DQ, i64 184), %.lr.ph.split.us.i79.23 ] ; 4 uses
  %i.su = icmp eq i32 %2, 3
  br i1 %i.su, label %bb.e, label %.thread117

bb.e:                                             ; preds = %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82
  %i.sv = icmp eq i32 %i.h, 1
  br i1 %i.sv, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.sw = getelementptr inbounds nuw i8, ptr %i.st, i64 6
  %i.sx = load i16, ptr %i.sw, align 2, !tbaa !479
  %i.sy = zext i16 %i.sx to i32
  %i.sz = icmp eq i32 %i.j, %i.sy
  br i1 %i.sz, label %bb.g, label %.thread117

bb.g:                                             ; preds = %bb.f, %bb.e
  br label %.thread117

.lr.ph.split.i84.preheader:                       ; preds = %.lr.ph.split.i76.23
  %i.ta = getelementptr inbounds nuw [2 x i8], ptr @_ZL31ReplaceableInstrsAVX512DQMasked, i64 %i.l
  %i.tb = load i16, ptr %i.ta, align 2, !tbaa !479
  %i.tc = zext i16 %i.tb to i32
  %i.td = icmp eq i32 %i.j, %i.tc
  br i1 %i.td, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90, label %.lr.ph.split.i84

.lr.ph.split.us.i87.preheader:                    ; preds = %.lr.ph.split.us.i79.23
  %i.te = getelementptr inbounds nuw [2 x i8], ptr @_ZL31ReplaceableInstrsAVX512DQMasked, i64 %i.l
  %i.tf = load i16, ptr %i.te, align 4, !tbaa !479
  %i.tg = zext i16 %i.tf to i32
  %i.th = icmp eq i32 %i.j, %i.tg
  br i1 %i.th, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread, label %.lr.ph142

.lr.ph142:                                        ; preds = %.lr.ph.split.us.i87.preheader, %.lr.ph.split.us.i87
  %.01526.us.i88.idx140 = phi i64 [ %.01526.us.i88.add, %.lr.ph.split.us.i87 ], [ 0, %.lr.ph.split.us.i87.preheader ] ; 2 uses
  %.01526.us.i88.ptr141 = getelementptr inbounds nuw i8, ptr @_ZL31ReplaceableInstrsAVX512DQMasked, i64 %.01526.us.i88.idx140 ; 2 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %.01526.us.i88.ptr141, i64 6
  %i.tj = load i16, ptr %i.ti, align 2, !tbaa !479
  %i.tk = zext i16 %i.tj to i32
  %i.tl = icmp eq i32 %i.j, %i.tk
  br i1 %i.tl, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90, label %.lr.ph.split.us.i87

.lr.ph.split.us.i87:                              ; preds = %.lr.ph142
  %.01526.us.i88.add = add nuw nsw i64 %.01526.us.i88.idx140, 8 ; 3 uses
  %.not.us.i89 = icmp ne i64 %.01526.us.i88.add, 696
  tail call void @llvm.assume(i1 %.not.us.i89)
  %.01526.us.i88.ptr = getelementptr inbounds nuw i8, ptr @_ZL31ReplaceableInstrsAVX512DQMasked, i64 %.01526.us.i88.add ; 2 uses
  %i.tm = getelementptr inbounds nuw [2 x i8], ptr %.01526.us.i88.ptr, i64 %i.l
  %i.tn = load i16, ptr %i.tm, align 4, !tbaa !479
  %i.to = zext i16 %i.tn to i32
  %i.tp = icmp eq i32 %i.j, %i.to
  br i1 %i.tp, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90, label %.lr.ph142

.lr.ph.split.i84:                                 ; preds = %.lr.ph.split.i84.preheader, %.lr.ph.split.i84
  %.01526.i85.idx139 = phi i64 [ %.01526.i85.add, %.lr.ph.split.i84 ], [ 0, %.lr.ph.split.i84.preheader ]
  %.01526.i85.add = add nuw nsw i64 %.01526.i85.idx139, 8 ; 3 uses
  %.not.i86 = icmp ne i64 %.01526.i85.add, 696
  tail call void @llvm.assume(i1 %.not.i86)
  %.01526.i85.ptr = getelementptr inbounds nuw i8, ptr @_ZL31ReplaceableInstrsAVX512DQMasked, i64 %.01526.i85.add ; 2 uses
  %i.tq = getelementptr inbounds nuw [2 x i8], ptr %.01526.i85.ptr, i64 %i.l
  %i.tr = load i16, ptr %i.tq, align 2, !tbaa !479
  %i.ts = zext i16 %i.tr to i32
  %i.tt = icmp eq i32 %i.j, %i.ts
  br i1 %i.tt, label %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90, label %.lr.ph.split.i84

_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90: ; preds = %.lr.ph.split.i84, %.lr.ph142, %.lr.ph.split.us.i87, %.lr.ph.split.i84.preheader
  %i.tu = phi ptr [ @_ZL31ReplaceableInstrsAVX512DQMasked, %.lr.ph.split.i84.preheader ], [ %.01526.us.i88.ptr, %.lr.ph.split.us.i87 ], [ %.01526.us.i88.ptr141, %.lr.ph142 ], [ %.01526.i85.ptr, %.lr.ph.split.i84 ] ; 3 uses
  %i.tv = icmp eq i32 %2, 3
  br i1 %i.tv, label %bb.h, label %.thread117

_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread: ; preds = %.lr.ph.split.us.i87.preheader
  %i.tw = icmp eq i32 %2, 3
  br i1 %i.tw, label %.thread, label %.thread117

bb.h:                                             ; preds = %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90
  %i.tx = icmp eq i32 %i.h, 1
  br i1 %i.tx, label %.thread117, label %.thread

.thread:                                          ; preds = %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread, %bb.h
  %i.ty = phi ptr [ %i.tu, %bb.h ], [ @_ZL31ReplaceableInstrsAVX512DQMasked, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread ] ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %i.ty, i64 6
  %i.ua = load i16, ptr %i.tz, align 2, !tbaa !479
  %i.ub = zext i16 %i.ua to i32
  %i.uc = icmp eq i32 %i.j, %i.ub
  %spec.select203 = select i1 %i.uc, i32 4, i32 3
  br label %.thread117

.thread117:                                       ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.thread, %.lr.ph.i58.preheader, %.lr.ph.i58.1, %.lr.ph.i58.2, %.lr.ph.i58.3, %.lr.ph.i58.4, %.lr.ph.i58.5, %.lr.ph.i58.6, %.lr.ph.i58.7, %.lr.ph.i58.8, %.lr.ph.i58.9, %.lr.ph.i58.10, %.lr.ph.i58.11, %.lr.ph.i58.12, %.lr.ph.i58.13, %.lr.ph.i58.14, %.lr.ph.i58.15, %.lr.ph.i58.16, %.lr.ph.i58.17, %.lr.ph.i58.18, %.lr.ph.i58.19, %.lr.ph.i58.20, %.lr.ph.i58.21, %.lr.ph.i58.22, %.lr.ph.i58.23, %.lr.ph.i58.24, %.lr.ph.i58.25, %.lr.ph.i58.26, %.lr.ph.i58.27, %.lr.ph.i58.28, %.lr.ph.i58.29, %.lr.ph.i58.30, %.lr.ph.i63.preheader, %.lr.ph.i63.1, %.lr.ph.i63.2, %.lr.ph.i63.3, %.lr.ph.i63.4, %.lr.ph.i63.5, %.lr.ph.i63.6, %.lr.ph.i63.7, %.lr.ph.i63.8, %.lr.ph.i68.preheader, %.lr.ph.i68.1, %.lr.ph.i68.2, %.lr.ph.i68.3, %bb.h, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread, %bb.d, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82, %bb.f, %bb.g, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90
  %.247 = phi i32 [ %2, %.lr.ph.i63.preheader ], [ %2, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread ], [ %2, %.lr.ph.i58.1 ], [ %2, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90 ], [ %2, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82 ], [ 3, %bb.f ], [ 4, %bb.g ], [ %spec.select, %bb.d ], [ %2, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit ], [ %spec.select203, %.thread ], [ %2, %.lr.ph.i68.preheader ], [ %2, %.lr.ph.i58.preheader ], [ 4, %bb.h ], [ %2, %.lr.ph.i68.3 ], [ %2, %.lr.ph.i68.2 ], [ %2, %.lr.ph.i68.1 ], [ %2, %.lr.ph.i63.8 ], [ %2, %.lr.ph.i63.7 ], [ %2, %.lr.ph.i63.6 ], [ %2, %.lr.ph.i63.5 ], [ %2, %.lr.ph.i63.4 ], [ %2, %.lr.ph.i63.3 ], [ %2, %.lr.ph.i63.2 ], [ %2, %.lr.ph.i63.1 ], [ %2, %.lr.ph.i58.30 ], [ %2, %.lr.ph.i58.29 ], [ %2, %.lr.ph.i58.28 ], [ %2, %.lr.ph.i58.27 ], [ %2, %.lr.ph.i58.26 ], [ %2, %.lr.ph.i58.25 ], [ %2, %.lr.ph.i58.24 ], [ %2, %.lr.ph.i58.23 ], [ %2, %.lr.ph.i58.22 ], [ %2, %.lr.ph.i58.21 ], [ %2, %.lr.ph.i58.20 ], [ %2, %.lr.ph.i58.19 ], [ %2, %.lr.ph.i58.18 ], [ %2, %.lr.ph.i58.17 ], [ %2, %.lr.ph.i58.16 ], [ %2, %.lr.ph.i58.15 ], [ %2, %.lr.ph.i58.14 ], [ %2, %.lr.ph.i58.13 ], [ %2, %.lr.ph.i58.12 ], [ %2, %.lr.ph.i58.11 ], [ %2, %.lr.ph.i58.10 ], [ %2, %.lr.ph.i58.9 ], [ %2, %.lr.ph.i58.8 ], [ %2, %.lr.ph.i58.7 ], [ %2, %.lr.ph.i58.6 ], [ %2, %.lr.ph.i58.5 ], [ %2, %.lr.ph.i58.4 ], [ %2, %.lr.ph.i58.3 ], [ %2, %.lr.ph.i58.2 ], [ %2, %.lr.ph.i.3 ], [ %2, %.lr.ph.i.2 ], [ %2, %.lr.ph.i.1 ], [ %2, %.lr.ph.i ]
  %.5 = phi ptr [ @_ZL19ReplaceableInstrsFP, %.lr.ph.i63.preheader ], [ @_ZL31ReplaceableInstrsAVX512DQMasked, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90.thread ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 6), %.lr.ph.i58.1 ], [ %i.tu, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit90 ], [ %i.st, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit82 ], [ %i.st, %bb.f ], [ %i.st, %bb.g ], [ %i.kf, %bb.d ], [ %i.kf, %_ZL12lookupAVX512jjN4llvm8ArrayRefIA4_tEE.exit ], [ %i.ty, %.thread ], [ @_ZL34ReplaceableInstrsAVX2InsertExtract, %.lr.ph.i68.preheader ], [ @_ZL21ReplaceableInstrsAVX2, %.lr.ph.i58.preheader ], [ %i.tu, %bb.h ], [ getelementptr inbounds nuw (i8, ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 18), %.lr.ph.i68.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 12), %.lr.ph.i68.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL34ReplaceableInstrsAVX2InsertExtract, i64 6), %.lr.ph.i68.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 48), %.lr.ph.i63.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 42), %.lr.ph.i63.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 36), %.lr.ph.i63.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 30), %.lr.ph.i63.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 24), %.lr.ph.i63.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 18), %.lr.ph.i63.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 12), %.lr.ph.i63.2 ], [ getelementptr inbounds nuw (i8, ptr @_ZL19ReplaceableInstrsFP, i64 6), %.lr.ph.i63.1 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 180), %.lr.ph.i58.30 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 174), %.lr.ph.i58.29 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 168), %.lr.ph.i58.28 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 162), %.lr.ph.i58.27 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 156), %.lr.ph.i58.26 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 150), %.lr.ph.i58.25 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 144), %.lr.ph.i58.24 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 138), %.lr.ph.i58.23 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 132), %.lr.ph.i58.22 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 126), %.lr.ph.i58.21 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 120), %.lr.ph.i58.20 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 114), %.lr.ph.i58.19 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 108), %.lr.ph.i58.18 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 102), %.lr.ph.i58.17 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 96), %.lr.ph.i58.16 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 90), %.lr.ph.i58.15 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 84), %.lr.ph.i58.14 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 78), %.lr.ph.i58.13 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 72), %.lr.ph.i58.12 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 66), %.lr.ph.i58.11 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 60), %.lr.ph.i58.10 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 54), %.lr.ph.i58.9 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 48), %.lr.ph.i58.8 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 42), %.lr.ph.i58.7 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 36), %.lr.ph.i58.6 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 30), %.lr.ph.i58.5 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 24), %.lr.ph.i58.4 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 18), %.lr.ph.i58.3 ], [ getelementptr inbounds nuw (i8, ptr @_ZL21ReplaceableInstrsAVX2, i64 12), %.lr.ph.i58.2 ], [ %.01220.i.ptr, %.lr.ph.i ], [ %.01220.i.ptr.1, %.lr.ph.i.1 ], [ %.01220.i.ptr.2, %.lr.ph.i.2 ], [ %.01220.i.ptr.3, %.lr.ph.i.3 ]
  %i.ud = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ue = add i32 %.247, -1
  %i.uf = zext i32 %i.ue to i64
  %i.ug = getelementptr inbounds nuw [2 x i8], ptr %.5, i64 %i.uf
  %i.uh = load i16, ptr %i.ug, align 2, !tbaa !479
  %i.ui = load ptr, ptr %i.ud, align 8, !tbaa !46
  %i.uj = zext i16 %i.uh to i64
  %i.uk = sub nsw i64 0, %i.uj
  %i.ul = getelementptr inbounds [32 x i8], ptr %i.ui, i64 %i.uk
  tail call void @_ZN4llvm12MachineInstr7setDescERKNS_11MCInstrDescE(ptr noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.ul) #29
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.thread117
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZNK4llvm12X86InstrInfo10insertNoopERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(456) %0, ptr noundef nonnull align 8 dereferenceable(360) %1, ptr %2) unnamed_addr #0 align 2 {
_ZN4llvm7BuildMIERNS_17MachineBasicBlockENS_26MachineInstrBundleIteratorINS_12MachineInstrELb0EEERKNS_10MIMetadataERKNS_11MCInstrDescE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46
  %i.c = getelementptr inbounds i8, ptr %i.b, i64 -92416
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !272
  %i.f = tail call noundef ptr @_ZN4llvm15MachineFunction18CreateMachineInstrERKNS_11MCInstrDescENS_8DebugLocEb(ptr noundef nonnull align 8 dereferenceable(1065) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %i.c, ptr null, i1 noundef zeroext false) #29 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  tail call void @_ZN4llvm12ilist_traitsINS_12MachineInstrEE13addNodeToListEPS1_(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef %i.f) #29
  %.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.h = and i64 %.0.copyload.i.i.i.i.i.i.i.i.i.i, -8 ; 2 uses
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %2, ptr %i.j, align 8, !tbaa !381
  %.0.copyload.i.i.i.i9.i.i.i.i.i.i = load i64, ptr %i.f, align 8
  %i.k = and i64 %.0.copyload.i.i.i.i9.i.i.i.i.i.i, 7
  %i.l = or disjoint i64 %i.k, %i.h
  store i64 %i.l, ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr %i.f, ptr %i.m, align 8, !tbaa !381
  %.0.copyload.i.i.i.i10.i.i.i.i.i.i = load i64, ptr %2, align 8
  %i.n = ptrtoint ptr %i.f to i64
  %i.o = and i64 %.0.copyload.i.i.i.i10.i.i.i.i.i.i, 7
  %i.p = or disjoint i64 %i.o, %i.n
  store i64 %i.p, ptr %2, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK4llvm12X86InstrInfo6getNopEv(ptr dead_on_unwind noalias writable sret(%"class.llvm::MCInst") align 8 initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #8 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, i8 0, i64 16, i1 false)
  store ptr %i.b, ptr %i.a, align 8, !tbaa !62
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 0, ptr %i.c, align 8, !tbaa !383
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 6, ptr %i.d, align 4, !tbaa !384
  store i32 2888, ptr %0, align 8, !tbaa !1741
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK4llvm12X86InstrInfo16isHighLatencyDefEi(ptr nofree nonnull readnone align 8 captures(none) %0, i32 noundef %1) unnamed_addr #4 align 2 {
bb.a:
  switch i32 %1, label %bb.c [
    i32 1576, label %bb.b
    i32 1577, label %bb.b
    i32 1578, label %bb.b
    i32 1579, label %bb.b
    i32 1598, label %bb.b
    i32 1599, label %bb.b
    i32 1600, label %bb.b
    i32 1601, label %bb.b
    i32 1602, label %bb.b
    i32 1603, label %bb.b
    i32 1604, label %bb.b
    i32 1605, label %bb.b
    i32 4686, label %bb.b
    i32 4687, label %bb.b
    i32 4688, label %bb.b
    i32 4689, label %bb.b
    i32 4690, label %bb.b
    i32 4691, label %bb.b
    i32 4692, label %bb.b
    i32 4693, label %bb.b
    i32 4694, label %bb.b
    i32 4695, label %bb.b
    i32 4696, label %bb.b
    i32 4697, label %bb.b
    i32 8890, label %bb.b
    i32 8891, label %bb.b
    i32 8858, label %bb.b
    i32 8859, label %bb.b
    i32 8954, label %bb.b
    i32 8955, label %bb.b
    i32 8922, label %bb.b
    i32 8923, label %bb.b
    i32 8967, label %bb.b
    i32 8968, label %bb.b
    i32 8969, label %bb.b
    i32 8970, label %bb.b
    i32 8993, label %bb.b
    i32 8994, label %bb.b
    i32 8995, label %bb.b
    i32 8996, label %bb.b
    i32 21622, label %bb.b
    i32 21623, label %bb.b
    i32 21590, label %bb.b
    i32 21591, label %bb.b
    i32 21686, label %bb.b
    i32 21687, label %bb.b
    i32 21654, label %bb.b
    i32 21655, label %bb.b
    i32 21699, label %bb.b
    i32 21700, label %bb.b
    i32 21701, label %bb.b
    i32 21702, label %bb.b
    i32 21725, label %bb.b
    i32 21726, label %bb.b
    i32 21727, label %bb.b
    i32 21728, label %bb.b
    i32 8860, label %bb.b
    i32 8861, label %bb.b
    i32 8862, label %bb.b
    i32 8863, label %bb.b
    i32 8864, label %bb.b
    i32 8865, label %bb.b
    i32 8866, label %bb.b
    i32 8867, label %bb.b
    i32 8868, label %bb.b
    i32 8869, label %bb.b
    i32 8870, label %bb.b
    i32 8871, label %bb.b
    i32 8872, label %bb.b
    i32 8873, label %bb.b
    i32 8874, label %bb.b
    i32 8875, label %bb.b
    i32 8876, label %bb.b
    i32 8877, label %bb.b
    i32 8885, label %bb.b
    i32 8886, label %bb.b
    i32 8887, label %bb.b
    i32 8878, label %bb.b
    i32 8879, label %bb.b
    i32 8880, label %bb.b
    i32 8881, label %bb.b
    i32 8882, label %bb.b
    i32 8883, label %bb.b
    i32 8884, label %bb.b
    i32 8888, label %bb.b
    i32 8889, label %bb.b
    i32 8924, label %bb.b
    i32 8925, label %bb.b
    i32 8926, label %bb.b
    i32 8927, label %bb.b
    i32 8928, label %bb.b
    i32 8929, label %bb.b
    i32 8930, label %bb.b
    i32 8931, label %bb.b
end_hunk_0
