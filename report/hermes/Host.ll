Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/hermes/original/Host?download=true
inline.NumInlined: 664
inline.NumDeleted: 237
begin_hunk_0_@_ZN4llvh3sys6detail24getHostCPUNameForPowerPCENS_9StringRefE:bb.a
  br i1 %.not80, label %.critedge10, label %bb.h

bb.h:                                             ; preds = %.lr.ph626
  %i.aj = getelementptr inbounds nuw i8, ptr %.6625, i64 1 ; 2 uses
  %exitcond.not = icmp eq ptr %i.aj, %scevgep647
  br i1 %exitcond.not, label %.critedge10, label %.lr.ph626, !llvm.loop !230

.critedge10:                                      ; preds = %bb.h, %.lr.ph626, %.critedge81
  %.7 = phi ptr [ %.5, %.critedge81 ], [ %scevgep647, %bb.h ], [ %.6625, %.lr.ph626 ] ; 2 uses
  %i.ak = icmp ult ptr %.7, %i.a
  br i1 %i.ak, label %.lr.ph632, label %.critedge, !llvm.loop !231

_ZNK4llvh9StringRef6equalsES0_.exit208:           ; preds = %._crit_edge.thread
  %i.al = load i32, ptr %.3612, align 1
  %i.am = icmp ne i32 %i.al, 1697919030
  %i.an = zext i1 %i.am to i32
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit202

_ZNK4llvh9StringRef6equalsES0_.exit205:           ; preds = %._crit_edge.thread
  %i.ap = load i16, ptr %.3612, align 1
  %i.aq = xor i16 %i.ap, 12342
  %i.ar = getelementptr i8, ptr %.3612, i64 2
  %i.as = load i8, ptr %i.ar, align 1
  %i.at = zext i8 %i.as to i16
  %i.au = xor i16 %i.at, 52
  %i.av = or i16 %i.aq, %i.au
  %i.aw = icmp ne i16 %i.av, 0
  %i.ax = zext i1 %i.aw to i32
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit202:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit208
  %i.az = load i32, ptr %.3612, align 1
  %i.ba = icmp ne i32 %i.az, 808465463
  %i.bb = zext i1 %i.ba to i32
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit199

_ZNK4llvh9StringRef6equalsES0_.exit199:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit202
  %i.bd = load i32, ptr %.3612, align 1
  %i.be = icmp ne i32 %i.bd, 808530999
  %i.bf = zext i1 %i.be to i32
  %i.bg = icmp eq i32 %i.bf, 0
  br i1 %i.bg, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit196

_ZNK4llvh9StringRef6equalsES0_.exit196:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit199
  %i.bh = load i32, ptr %.3612, align 1
  %i.bi = icmp ne i32 %i.bh, 926168119
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit193

_ZNK4llvh9StringRef6equalsES0_.exit193:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit196
  %i.bl = load i32, ptr %.3612, align 1
  %i.bm = icmp ne i32 %i.bl, 892679223
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit190:           ; preds = %._crit_edge.thread
  %i.bp = load i16, ptr %.3612, align 1
  %i.bq = icmp ne i16 %i.bp, 13383
  %i.br = zext i1 %i.bq to i32
  %i.bs = icmp eq i32 %i.br, 0
  br i1 %i.bs, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit178

_ZNK4llvh9StringRef6equalsES0_.exit187:           ; preds = %._crit_edge.thread
  %i.bt = load i32, ptr %.3612, align 1
  %i.bu = xor i32 %i.bt, 1163349840
  %i.bv = getelementptr i8, ptr %.3612, i64 4
  %i.bw = load i16, ptr %i.bv, align 1
  %i.bx = zext i16 %i.bw to i32
  %i.by = xor i32 %i.bx, 13394
  %i.bz = or i32 %i.bu, %i.by
  %i.ca = icmp ne i32 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit175

_ZNK4llvh9StringRef6equalsES0_.exit184:           ; preds = %._crit_edge.thread
  %i.cd = load i64, ptr %.3612, align 1
  %i.ce = icmp ne i64 %i.cd, 6360824537449451600
  %i.cf = zext i1 %i.ce to i32
  %i.cg = icmp eq i32 %i.cf, 0
  br i1 %i.cg, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit181

_ZNK4llvh9StringRef6equalsES0_.exit181:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit184
  %i.ch = load i64, ptr %.3612, align 1
  %i.ci = icmp ne i64 %i.ch, 5786334109983002704
  %i.cj = zext i1 %i.ci to i32
  %i.ck = icmp eq i32 %i.cj, 0
  br i1 %i.ck, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit178:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit190
  %i.cl = load i16, ptr %.3612, align 1
  %i.cm = icmp ne i16 %i.cl, 13639
  %i.cn = zext i1 %i.cm to i32
  %i.co = icmp eq i32 %i.cn, 0
  br i1 %i.co, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit172

_ZNK4llvh9StringRef6equalsES0_.exit175:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit187
  %i.cp = load i32, ptr %.3612, align 1
  %i.cq = xor i32 %i.cp, 1163349840
  %i.cr = getelementptr i8, ptr %.3612, i64 4
  %i.cs = load i16, ptr %i.cr, align 1
  %i.ct = zext i16 %i.cs to i32
  %i.cu = xor i32 %i.ct, 13650
  %i.cv = or i32 %i.cq, %i.cu
  %i.cw = icmp ne i32 %i.cv, 0
  %i.cx = zext i1 %i.cw to i32
  %i.cy = icmp eq i32 %i.cx, 0
  br i1 %i.cy, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit169

_ZNK4llvh9StringRef6equalsES0_.exit172:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit178
  %i.cz = load i16, ptr %.3612, align 1
  %i.da = icmp ne i16 %i.cz, 12865
  %i.db = zext i1 %i.da to i32
  %i.dc = icmp eq i32 %i.db, 0
  br i1 %i.dc, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit169:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit175
  %i.dd = load i32, ptr %.3612, align 1
  %i.de = xor i32 %i.dd, 1163349840
  %i.df = getelementptr i8, ptr %.3612, i64 4
  %i.dg = load i16, ptr %i.df, align 1
  %i.dh = zext i16 %i.dg to i32
  %i.di = xor i32 %i.dh, 13906
  %i.dj = or i32 %i.de, %i.di
  %i.dk = icmp ne i32 %i.dj, 0
  %i.dl = zext i1 %i.dk to i32
  %i.dm = icmp eq i32 %i.dl, 0
  br i1 %i.dm, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit166

_ZNK4llvh9StringRef6equalsES0_.exit166:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit169
  %i.dn = load i32, ptr %.3612, align 1
  %i.do = xor i32 %i.dn, 1163349840
  %i.dp = getelementptr i8, ptr %.3612, i64 4
  %i.dq = load i16, ptr %i.dp, align 1
  %i.dr = zext i16 %i.dq to i32
  %i.ds = xor i32 %i.dr, 14162
  %i.dt = or i32 %i.do, %i.ds
  %i.du = icmp ne i32 %i.dt, 0
  %i.dv = zext i1 %i.du to i32
  %i.dw = icmp eq i32 %i.dv, 0
  br i1 %i.dw, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit163

_ZNK4llvh9StringRef6equalsES0_.exit163:           ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit166
  %i.dx = load i32, ptr %.3612, align 1
  %i.dy = xor i32 %i.dx, 1163349840
  %i.dz = getelementptr i8, ptr %.3612, i64 4
  %i.ea = load i16, ptr %i.dz, align 1
  %i.eb = zext i16 %i.ea to i32
  %i.ec = xor i32 %i.eb, 14418
  %i.ed = or i32 %i.dy, %i.ec
  %i.ee = icmp ne i32 %i.ed, 0
  %i.ef = zext i1 %i.ee to i32
  %i.eg = icmp eq i32 %i.ef, 0
  br i1 %i.eg, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZNK4llvh9StringRef6equalsES0_.exit

_ZNK4llvh9StringRef6equalsES0_.exit160:           ; preds = %._crit_edge.thread
  %i.eh = load i32, ptr %.3612, align 1
  %i.ei = xor i32 %i.eh, 1163349840
  %i.ej = getelementptr i8, ptr %.3612, i64 3
  %i.ek = load i32, ptr %i.ej, align 1
  %i.el = xor i32 %i.ek, 1161318981
  %i.em = or i32 %i.ei, %i.el
  %i.en = icmp ne i32 %i.em, 0
  %i.eo = zext i1 %i.en to i32
  %i.ep = icmp eq i32 %i.eo, 0
  br i1 %i.ep, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit157:           ; preds = %._crit_edge.thread
  %i.eq = load i64, ptr %.3612, align 1
  %i.er = xor i64 %i.eq, 6218970061447057232
  %i.es = getelementptr i8, ptr %.3612, i64 8
  %i.et = load i8, ptr %i.es, align 1
  %i.eu = zext i8 %i.et to i64
  %i.ev = xor i64 %i.eu, 76
  %i.ew = or i64 %i.er, %i.ev
  %i.ex = icmp ne i64 %i.ew, 0
  %i.ey = zext i1 %i.ex to i32
  %i.ez = icmp eq i32 %i.ey, 0
  br i1 %i.ez, label %_ZN4llvh9StringRefC2EPKc.exit, label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit163
  %i.fa = load i32, ptr %.3612, align 1
  %i.fb = xor i32 %i.fa, 1163349840
  %i.fc = getelementptr i8, ptr %.3612, i64 4
  %i.fd = load i16, ptr %i.fc, align 1
  %i.fe = zext i16 %i.fd to i32
  %i.ff = xor i32 %i.fe, 14674
  %i.fg = or i32 %i.fb, %i.ff
  %i.fh = icmp ne i32 %i.fg, 0
  %i.fi = zext i1 %i.fh to i32
  %i.fj = icmp eq i32 %i.fi, 0
  %spec.select586 = select i1 %i.fj, ptr @.str.29, ptr @.str.1
  br label %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread

_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread: ; preds = %._crit_edge.thread, %_ZNK4llvh9StringRef6equalsES0_.exit, %_ZNK4llvh9StringRef6equalsES0_.exit181, %_ZNK4llvh9StringRef6equalsES0_.exit193, %_ZNK4llvh9StringRef6equalsES0_.exit205, %_ZNK4llvh9StringRef6equalsES0_.exit172, %_ZNK4llvh9StringRef6equalsES0_.exit160, %_ZNK4llvh9StringRef6equalsES0_.exit157
  %.0.i.ph = phi ptr [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit181 ], [ %spec.select586, %_ZNK4llvh9StringRef6equalsES0_.exit ], [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit193 ], [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit160 ], [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit157 ], [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit172 ], [ @.str.1, %_ZNK4llvh9StringRef6equalsES0_.exit205 ], [ @.str.1, %._crit_edge.thread ]
  br label %_ZN4llvh9StringRefC2EPKc.exit

_ZN4llvh9StringRefC2EPKc.exit:                    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit157, %_ZNK4llvh9StringRef6equalsES0_.exit160, %_ZNK4llvh9StringRef6equalsES0_.exit163, %_ZNK4llvh9StringRef6equalsES0_.exit166, %_ZNK4llvh9StringRef6equalsES0_.exit169, %_ZNK4llvh9StringRef6equalsES0_.exit172, %_ZNK4llvh9StringRef6equalsES0_.exit175, %_ZNK4llvh9StringRef6equalsES0_.exit178, %_ZNK4llvh9StringRef6equalsES0_.exit181, %_ZNK4llvh9StringRef6equalsES0_.exit184, %_ZNK4llvh9StringRef6equalsES0_.exit187, %_ZNK4llvh9StringRef6equalsES0_.exit190, %_ZNK4llvh9StringRef6equalsES0_.exit193, %_ZNK4llvh9StringRef6equalsES0_.exit196, %_ZNK4llvh9StringRef6equalsES0_.exit199, %_ZNK4llvh9StringRef6equalsES0_.exit202, %_ZNK4llvh9StringRef6equalsES0_.exit205, %_ZNK4llvh9StringRef6equalsES0_.exit208, %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread
  %.0.i542 = phi ptr [ %.0.i.ph, %_ZN4llvh12StringSwitchIPKcS2_E7DefaultES2_.exit.thread ], [ @.str.10, %_ZNK4llvh9StringRef6equalsES0_.exit190 ], [ @.str.25, %_ZNK4llvh9StringRef6equalsES0_.exit160 ], [ @.str.25, %_ZNK4llvh9StringRef6equalsES0_.exit163 ], [ @.str.23, %_ZNK4llvh9StringRef6equalsES0_.exit166 ], [ @.str.21, %_ZNK4llvh9StringRef6equalsES0_.exit169 ], [ @.str.19, %_ZNK4llvh9StringRef6equalsES0_.exit172 ], [ @.str.16, %_ZNK4llvh9StringRef6equalsES0_.exit175 ], [ @.str.16, %_ZNK4llvh9StringRef6equalsES0_.exit178 ], [ @.str.12, %_ZNK4llvh9StringRef6equalsES0_.exit181 ], [ @.str.12, %_ZNK4llvh9StringRef6equalsES0_.exit184 ], [ @.str.12, %_ZNK4llvh9StringRef6equalsES0_.exit187 ], [ @.str.8, %_ZNK4llvh9StringRef6equalsES0_.exit193 ], [ @.str.4, %_ZNK4llvh9StringRef6equalsES0_.exit196 ], [ @.str.4, %_ZNK4llvh9StringRef6equalsES0_.exit199 ], [ @.str.4, %_ZNK4llvh9StringRef6equalsES0_.exit202 ], [ @.str.3, %_ZNK4llvh9StringRef6equalsES0_.exit205 ], [ @.str.2, %_ZNK4llvh9StringRef6equalsES0_.exit208 ], [ @.str.25, %_ZNK4llvh9StringRef6equalsES0_.exit157 ] ; 2 uses
  %i.fk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i542) #22
  br label %.critedge

.critedge:                                        ; preds = %.critedge10, %bb.a, %_ZN4llvh9StringRefC2EPKc.exit
  %.sroa.3288.0 = phi i64 [ %i.fk, %_ZN4llvh9StringRefC2EPKc.exit ], [ 7, %bb.a ], [ 7, %.critedge10 ]
  %.sroa.0287.0 = phi ptr [ %.0.i542, %_ZN4llvh9StringRefC2EPKc.exit ], [ @.str.1, %bb.a ], [ @.str.1, %.critedge10 ]
  %.fca.0.insert = insertvalue { ptr, i64 } poison, ptr %.sroa.0287.0, 0
  %.fca.1.insert = insertvalue { ptr, i64 } %.fca.0.insert, i64 %.sroa.3288.0, 1
  ret { ptr, i64 } %.fca.1.insert
}

; Function Attrs: mustprogress nounwind uwtable
define hidden { ptr, i64 } @_ZN4llvh3sys6detail20getHostCPUNameForARMENS_9StringRefE(ptr %0, i64 %1) local_unnamed_addr #0 !guid !237 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.llvh::StringRef", align 8   ; 3 uses
  %3 = alloca %"class.llvh::SmallVector", align 8 ; 16 uses
  %4 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %5 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %6 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %7 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %8 = alloca %"class.llvh::StringRef", align 8   ; 6 uses
  %9 = alloca %"class.llvh::StringRef", align 8   ; 8 uses
  %10 = alloca %"class.llvh::StringRef", align 8  ; 8 uses
  store ptr %0, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 %1, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #20
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr %i.d, ptr %3, align 8, !tbaa !195
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 7 uses
  store i32 0, ptr %i.e, align 8, !tbaa !196
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 32, ptr %i.f, align 4, !tbaa !197
  call void @_ZNK4llvh9StringRef5splitERNS_15SmallVectorImplIS0_EES0_ib(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr nonnull @.str.30, i64 1, i32 noundef -1, i1 noundef zeroext true) #20
  %i.g = load i32, ptr %i.e, align 8, !tbaa !196  ; 2 uses
  %.not1155 = icmp eq i32 %i.g, 0
  br i1 %.not1155, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.j = zext i32 %i.g to i64
  %.pre1205 = load ptr, ptr %3, align 8, !tbaa !195
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit204.thread
  %i.k = icmp eq i64 %.sroa.9567.11235, 4
  br i1 %i.k, label %_ZNK4llvh9StringRef6equalsES0_.exit, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782

_ZNK4llvh9StringRef6equalsES0_.exit:              ; preds = %._crit_edge
  %i.l = load i32, ptr %.sroa.0566.11232, align 1
  %i.m = icmp ne i32 %i.l, 825522224
  %i.n = zext i1 %i.m to i32
  %i.o = icmp eq i32 %i.n, 0
  br i1 %i.o, label %_ZNK4llvh9StringRef6equalsES0_.exit.thread776, label %_ZNK4llvh9StringRef6equalsES0_.exit258

bb.b:                                             ; preds = %.lr.ph, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread
  %i.p = phi ptr [ %.pre1205, %.lr.ph ], [ %i.bf, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread ] ; 4 uses
  %.sroa.6.01159 = phi i64 [ 0, %.lr.ph ], [ %.sroa.6.1, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread ] ; 2 uses
  %.sroa.0561.01158 = phi ptr [ null, %.lr.ph ], [ %.sroa.0561.1, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread ] ; 2 uses
  %.sroa.9567.01157 = phi i64 [ 0, %.lr.ph ], [ %.sroa.9567.11235, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread ] ; 2 uses
  %.sroa.0566.01156 = phi ptr [ null, %.lr.ph ], [ %.sroa.0566.11232, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %indvars.iv ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !199  ; 2 uses
  %.not.i205 = icmp ult i64 %i.s, 15
  br i1 %.not.i205, label %_ZNK4llvh9StringRef10startswithES0_.exit206.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit206

_ZNK4llvh9StringRef10startswithES0_.exit206:      ; preds = %bb.b
  %i.t = load ptr, ptr %i.q, align 8, !tbaa !200  ; 2 uses
  %i.u = load i64, ptr %i.t, align 1
  %i.v = xor i64 %i.u, 7813865651769266243
  %i.w = getelementptr i8, ptr %i.t, i64 7
  %i.x = load i64, ptr %i.w, align 1
  %i.y = xor i64 %i.x, 8243122710468453740
  %i.z = or i64 %i.v, %i.y
  %i.aa = icmp ne i64 %i.z, 0
  %i.ab = zext i1 %i.aa to i32
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %_ZNK4llvh9StringRef10startswithES0_.exit206.thread778, label %_ZNK4llvh9StringRef10startswithES0_.exit204

_ZNK4llvh9StringRef10startswithES0_.exit206.thread778: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit206
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #20
  %i.ad = load i64, ptr %i.r, align 8, !tbaa !192 ; 2 uses
  %.sroa.speculated666 = call i64 @llvm.umin.i64(i64 %i.ad, i64 15) ; 2 uses
  %i.ae = load ptr, ptr %i.q, align 8, !tbaa !200
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.speculated666
  %i.ag = sub i64 %i.ad, %.sroa.speculated666
  store ptr %i.af, ptr %4, align 8
  store i64 %i.ag, ptr %i.h, align 8
  %i.ah = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr nonnull @.str.32, i64 3, i64 noundef 0) #20
  %i.ai = load i64, ptr %i.h, align 8, !tbaa !192 ; 2 uses
  %.sroa.speculated.i = call i64 @llvm.umin.i64(i64 %i.ah, i64 %i.ai) ; 2 uses
  %i.aj = load ptr, ptr %4, align 8, !tbaa !200
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %.sroa.speculated.i
  %i.al = sub i64 %i.ai, %.sroa.speculated.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #20
  %.pre1206 = load ptr, ptr %3, align 8, !tbaa !195 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [16 x i8], ptr %.pre1206, i64 %indvars.iv
  %.phi.trans.insert1209 = getelementptr inbounds nuw i8, ptr %.phi.trans.insert, i64 8
  %.pre1210 = load i64, ptr %.phi.trans.insert1209, align 8, !tbaa !199
  br label %_ZNK4llvh9StringRef10startswithES0_.exit206.thread

_ZNK4llvh9StringRef10startswithES0_.exit206.thread: ; preds = %bb.b, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread778
  %i.am = phi i64 [ %.pre1210, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread778 ], [ %i.s, %bb.b ]
  %i.an = phi ptr [ %.pre1206, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread778 ], [ %i.p, %bb.b ] ; 2 uses
  %.sroa.0566.1 = phi ptr [ %i.ak, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread778 ], [ %.sroa.0566.01156, %bb.b ] ; 2 uses
  %.sroa.9567.1 = phi i64 [ %i.al, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread778 ], [ %.sroa.9567.01157, %bb.b ] ; 2 uses
  %.not.i203 = icmp ult i64 %i.am, 8
  br i1 %.not.i203, label %_ZNK4llvh9StringRef10startswithES0_.exit204.thread, label %_ZNK4llvh9StringRef10startswithES0_.exit204

_ZNK4llvh9StringRef10startswithES0_.exit204:      ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit206, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread
  %.sroa.9567.11234 = phi i64 [ %.sroa.9567.1, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ], [ %.sroa.9567.01157, %_ZNK4llvh9StringRef10startswithES0_.exit206 ] ; 2 uses
  %.sroa.0566.11231 = phi ptr [ %.sroa.0566.1, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ], [ %.sroa.0566.01156, %_ZNK4llvh9StringRef10startswithES0_.exit206 ] ; 2 uses
  %i.ao = phi ptr [ %i.an, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ], [ %i.p, %_ZNK4llvh9StringRef10startswithES0_.exit206 ] ; 2 uses
  %i.ap = getelementptr inbounds nuw [16 x i8], ptr %i.ao, i64 %indvars.iv ; 3 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !200
  %i.ar = load i64, ptr %i.aq, align 1
  %i.as = icmp ne i64 %i.ar, 7310012310589956424
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780, label %_ZNK4llvh9StringRef10startswithES0_.exit204.thread

_ZNK4llvh9StringRef10startswithES0_.exit204.thread780: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit204
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #20
  %i.aw = load i64, ptr %i.av, align 8, !tbaa !192 ; 2 uses
  %.sroa.speculated652 = call i64 @llvm.umin.i64(i64 %i.aw, i64 8) ; 2 uses
  %i.ax = load ptr, ptr %i.ap, align 8, !tbaa !200
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.speculated652
  %i.az = sub i64 %i.aw, %.sroa.speculated652
  store ptr %i.ay, ptr %5, align 8
  store i64 %i.az, ptr %i.i, align 8
  %i.ba = call noundef i64 @_ZNK4llvh9StringRef17find_first_not_ofES0_m(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr nonnull @.str.32, i64 3, i64 noundef 0) #20
  %i.bb = load i64, ptr %i.i, align 8, !tbaa !192 ; 2 uses
  %.sroa.speculated.i361 = call i64 @llvm.umin.i64(i64 %i.ba, i64 %i.bb) ; 2 uses
  %i.bc = load ptr, ptr %5, align 8, !tbaa !200
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.sroa.speculated.i361
  %i.be = sub i64 %i.bb, %.sroa.speculated.i361
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #20
  %.pre = load ptr, ptr %3, align 8, !tbaa !195
  br label %_ZNK4llvh9StringRef10startswithES0_.exit204.thread

_ZNK4llvh9StringRef10startswithES0_.exit204.thread: ; preds = %_ZNK4llvh9StringRef10startswithES0_.exit206.thread, %_ZNK4llvh9StringRef10startswithES0_.exit204, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780
  %.sroa.9567.11235 = phi i64 [ %.sroa.9567.11234, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780 ], [ %.sroa.9567.11234, %_ZNK4llvh9StringRef10startswithES0_.exit204 ], [ %.sroa.9567.1, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ] ; 2 uses
  %.sroa.0566.11232 = phi ptr [ %.sroa.0566.11231, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780 ], [ %.sroa.0566.11231, %_ZNK4llvh9StringRef10startswithES0_.exit204 ], [ %.sroa.0566.1, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ] ; 6 uses
  %i.bf = phi ptr [ %.pre, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780 ], [ %i.ao, %_ZNK4llvh9StringRef10startswithES0_.exit204 ], [ %i.an, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ]
  %.sroa.0561.1 = phi ptr [ %i.bd, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780 ], [ %.sroa.0561.01158, %_ZNK4llvh9StringRef10startswithES0_.exit204 ], [ %.sroa.0561.01158, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ] ; 3 uses
  %.sroa.6.1 = phi i64 [ %i.be, %_ZNK4llvh9StringRef10startswithES0_.exit204.thread780 ], [ %.sroa.6.01159, %_ZNK4llvh9StringRef10startswithES0_.exit204 ], [ %.sroa.6.01159, %_ZNK4llvh9StringRef10startswithES0_.exit206.thread ] ; 4 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.j
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !233

_ZNK4llvh9StringRef6equalsES0_.exit.thread776:    ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit
  %.not.i228 = icmp ult i64 %.sroa.6.1, 7
  br i1 %.not.i228, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread, label %_ZNK4llvh9StringRef8endswithES0_.exit229

_ZNK4llvh9StringRef8endswithES0_.exit229:         ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread776
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.0561.1, i64 %.sroa.6.1
  %i.bh = getelementptr inbounds i8, ptr %i.bg, i64 -7 ; 2 uses
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 944591693
  %i.bk = getelementptr i8, ptr %i.bh, i64 3
  %i.bl = load i32, ptr %i.bk, align 1
  %i.bm = xor i32 %i.bl, 876165432
  %i.bn = or i32 %i.bj, %i.bm
  %i.bo = icmp ne i32 %i.bn, 0
  %i.bp = zext i1 %i.bo to i32
  %i.bq = icmp eq i32 %i.bp, 0
  br i1 %i.bq, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782, label %_ZNK4llvh9StringRef8endswithES0_.exit

_ZNK4llvh9StringRef8endswithES0_.exit:            ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit229
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.0561.1, i64 %.sroa.6.1
  %i.bs = getelementptr inbounds i8, ptr %i.br, i64 -7 ; 2 uses
  %i.bt = load i32, ptr %i.bs, align 1
  %i.bu = xor i32 %i.bt, 944591693
  %i.bv = getelementptr i8, ptr %i.bs, i64 3
  %i.bw = load i32, ptr %i.bv, align 1
  %i.bx = xor i32 %i.bw, 909719864
  %i.by = or i32 %i.bu, %i.bx
  %i.bz = icmp ne i32 %i.by, 0
  %i.ca = zext i1 %i.bz to i32
  %i.cb = icmp eq i32 %i.ca, 0
  br i1 %i.cb, label %_ZNK4llvh9StringRef8endswithES0_.exit229.thread782, label %_ZNK4llvh9StringRef8endswithES0_.exit.thread

_ZNK4llvh9StringRef8endswithES0_.exit.thread:     ; preds = %_ZNK4llvh9StringRef6equalsES0_.exit.thread776, %_ZNK4llvh9StringRef8endswithES0_.exit
  %i.cc = load i32, ptr %i.e, align 8, !tbaa !196 ; 2 uses
  %.not631165 = icmp eq i32 %i.cc, 0
  br i1 %.not631165, label %_ZNK4llvh9StringRef6equalsES0_.exit258, label %.lr.ph1167

.lr.ph1167:                                       ; preds = %_ZNK4llvh9StringRef8endswithES0_.exit.thread
  %i.cd = load ptr, ptr %3, align 8, !tbaa !195
  %i.ce = zext i32 %i.cc to i64
end_hunk_0
