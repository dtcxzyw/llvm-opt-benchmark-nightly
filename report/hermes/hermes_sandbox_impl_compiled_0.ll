inline.NumInlined: 15600
inline.NumDeleted: 36
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 26
begin_hunk_0_@wasm2c_hermes_get_func_type:bb.a
  %i.eqd = getelementptr i8, ptr %i.eqc, i64 8
  store ptr %i.eqd, ptr %i.eqb, align 8
  br label %bb.atw

bb.atw:                                           ; preds = %bb.atv, %bb.atu
  %i.eqe = phi i32 [ %i.eqa, %bb.atu ], [ %i.epr, %bb.atv ] ; 3 uses
  %i.eqf = phi ptr [ %i.epz, %bb.atu ], [ %i.eqc, %bb.atv ]
  %i.eqg = load i32, ptr %i.eqf, align 4, !tbaa !3
  %i.eqh = icmp eq i32 %i.eqg, 0
  br i1 %i.eqh, label %bb.atx, label %bb.aub

bb.atx:                                           ; preds = %bb.atw
  %i.eqi = icmp ult i32 %i.eqe, 41
  br i1 %i.eqi, label %bb.aty, label %bb.atz

bb.aty:                                           ; preds = %bb.atx
  %i.eqj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eqk = load ptr, ptr %i.eqj, align 16
  %i.eql = zext nneg i32 %i.eqe to i64
  %i.eqm = getelementptr i8, ptr %i.eqk, i64 %i.eql
  %i.eqn = add nuw nsw i32 %i.eqe, 8
  store i32 %i.eqn, ptr %2, align 16
  br label %bb.aua

bb.atz:                                           ; preds = %bb.atx
  %i.eqo = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.eqp = load ptr, ptr %i.eqo, align 8          ; 2 uses
  %i.eqq = getelementptr i8, ptr %i.eqp, i64 8
  store ptr %i.eqq, ptr %i.eqo, align 8
  br label %bb.aua

bb.aua:                                           ; preds = %bb.atz, %bb.aty
  %i.eqr = phi ptr [ %i.eqm, %bb.aty ], [ %i.eqp, %bb.atz ]
  %i.eqs = load i32, ptr %i.eqr, align 4, !tbaa !3
  %i.eqt = icmp eq i32 %i.eqs, 0
  br i1 %i.eqt, label %.sink.split1266, label %bb.aub

bb.aub:                                           ; preds = %bb.aua, %bb.atw, %bb.ats, %bb.ato, %bb.atk
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.auc

bb.auc:                                           ; preds = %bb.aub, %bb.atg
  br i1 %or.cond13, label %bb.aud, label %bb.auu

bb.aud:                                           ; preds = %bb.auc
  call void @llvm.va_start.p0(ptr nonnull %2)
  %i.equ = load i32, ptr %2, align 16             ; 4 uses
  %i.eqv = icmp ult i32 %i.equ, 41
  br i1 %i.eqv, label %bb.aue, label %bb.auf

bb.aue:                                           ; preds = %bb.aud
  %i.eqw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.eqx = load ptr, ptr %i.eqw, align 16
  %i.eqy = zext nneg i32 %i.equ to i64
  %i.eqz = getelementptr i8, ptr %i.eqx, i64 %i.eqy
  %i.era = add nuw nsw i32 %i.equ, 8              ; 2 uses
  store i32 %i.era, ptr %2, align 16
  br label %bb.aug

bb.auf:                                           ; preds = %bb.aud
  %i.erb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.erc = load ptr, ptr %i.erb, align 8          ; 2 uses
  %i.erd = getelementptr i8, ptr %i.erc, i64 8
  store ptr %i.erd, ptr %i.erb, align 8
  br label %bb.aug

bb.aug:                                           ; preds = %bb.auf, %bb.aue
  %i.ere = phi i32 [ %i.era, %bb.aue ], [ %i.equ, %bb.auf ] ; 4 uses
  %i.erf = phi ptr [ %i.eqz, %bb.aue ], [ %i.erc, %bb.auf ]
  %i.erg = load i32, ptr %i.erf, align 4, !tbaa !3
  %i.erh = icmp eq i32 %i.erg, 0
  br i1 %i.erh, label %bb.auh, label %bb.aut

bb.auh:                                           ; preds = %bb.aug
  %i.eri = icmp ult i32 %i.ere, 41
  br i1 %i.eri, label %bb.aui, label %bb.auj

bb.aui:                                           ; preds = %bb.auh
  %i.erj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.erk = load ptr, ptr %i.erj, align 16
  %i.erl = zext nneg i32 %i.ere to i64
  %i.erm = getelementptr i8, ptr %i.erk, i64 %i.erl
  %i.ern = add nuw nsw i32 %i.ere, 8              ; 2 uses
  store i32 %i.ern, ptr %2, align 16
  br label %bb.auk

bb.auj:                                           ; preds = %bb.auh
  %i.ero = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.erp = load ptr, ptr %i.ero, align 8          ; 2 uses
  %i.erq = getelementptr i8, ptr %i.erp, i64 8
  store ptr %i.erq, ptr %i.ero, align 8
  br label %bb.auk

bb.auk:                                           ; preds = %bb.auj, %bb.aui
  %i.err = phi i32 [ %i.ern, %bb.aui ], [ %i.ere, %bb.auj ] ; 4 uses
  %i.ers = phi ptr [ %i.erm, %bb.aui ], [ %i.erp, %bb.auj ]
  %i.ert = load i32, ptr %i.ers, align 4, !tbaa !3
  %i.eru = icmp eq i32 %i.ert, 1
  br i1 %i.eru, label %bb.aul, label %bb.aut

bb.aul:                                           ; preds = %bb.auk
  %i.erv = icmp ult i32 %i.err, 41
  br i1 %i.erv, label %bb.aum, label %bb.aun

bb.aum:                                           ; preds = %bb.aul
  %i.erw = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.erx = load ptr, ptr %i.erw, align 16
  %i.ery = zext nneg i32 %i.err to i64
  %i.erz = getelementptr i8, ptr %i.erx, i64 %i.ery
  %i.esa = add nuw nsw i32 %i.err, 8              ; 2 uses
  store i32 %i.esa, ptr %2, align 16
  br label %bb.auo

bb.aun:                                           ; preds = %bb.aul
  %i.esb = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.esc = load ptr, ptr %i.esb, align 8          ; 2 uses
  %i.esd = getelementptr i8, ptr %i.esc, i64 8
  store ptr %i.esd, ptr %i.esb, align 8
  br label %bb.auo

bb.auo:                                           ; preds = %bb.aun, %bb.aum
  %i.ese = phi i32 [ %i.esa, %bb.aum ], [ %i.err, %bb.aun ] ; 3 uses
  %i.esf = phi ptr [ %i.erz, %bb.aum ], [ %i.esc, %bb.aun ]
  %i.esg = load i32, ptr %i.esf, align 4, !tbaa !3
  %i.esh = icmp eq i32 %i.esg, 0
  br i1 %i.esh, label %bb.aup, label %bb.aut

bb.aup:                                           ; preds = %bb.auo
  %i.esi = icmp ult i32 %i.ese, 41
  br i1 %i.esi, label %bb.auq, label %bb.aur

bb.auq:                                           ; preds = %bb.aup
  %i.esj = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.esk = load ptr, ptr %i.esj, align 16
  %i.esl = zext nneg i32 %i.ese to i64
  %i.esm = getelementptr i8, ptr %i.esk, i64 %i.esl
  %i.esn = add nuw nsw i32 %i.ese, 8
  store i32 %i.esn, ptr %2, align 16
  br label %bb.aus

bb.aur:                                           ; preds = %bb.aup
  %i.eso = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.esp = load ptr, ptr %i.eso, align 8          ; 2 uses
  %i.esq = getelementptr i8, ptr %i.esp, i64 8
  store ptr %i.esq, ptr %i.eso, align 8
  br label %bb.aus

bb.aus:                                           ; preds = %bb.aur, %bb.auq
  %i.esr = phi ptr [ %i.esm, %bb.auq ], [ %i.esp, %bb.aur ]
  %i.ess = load i32, ptr %i.esr, align 4, !tbaa !3
  %i.est = icmp eq i32 %i.ess, 0
  br i1 %i.est, label %.sink.split1266, label %bb.aut

bb.aut:                                           ; preds = %bb.aus, %bb.auo, %bb.auk, %bb.aug
  br label %.sink.split1266

.sink.split1266:                                  ; preds = %bb.aus, %bb.aua, %bb.ate, %bb.ash, %bb.arm, %bb.aqr, %bb.apu, %bb.aow, %bb.anw, %bb.amz, %bb.aml, %bb.alm, %bb.aky, %bb.akg, %bb.ajk, %bb.aik, %bb.ahm, %bb.agw, %bb.age, %bb.afc, %bb.aek, %bb.ado, %bb.acs, %bb.aci, %bb.abq, %bb.aat, %bb.zv, %bb.yy, %bb.yk, %bb.xs, %bb.wu, %bb.wk, %bb.vw, %bb.vf, %bb.ut, %bb.uh, %bb.tu, %bb.tm, %bb.tc, %bb.sk, %bb.rw, %bb.qz, %bb.qd, %bb.pm, %bb.pa, %bb.oo, %bb.oc, %bb.no, %bb.nf, %bb.mt, %bb.mf, %bb.lg, %bb.kp, %bb.jr, %bb.it, %bb.hz, %bb.hq, %bb.gt, %bb.fw, %bb.fm, %bb.ep, %bb.dx, %bb.db, %bb.cf, %bb.bo, %bb.bf, %bb.am, %bb.z, %bb.i, %bb.aut
  %.0.ph = phi ptr [ null, %bb.aut ], [ @.str.71, %bb.aua ], [ @.str.70, %bb.ate ], [ @.str.69, %bb.ash ], [ @.str.68, %bb.arm ], [ @.str.67, %bb.aqr ], [ @.str.66, %bb.apu ], [ @.str.65, %bb.aow ], [ @.str.64, %bb.anw ], [ @.str.63, %bb.amz ], [ @.str.62, %bb.aml ], [ @.str.61, %bb.alm ], [ @.str.60, %bb.aky ], [ @.str.59, %bb.akg ], [ @.str.58, %bb.ajk ], [ @.str.57, %bb.aik ], [ @.str.56, %bb.ahm ], [ @.str.55, %bb.agw ], [ @.str.54, %bb.age ], [ @.str.53, %bb.afc ], [ @.str.52, %bb.aek ], [ @.str.51, %bb.ado ], [ @.str.50, %bb.acs ], [ @.str.49, %bb.aci ], [ @.str.48, %bb.abq ], [ @.str.47, %bb.aat ], [ @.str.46, %bb.zv ], [ @.str.45, %bb.yy ], [ @.str.44, %bb.yk ], [ @.str.43, %bb.xs ], [ @.str.42, %bb.wu ], [ @.str.41, %bb.wk ], [ @.str.40, %bb.vw ], [ @.str.39, %bb.vf ], [ @.str.38, %bb.ut ], [ @.str.37, %bb.uh ], [ @.str.36, %bb.tu ], [ @.str.35, %bb.tm ], [ @.str.34, %bb.tc ], [ @.str.33, %bb.sk ], [ @.str.32, %bb.rw ], [ @.str.30, %bb.qz ], [ @.str.29, %bb.qd ], [ @.str.28, %bb.pm ], [ @.str.27, %bb.pa ], [ @.str.26, %bb.oo ], [ @.str.25, %bb.oc ], [ @.str.24, %bb.no ], [ @.str.23, %bb.nf ], [ @.str.22, %bb.mt ], [ @.str.21, %bb.mf ], [ @.str.20, %bb.lg ], [ @.str.19, %bb.kp ], [ @.str.18, %bb.jr ], [ @.str.17, %bb.it ], [ @.str.14, %bb.hz ], [ @.str.13, %bb.hq ], [ @.str.12, %bb.gt ], [ @.str.11, %bb.fw ], [ @.str.10, %bb.fm ], [ @.str.9, %bb.ep ], [ @.str.8, %bb.dx ], [ @.str.7, %bb.db ], [ @.str.6, %bb.cf ], [ @.str.5, %bb.bo ], [ @.str.4, %bb.bf ], [ @.str.2, %bb.am ], [ @.str.1, %bb.z ], [ @.str, %bb.i ], [ @.str.72, %bb.aus ]
  call void @llvm.va_end.p0(ptr nonnull %2)
  br label %bb.auu

bb.auu:                                           ; preds = %.sink.split1266, %bb.rf, %bb.ig, %bb.as, %bb.auc, %bb.ib
  %.0 = phi ptr [ @.str.16, %bb.ig ], [ @.str.31, %bb.rf ], [ @.str.15, %bb.ib ], [ null, %bb.auc ], [ @.str.3, %bb.as ], [ %.0.ph, %.sink.split1266 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #16
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #8

; Function Attrs: nounwind uwtable
define hidden noundef i32 @w2c_hermes_0x5F_memcpy(ptr nofree noundef readonly captures(none) %0, i32 noundef returned %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add i32 %3, %1                           ; 7 uses
  %i.b = xor i32 %2, %1
  %i.c = and i32 %i.b, 3
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %1, 3
  %.not312 = icmp eq i32 %i.d, 0
  %i.e = icmp slt i32 %3, 1
  %or.cond = or i1 %.not312, %i.e
  br i1 %or.cond, label %.loopexit390, label %.preheader389

.preheader389:                                    ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.preheader389, %bb.c
  %.0294 = phi i32 [ %i.j, %bb.c ], [ %2, %.preheader389 ] ; 2 uses
  %.0 = phi i32 [ %5, %bb.c ], [ %1, %.preheader389 ] ; 2 uses
  %i.g = zext i32 %.0294 to i64
  %.val356 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %.val356, i64 %i.g
  %.0.copyload.i = load i8, ptr %i.h, align 1     ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i) #16, !srcloc !33
  %4 = zext i32 %.0 to i64
  %.val362 = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %.val362, i64 %4
  store i8 %.0.copyload.i, ptr %i.i, align 1
  %i.j = add i32 %.0294, 1                        ; 2 uses
  %5 = add i32 %.0, 1                             ; 4 uses
  %i.k = and i32 %5, 3
  %.not313 = icmp ne i32 %i.k, 0
  %6 = icmp ult i32 %5, %i.a
  %or.cond317 = and i1 %6, %.not313
  br i1 %or.cond317, label %bb.c, label %.loopexit390

bb.d:                                             ; preds = %bb.a
  %i.l = icmp ult i32 %i.a, 4
  br i1 %i.l, label %.loopexit386, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = add i32 %i.a, -4                         ; 2 uses
  %i.n = icmp ult i32 %i.m, %1
  br i1 %i.n, label %.loopexit386, label %.preheader391

.preheader391:                                    ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 8 uses
  %i.p = zext i32 %1 to i64
  %i.q = zext i32 %i.m to i64
  br label %bb.f

bb.f:                                             ; preds = %.preheader391, %bb.f
  %indvars.iv = phi i64 [ %i.p, %.preheader391 ], [ %indvars.iv.next, %bb.f ] ; 5 uses
  %.1295 = phi i32 [ %2, %.preheader391 ], [ %i.ag, %bb.f ] ; 2 uses
  %i.r = zext i32 %.1295 to i64                   ; 4 uses
  %.val355 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.s = getelementptr inbounds nuw i8, ptr %.val355, i64 %i.r
  %.0.copyload.i363 = load i8, ptr %i.s, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i363) #16, !srcloc !33
  %.val361 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %.val361, i64 %indvars.iv
  store i8 %.0.copyload.i363, ptr %i.t, align 1
  %.val354 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.u = getelementptr inbounds nuw i8, ptr %.val354, i64 %i.r
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %.0.copyload.i364 = load i8, ptr %i.v, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i364) #16, !srcloc !33
  %.val360 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.w = getelementptr inbounds nuw i8, ptr %.val360, i64 %indvars.iv
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %.0.copyload.i364, ptr %i.x, align 1
  %.val353 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.y = getelementptr inbounds nuw i8, ptr %.val353, i64 %i.r
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 2
  %.0.copyload.i365 = load i8, ptr %i.z, align 1  ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i365) #16, !srcloc !33
  %.val359 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.aa = getelementptr inbounds nuw i8, ptr %.val359, i64 %indvars.iv
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 2
  store i8 %.0.copyload.i365, ptr %i.ab, align 1
  %.val352 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ac = getelementptr inbounds nuw i8, ptr %.val352, i64 %i.r
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 3
  %.0.copyload.i366 = load i8, ptr %i.ad, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i8 %.0.copyload.i366) #16, !srcloc !33
  %.val358 = load ptr, ptr %i.o, align 8, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %.val358, i64 %indvars.iv
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 3
  store i8 %.0.copyload.i366, ptr %i.af, align 1
  %i.ag = add i32 %.1295, 4                       ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 4 ; 3 uses
  %.not311 = icmp samesign ugt i64 %indvars.iv.next, %i.q
  br i1 %.not311, label %.loopexit386.loopexit400, label %bb.f

.loopexit390:                                     ; preds = %bb.c, %bb.b
  %.2296 = phi i32 [ %2, %bb.b ], [ %i.j, %bb.c ] ; 3 uses
  %.2 = phi i32 [ %1, %bb.b ], [ %5, %bb.c ]      ; 4 uses
  %i.ah = and i32 %i.a, -4                        ; 3 uses
  %i.ai = icmp ult i32 %i.a, 64
  br i1 %i.ai, label %.loopexit388, label %bb.g

bb.g:                                             ; preds = %.loopexit390
  %i.aj = add i32 %i.ah, -64                      ; 2 uses
  %i.ak = icmp ugt i32 %.2, %i.aj
  br i1 %i.ak, label %.loopexit388, label %.preheader387

.preheader387:                                    ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 32 uses
  br label %bb.h

bb.h:                                             ; preds = %.preheader387, %bb.h
  %.3297 = phi i32 [ %i.cy, %bb.h ], [ %.2296, %.preheader387 ] ; 2 uses
  %.3 = phi i32 [ %i.cz, %bb.h ], [ %.2, %.preheader387 ] ; 2 uses
  %i.am = zext i32 %.3297 to i64                  ; 16 uses
  %.val333 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.an = getelementptr inbounds nuw i8, ptr %.val333, i64 %i.am
  %.0.copyload.i367 = load i32, ptr %i.an, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i367) #16, !srcloc !22
  %i.ao = zext i32 %.3 to i64                     ; 16 uses
  %.val350 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ap = getelementptr inbounds nuw i8, ptr %.val350, i64 %i.ao
  store i32 %.0.copyload.i367, ptr %i.ap, align 1
  %.val332 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.aq = getelementptr inbounds nuw i8, ptr %.val332, i64 %i.am
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %.0.copyload.i368 = load i32, ptr %i.ar, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i368) #16, !srcloc !22
  %.val349 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.as = getelementptr inbounds nuw i8, ptr %.val349, i64 %i.ao
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  store i32 %.0.copyload.i368, ptr %i.at, align 1
  %.val331 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.au = getelementptr inbounds nuw i8, ptr %.val331, i64 %i.am
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.0.copyload.i369 = load i32, ptr %i.av, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i369) #16, !srcloc !22
  %.val348 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.aw = getelementptr inbounds nuw i8, ptr %.val348, i64 %i.ao
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store i32 %.0.copyload.i369, ptr %i.ax, align 1
  %.val330 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ay = getelementptr inbounds nuw i8, ptr %.val330, i64 %i.am
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 12
  %.0.copyload.i370 = load i32, ptr %i.az, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i370) #16, !srcloc !22
  %.val347 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ba = getelementptr inbounds nuw i8, ptr %.val347, i64 %i.ao
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 12
  store i32 %.0.copyload.i370, ptr %i.bb, align 1
  %.val329 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bc = getelementptr inbounds nuw i8, ptr %.val329, i64 %i.am
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 16
  %.0.copyload.i371 = load i32, ptr %i.bd, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i371) #16, !srcloc !22
  %.val346 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.be = getelementptr inbounds nuw i8, ptr %.val346, i64 %i.ao
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 16
  store i32 %.0.copyload.i371, ptr %i.bf, align 1
  %.val328 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bg = getelementptr inbounds nuw i8, ptr %.val328, i64 %i.am
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 20
  %.0.copyload.i372 = load i32, ptr %i.bh, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i372) #16, !srcloc !22
  %.val345 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bi = getelementptr inbounds nuw i8, ptr %.val345, i64 %i.ao
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 20
  store i32 %.0.copyload.i372, ptr %i.bj, align 1
  %.val327 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bk = getelementptr inbounds nuw i8, ptr %.val327, i64 %i.am
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24
  %.0.copyload.i373 = load i32, ptr %i.bl, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i373) #16, !srcloc !22
  %.val344 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bm = getelementptr inbounds nuw i8, ptr %.val344, i64 %i.ao
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  store i32 %.0.copyload.i373, ptr %i.bn, align 1
  %.val326 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bo = getelementptr inbounds nuw i8, ptr %.val326, i64 %i.am
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 28
  %.0.copyload.i374 = load i32, ptr %i.bp, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i374) #16, !srcloc !22
  %.val343 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bq = getelementptr inbounds nuw i8, ptr %.val343, i64 %i.ao
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 28
  store i32 %.0.copyload.i374, ptr %i.br, align 1
  %.val325 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bs = getelementptr inbounds nuw i8, ptr %.val325, i64 %i.am
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 32
  %.0.copyload.i375 = load i32, ptr %i.bt, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i375) #16, !srcloc !22
  %.val342 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bu = getelementptr inbounds nuw i8, ptr %.val342, i64 %i.ao
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store i32 %.0.copyload.i375, ptr %i.bv, align 1
  %.val324 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.bw = getelementptr inbounds nuw i8, ptr %.val324, i64 %i.am
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 36
  %.0.copyload.i376 = load i32, ptr %i.bx, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i376) #16, !srcloc !22
  %.val341 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.by = getelementptr inbounds nuw i8, ptr %.val341, i64 %i.ao
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 36
  store i32 %.0.copyload.i376, ptr %i.bz, align 1
  %.val323 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ca = getelementptr inbounds nuw i8, ptr %.val323, i64 %i.am
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  %.0.copyload.i377 = load i32, ptr %i.cb, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i377) #16, !srcloc !22
  %.val340 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cc = getelementptr inbounds nuw i8, ptr %.val340, i64 %i.ao
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 40
  store i32 %.0.copyload.i377, ptr %i.cd, align 1
  %.val322 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ce = getelementptr inbounds nuw i8, ptr %.val322, i64 %i.am
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 44
  %.0.copyload.i378 = load i32, ptr %i.cf, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i378) #16, !srcloc !22
  %.val339 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cg = getelementptr inbounds nuw i8, ptr %.val339, i64 %i.ao
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 44
  store i32 %.0.copyload.i378, ptr %i.ch, align 1
  %.val321 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ci = getelementptr inbounds nuw i8, ptr %.val321, i64 %i.am
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  %.0.copyload.i379 = load i32, ptr %i.cj, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i379) #16, !srcloc !22
  %.val338 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.ck = getelementptr inbounds nuw i8, ptr %.val338, i64 %i.ao
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 48
  store i32 %.0.copyload.i379, ptr %i.cl, align 1
  %.val320 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cm = getelementptr inbounds nuw i8, ptr %.val320, i64 %i.am
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 52
  %.0.copyload.i380 = load i32, ptr %i.cn, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i380) #16, !srcloc !22
  %.val337 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.co = getelementptr inbounds nuw i8, ptr %.val337, i64 %i.ao
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 52
  store i32 %.0.copyload.i380, ptr %i.cp, align 1
  %.val319 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cq = getelementptr inbounds nuw i8, ptr %.val319, i64 %i.am
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 56
  %.0.copyload.i381 = load i32, ptr %i.cr, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i381) #16, !srcloc !22
  %.val336 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cs = getelementptr inbounds nuw i8, ptr %.val336, i64 %i.ao
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 56
  store i32 %.0.copyload.i381, ptr %i.ct, align 1
  %.val318 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cu = getelementptr inbounds nuw i8, ptr %.val318, i64 %i.am
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 60
  %.0.copyload.i382 = load i32, ptr %i.cv, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i382) #16, !srcloc !22
  %.val335 = load ptr, ptr %i.al, align 8, !tbaa !21
  %i.cw = getelementptr inbounds nuw i8, ptr %.val335, i64 %i.ao
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 60
  store i32 %.0.copyload.i382, ptr %i.cx, align 1
  %i.cy = add i32 %.3297, 64                      ; 2 uses
  %i.cz = add i32 %.3, 64                         ; 3 uses
  %.not314 = icmp ugt i32 %i.cz, %i.aj
  br i1 %.not314, label %.loopexit388, label %bb.h

.loopexit388:                                     ; preds = %bb.h, %bb.g, %.loopexit390
  %.4298 = phi i32 [ %.2296, %.loopexit390 ], [ %.2296, %bb.g ], [ %i.cy, %bb.h ] ; 2 uses
  %.4 = phi i32 [ %.2, %.loopexit390 ], [ %.2, %bb.g ], [ %i.cz, %bb.h ] ; 3 uses
  %.not315 = icmp ult i32 %.4, %i.ah
  br i1 %.not315, label %.preheader385, label %.loopexit386

.preheader385:                                    ; preds = %.loopexit388
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.db = zext i32 %.4 to i64
  %i.dc = zext i32 %i.ah to i64
  br label %bb.i

bb.i:                                             ; preds = %.preheader385, %bb.i
  %indvars.iv409.a = phi i64 [ %i.db, %.preheader385 ], [ %indvars.iv.next410.a, %bb.i ] ; 2 uses
  %.5299 = phi i32 [ %.4298, %.preheader385 ], [ %i.dg, %bb.i ] ; 2 uses
  %i.dd = zext i32 %.5299 to i64
  %.val = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.de = getelementptr inbounds nuw i8, ptr %.val, i64 %i.dd
  %.0.copyload.i383 = load i32, ptr %i.de, align 1 ; 2 uses
  tail call void asm sideeffect "", "r,~{dirflag},~{fpsr},~{flags}"(i32 %.0.copyload.i383) #16, !srcloc !22
  %.val334 = load ptr, ptr %i.da, align 8, !tbaa !21
  %i.df = getelementptr inbounds nuw i8, ptr %.val334, i64 %indvars.iv409.a
  store i32 %.0.copyload.i383, ptr %i.df, align 1
  %i.dg = add i32 %.5299, 4                       ; 2 uses
  %indvars.iv.next410.a = add nuw nsw i64 %indvars.iv409.a, 4 ; 3 uses
  %i.dh = icmp samesign ult i64 %indvars.iv.next410.a, %i.dc
  br i1 %i.dh, label %bb.i, label %.loopexit386.loopexit

.loopexit386.loopexit:                            ; preds = %bb.i
  %i.di = trunc nuw i64 %indvars.iv.next410.a to i32
  br label %.loopexit386

.loopexit386.loopexit400:                         ; preds = %bb.f
  %i.dj = trunc nuw i64 %indvars.iv.next to i32
  br label %.loopexit386
end_hunk_0
