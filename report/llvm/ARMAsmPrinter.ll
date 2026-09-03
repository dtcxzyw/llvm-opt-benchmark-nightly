Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm/original/ARMAsmPrinter?download=true
inline.NumInlined: 3402
inline.NumDeleted: 998
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN4llvm13ARMAsmPrinter15PrintAsmOperandEPKNS_12MachineInstrEjPKcRNS_11raw_ostreamE:bb.a
  %.0135.in = xor i1 %i.hy, %i.ib                 ; 2 uses
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.id = load ptr, ptr %i.ic, align 8, !tbaa !195
  %i.ie = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !628, !nonnull !166, !align !167 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !15
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 200
  %i.ii = load ptr, ptr %i.ih, align 8
  %i.ij = tail call noundef ptr %i.ii(ptr noundef nonnull align 8 dereferenceable(344) %i.if) #17
  %i.ik = icmp slt i32 %.sroa.0185.0, 0
  br i1 %i.ik, label %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread, label %bb.af

bb.af:                                            ; preds = %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread
  %i.il = lshr i32 %.sroa.0185.0, 16
  %i.im = and i32 %i.il, 16383                    ; 2 uses
  %.not.i164 = icmp eq i32 %i.im, 0
  br i1 %.not.i164, label %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.in = getelementptr inbounds nuw i8, ptr %i.ij, i64 32
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !855
  %i.ip = zext nneg i32 %i.im to i64
  %i.iq = getelementptr [64 x i8], ptr %i.io, i64 %i.ip
  %i.ir = getelementptr i8, ptr %i.iq, i64 -44
  %i.is = load i16, ptr %i.ir, align 4, !tbaa !856
  %i.it = zext i16 %i.is to i32                   ; 2 uses
  %i.iu = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3484), align 4, !tbaa !857
  %i.iv = zext i32 %i.iu to i64
  %i.iw = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3456), i64 %i.iv
  %i.ix = lshr i32 %i.it, 5
  %i.iy = zext nneg i32 %i.ix to i64
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.iw, i64 %i.iy
  %i.ja = load i32, ptr %i.iz, align 4, !tbaa !657
  %i.jb = and i32 %i.it, 31
  %i.jc = lshr i32 %i.ja, %i.jb
  %i.jd = trunc i32 %i.jc to i1
  br i1 %i.jd, label %bb.ah, label %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread

bb.ah:                                            ; preds = %bb.ag
  %.not145 = icmp eq i32 %i.hv, 1
  br i1 %.not145, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  %i.je = load ptr, ptr %i.fz, align 8, !tbaa !580
  %i.jf = zext i32 %.1131 to i64
  %i.jg = getelementptr inbounds nuw [32 x i8], ptr %i.je, i64 %i.jf ; 2 uses
  %i.jh = load i32, ptr %i.jg, align 8
  %i.ji = and i32 %i.jh, 255
  %.not243 = icmp eq i32 %i.ji, 0
  br i1 %.not243, label %bb.aj, label %.thread

bb.aj:                                            ; preds = %bb.ai
  %i.jj = load ptr, ptr %i.ic, align 8, !tbaa !195
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !628, !nonnull !166, !align !167 ; 2 uses
  %i.jm = load ptr, ptr %i.jl, align 8, !tbaa !15
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jm, i64 200
  %i.jo = load ptr, ptr %i.jn, align 8
  %i.jp = tail call noundef ptr %i.jo(ptr noundef nonnull align 8 dereferenceable(344) %i.jl) #17
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jg, i64 4
  %i.jr = load i32, ptr %i.jq, align 4, !tbaa !194
  %i.js = select i1 %.0135.in, i32 9, i32 10
  %i.jt = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.jp, i32 %i.jr, i32 noundef %i.js) #17
  %i.ju = tail call noundef ptr @_ZN4llvm14ARMInstPrinter15getRegisterNameENS_10MCRegisterEj(i32 %i.jt, i32 noundef 0) #17
  %i.jv = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ju) ; 0 uses
  br label %.thread

_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread: ; preds = %bb.af, %_ZNK4llvm9InlineAsm4Flag21isUseOperandTiedToDefERj.exit.thread, %bb.ag
  %.not143 = icmp eq i32 %i.hv, 2
  br i1 %.not143, label %bb.ak, label %.thread

bb.ak:                                            ; preds = %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread
  %not..0135.in = xor i1 %.0135.in, true
  %i.jw = zext i1 %not..0135.in to i32
  %i.jx = add i32 %.1131, %i.jw                   ; 2 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.jz = load i24, ptr %i.jy, align 8
  %i.ka = zext i24 %i.jz to i32
  %.not144 = icmp ult i32 %i.jx, %i.ka
  br i1 %.not144, label %bb.al, label %.thread

bb.al:                                            ; preds = %bb.ak
  %i.kb = load ptr, ptr %i.fz, align 8, !tbaa !580
  %i.kc = zext nneg i32 %i.jx to i64
  %i.kd = getelementptr inbounds nuw [32 x i8], ptr %i.kb, i64 %i.kc ; 2 uses
  %i.ke = load i32, ptr %i.kd, align 8
  %i.kf = and i32 %i.ke, 255
  %.not244 = icmp eq i32 %i.kf, 0
  br i1 %.not244, label %bb.am, label %.thread

bb.am:                                            ; preds = %bb.al
  %i.kg = getelementptr inbounds nuw i8, ptr %i.kd, i64 4
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !194
  %i.ki = tail call noundef ptr @_ZN4llvm14ARMInstPrinter15getRegisterNameENS_10MCRegisterEj(i32 %i.kh, i32 noundef 0) #17
  %i.kj = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ki) ; 0 uses
  br label %.thread

bb.an:                                            ; preds = %bb.d, %bb.d
  %i.kk = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !580
  %i.km = zext i32 %2 to i64
  %i.kn = getelementptr inbounds nuw [32 x i8], ptr %i.kl, i64 %i.km ; 2 uses
  %i.ko = load i32, ptr %i.kn, align 8
  %i.kp = and i32 %i.ko, 255
  %i.kq = icmp eq i32 %i.kp, 0
  br i1 %i.kq, label %bb.ao, label %.thread

bb.ao:                                            ; preds = %bb.an
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kn, i64 4
  %i.ks = load i32, ptr %i.kr, align 4, !tbaa !194 ; 3 uses
  %i.kt = lshr i32 %i.ks, 3                       ; 2 uses
  %i.ku = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 4434), align 2, !tbaa !583
  %i.kv = zext i16 %i.ku to i32
  %.not.i166 = icmp samesign ult i32 %i.kt, %i.kv
  br i1 %.not.i166, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit168, label %.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit168: ; preds = %bb.ao
  %i.kw = and i32 %i.ks, 7
  %i.kx = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 4420), align 4, !tbaa !584
  %i.ky = zext i32 %i.kx to i64
  %i.kz = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 4416), i64 %i.ky
  %i.la = zext nneg i32 %i.kt to i64
  %i.lb = getelementptr inbounds nuw i8, ptr %i.kz, i64 %i.la
  %i.lc = load i8, ptr %i.lb, align 1, !tbaa !194
  %i.ld = zext i8 %i.lc to i32
  %i.le = shl nuw nsw i32 1, %i.kw
  %i.lf = and i32 %i.le, %i.ld
  %.not227 = icmp eq i32 %i.lf, 0
  br i1 %.not227, label %.thread, label %bb.ap

bb.ap:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit168
  %i.lg = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.lh = load ptr, ptr %i.lg, align 8, !tbaa !195
  %i.li = getelementptr inbounds nuw i8, ptr %i.lh, i64 16
  %i.lj = load ptr, ptr %i.li, align 8, !tbaa !628, !nonnull !166, !align !167 ; 2 uses
  %i.lk = load ptr, ptr %i.lj, align 8, !tbaa !15
  %i.ll = getelementptr inbounds nuw i8, ptr %i.lk, i64 200
  %i.lm = load ptr, ptr %i.ll, align 8
  %i.ln = tail call noundef ptr %i.lm(ptr noundef nonnull align 8 dereferenceable(344) %i.lj) #17
  %i.lo = load i8, ptr %3, align 1, !tbaa !194
  %i.lp = icmp eq i8 %i.lo, 101
  %i.lq = select i1 %i.lp, i32 1, i32 2
  %i.lr = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.ln, i32 %i.ks, i32 noundef %i.lq) #17
  %i.ls = tail call noundef ptr @_ZN4llvm14ARMInstPrinter15getRegisterNameENS_10MCRegisterEj(i32 %i.lr, i32 noundef 0) #17
  %i.lt = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.ls) ; 0 uses
  br label %.thread

bb.aq:                                            ; preds = %bb.d
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.lv = load ptr, ptr %i.lu, align 8, !tbaa !580
  %i.lw = zext i32 %2 to i64
  %i.lx = getelementptr inbounds nuw [32 x i8], ptr %i.lv, i64 %i.lw ; 2 uses
  %i.ly = load i32, ptr %i.lx, align 8
  %i.lz = and i32 %i.ly, 255
  %.not242 = icmp eq i32 %i.lz, 0
  br i1 %.not242, label %bb.ar, label %.thread

bb.ar:                                            ; preds = %bb.aq
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.mb = load ptr, ptr %i.ma, align 8, !tbaa !585
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 32
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !627
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 16
  %i.mf = load ptr, ptr %i.me, align 8, !tbaa !628, !nonnull !166, !align !167 ; 2 uses
  %i.mg = load ptr, ptr %i.mf, align 8, !tbaa !15
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 200
  %i.mi = load ptr, ptr %i.mh, align 8
  %i.mj = tail call noundef ptr %i.mi(ptr noundef nonnull align 8 dereferenceable(344) %i.mf) #17
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lx, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !194 ; 3 uses
  %i.mm = lshr i32 %i.ml, 3                       ; 2 uses
  %i.mn = load i16, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3474), align 2, !tbaa !583
  %i.mo = zext i16 %i.mn to i32
  %.not.i169 = icmp samesign ult i32 %i.mm, %i.mo
  br i1 %.not.i169, label %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit171, label %.thread

_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit171: ; preds = %bb.ar
  %i.mp = and i32 %i.ml, 7
  %i.mq = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3460), align 4, !tbaa !584
  %i.mr = zext i32 %i.mq to i64
  %i.ms = getelementptr inbounds nuw i8, ptr getelementptr inbounds nuw (i8, ptr @_ZN4llvm25ARMMCRegisterClassStorageE, i64 3456), i64 %i.mr
  %i.mt = zext nneg i32 %i.mm to i64
  %i.mu = getelementptr inbounds nuw i8, ptr %i.ms, i64 %i.mt
  %i.mv = load i8, ptr %i.mu, align 1, !tbaa !194
  %i.mw = zext i8 %i.mv to i32
  %i.mx = shl nuw nsw i32 1, %i.mp
  %i.my = and i32 %i.mx, %i.mw
  %.not226 = icmp eq i32 %i.my, 0
  br i1 %.not226, label %.thread, label %bb.as

bb.as:                                            ; preds = %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit171
  %i.mz = tail call i32 @_ZNK4llvm14MCRegisterInfo9getSubRegENS_10MCRegisterEj(ptr noundef nonnull align 8 dereferenceable(240) %i.mj, i32 %i.ml, i32 noundef 10) #17
  %i.na = tail call noundef ptr @_ZN4llvm14ARMInstPrinter15getRegisterNameENS_10MCRegisterEj(i32 %i.mz, i32 noundef 0) #17
  %i.nb = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostreamlsEPKc(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef %i.na) ; 0 uses
  br label %.thread

bb.at:                                            ; preds = %bb.b, %bb.a
  tail call void @_ZN4llvm13ARMAsmPrinter12printOperandEPKNS_12MachineInstrEiRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr noundef %1, i32 noundef %2, ptr noundef nonnull align 8 dereferenceable(48) %4)
  br label %.thread

.thread:                                          ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit150, %bb.h, %bb.aq, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit171, %bb.as, %bb.ar, %bb.ap, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit168, %bb.ao, %bb.am, %bb.al, %bb.aj, %bb.ai, %bb.n, %bb.o, %bb.ah, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread, %bb.ak, %bb.g, %bb.d, %bb.an, %bb.ad, %bb.ac, %bb.t, %bb.r, %bb.p, %bb.c, %bb.at, %._crit_edge237, %bb.s, %bb.q, %bb.f, %bb.e
  %.11 = phi i1 [ false, %bb.at ], [ %i.d, %bb.e ], [ false, %bb.f ], [ true, %bb.d ], [ true, %bb.ak ], [ false, %bb.q ], [ true, %bb.c ], [ false, %bb.s ], [ true, %bb.p ], [ false, %._crit_edge237 ], [ true, %bb.r ], [ true, %bb.t ], [ true, %bb.ac ], [ false, %bb.am ], [ true, %bb.ad ], [ true, %bb.an ], [ true, %bb.ao ], [ true, %bb.g ], [ false, %bb.n ], [ true, %_ZNK4llvm9InlineAsm4Flag21hasRegClassConstraintERj.exit.thread ], [ true, %bb.aq ], [ true, %bb.ah ], [ false, %bb.aj ], [ false, %bb.o ], [ true, %bb.ai ], [ true, %bb.al ], [ false, %bb.ap ], [ true, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit168 ], [ false, %bb.ar ], [ false, %bb.as ], [ false, %_ZNK4llvm15MCRegisterClass8containsENS_10MCRegisterE.exit171 ], [ true, %bb.h ], [ true, %_ZN4llvm11raw_ostreamlsEPKc.exit150 ]
  ret i1 %.11
}

declare noundef zeroext i1 @_ZN4llvm10AsmPrinter15PrintAsmOperandEPKNS_12MachineInstrEjPKcRNS_11raw_ostreamE(ptr noundef nonnull align 8 dereferenceable(1073), ptr noundef, i32 noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(48)) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define hidden noundef zeroext i1 @_ZN4llvm13ARMAsmPrinter21PrintAsmMemoryOperandEPKNS_12MachineInstrEjPKcRNS_11raw_ostreamE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, ptr nofree noundef readonly captures(address_is_null) %3, ptr noundef nonnull align 8 dereferenceable(48) %4) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %3, null
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr %3, align 1, !tbaa !194     ; 2 uses
  %.not16 = icmp eq i8 %i.a, 0
  br i1 %.not16, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 1
  %i.c = load i8, ptr %i.b, align 1, !tbaa !194
  %.not17 = icmp eq i8 %i.c, 0
  %cond = icmp eq i8 %i.a, 109
  %or.cond = and i1 %cond, %.not17
  br i1 %or.cond, label %bb.d, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !580
  %i.f = zext i32 %2 to i64
  %i.g = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %i.f ; 2 uses
  %i.h = load i32, ptr %i.g, align 8
  %i.i = and i32 %i.h, 255
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.e, label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !194
  %i.m = tail call noundef ptr @_ZN4llvm14ARMInstPrinter15getRegisterNameENS_10MCRegisterEj(i32 %i.l, i32 noundef 0) #17 ; 4 uses
  %.not.i.i = icmp eq ptr %i.m, null
  br i1 %.not.i.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %_ZN4llvm9StringRefC2EPKc.exit.i

_ZN4llvm9StringRefC2EPKc.exit.i:                  ; preds = %bb.e
  %i.n = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.m) #17 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !561
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !562  ; 2 uses
  %i.s = ptrtoint ptr %i.p to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = icmp ugt i64 %i.n, %i.u
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %i.w = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull %i.m, i64 noundef %i.n) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.g:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i
  %.not.i2.i = icmp eq i64 %i.n, 0
  br i1 %.not.i2.i, label %_ZN4llvm11raw_ostreamlsEPKc.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.r, ptr nonnull align 1 %i.m, i64 %i.n, i1 false)
  %i.x = load ptr, ptr %i.q, align 8, !tbaa !562
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 %i.n
  store ptr %i.y, ptr %i.q, align 8, !tbaa !562
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.i:                                             ; preds = %bb.b, %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !580
  %i.ab = zext i32 %2 to i64
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !561
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 3 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !562 ; 2 uses
  %i.ah = icmp eq ptr %i.ae, %i.ag
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ai = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %4, ptr noundef nonnull @.str.16, i64 noundef 1) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

bb.k:                                             ; preds = %bb.i
  store i8 91, ptr %i.ag, align 1
  %i.aj = load ptr, ptr %i.af, align 8, !tbaa !562
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 1
  store ptr %i.ak, ptr %i.af, align 8, !tbaa !562
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit21

_ZN4llvm11raw_ostreamlsEPKc.exit21:               ; preds = %bb.j, %bb.k
  %.0.i.i20 = phi ptr [ %i.ai, %bb.j ], [ %4, %bb.k ] ; 6 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ac, i64 4
  %i.am = load i32, ptr %i.al, align 4, !tbaa !194
  %i.an = tail call noundef ptr @_ZN4llvm14ARMInstPrinter15getRegisterNameENS_10MCRegisterEj(i32 %i.am, i32 noundef 0) #17 ; 4 uses
  %.not.i.i22 = icmp eq ptr %i.an, null
  br i1 %.not.i.i22, label %_ZN4llvm11raw_ostreamlsEPKc.exit26, label %_ZN4llvm9StringRefC2EPKc.exit.i23

_ZN4llvm9StringRefC2EPKc.exit.i23:                ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21
  %i.ao = tail call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.an) #17 ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 24
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !561
  %i.ar = getelementptr inbounds nuw i8, ptr %.0.i.i20, i64 32 ; 3 uses
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !562 ; 2 uses
  %i.at = ptrtoint ptr %i.aq to i64
  %i.au = ptrtoint ptr %i.as to i64
  %i.av = sub i64 %i.at, %i.au
  %i.aw = icmp ugt i64 %i.ao, %i.av
  br i1 %i.aw, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i23
  %i.ax = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i20, ptr noundef nonnull %i.an, i64 noundef %i.ao) #17
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

bb.m:                                             ; preds = %_ZN4llvm9StringRefC2EPKc.exit.i23
  %.not.i2.i24 = icmp eq i64 %i.ao, 0
  br i1 %.not.i2.i24, label %_ZN4llvm11raw_ostreamlsEPKc.exit26, label %bb.n

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.as, ptr nonnull align 1 %i.an, i64 %i.ao, i1 false)
  %i.ay = load ptr, ptr %i.ar, align 8, !tbaa !562
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 %i.ao
  store ptr %i.az, ptr %i.ar, align 8, !tbaa !562
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit26

_ZN4llvm11raw_ostreamlsEPKc.exit26:               ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit21, %bb.l, %bb.m, %bb.n
  %.0.i.i25 = phi ptr [ %i.ax, %bb.l ], [ %.0.i.i20, %bb.n ], [ %.0.i.i20, %bb.m ], [ %.0.i.i20, %_ZN4llvm11raw_ostreamlsEPKc.exit21 ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0.i.i25, i64 24
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !561
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.i.i25, i64 32 ; 3 uses
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !562 ; 2 uses
  %i.be = icmp eq ptr %i.bb, %i.bd
  br i1 %i.be, label %bb.o, label %bb.p

bb.o:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  %i.bf = tail call noundef nonnull align 8 dereferenceable(48) ptr @_ZN4llvm11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(48) %.0.i.i25, ptr noundef nonnull @.str.17, i64 noundef 1) #17 ; 0 uses
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

bb.p:                                             ; preds = %_ZN4llvm11raw_ostreamlsEPKc.exit26
  store i8 93, ptr %i.bd, align 1
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !562
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 1
  store ptr %i.bh, ptr %i.bc, align 8, !tbaa !562
  br label %_ZN4llvm11raw_ostreamlsEPKc.exit

_ZN4llvm11raw_ostreamlsEPKc.exit:                 ; preds = %bb.p, %bb.o, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.h ], [ true, %bb.c ], [ true, %bb.d ], [ false, %bb.e ], [ false, %bb.f ], [ false, %bb.g ], [ false, %bb.o ], [ false, %bb.p ]
  ret i1 %.0
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm13ARMAsmPrinter16emitInlineAsmEndERKNS_15MCSubtargetInfoEPS2_PKNS_12MachineInstrE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(320) %1, ptr nofree noundef readonly captures(address_is_null) %2, ptr nofree readnone captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 264
  %.val8 = load i64, ptr %i.a, align 8, !tbaa !658
  %i.b = and i64 %.val8, 4
  %i.c = icmp ne i64 %i.b, 0                      ; 2 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %2, i64 264
  %.val = load i64, ptr %i.d, align 8, !tbaa !658
  %i.e = and i64 %.val, 4
  %i.f = icmp ne i64 %i.e, 0
  %i.g = xor i1 %i.c, %i.f
  br i1 %i.g, label %.sink.split, label %bb.c

.sink.split:                                      ; preds = %bb.b, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !171  ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  %. = select i1 %i.c, i64 272, i64 280
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 %.
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.k) #17
  br label %bb.c

bb.c:                                             ; preds = %.sink.split, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4llvm13ARMAsmPrinter18emitStartOfAsmFileERNS_6ModuleE(ptr noundef nonnull align 8 dereferenceable(1272) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(1288) %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !165, !nonnull !166, !align !167 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !171  ; 4 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !15
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 264
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(24) %i.f) #17
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 980
  %i.k = load i32, ptr %i.j, align 4, !tbaa !317
end_hunk_0
