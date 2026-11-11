Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/cadical_congruence?download=true
inline.NumInlined: 6068
inline.NumDeleted: 1716
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 34
loop-unroll.NumUnrolled: 43
begin_hunk_0_@_ZN7CaDiCaL7Closure28add_xor_matching_proof_chainEPNS_4GateEiRKSt6vectorINS_13LitClausePairESaIS4_EEiRS3_IlSaIlEESB_:bb.a
bb.cq:                                            ; preds = %bb.cp
  %i.rb = getelementptr inbounds i8, ptr %.sroa.11331.5, i64 -8 ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 3 uses
  %i.rd = load ptr, ptr %i.rc, align 8, !tbaa !292 ; 4 uses
  %i.re = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 3 uses
  %i.rf = load ptr, ptr %i.re, align 8, !tbaa !293
  %.not.i178 = icmp eq ptr %i.rd, %i.rf
  br i1 %.not.i178, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.rg = load i64, ptr %i.rb, align 8, !tbaa !144
  store i64 %i.rg, ptr %i.rd, align 8, !tbaa !144
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rd, i64 8
  store ptr %i.rh, ptr %i.rc, align 8, !tbaa !292
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185

bb.cs:                                            ; preds = %bb.cq
  %i.ri = load ptr, ptr %5, align 8, !tbaa !294   ; 4 uses
  %i.rj = ptrtoint ptr %i.rd to i64
  %i.rk = ptrtoint ptr %i.ri to i64               ; 2 uses
  %i.rl = sub i64 %i.rj, %i.rk                    ; 5 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %bb.ct, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179

bb.ct:                                            ; preds = %bb.cs
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179: ; preds = %bb.cs
  %i.rn = ashr exact i64 %i.rl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i180 = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i180, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 1152921504606846975)
  %i.rr = select i1 %i.rp, i64 1152921504606846975, i64 %i.rq ; 3 uses
  %.not.i.i.i181 = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i181)
  %i.rs = shl nuw nsw i64 %i.rr, 3
  %i.rt = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #23 ; 4 uses
  %i.ru = getelementptr inbounds i8, ptr %i.rt, i64 %i.rl ; 2 uses
  %i.rv = load i64, ptr %i.rb, align 8, !tbaa !144
  store i64 %i.rv, ptr %i.ru, align 8, !tbaa !144
  %i.rw = icmp sgt i64 %i.rl, 0
  br i1 %i.rw, label %bb.cu, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182

bb.cu:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.rt, ptr align 8 %i.ri, i64 %i.rl, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182: ; preds = %bb.cu, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i179
  %i.rx = getelementptr inbounds nuw i8, ptr %i.ru, i64 8
  %.not.i17.i.i183 = icmp eq ptr %i.ri, null
  br i1 %.not.i17.i.i183, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182
  %i.ry = load ptr, ptr %i.re, align 8, !tbaa !293
  %i.rz = ptrtoint ptr %i.ry to i64
  %i.sa = sub i64 %i.rz, %i.rk
  call void @_ZdlPvm(ptr noundef nonnull %i.ri, i64 noundef %i.sa) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184: ; preds = %bb.cv, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i182
  store ptr %i.rt, ptr %5, align 8, !tbaa !294
  store ptr %i.rx, ptr %i.rc, align 8, !tbaa !292
  %i.sb = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.rr
  store ptr %i.sb, ptr %i.re, align 8, !tbaa !293
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185

_ZNSt6vectorIlSaIlEE9push_backERKl.exit185:       ; preds = %bb.cr, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i184
  %i.sc = getelementptr inbounds i8, ptr %.sroa.11.5, i64 -8 ; 2 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %i.se = load ptr, ptr %i.sd, align 8, !tbaa !292 ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  %i.sg = load ptr, ptr %i.sf, align 8, !tbaa !293
  %.not.i186 = icmp eq ptr %i.se, %i.sg
  br i1 %.not.i186, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185
  %i.sh = load i64, ptr %i.sc, align 8, !tbaa !144
  store i64 %i.sh, ptr %i.se, align 8, !tbaa !144
  %i.si = getelementptr inbounds nuw i8, ptr %i.se, i64 8
  store ptr %i.si, ptr %i.sd, align 8, !tbaa !292
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193

bb.cx:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit185
  %i.sj = load ptr, ptr %6, align 8, !tbaa !294   ; 4 uses
  %i.sk = ptrtoint ptr %i.se to i64
  %i.sl = ptrtoint ptr %i.sj to i64               ; 2 uses
  %i.sm = sub i64 %i.sk, %i.sl                    ; 5 uses
  %i.sn = icmp eq i64 %i.sm, 9223372036854775800
  br i1 %i.sn, label %bb.cy, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187

bb.cy:                                            ; preds = %bb.cx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.16) #22
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187: ; preds = %bb.cx
  %i.so = ashr exact i64 %i.sm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i188 = call i64 @llvm.umax.i64(i64 %i.so, i64 1)
  %i.sp = add nsw i64 %.sroa.speculated.i.i.i188, %i.so ; 2 uses
  %i.sq = icmp ult i64 %i.sp, %i.so
  %i.sr = call i64 @llvm.umin.i64(i64 %i.sp, i64 1152921504606846975)
  %i.ss = select i1 %i.sq, i64 1152921504606846975, i64 %i.sr ; 3 uses
  %.not.i.i.i189 = icmp ne i64 %i.ss, 0
  call void @llvm.assume(i1 %.not.i.i.i189)
  %i.st = shl nuw nsw i64 %i.ss, 3
  %i.su = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #23 ; 4 uses
  %i.sv = getelementptr inbounds i8, ptr %i.su, i64 %i.sm ; 2 uses
  %i.sw = load i64, ptr %i.sc, align 8, !tbaa !144
  store i64 %i.sw, ptr %i.sv, align 8, !tbaa !144
  %i.sx = icmp sgt i64 %i.sm, 0
  br i1 %i.sx, label %bb.cz, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190

bb.cz:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.su, ptr align 8 %i.sj, i64 %i.sm, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190: ; preds = %bb.cz, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i187
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %.not.i17.i.i191 = icmp eq ptr %i.sj, null
  br i1 %.not.i17.i.i191, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190
  %i.sz = load ptr, ptr %i.sf, align 8, !tbaa !293
  %i.ta = ptrtoint ptr %i.sz to i64
  %i.tb = sub i64 %i.ta, %i.sl
  call void @_ZdlPvm(ptr noundef nonnull %i.sj, i64 noundef %i.tb) #24
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192: ; preds = %bb.da, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i190
  store ptr %i.su, ptr %6, align 8, !tbaa !294
  store ptr %i.sy, ptr %i.sd, align 8, !tbaa !292
  %i.tc = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.ss
  store ptr %i.tc, ptr %i.sf, align 8, !tbaa !293
  br label %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193

_ZNSt6vectorIlSaIlEE9push_backERKl.exit193:       ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJRKlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i192, %bb.cw, %bb.cp
  %.not.i.i.i194 = icmp eq ptr %.sroa.0310.5, null
  br i1 %.not.i.i.i194, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193
  %i.td = ptrtoint ptr %.sroa.23.5 to i64
  %i.te = ptrtoint ptr %.sroa.0310.5 to i64
  %i.tf = sub i64 %i.td, %i.te
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0310.5, i64 noundef %i.tf) #24
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195: ; preds = %_ZNSt6vectorIlSaIlEE9push_backERKl.exit193, %bb.db
  %.not.i.i.i196 = icmp eq ptr %.sroa.0326.5, null
  br i1 %.not.i.i.i196, label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit197, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195
  %i.tg = ptrtoint ptr %.sroa.23338.5 to i64
  %i.th = ptrtoint ptr %.sroa.0326.5 to i64
  %i.ti = sub i64 %i.tg, %i.th
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.0326.5, i64 noundef %i.ti) #24
  br label %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit197

_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit197: ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit195, %bb.dc
  %i.tj = load ptr, ptr %8, align 8, !tbaa !319   ; 3 uses
  %.not.i.i.i198 = icmp eq ptr %i.tj, null
  br i1 %.not.i.i.i198, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit197
  %i.tk = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.tl = load ptr, ptr %i.tk, align 8, !tbaa !375
  %i.tm = ptrtoint ptr %i.tl to i64
  %i.tn = ptrtoint ptr %i.tj to i64
  %i.to = sub i64 %i.tm, %i.tn
  call void @_ZdlPvm(ptr noundef nonnull %i.tj, i64 noundef %i.to) #24
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL9LitIdPairESaIS1_EED2Ev.exit197, %bb.dd
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  %i.tp = load ptr, ptr %7, align 8, !tbaa !319   ; 3 uses
  %.not.i.i.i199 = icmp eq ptr %i.tp, null
  br i1 %.not.i.i.i199, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit200, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit
  %i.tq = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !375
  %i.ts = ptrtoint ptr %i.tr to i64
  %i.tt = ptrtoint ptr %i.tp to i64
  %i.tu = sub i64 %i.ts, %i.tt
  call void @_ZdlPvm(ptr noundef nonnull %i.tp, i64 noundef %i.tu) #24
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit200

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit200: ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  br label %bb.df

bb.df:                                            ; preds = %bb.a, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EED2Ev.exit200
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure17simplify_and_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 9 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !325
  %2 = tail call noundef zeroext i1 @_ZN7CaDiCaL7Closure13skip_and_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1)
  br i1 %2, label %_ZNSt6vectorIlSaIlEED2Ev.exit56, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5
  %3 = load i8, ptr %i.b, align 1
  %4 = and i8 %3, 2
  %.not.a = icmp eq i8 %4, 0
  br i1 %.not.a, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.d = call ptr @_ZNSt10_HashtableIPN7CaDiCaL4GateES2_SaIS2_ENSt8__detail9_IdentityENS0_11GateEqualToENS0_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.c, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.e = phi ptr [ %.pre, %bb.c ], [ %1, %bb.b ]  ; 15 uses
  %.sroa.037.0 = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.i = load i8, ptr %i.h, align 8, !tbaa !150
  %.not47 = icmp eq i8 %i.i, 0
  br i1 %.not47, label %.loopexit81, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.e, align 8, !tbaa !151  ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !152
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.0.i = phi i32 [ %i.j, %bb.e ], [ %i.q, %bb.f ] ; 6 uses
  %i.m = call noundef i32 @llvm.abs.i32(i32 %.0.i, i1 true)
  %i.n = call noundef i32 @llvm.fshl.i32(i32 %i.m, i32 %.0.i, i32 1)
  %i.o = zext i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.o
  %i.q = load i32, ptr %i.p, align 4, !tbaa !153  ; 2 uses
  %.not.i = icmp eq i32 %i.q, %.0.i
  br i1 %.not.i, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit, label %bb.f, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit: ; preds = %bb.f
  store i32 %.0.i, ptr %i.e, align 8, !tbaa !151
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !335  ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !335  ; 2 uses
  %.not7783 = icmp eq ptr %i.s, %i.u
  br i1 %.not7783, label %.loopexit81, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit
  %i.v = sub nsw i32 0, %i.j
  %i.w = sub nsw i32 0, %.0.i
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph, %bb.i
  %.sroa.072.084 = phi ptr [ %i.s, %.lr.ph ], [ %i.ac, %bb.i ] ; 3 uses
  %i.x = load i32, ptr %.sroa.072.084, align 8, !tbaa !339 ; 2 uses
  %i.y = icmp eq i32 %i.x, %i.j                   ; 2 uses
  %i.z = select i1 %i.y, i32 %.0.i, i32 %i.x      ; 2 uses
  %i.aa = icmp eq i32 %i.z, %i.v                  ; 2 uses
  %i.ab = or i1 %i.y, %i.aa
  br i1 %i.ab, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %simplifycfg.merge = select i1 %i.aa, i32 %i.w, i32 %i.z
  store i32 %simplifycfg.merge, ptr %.sroa.072.084, align 8, !tbaa !339
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.072.084, i64 16 ; 2 uses
  %.not77 = icmp eq ptr %i.ac, %i.u
  br i1 %.not77, label %.loopexit81, label %bb.g

.loopexit81:                                      ; preds = %bb.i, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit, %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !132 ; 2 uses
  %.not7885 = icmp eq ptr %i.g, %i.ae
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.pre105 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !123 ; 2 uses
  br i1 %.not7885, label %._crit_edge, label %.lr.ph90

.lr.ph90:                                         ; preds = %.loopexit81
  %i.af = getelementptr inbounds nuw i8, ptr %.pre105, i64 472
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !310
  br label %bb.j

._crit_edge:                                      ; preds = %bb.m, %.loopexit81
  %.sroa.075.0.lcssa = phi ptr [ %i.g, %.loopexit81 ], [ %.sroa.075.1, %bb.m ] ; 2 uses
  %.044.lcssa = phi i32 [ 0, %.loopexit81 ], [ %.145, %bb.m ] ; 4 uses
  %.042.lcssa = phi i1 [ false, %.loopexit81 ], [ %.2, %bb.m ]
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.pre105, i64 344
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !289, !range !290, !noundef !291
  %i.aj = trunc nuw i8 %i.ai to i1
  br i1 %i.aj, label %bb.n, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.j:                                             ; preds = %.lr.ph90, %bb.m
  %.04289 = phi i1 [ false, %.lr.ph90 ], [ %.2, %bb.m ] ; 3 uses
  %.04488 = phi i32 [ 0, %.lr.ph90 ], [ %.145, %bb.m ] ; 3 uses
  %.sroa.075.087 = phi ptr [ %i.g, %.lr.ph90 ], [ %.sroa.075.1, %bb.m ] ; 4 uses
  %.sroa.068.086 = phi ptr [ %i.g, %.lr.ph90 ], [ %i.az, %bb.m ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.068.086, align 4, !tbaa !153 ; 6 uses
  %i.al = sext i32 %i.ak to i64
  %i.am = getelementptr inbounds i8, ptr %i.ag, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !143 ; 2 uses
  %i.ao = icmp sgt i8 %i.an, 0
  br i1 %i.ao, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = icmp slt i8 %i.an, 0
  br i1 %i.ap, label %bb.m, label %condstore.split

condstore.split:                                  ; preds = %bb.k
  %i.aq = load i32, ptr %i.e, align 8, !tbaa !151
  %i.ar = sub nsw i32 0, %i.aq
  %i.as = icmp eq i32 %i.ak, %i.ar
  %spec.select = select i1 %i.as, i1 true, i1 %.04289 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.075.087, i64 4 ; 2 uses
  store i32 %i.ak, ptr %.sroa.075.087, align 4, !tbaa !153
  %i.au = load i32, ptr %i.e, align 8, !tbaa !151 ; 2 uses
  %i.av = icmp eq i32 %i.ak, %i.au
  %i.aw = sub nsw i32 0, %i.au
  %i.ax = icmp eq i32 %i.ak, %i.aw
  %i.ay = or i1 %i.av, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.m

bb.l:                                             ; preds = %condstore.split
  store i8 16, ptr %i.h, align 8, !tbaa !150
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %condstore.split, %bb.k, %bb.j
  %.sroa.075.1 = phi ptr [ %.sroa.075.087, %bb.j ], [ %.sroa.075.087, %bb.k ], [ %i.at, %condstore.split ], [ %i.at, %bb.l ] ; 2 uses
  %.145 = phi i32 [ %.04488, %bb.j ], [ %i.ak, %bb.k ], [ %.04488, %condstore.split ], [ %.04488, %bb.l ] ; 2 uses
  %.2 = phi i1 [ %.04289, %bb.j ], [ %.04289, %bb.k ], [ %spec.select, %condstore.split ], [ %spec.select, %bb.l ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.068.086, i64 4 ; 2 uses
  %.not78 = icmp eq ptr %i.az, %i.ae
  br i1 %.not78, label %._crit_edge, label %bb.j

bb.n:                                             ; preds = %._crit_edge
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 5 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !338 ; 3 uses
  %i.bd = load ptr, ptr %i.ba, align 8, !tbaa !319 ; 3 uses
  %i.be = ptrtoint ptr %i.bc to i64
  %i.bf = ptrtoint ptr %i.bd to i64
  %i.bg = sub i64 %i.be, %i.bf
  %i.bh = ashr exact i64 %i.bg, 4
  %.not103 = icmp eq ptr %i.bc, %i.bd
  br i1 %.not103, label %._crit_edge97.thread, label %.lr.ph96

._crit_edge97:                                    ; preds = %bb.t
  %.pre106 = load ptr, ptr %i.bb, align 8, !tbaa !338 ; 2 uses
  %.pre107 = load ptr, ptr %i.ba, align 8, !tbaa !319 ; 2 uses
  %.pre112.a = ptrtoint ptr %.pre106 to i64
  %.pre113.a = ptrtoint ptr %.pre107 to i64
  %.pre115 = sub i64 %.pre112.a, %.pre113.a
  %.pre117 = ashr exact i64 %.pre115, 4           ; 3 uses
  %i.bi = icmp ugt i64 %.1, %.pre117
  br i1 %i.bi, label %bb.o, label %._crit_edge97.thread

bb.o:                                             ; preds = %._crit_edge97
  %i.bj = sub nuw i64 %.1, %.pre117
  call void @_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, i64 noundef %i.bj)
  %.pre108 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

._crit_edge97.thread:                             ; preds = %bb.n, %._crit_edge97
  %.039.lcssa144 = phi i64 [ %.1, %._crit_edge97 ], [ 0, %bb.n ] ; 2 uses
  %i.bk = phi ptr [ %.pre106, %._crit_edge97 ], [ %i.bc, %bb.n ]
  %i.bl = phi ptr [ %.pre107, %._crit_edge97 ], [ %i.bd, %bb.n ]
  %.pre-phi118143 = phi i64 [ %.pre117, %._crit_edge97 ], [ 0, %bb.n ]
  %i.bm = icmp ult i64 %.039.lcssa144, %.pre-phi118143
  br i1 %i.bm, label %bb.p, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.p:                                             ; preds = %._crit_edge97.thread
  %i.bn = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %.039.lcssa144 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bk, %i.bn
  br i1 %.not.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  store ptr %i.bn, ptr %i.bb, align 8, !tbaa !338
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

.lr.ph96:                                         ; preds = %bb.n, %bb.t
  %.094 = phi i64 [ %i.cc, %bb.t ], [ 0, %bb.n ]  ; 2 uses
  %.03993 = phi i64 [ %.1, %bb.t ], [ 0, %bb.n ]  ; 4 uses
  %i.bo = load ptr, ptr %i.ba, align 8, !tbaa !319 ; 2 uses
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.094
  %i.bq = getelementptr inbounds nuw [16 x i8], ptr %i.bo, i64 %.03993
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bq, ptr noundef nonnull align 8 dereferenceable(16) %i.bp, i64 16, i1 false), !tbaa.struct !337
  %i.br = load i8, ptr %i.h, align 8, !tbaa !150
  %.not49 = icmp eq i8 %i.br, 0
  br i1 %.not49, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph96
  %i.bs = load ptr, ptr %5, align 8, !tbaa !123
  %i.bt = load ptr, ptr %i.ba, align 8, !tbaa !319
  %i.bu = getelementptr inbounds nuw [16 x i8], ptr %i.bt, i64 %.03993
  %i.bv = load i32, ptr %i.bu, align 8, !tbaa !339 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 472
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !310
  %i.by = sext i32 %i.bv to i64
  %i.bz = getelementptr inbounds i8, ptr %i.bx, i64 %i.by
  %i.ca = load i8, ptr %i.bz, align 1, !tbaa !143
  %.not50 = icmp eq i8 %i.ca, 0
  %.not51 = icmp eq i32 %i.bv, %.044.lcssa
  %or.cond = select i1 %.not50, i1 true, i1 %.not51
  br i1 %or.cond, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph96, %bb.r
  %i.cb = add i64 %.03993, 1
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s
  %.1 = phi i64 [ %i.cb, %bb.s ], [ %.03993, %bb.r ] ; 4 uses
  %i.cc = add nuw i64 %.094, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.cc, %i.bh
  br i1 %exitcond.not, label %._crit_edge97, label %.lr.ph96, !llvm.loop !546

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit: ; preds = %bb.q, %bb.p, %._crit_edge97.thread, %bb.o, %._crit_edge
  %i.cd = phi ptr [ %i.e, %bb.q ], [ %i.e, %bb.p ], [ %i.e, %._crit_edge97.thread ], [ %.pre108, %bb.o ], [ %i.e, %._crit_edge ]
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 5 ; 2 uses
  %i.cf = load i8, ptr %i.ce, align 1
  %i.cg = or i8 %i.cf, 8
  store i8 %i.cg, ptr %i.ce, align 1
  %i.ch = load ptr, ptr %i.a, align 8, !tbaa !325 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 56 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !132 ; 2 uses
  %i.ck = ptrtoint ptr %.sroa.075.0.lcssa to i64
  %i.cl = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.cm = sub i64 %i.ck, %i.cl                    ; 2 uses
  %i.cn = ashr exact i64 %i.cm, 2                 ; 3 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ch, i64 64 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !312 ; 2 uses
  %i.cq = ptrtoint ptr %i.cp to i64
  %i.cr = sub i64 %i.cq, %i.cl
  %i.cs = ashr exact i64 %i.cr, 2                 ; 3 uses
  %i.ct = icmp ugt i64 %i.cn, %i.cs
  br i1 %i.ct, label %bb.u, label %bb.v

bb.u:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit
  %i.cu = sub nuw nsw i64 %i.cn, %i.cs
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ci, i64 noundef %i.cu)
  %.pre109 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.v:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit
  %i.cv = icmp uge i64 %i.cn, %i.cs
  %.not.i.i52 = icmp eq ptr %i.cp, %.sroa.075.0.lcssa
  %or.cond80 = select i1 %i.cv, i1 true, i1 %.not.i.i52
  br i1 %or.cond80, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.cm
  store ptr %i.cw, ptr %i.co, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.u, %bb.v, %bb.w
  %i.cx = phi ptr [ %.pre109, %bb.u ], [ %i.ch, %bb.v ], [ %i.ch, %bb.w ] ; 3 uses
  %.not.i53 = icmp eq i32 %.044.lcssa, 0
  br i1 %.not.i53, label %_ZN7CaDiCaL7Closure15shrink_and_gateEPNS_4GateEii.exit, label %bb.x

bb.x:                                             ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 56 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cx, i64 64 ; 2 uses
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !312 ; 3 uses
  %i.db = load ptr, ptr %i.cy, align 8, !tbaa !152 ; 6 uses
  %i.dc = ptrtoint ptr %i.da to i64
  %i.dd = ptrtoint ptr %i.db to i64
  %i.de = sub i64 %i.dc, %i.dd
  %i.df = ashr exact i64 %i.de, 2                 ; 2 uses
  %i.dg = icmp eq ptr %i.da, %i.db
  br i1 %i.dg, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.dh = sub nuw nsw i64 1, %i.df
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.cy, i64 noundef %i.dh)
  %.pre.i = load ptr, ptr %i.cy, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.z:                                             ; preds = %bb.x
  %i.di = icmp ugt i64 %i.df, 1
  br i1 %i.di, label %bb.aa, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.aa:                                            ; preds = %bb.z
  %i.dj = getelementptr inbounds nuw i8, ptr %i.db, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.da, %i.dj
  br i1 %.not.i.i.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  store ptr %i.dj, ptr %i.cz, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.ab, %bb.aa, %bb.z, %bb.y
  %i.dk = phi ptr [ %.pre.i, %bb.y ], [ %i.db, %bb.z ], [ %i.db, %bb.aa ], [ %i.db, %bb.ab ]
  store i32 %.044.lcssa, ptr %i.dk, align 4, !tbaa !153
  br label %_ZN7CaDiCaL7Closure15shrink_and_gateEPNS_4GateEii.exit

_ZN7CaDiCaL7Closure15shrink_and_gateEPNS_4GateEii.exit: ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i
  %i.dl = getelementptr inbounds nuw i8, ptr %i.cx, i64 5 ; 2 uses
  %i.dm = load i8, ptr %i.dl, align 1
  %i.dn = or i8 %i.dm, 8
  store i8 %i.dn, ptr %i.dl, align 1
  %i.do = load ptr, ptr %i.a, align 8, !tbaa !325
  call void @_ZN7CaDiCaL7Closure15update_and_gateEPNS_4GateENSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEiillii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.do, ptr %.sroa.037.0, i32 noundef 0, i32 noundef 0, i64 noundef 0, i64 noundef 0, i32 noundef %.044.lcssa, i32 noundef 0)
  %i.dp = load ptr, ptr %5, align 8, !tbaa !123   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 7056 ; 2 uses
  %i.dr = load <2 x i64>, ptr %i.dq, align 8, !tbaa !144
  %i.ds = add nsw <2 x i64> %i.dr, splat (i64 1)
  store <2 x i64> %i.ds, ptr %i.dq, align 8, !tbaa !144
  br i1 %.042.lcssa, label %bb.ac, label %_ZNSt6vectorIlSaIlEED2Ev.exit56

bb.ac:                                            ; preds = %_ZN7CaDiCaL7Closure15shrink_and_gateEPNS_4GateEii.exit
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 344
  %i.du = load i8, ptr %i.dt, align 8, !tbaa !289, !range !290, !noundef !291
  %i.dv = trunc nuw i8 %i.du to i1
  %.pre111 = load ptr, ptr %i.a, align 8, !tbaa !325 ; 6 uses
  br i1 %i.dv, label %bb.ad, label %.loopexit

bb.ad:                                            ; preds = %bb.ac
  %i.dw = getelementptr inbounds nuw i8, ptr %.pre111, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !335 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %.pre111, i64 16
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !335 ; 2 uses
  %.not7999 = icmp eq ptr %i.dx, %i.dz
  br i1 %.not7999, label %.loopexit, label %.lr.ph102

.lr.ph102:                                        ; preds = %bb.ad
  %i.ea = load i32, ptr %.pre111, align 8, !tbaa !151
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph102, %.critedge
  %.sroa.057.0100 = phi ptr [ %i.dx, %.lr.ph102 ], [ %i.eb, %.critedge ] ; 3 uses
  %.sroa.0.0.copyload = load i32, ptr %.sroa.057.0100, align 8, !tbaa !153
  %.not48 = icmp eq i32 %.sroa.0.0.copyload, %i.ea
  br i1 %.not48, label %bb.af, label %.critedge

bb.af:                                            ; preds = %bb.ae
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.057.0100, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !tbaa !300
  call void @_ZN7CaDiCaL7Closure36compute_rewritten_clause_lrat_simpleEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %.sroa.42.0.copyload, i32 noundef 0)
  %.pre110 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %.loopexit

.critedge:                                        ; preds = %bb.ae
  %i.eb = getelementptr inbounds nuw i8, ptr %.sroa.057.0100, i64 16 ; 2 uses
  %.not79 = icmp eq ptr %i.eb, %i.dz
  br i1 %.not79, label %.loopexit, label %bb.ae

.loopexit:                                        ; preds = %.critedge, %bb.ad, %bb.af, %bb.ac
  %i.ec = phi ptr [ %.pre111, %bb.ac ], [ %.pre111, %bb.ad ], [ %.pre110, %bb.af ], [ %.pre111, %.critedge ]
  %i.ed = load i32, ptr %i.ec, align 8, !tbaa !151
  %i.ee = sub nsw i32 0, %i.ed
  %i.ef = call noundef zeroext i1 @_ZN7CaDiCaL7Closure21learn_congruence_unitEibb(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %i.ee, i1 noundef zeroext false, i1 noundef zeroext false) ; 0 uses
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit56

_ZNSt6vectorIlSaIlEED2Ev.exit56:                  ; preds = %_ZN7CaDiCaL7Closure15shrink_and_gateEPNS_4GateEii.exit, %.loopexit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL7Closure13simplify_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !353
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure17simplify_and_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure17simplify_xor_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure17simplify_ite_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !322, !range !290, !noundef !291
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure17simplify_xor_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !325
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure22check_xor_gate_impliedEPKNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1)
  %i.e = load i8, ptr %i.b, align 1
  %i.f = and i8 %i.e, 2
  %.not = icmp eq i8 %i.f, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.h = call ptr @_ZNSt10_HashtableIPN7CaDiCaL4GateES2_SaIS2_ENSt8__detail9_IdentityENS0_11GateEqualToENS0_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.g, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.i = phi ptr [ %.pre, %bb.c ], [ %1, %bb.b ]  ; 6 uses
  %.sroa.012.0 = phi ptr [ %i.h, %bb.c ], [ null, %bb.b ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !312  ; 2 uses
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !152  ; 8 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o                       ; 3 uses
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %.not26 = icmp eq ptr %i.l, %i.m
  br i1 %.not26, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !123
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 472
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !310  ; 3 uses
  %i.v = icmp eq i64 %i.p, 4
  br i1 %i.v, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.q, -2
  br label %bb.f

._crit_edge.unr-lcssa:                            ; preds = %bb.j
  %i.w = and i64 %i.p, 4
  %lcmp.mod.not = icmp eq i64 %i.w, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.unr-lcssa, %.lr.ph
  %.024.epil.init = phi i32 [ 0, %.lr.ph ], [ %spec.select.1, %._crit_edge.unr-lcssa ] ; 2 uses
  %.01523.epil.init = phi i64 [ 0, %.lr.ph ], [ %i.ba, %._crit_edge.unr-lcssa ]
  %.01622.epil.init = phi i64 [ 0, %.lr.ph ], [ %.117.1, %._crit_edge.unr-lcssa ] ; 3 uses
  %lcmp.mod37 = trunc i64 %i.q to i1
  call void @llvm.assume(i1 %lcmp.mod37)
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01523.epil.init
  %i.y = load i32, ptr %i.x, align 4, !tbaa !153  ; 2 uses
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds i8, ptr %i.u, i64 %i.z
  %i.ab = load i8, ptr %i.aa, align 1, !tbaa !143 ; 2 uses
  %i.ac = icmp sgt i8 %i.ab, 0
  %i.ad = zext i1 %i.ac to i32                    ; 2 uses
  %.not21.epil = icmp eq i8 %i.ab, 0
  br i1 %.not21.epil, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.epil.preheader
  %i.ae = add i64 %.01622.epil.init, 1
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01622.epil.init
  store i32 %i.y, ptr %i.af, align 4, !tbaa !153
  br label %._crit_edge

._crit_edge:                                      ; preds = %.epil.preheader, %bb.e, %._crit_edge.unr-lcssa
  %.117.lcssa = phi i64 [ %.117.1, %._crit_edge.unr-lcssa ], [ %.01622.epil.init, %.epil.preheader ], [ %i.ae, %bb.e ] ; 2 uses
  %.024.lcssa = phi i32 [ %spec.select, %._crit_edge.unr-lcssa ], [ %.024.epil.init, %bb.e ], [ %.024.epil.init, %.epil.preheader ]
  %.lcssa = phi i32 [ %i.ax, %._crit_edge.unr-lcssa ], [ %i.ad, %bb.e ], [ %i.ad, %.epil.preheader ]
  %i.ag = icmp eq i32 %.024.lcssa, %.lcssa
  br i1 %i.ag, label %._crit_edge.thread, label %bb.k

bb.f:                                             ; preds = %bb.j, %.lr.ph.new
  %.024 = phi i32 [ 0, %.lr.ph.new ], [ %spec.select.1, %bb.j ]
  %.01523 = phi i64 [ 0, %.lr.ph.new ], [ %i.ba, %bb.j ] ; 3 uses
  %.01622 = phi i64 [ 0, %.lr.ph.new ], [ %.117.1, %bb.j ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.j ]
  %i.ah = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01523
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !153 ; 2 uses
  %i.aj = sext i32 %i.ai to i64
  %i.ak = getelementptr inbounds i8, ptr %i.u, i64 %i.aj
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !143 ; 2 uses
  %i.am = icmp sgt i8 %i.al, 0
  %i.an = zext i1 %i.am to i32
  %spec.select = xor i32 %.024, %i.an             ; 2 uses
  %.not21 = icmp eq i8 %i.al, 0
  br i1 %.not21, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ao = add i64 %.01622, 1
  %i.ap = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01622
  store i32 %i.ai, ptr %i.ap, align 4, !tbaa !153
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.117 = phi i64 [ %.01622, %bb.f ], [ %i.ao, %bb.g ] ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.01523
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 4
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !153 ; 2 uses
  %i.at = sext i32 %i.as to i64
  %i.au = getelementptr inbounds i8, ptr %i.u, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1, !tbaa !143 ; 2 uses
  %i.aw = icmp sgt i8 %i.av, 0
  %i.ax = zext i1 %i.aw to i32                    ; 2 uses
  %spec.select.1 = xor i32 %spec.select, %i.ax    ; 2 uses
  %.not21.1 = icmp eq i8 %i.av, 0
  br i1 %.not21.1, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ay = add i64 %.117, 1
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.117
  store i32 %i.as, ptr %i.az, align 4, !tbaa !153
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.117.1 = phi i64 [ %.117, %bb.h ], [ %i.ay, %bb.i ] ; 3 uses
  %i.ba = add nuw i64 %.01523, 2                  ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.unr-lcssa, label %bb.f, !llvm.loop !11

bb.k:                                             ; preds = %._crit_edge
  %i.bb = load i32, ptr %i.i, align 8, !tbaa !151
  %i.bc = sub nsw i32 0, %i.bb
  store i32 %i.bc, ptr %i.i, align 8, !tbaa !151
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.d, %bb.k, %._crit_edge
  %.016.lcssa33 = phi i64 [ %.117.lcssa, %._crit_edge ], [ %.117.lcssa, %bb.k ], [ 0, %bb.d ] ; 5 uses
  %.not20 = icmp eq i64 %.016.lcssa33, %i.q
  br i1 %.not20, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit, label %bb.l

bb.l:                                             ; preds = %._crit_edge.thread
  %i.bd = getelementptr inbounds nuw i8, ptr %i.i, i64 5 ; 2 uses
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = or i8 %i.be, 8
  store i8 %i.bf, ptr %i.bd, align 1
  %i.bg = load ptr, ptr %i.a, align 8, !tbaa !325 ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 56 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 64 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !312 ; 2 uses
  %i.bk = load ptr, ptr %i.bh, align 8, !tbaa !152 ; 2 uses
  %i.bl = ptrtoint ptr %i.bj to i64
  %i.bm = ptrtoint ptr %i.bk to i64
  %i.bn = sub i64 %i.bl, %i.bm
  %i.bo = ashr exact i64 %i.bn, 2                 ; 3 uses
  %i.bp = icmp ugt i64 %.016.lcssa33, %i.bo
  br i1 %i.bp, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.bq = sub nuw i64 %.016.lcssa33, %i.bo
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, i64 noundef %i.bq)
  %.pre27 = load ptr, ptr %i.a, align 8, !tbaa !325
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL7Closure17find_equivalencesEv:bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dm, i64 5016 ; 2 uses
  %i.du = load <2 x i64>, ptr %i.dt, align 8, !tbaa !144
  %i.dv = add nsw <2 x i64> %i.du, <i64 -1, i64 1>
  store <2 x i64> %i.dv, ptr %i.dt, align 8, !tbaa !144
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dm, i64 5040 ; 2 uses
  %i.dx = load <2 x i64>, ptr %i.dw, align 8, !tbaa !144
  %i.dy = add nsw <2 x i64> %i.dx, <i64 -1, i64 1>
  store <2 x i64> %i.dy, ptr %i.dw, align 8, !tbaa !144
  br label %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit: ; preds = %bb.q, %bb.r, %bb.u
  %i.dz = phi ptr [ %i.bv, %bb.q ], [ %i.bv, %bb.r ], [ %i.dm, %bb.u ] ; 2 uses
  %.not.i46 = icmp eq ptr %.sroa.0.0.copyload.le, null
  br i1 %.not.i46, label %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50, label %bb.v

bb.v:                                             ; preds = %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.le, i64 8 ; 2 uses
  %i.eb = load i32, ptr %i.ea, align 8            ; 2 uses
  %i.ec = and i32 %i.eb, 32768
  %.not8.i47 = icmp eq i32 %i.ec, 0
  br i1 %.not8.i47, label %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ed = and i32 %i.eb, -32769
  store i32 %i.ed, ptr %i.ea, align 8
  %i.ee = load ptr, ptr %i.a, align 8, !tbaa !123 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 3488
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !317 ; 2 uses
  %.not9.i48 = icmp eq ptr %i.eg, null
  br i1 %.not9.i48, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.eh = load i64, ptr %.sroa.0.0.copyload.le, align 8, !tbaa !143
  tail call void @_ZN7CaDiCaL5Proof10strengthenEl(ptr noundef nonnull align 8 dereferenceable(120) %i.eg, i64 noundef %i.eh) #21
  %.pre.i49 = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w
  %i.ei = phi ptr [ %.pre.i49, %bb.x ], [ %i.ee, %bb.w ] ; 4 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.le, i64 16
  %i.ek = load i32, ptr %i.ej, align 8, !tbaa !153
  %i.el = sext i32 %i.ek to i64
  %i.em = getelementptr inbounds nuw i8, ptr %i.ei, i64 6272 ; 2 uses
  %i.en = load i64, ptr %i.em, align 8, !tbaa !361
  %i.eo = add nsw i64 %i.en, %i.el
  store i64 %i.eo, ptr %i.em, align 8, !tbaa !361
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 5016 ; 2 uses
  %i.eq = load <2 x i64>, ptr %i.ep, align 8, !tbaa !144
  %i.er = add nsw <2 x i64> %i.eq, <i64 -1, i64 1>
  store <2 x i64> %i.er, ptr %i.ep, align 8, !tbaa !144
  %i.es = getelementptr inbounds nuw i8, ptr %i.ei, i64 5040 ; 2 uses
  %i.et = load <2 x i64>, ptr %i.es, align 8, !tbaa !144
  %i.eu = add nsw <2 x i64> %i.et, <i64 -1, i64 1>
  store <2 x i64> %i.eu, ptr %i.es, align 8, !tbaa !144
  br label %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50

_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50: ; preds = %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit, %bb.v, %bb.y
  %i.ev = phi ptr [ %i.dz, %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit ], [ %i.dz, %bb.v ], [ %i.ei, %bb.y ]
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 344
  %i.ex = load i8, ptr %i.ew, align 8, !tbaa !289, !range !290, !noundef !291
  %i.ey = trunc nuw i8 %i.ex to i1
  br i1 %i.ey, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50
  %i.ez = load ptr, ptr %i.g, align 8, !tbaa !319
  %i.fa = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.cn
  %.sroa.21.0..sroa_idx.i52 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  %.sroa.21.0.copyload.i53 = load ptr, ptr %.sroa.21.0..sroa_idx.i52, align 8, !tbaa !300
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50, %bb.z
  %i.fb = phi ptr [ %.sroa.21.0.copyload.i53, %bb.z ], [ null, %_ZN7CaDiCaL7Closure14promote_clauseEPNS_6ClauseE.exit50 ]
  %i.fc = tail call noundef zeroext i1 @_ZN7CaDiCaL7Closure26merge_literals_equivalenceEiiPNS_6ClauseES2_(ptr noundef nonnull align 8 dereferenceable(1040) %0, i32 noundef %.sroa.087.0128, i32 noundef %.sroa.5.0.copyload, ptr noundef %i.fb, ptr noundef %.sroa.0.0.copyload.le) ; 0 uses
  %i.fd = load ptr, ptr %i.a, align 8, !tbaa !123 ; 3 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fd, i64 1240
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !132 ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fd, i64 1248
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !132 ; 2 uses
  %.not6.i = icmp eq ptr %i.ff, %i.fh
  br i1 %.not6.i, label %bb.ac, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %.pre.i57 = load ptr, ptr %i.a, align 8, !tbaa !123 ; 4 uses
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 1240
  %.pre8.i = load ptr, ptr %.phi.trans.insert.i, align 8, !tbaa !152 ; 2 uses
  %.phi.trans.insert9.i = getelementptr inbounds nuw i8, ptr %.pre.i57, i64 1248 ; 2 uses
  %.pre10.i = load ptr, ptr %.phi.trans.insert9.i, align 8, !tbaa !312
  %i.fi = icmp eq ptr %.pre10.i, %.pre8.i
  br i1 %i.fi, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %._crit_edge.i
  store ptr %.pre8.i, ptr %.phi.trans.insert9.i, align 8, !tbaa !312
  br label %bb.ac

.lr.ph.i:                                         ; preds = %bb.aa, %.lr.ph.i
  %.sroa.03.07.i = phi ptr [ %i.fp, %.lr.ph.i ], [ %i.ff, %bb.aa ] ; 2 uses
  %i.fj = load i32, ptr %.sroa.03.07.i, align 4, !tbaa !153 ; 2 uses
  %i.fk = tail call noundef i32 @llvm.abs.i32(i32 %i.fj, i1 true)
  %i.fl = tail call noundef i32 @llvm.fshl.i32(i32 %i.fk, i32 %i.fj, i32 1)
  %i.fm = zext i32 %i.fl to i64
  %i.fn = load ptr, ptr %i.f, align 8, !tbaa !318
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fn, i64 %i.fm
  store i8 0, ptr %i.fo, align 1, !tbaa !143
  %i.fp = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i, i64 4 ; 2 uses
  %.not.i56 = icmp eq ptr %i.fp, %i.fh
  br i1 %.not.i56, label %._crit_edge.i, label %.lr.ph.i

bb.ac:                                            ; preds = %bb.ab, %._crit_edge.i, %bb.aa
  %i.fq = phi ptr [ %.pre.i57, %bb.ab ], [ %.pre.i57, %._crit_edge.i ], [ %i.fd, %bb.aa ] ; 4 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fq, i64 20
  %i.fs = load i8, ptr %i.fr, align 4, !tbaa !322, !range !290, !noundef !291
  %i.ft = trunc nuw i8 %i.fs to i1
  br i1 %i.ft, label %_ZN7CaDiCaL13shrink_vectorINS_13LitClausePairEEEvRSt6vectorIT_SaIS3_EE.exit, label %_ZN7CaDiCaL7Closure10unmark_allEv.exit68

.thread91:                                        ; preds = %_ZN7CaDiCaL7Closure19find_representativeEi.exit44, %bb.m, %bb.n
  %i.fu = getelementptr inbounds nuw i8, ptr %.sroa.072.0122, i64 16 ; 2 uses
  %.not115 = icmp eq ptr %i.fu, %i.cg
  br i1 %.not115, label %.thread96, label %.lr.ph124

.thread96:                                        ; preds = %bb.l, %.lr.ph124, %.thread91
  %i.fv = getelementptr inbounds nuw i8, ptr %i.bu, i64 1240
  %i.fw = load ptr, ptr %i.fv, align 8, !tbaa !132 ; 2 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %i.bu, i64 1248
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !132 ; 2 uses
  %.not6.i58 = icmp eq ptr %i.fw, %i.fy
  br i1 %.not6.i58, label %_ZN7CaDiCaL7Closure10unmark_allEv.exit68.thread104, label %.lr.ph.i59

._crit_edge.i62:                                  ; preds = %.lr.ph.i59
  %.pre.i63 = load ptr, ptr %i.a, align 8, !tbaa !123 ; 8 uses
  %.phi.trans.insert.i64 = getelementptr inbounds nuw i8, ptr %.pre.i63, i64 1240
  %.pre8.i65 = load ptr, ptr %.phi.trans.insert.i64, align 8, !tbaa !152 ; 2 uses
  %.phi.trans.insert9.i66 = getelementptr inbounds nuw i8, ptr %.pre.i63, i64 1248 ; 2 uses
  %.pre10.i67 = load ptr, ptr %.phi.trans.insert9.i66, align 8, !tbaa !312
  %i.fz = icmp eq ptr %.pre10.i67, %.pre8.i65
  br i1 %i.fz, label %_ZN7CaDiCaL7Closure10unmark_allEv.exit68.thread104, label %bb.ad

bb.ad:                                            ; preds = %._crit_edge.i62
  store ptr %.pre8.i65, ptr %.phi.trans.insert9.i66, align 8, !tbaa !312
  br label %_ZN7CaDiCaL7Closure10unmark_allEv.exit68.thread104

.lr.ph.i59:                                       ; preds = %.thread96, %.lr.ph.i59
  %.sroa.03.07.i60 = phi ptr [ %i.gg, %.lr.ph.i59 ], [ %i.fw, %.thread96 ] ; 2 uses
  %i.ga = load i32, ptr %.sroa.03.07.i60, align 4, !tbaa !153 ; 2 uses
  %i.gb = tail call noundef i32 @llvm.abs.i32(i32 %i.ga, i1 true)
  %i.gc = tail call noundef i32 @llvm.fshl.i32(i32 %i.gb, i32 %i.ga, i32 1)
  %i.gd = zext i32 %i.gc to i64
  %i.ge = load ptr, ptr %i.f, align 8, !tbaa !318
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 %i.gd
  store i8 0, ptr %i.gf, align 1, !tbaa !143
  %i.gg = getelementptr inbounds nuw i8, ptr %.sroa.03.07.i60, i64 4 ; 2 uses
  %.not.i61 = icmp eq ptr %i.gg, %i.fy
  br i1 %.not.i61, label %._crit_edge.i62, label %.lr.ph.i59

_ZN7CaDiCaL7Closure10unmark_allEv.exit68.thread104: ; preds = %._crit_edge, %_ZN7CaDiCaL7Closure10unmark_allEv.exit68, %.thread96, %._crit_edge.i62, %bb.ad
  %i.gh = phi ptr [ %.pre.i63, %bb.ad ], [ %i.bu, %.thread96 ], [ %.pre.i63, %._crit_edge.i62 ], [ %i.bu, %._crit_edge ], [ %i.s, %_ZN7CaDiCaL7Closure10unmark_allEv.exit68 ]
  %i.gi = phi ptr [ %.pre.i63, %bb.ad ], [ %i.bu, %.thread96 ], [ %.pre.i63, %._crit_edge.i62 ], [ %i.bv, %._crit_edge ], [ %i.t, %_ZN7CaDiCaL7Closure10unmark_allEv.exit68 ]
  %i.gj = phi ptr [ %.pre.i63, %bb.ad ], [ %i.bu, %.thread96 ], [ %.pre.i63, %._crit_edge.i62 ], [ %i.bv, %._crit_edge ], [ %i.u, %_ZN7CaDiCaL7Closure10unmark_allEv.exit68 ]
  %i.gk = add i32 %.sroa.087.0128, 1
  %.not113 = icmp eq i32 %.sroa.087.0128, %i.e
  br i1 %.not113, label %._crit_edge129, label %_ZN7CaDiCaL7Closure10unmark_allEv.exit68.preheader

._crit_edge129:                                   ; preds = %_ZN7CaDiCaL7Closure10unmark_allEv.exit68.thread104, %bb.a
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !319 ; 6 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !338
  %.not.i.i = icmp eq ptr %i.go, %i.gm
  br i1 %.not.i.i, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE5clearEv.exit, label %bb.ae

bb.ae:                                            ; preds = %._crit_edge129
  store ptr %i.gm, ptr %i.gn, align 8, !tbaa !338
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE5clearEv.exit

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE5clearEv.exit: ; preds = %._crit_edge129, %bb.ae
  %i.gp = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.gq = load ptr, ptr %i.gp, align 8, !tbaa !375 ; 2 uses
  %i.gr = ptrtoint ptr %i.gq to i64
  %i.gs = ptrtoint ptr %i.gm to i64
  %i.gt = sub i64 %i.gr, %i.gs
  %.not154 = icmp eq ptr %i.gq, %i.gm
  br i1 %.not154, label %_ZN7CaDiCaL13shrink_vectorINS_13LitClausePairEEEvRSt6vectorIT_SaIS3_EE.exit, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EEC2ERKS3_.exit.i

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EEC2ERKS3_.exit.i: ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE5clearEv.exit
  %.not.i.i.i.i = icmp eq ptr %i.gm, null
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.gl, i8 0, i64 24, i1 false)
  br i1 %.not.i.i.i.i, label %_ZN7CaDiCaL13shrink_vectorINS_13LitClausePairEEEvRSt6vectorIT_SaIS3_EE.exit, label %bb.af

bb.af:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EEC2ERKS3_.exit.i
  tail call void @_ZdlPvm(ptr noundef nonnull %i.gm, i64 noundef %i.gt) #24
  br label %_ZN7CaDiCaL13shrink_vectorINS_13LitClausePairEEEvRSt6vectorIT_SaIS3_EE.exit

_ZN7CaDiCaL13shrink_vectorINS_13LitClausePairEEEvRSt6vectorIT_SaIS3_EE.exit: ; preds = %bb.ac, %bb.af, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EEC2ERKS3_.exit.i, %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE5clearEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure16rewrite_and_gateEPNS_4GateEiill(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !325
  %6 = tail call noundef zeroext i1 @_ZN7CaDiCaL7Closure13skip_and_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1)
  br i1 %6, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !132  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132  ; 3 uses
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g                       ; 3 uses
  %i.i = ashr i64 %i.h, 4                         ; 2 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.b
  %i.k = and i64 %i.h, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.c, i64 %i.k ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.i, %.lr.ph.i.i.i.i ], [ %i.x, %bb.g ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i.i ], [ %i.w, %bb.g ] ; 9 uses
  %i.l = load i32, ptr %.sroa.032.051.i.i.i.i, align 4, !tbaa !153
  %i.m = icmp eq i32 %i.l, %3
  br i1 %i.m, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !153
  %i.p = icmp eq i32 %i.o, %3
  br i1 %i.p, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.r = load i32, ptr %i.q, align 4, !tbaa !153
  %i.s = icmp eq i32 %i.r, %3
  br i1 %i.s, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit268, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  %i.u = load i32, ptr %i.t, align 4, !tbaa !153
  %i.v = icmp eq i32 %i.u, %3
  br i1 %i.v, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit270, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.x = add nsw i64 %.052.i.i.i.i, -1
  %i.y = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.y, label %bb.c, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.g
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.f, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.b
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.h, %bb.b ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.c, %bb.b ] ; 5 uses
  %i.z = ashr exact i64 %.pre-phi61.i.i.i.i, 2
  switch i64 %i.z, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread [
    i64 3, label %bb.h
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.aa = load i32, ptr %.sroa.032.0.lcssa.i.i.i.i, align 4, !tbaa !153
  %i.ab = icmp eq i32 %i.aa, %3
  br i1 %i.ab, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.i, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ac, %bb.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ad = load i32, ptr %.sroa.032.1.i.i.i.i, align 4, !tbaa !153
  %i.ae = icmp eq i32 %i.ad, %3
  br i1 %i.ae, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.j

bb.j:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.af, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ag = load i32, ptr %.sroa.032.2.i.i.i.i, align 4, !tbaa !153
  %i.ah = icmp eq i32 %i.ag, %3
  %spec.select.i.i.i.i = select i1 %i.ah, ptr %.sroa.032.2.i.i.i.i, ptr %i.e
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit: ; preds = %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit268: ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit270: ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit:      ; preds = %bb.c, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit268, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit270, %bb.h, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.h ], [ %i.ak, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit270 ], [ %i.aj, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit268 ], [ %i.ai, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.c ]
  %.not165 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.e
  br i1 %.not165, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %8 = load ptr, ptr %7, align 8, !tbaa !123
  %9 = getelementptr inbounds nuw i8, ptr %8, i64 472
  %10 = load ptr, ptr %9, align 8, !tbaa !310
  %i.al = sext i32 %3 to i64
  %i.am = getelementptr inbounds i8, ptr %10, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !tbaa !143
  %.not = icmp eq i8 %i.an, 0
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7CaDiCaL7Closure17simplify_and_gateEPNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1)
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread

bb.m:                                             ; preds = %bb.k
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %12 = load i8, ptr %11, align 1
  %i.ao = and i8 %12, 2
  %.not115 = icmp eq i8 %i.ao, 0
  br i1 %.not115, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.aq = call ptr @_ZNSt10_HashtableIPN7CaDiCaL4GateES2_SaIS2_ENSt8__detail9_IdentityENS0_11GateEqualToENS0_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.ap, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !325 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 56
  %.pre209 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !132
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ar = phi ptr [ %.pre209, %bb.n ], [ %i.c, %bb.m ] ; 6 uses
  %i.as = phi ptr [ %.pre, %bb.n ], [ %1, %bb.m ] ; 10 uses
  %.sroa.060.0 = phi ptr [ %i.aq, %bb.n ], [ null, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 56
  %i.au = getelementptr inbounds nuw i8, ptr %i.as, i64 48 ; 3 uses
  %i.av = load i8, ptr %i.au, align 8, !tbaa !150
  %.not116 = icmp eq i8 %i.av, 0
  br i1 %.not116, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aw = load i32, ptr %i.as, align 8, !tbaa !151
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 784
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !152
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.0.i = phi i32 [ %i.aw, %bb.p ], [ %i.bd, %bb.q ] ; 4 uses
  %i.az = call noundef i32 @llvm.abs.i32(i32 %.0.i, i1 true)
  %i.ba = call noundef i32 @llvm.fshl.i32(i32 %i.az, i32 %.0.i, i32 1)
  %i.bb = zext i32 %i.ba to i64
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bb
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !153 ; 2 uses
  %.not.i = icmp eq i32 %i.bd, %.0.i
  br i1 %.not.i, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit, label %bb.q, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit: ; preds = %bb.q
  store i32 %.0.i, ptr %i.as, align 8, !tbaa !151
  br label %bb.r

bb.r:                                             ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit, %bb.o
  %i.be = getelementptr inbounds nuw i8, ptr %i.as, i64 64 ; 2 uses
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !132 ; 4 uses
  %.not166178 = icmp eq ptr %i.ar, %i.bf
  br i1 %.not166178, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.bg = sub nsw i32 0, %2                       ; 5 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph, %bb.ai
  %.091182 = phi i32 [ 0, %.lr.ph ], [ %.394, %bb.ai ] ; 4 uses
  %.095181 = phi i32 [ 0, %.lr.ph ], [ %.398, %bb.ai ] ; 5 uses
  %.sroa.0155.0180 = phi ptr [ %i.ar, %.lr.ph ], [ %.sroa.0155.1, %bb.ai ] ; 9 uses
  %.sroa.0152.0179 = phi ptr [ %i.ar, %.lr.ph ], [ %i.cg, %bb.ai ] ; 3 uses
  %i.bh = load i32, ptr %.sroa.0152.0179, align 4, !tbaa !153 ; 5 uses
  %i.bi = load i32, ptr %i.as, align 8, !tbaa !151 ; 2 uses
  %i.bj = sub nsw i32 0, %i.bi                    ; 2 uses
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bl = icmp eq i32 %i.bh, %3                   ; 2 uses
  %i.bm = icmp eq i32 %2, %i.bj
  %or.cond = and i1 %i.bl, %i.bm
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t, %bb.s
  %.lcssa = phi i32 [ %3, %bb.t ], [ %i.bh, %bb.s ]
  store i8 16, ptr %i.au, align 8, !tbaa !150
  br label %.thread

bb.v:                                             ; preds = %bb.t
  br i1 %i.bl, label %bb.w, label %._crit_edge225

._crit_edge225:                                   ; preds = %bb.v
  %.pre226 = sub nsw i32 0, %i.bh
  br label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 %2, ptr %.sroa.0152.0179, align 4, !tbaa !153
  %.pre210 = load i32, ptr %i.as, align 8, !tbaa !151
  br label %bb.x

bb.x:                                             ; preds = %._crit_edge225, %bb.w
  %.pre-phi227 = phi i32 [ %.pre226, %._crit_edge225 ], [ %i.bg, %bb.w ]
  %i.bn = phi i32 [ %i.bi, %._crit_edge225 ], [ %.pre210, %bb.w ] ; 2 uses
  %i.bo = phi i32 [ %i.bh, %._crit_edge225 ], [ %2, %bb.w ] ; 7 uses
  %i.bp = icmp eq i32 %i.bo, %i.bn
  %i.bq = icmp eq i32 %i.bn, %.pre-phi227
  %i.br = or i1 %i.bp, %i.bq
  br i1 %i.br, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  store i8 16, ptr %i.au, align 8, !tbaa !150
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %i.bs = load ptr, ptr %7, align 8, !tbaa !123
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 472
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !310
  %i.bv = sext i32 %i.bo to i64
  %i.bw = getelementptr inbounds i8, ptr %i.bu, i64 %i.bv
  %i.bx = load i8, ptr %i.bw, align 1, !tbaa !143 ; 2 uses
  %i.by = icmp sgt i8 %i.bx, 0
  br i1 %i.by, label %bb.ai, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bz = icmp slt i8 %i.bx, 0
  br i1 %i.bz, label %.thread, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = icmp eq i32 %i.bo, %2
  br i1 %i.ca, label %bb.ac, label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %.not117 = icmp eq i32 %.091182, 0
  br i1 %.not117, label %bb.ad, label %.thread

bb.ad:                                            ; preds = %bb.ac
  %i.cb = add i32 %.095181, 1
  %.not118 = icmp eq i32 %.095181, 0
  br i1 %.not118, label %.thread255, label %bb.ai

bb.ae:                                            ; preds = %bb.ab
  %i.cc = icmp eq i32 %i.bo, %i.bg
  br i1 %i.cc, label %bb.af, label %bb.ah

.thread255:                                       ; preds = %bb.ad
  %i.cd = icmp eq i32 %i.bo, %i.bg
  br i1 %i.cd, label %.thread, label %bb.ah

bb.af:                                            ; preds = %bb.ae
  %.not119 = icmp eq i32 %.095181, 0
  br i1 %.not119, label %bb.ag, label %.thread

bb.ag:                                            ; preds = %bb.af
  %i.ce = add i32 %.091182, 1
  br label %bb.ah

bb.ah:                                            ; preds = %.thread255, %bb.ag, %bb.ae
  %.196258 = phi i32 [ 0, %bb.ag ], [ %.095181, %bb.ae ], [ 1, %.thread255 ]
  %.192 = phi i32 [ %i.ce, %bb.ag ], [ %.091182, %bb.ae ], [ 0, %.thread255 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0155.0180, i64 4
  store i32 %i.bo, ptr %.sroa.0155.0180, align 4, !tbaa !153
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ad, %bb.z, %bb.ah
  %.sroa.0155.1 = phi ptr [ %i.cf, %bb.ah ], [ %.sroa.0155.0180, %bb.z ], [ %.sroa.0155.0180, %bb.ad ] ; 2 uses
  %.398 = phi i32 [ %.196258, %bb.ah ], [ %.095181, %bb.z ], [ %i.cb, %bb.ad ]
  %.394 = phi i32 [ %.192, %bb.ah ], [ %.091182, %bb.z ], [ 0, %bb.ad ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.0152.0179, i64 4 ; 2 uses
  %.not166 = icmp eq ptr %i.cg, %i.bf
  br i1 %.not166, label %.thread, label %bb.s

.thread:                                          ; preds = %.thread255, %bb.ai, %bb.af, %bb.ac, %bb.aa, %bb.r, %bb.u
  %.sroa.0155.0169 = phi ptr [ %.sroa.0155.0180, %bb.u ], [ %i.ar, %bb.r ], [ %.sroa.0155.0180, %.thread255 ], [ %.sroa.0155.1, %bb.ai ], [ %.sroa.0155.0180, %bb.af ], [ %.sroa.0155.0180, %bb.ac ], [ %.sroa.0155.0180, %bb.aa ] ; 2 uses
  %.3106 = phi i32 [ %.lcssa, %bb.u ], [ 0, %bb.r ], [ %i.bg, %.thread255 ], [ 0, %bb.ai ], [ %i.bg, %bb.af ], [ %2, %bb.ac ], [ 0, %bb.aa ] ; 10 uses
  %.3102 = phi i32 [ 0, %bb.u ], [ 0, %bb.r ], [ 0, %.thread255 ], [ 0, %bb.ai ], [ 0, %bb.af ], [ 0, %bb.ac ], [ %i.bo, %bb.aa ] ; 5 uses
  %.not167 = icmp eq ptr %.sroa.0155.0169, %i.bf
  br i1 %.not167, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.ch = ptrtoint ptr %.sroa.0155.0169 to i64
  %i.ci = ptrtoint ptr %i.ar to i64               ; 2 uses
  %i.cj = sub i64 %i.ch, %i.ci                    ; 2 uses
  %i.ck = ashr exact i64 %i.cj, 2                 ; 3 uses
  %i.cl = ptrtoint ptr %i.bf to i64
  %i.cm = sub i64 %i.cl, %i.ci
  %i.cn = ashr exact i64 %i.cm, 2                 ; 3 uses
  %i.co = icmp ugt i64 %i.ck, %i.cn
  br i1 %i.co, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  %i.cp = sub nuw nsw i64 %i.ck, %i.cn
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.at, i64 noundef %i.cp)
  %.pre211 = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.al:                                            ; preds = %bb.aj
  %i.cq = icmp ult i64 %i.ck, %i.cn
  br i1 %i.cq, label %bb.am, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

bb.am:                                            ; preds = %bb.al
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.cj
  store ptr %i.cr, ptr %i.be, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit

_ZNSt6vectorIiSaIiEE6resizeEm.exit:               ; preds = %bb.ak, %bb.al, %bb.am
  %i.cs = phi ptr [ %.pre211, %bb.ak ], [ %i.as, %bb.al ], [ %i.as, %bb.am ]
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 5 ; 2 uses
  %i.cu = load i8, ptr %i.ct, align 1
  %i.cv = or i8 %i.cu, 8
  store i8 %i.cv, ptr %i.ct, align 1
  %.pre215.pre = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %bb.an

bb.an:                                            ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit, %.thread
  %.pre215.a = phi ptr [ %.pre215.pre, %_ZNSt6vectorIiSaIiEE6resizeEm.exit ], [ %i.as, %.thread ] ; 8 uses
  %i.cw = load ptr, ptr %7, align 8, !tbaa !123
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 344
  %i.cy = load i8, ptr %i.cx, align 8, !tbaa !289, !range !290, !noundef !291
  %i.cz = trunc nuw i8 %i.cy to i1
  br i1 %i.cz, label %bb.ao, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.ao:                                            ; preds = %bb.an
  %i.da = getelementptr inbounds nuw i8, ptr %.pre215.a, i64 8 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.pre215.a, i64 16 ; 3 uses
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !338 ; 3 uses
  %i.dd = load ptr, ptr %i.da, align 8, !tbaa !319 ; 4 uses
  %i.de = ptrtoint ptr %i.dc to i64
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = sub i64 %i.de, %i.df
  %i.dh = ashr exact i64 %i.dg, 4
  %i.di = icmp eq i32 %.3102, %2
  %i.dj = select i1 %i.di, i32 %3, i32 %.3102
  %i.dk = sub nsw i32 0, %2
  %i.dl = icmp eq i32 %.3106, %i.dk
  %i.dm = sub nsw i32 0, %3
  %i.dn = icmp eq i32 %.3106, %2
  %i.do = select i1 %i.dn, i32 %3, i32 %.3106
  %i.dp = select i1 %i.dl, i32 %i.dm, i32 %i.do   ; 2 uses
  %.not202 = icmp eq ptr %i.dc, %i.dd
  br i1 %.not202, label %._crit_edge.thread, label %.lr.ph200

.lr.ph200:                                        ; preds = %bb.ao
  %i.dq = getelementptr inbounds nuw i8, ptr %.pre215.a, i64 48
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 784
  %.not121 = icmp eq i32 %.3106, 0
  %i.ds = sub nsw i32 0, %i.dp
  %i.dt = sub nsw i32 0, %.3106
  br label %bb.as

._crit_edge:                                      ; preds = %bb.bf
  %.pre213 = load ptr, ptr %i.db, align 8, !tbaa !338 ; 2 uses
  %.pre218 = ptrtoint ptr %.pre213 to i64
  %.pre219 = ptrtoint ptr %i.ed to i64
  %.pre221 = sub i64 %.pre218, %.pre219
  %.pre223 = ashr exact i64 %.pre221, 4           ; 3 uses
  %i.du = icmp ugt i64 %.188, %.pre223
  br i1 %i.du, label %bb.ap, label %._crit_edge.thread

bb.ap:                                            ; preds = %._crit_edge
  %i.dv = sub nuw i64 %.188, %.pre223
  call void @_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.da, i64 noundef %i.dv)
  %.pre214.a = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

._crit_edge.thread:                               ; preds = %bb.ao, %._crit_edge
  %.087.lcssa265 = phi i64 [ %.188, %._crit_edge ], [ 0, %bb.ao ] ; 2 uses
  %i.dw = phi ptr [ %.pre213, %._crit_edge ], [ %i.dc, %bb.ao ]
  %i.dx = phi ptr [ %i.ed, %._crit_edge ], [ %i.dd, %bb.ao ]
  %.pre-phi224264 = phi i64 [ %.pre223, %._crit_edge ], [ 0, %bb.ao ]
  %i.dy = icmp ult i64 %.087.lcssa265, %.pre-phi224264
  br i1 %i.dy, label %bb.aq, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.aq:                                            ; preds = %._crit_edge.thread
  %i.dz = getelementptr inbounds nuw [16 x i8], ptr %i.dx, i64 %.087.lcssa265 ; 2 uses
  %.not.i.i133 = icmp eq ptr %i.dw, %i.dz
  br i1 %.not.i.i133, label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  store ptr %i.dz, ptr %i.db, align 8, !tbaa !338
  br label %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit

bb.as:                                            ; preds = %.lr.ph200, %bb.bf
  %i.ea = phi ptr [ %i.dd, %.lr.ph200 ], [ %i.ed, %bb.bf ] ; 2 uses
  %.0199 = phi i64 [ 0, %.lr.ph200 ], [ %i.fe, %bb.bf ] ; 2 uses
  %.086198 = phi i8 [ 0, %.lr.ph200 ], [ %.3, %bb.bf ] ; 4 uses
  %.087197 = phi i64 [ 0, %.lr.ph200 ], [ %.188, %bb.bf ] ; 7 uses
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.0199
  %i.ec = getelementptr inbounds nuw [16 x i8], ptr %i.ea, i64 %.087197
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ec, ptr noundef nonnull align 8 dereferenceable(16) %i.eb, i64 16, i1 false), !tbaa.struct !337
  %i.ed = load ptr, ptr %i.da, align 8, !tbaa !319 ; 4 uses
  %i.ee = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %.087197 ; 3 uses
  %i.ef = load i8, ptr %i.dq, align 8, !tbaa !150
  %.not120 = icmp eq i8 %i.ef, 0
  %.pre212.pre = load i32, ptr %i.ee, align 4, !tbaa !153 ; 4 uses
  br i1 %.not120, label %bb.av, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.eg = load ptr, ptr %i.dr, align 8, !tbaa !152 ; 2 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.au, %bb.at
  %.0.i134 = phi i32 [ %.pre212.pre, %bb.at ], [ %i.el, %bb.au ] ; 4 uses
  %i.eh = call noundef i32 @llvm.abs.i32(i32 %.0.i134, i1 true)
  %i.ei = call noundef i32 @llvm.fshl.i32(i32 %i.eh, i32 %.0.i134, i32 1)
  %i.ej = zext i32 %i.ei to i64
  %i.ek = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.ej
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !153 ; 2 uses
  %.not.i135 = icmp eq i32 %i.el, %.0.i134
  br i1 %.not.i135, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136, label %bb.au, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136: ; preds = %bb.au
  %i.em = load i32, ptr %.pre215.a, align 8, !tbaa !151
  %i.en = icmp eq i32 %.0.i134, %i.em
  br i1 %i.en, label %.preheader, label %bb.av

.preheader:                                       ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136, %.preheader
  %.0.i137 = phi i32 [ %i.es, %.preheader ], [ %.pre212.pre, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136 ] ; 5 uses
  %i.eo = call noundef i32 @llvm.abs.i32(i32 %.0.i137, i1 true)
  %i.ep = call noundef i32 @llvm.fshl.i32(i32 %i.eo, i32 %.0.i137, i32 1)
  %i.eq = zext i32 %i.ep to i64
  %i.er = getelementptr inbounds nuw [4 x i8], ptr %i.eg, i64 %i.eq
  %i.es = load i32, ptr %i.er, align 4, !tbaa !153 ; 2 uses
  %.not.i138 = icmp eq i32 %i.es, %.0.i137
  br i1 %.not.i138, label %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139, label %.preheader, !llvm.loop !5

_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139: ; preds = %.preheader
  store i32 %.0.i137, ptr %i.ee, align 4, !tbaa !153
  br label %bb.av

bb.av:                                            ; preds = %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136, %bb.as
  %.pre212 = phi i32 [ %.0.i137, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit139 ], [ %.pre212.pre, %_ZN7CaDiCaL7Closure25find_eager_representativeEi.exit136 ], [ %.pre212.pre, %bb.as ] ; 9 uses
  br i1 %.not121, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %.not122 = icmp eq i32 %.pre212, %i.dp
  %.not123 = icmp eq i32 %.pre212, %i.ds
  %or.cond129 = select i1 %.not122, i1 true, i1 %.not123
  %.not124 = icmp eq i32 %.pre212, %.3106
  %or.cond130 = or i1 %.not124, %or.cond129
  %.not125 = icmp eq i32 %.pre212, %i.dt
  %or.cond131 = select i1 %or.cond130, i1 true, i1 %.not125
  br i1 %or.cond131, label %bb.ax, label %bb.bf

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.et = load ptr, ptr %7, align 8, !tbaa !123
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 472
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !310
  %i.ew = sext i32 %.pre212 to i64
  %i.ex = getelementptr inbounds i8, ptr %i.ev, i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !tbaa !143
  %.not126 = icmp eq i8 %i.ey, 0
  br i1 %.not126, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %.not127 = icmp eq i32 %.pre212, %3
  %.not128 = icmp eq i32 %.pre212, %i.dj
  %or.cond132 = or i1 %.not127, %.not128
  br i1 %or.cond132, label %bb.az, label %bb.bf

bb.az:                                            ; preds = %bb.ay, %bb.ax
  %i.ez = icmp eq i32 %.pre212, %2
  br i1 %i.ez, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fa = trunc nuw i8 %.086198 to i1
  br i1 %i.fa, label %bb.bf, label %bb.bb

bb.bb:                                            ; preds = %bb.ba, %bb.az
  %.1 = phi i8 [ %.086198, %bb.az ], [ 1, %bb.ba ] ; 2 uses
  %i.fb = icmp eq i32 %.pre212, %3
  br i1 %i.fb, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  %i.fc = trunc nuw i8 %.1 to i1
  br i1 %i.fc, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  store i32 %2, ptr %i.ee, align 8, !tbaa !339
  br label %bb.be

bb.be:                                            ; preds = %bb.bb, %bb.bd
  %.2 = phi i8 [ 1, %bb.bd ], [ %.1, %bb.bb ]
  %i.fd = add i64 %.087197, 1
  br label %bb.bf

bb.bf:                                            ; preds = %bb.bc, %bb.ba, %bb.ay, %bb.aw, %bb.be
  %.188 = phi i64 [ %i.fd, %bb.be ], [ %.087197, %bb.aw ], [ %.087197, %bb.ay ], [ %.087197, %bb.ba ], [ %.087197, %bb.bc ] ; 4 uses
  %.3 = phi i8 [ %.2, %bb.be ], [ %.086198, %bb.aw ], [ %.086198, %bb.ay ], [ 1, %bb.ba ], [ 1, %bb.bc ]
  %i.fe = add nuw i64 %.0199, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.fe, %i.dh
  br i1 %exitcond.not, label %._crit_edge, label %bb.as, !llvm.loop !618

_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit: ; preds = %bb.ar, %bb.aq, %._crit_edge.thread, %bb.ap, %bb.an
  %i.ff = phi ptr [ %.pre215.a, %bb.ar ], [ %.pre215.a, %bb.aq ], [ %.pre215.a, %._crit_edge.thread ], [ %.pre214.a, %bb.ap ], [ %.pre215.a, %bb.an ] ; 5 uses
  %.not.i140 = icmp eq i32 %.3102, 0
  br i1 %.not.i140, label %bb.bl, label %bb.bg

bb.bg:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 56 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ff, i64 64 ; 2 uses
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !312 ; 3 uses
  %i.fj = load ptr, ptr %i.fg, align 8, !tbaa !152 ; 6 uses
  %i.fk = ptrtoint ptr %i.fi to i64
  %i.fl = ptrtoint ptr %i.fj to i64
  %i.fm = sub i64 %i.fk, %i.fl
  %i.fn = ashr exact i64 %i.fm, 2                 ; 2 uses
  %i.fo = icmp eq ptr %i.fi, %i.fj
  br i1 %i.fo, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %bb.bg
  %i.fp = sub nuw nsw i64 1, %i.fn
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fg, i64 noundef %i.fp)
  %.pre.i = load ptr, ptr %i.fg, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.bi:                                            ; preds = %bb.bg
  %i.fq = icmp ugt i64 %i.fn, 1
  br i1 %i.fq, label %bb.bj, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

bb.bj:                                            ; preds = %bb.bi
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fj, i64 4 ; 2 uses
  %.not.i.i.i.a = icmp eq ptr %i.fi, %i.fr
  br i1 %.not.i.i.i.a, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  store ptr %i.fr, ptr %i.fh, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit.i:             ; preds = %bb.bk, %bb.bj, %bb.bi, %bb.bh
  %i.fs = phi ptr [ %.pre.i, %bb.bh ], [ %i.fj, %bb.bi ], [ %i.fj, %bb.bj ], [ %i.fj, %bb.bk ]
  store i32 %.3102, ptr %i.fs, align 4, !tbaa !153
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit143

bb.bl:                                            ; preds = %_ZNSt6vectorIN7CaDiCaL13LitClausePairESaIS1_EE6resizeEm.exit
  %.not11.i = icmp eq i32 %.3106, 0
  br i1 %.not11.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit143, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.ft = getelementptr inbounds nuw i8, ptr %i.ff, i64 56 ; 3 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ff, i64 64 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !312 ; 2 uses
  %i.fw = load ptr, ptr %i.ft, align 8, !tbaa !152 ; 5 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = ashr exact i64 %i.fz, 2                 ; 2 uses
  %i.gb = icmp ult i64 %i.ga, 2
  br i1 %i.gb, label %bb.bn, label %bb.bo

bb.bn:                                            ; preds = %bb.bm
  %i.gc = sub nuw nsw i64 2, %i.ga
  call void @_ZNSt6vectorIiSaIiEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ft, i64 noundef %i.gc)
  %.pre15.i = load ptr, ptr %i.ft, align 8, !tbaa !152
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i

bb.bo:                                            ; preds = %bb.bm
  %.not14.i = icmp eq i64 %i.fz, 8
  br i1 %.not14.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fw, i64 8 ; 2 uses
  %.not.i.i12.i = icmp eq ptr %i.fv, %i.gd
  br i1 %.not.i.i12.i, label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  store ptr %i.gd, ptr %i.fu, align 8, !tbaa !312
  br label %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i

_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i:           ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bn
  %i.ge = phi ptr [ %.pre15.i, %bb.bn ], [ %i.fw, %bb.bo ], [ %i.fw, %bb.bp ], [ %i.fw, %bb.bq ] ; 2 uses
  store i32 %.3106, ptr %i.ge, align 4, !tbaa !153
  %i.gf = sub nsw i32 0, %.3106
  %i.gg = getelementptr inbounds nuw i8, ptr %i.ge, i64 4
  store i32 %i.gf, ptr %i.gg, align 4, !tbaa !153
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit143

_ZNSt6vectorIlSaIlEED2Ev.exit143:                 ; preds = %_ZNSt6vectorIiSaIiEE6resizeEm.exit.i, %bb.bl, %_ZNSt6vectorIiSaIiEE6resizeEm.exit13.i
  %i.gh = getelementptr inbounds nuw i8, ptr %i.ff, i64 5 ; 2 uses
  %i.gi = load i8, ptr %i.gh, align 1
  %i.gj = or i8 %i.gi, 8
  store i8 %i.gj, ptr %i.gh, align 1
  %i.gk = load ptr, ptr %i.a, align 8, !tbaa !325
  call void @_ZN7CaDiCaL7Closure15update_and_gateEPNS_4GateENSt8__detail14_Node_iteratorIS2_Lb1ELb1EEEiillii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %i.gk, ptr %.sroa.060.0, i32 noundef %3, i32 noundef %2, i64 noundef %4, i64 noundef %5, i32 noundef %.3102, i32 noundef %.3106)
  %i.gl = load ptr, ptr %7, align 8, !tbaa !123
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 7032 ; 2 uses
  %i.gn = load i64, ptr %i.gm, align 8, !tbaa !619
  %i.go = add nsw i64 %i.gn, 1
  store i64 %i.go, ptr %i.gm, align 8, !tbaa !619
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread: ; preds = %._crit_edge.i.i.i.i, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, %bb.a, %_ZNSt6vectorIlSaIlEED2Ev.exit143, %bb.l
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN7CaDiCaL7Closure12rewrite_gateEPNS_4GateEiill(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 4, !tbaa !353
  switch i8 %i.b, label %bb.e [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure16rewrite_and_gateEPNS_4GateEiill(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3, i64 noundef %4, i64 noundef %5)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure16rewrite_xor_gateEPNS_4GateEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_ZN7CaDiCaL7Closure16rewrite_ite_gateEPNS_4GateEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !123
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.f = load i8, ptr %i.e, align 4, !tbaa !322, !range !290, !noundef !291
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = xor i1 %i.g, true
  ret i1 %i.h
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN7CaDiCaL7Closure16rewrite_xor_gateEPNS_4GateEii(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 10 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !325
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 5 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc i8 %i.c to i1
  br i1 %i.d, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN7CaDiCaL7Closure13rewriting_lhsEPNS_4GateEi(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1, i32 noundef %2)
  br i1 %i.e, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !132  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !132  ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = ptrtoint ptr %i.g to i64
  %i.l = sub i64 %i.j, %i.k                       ; 3 uses
  %i.m = ashr i64 %i.l, 4                         ; 2 uses
  %i.n = icmp sgt i64 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.o = and i64 %i.l, -16
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.g, i64 %i.o ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i
  %.052.i.i.i.i = phi i64 [ %i.m, %.lr.ph.i.i.i.i ], [ %i.ab, %bb.h ] ; 2 uses
  %.sroa.032.051.i.i.i.i = phi ptr [ %i.g, %.lr.ph.i.i.i.i ], [ %i.aa, %bb.h ] ; 9 uses
  %i.p = load i32, ptr %.sroa.032.051.i.i.i.i, align 4, !tbaa !153
  %i.q = icmp eq i32 %i.p, %3
  br i1 %i.q, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !153
  %i.t = icmp eq i32 %i.s, %3
  br i1 %i.t, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  %i.v = load i32, ptr %i.u, align 4, !tbaa !153
  %i.w = icmp eq i32 %i.v, %3
  br i1 %i.w, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit127, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  %i.y = load i32, ptr %i.x, align 4, !tbaa !153
  %i.z = icmp eq i32 %i.y, %3
  br i1 %i.z, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit129, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 16
  %i.ab = add nsw i64 %.052.i.i.i.i, -1
  %i.ac = icmp sgt i64 %.052.i.i.i.i, 1
  br i1 %i.ac, label %bb.d, label %._crit_edge.loopexit.i.i.i.i, !llvm.loop !0

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.h
  %.pre59.i.i.i.i = ptrtoint ptr %scevgep.i.i.i.i to i64
  %.pre60.i.i.i.i = sub i64 %i.j, %.pre59.i.i.i.i
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %bb.c
  %.pre-phi61.i.i.i.i = phi i64 [ %.pre60.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.l, %bb.c ]
  %.sroa.032.0.lcssa.i.i.i.i = phi ptr [ %scevgep.i.i.i.i, %._crit_edge.loopexit.i.i.i.i ], [ %i.g, %bb.c ] ; 5 uses
  %i.ad = ashr exact i64 %.pre-phi61.i.i.i.i, 2
  switch i64 %i.ad, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread [
    i64 3, label %bb.i
    i64 2, label %._crit_edge._crit_edge.i.i.i.i
    i64 1, label %._crit_edge._crit_edge57.i.i.i.i
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ae = load i32, ptr %.sroa.032.0.lcssa.i.i.i.i, align 4, !tbaa !153
  %i.af = icmp eq i32 %i.ae, %3
  br i1 %i.af, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.032.0.lcssa.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge.i.i.i.i

._crit_edge._crit_edge.i.i.i.i:                   ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.sroa.032.1.i.i.i.i = phi ptr [ %i.ag, %bb.j ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ah = load i32, ptr %.sroa.032.1.i.i.i.i, align 4, !tbaa !153
  %i.ai = icmp eq i32 %i.ah, %3
  br i1 %i.ai, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge._crit_edge.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.032.1.i.i.i.i, i64 4
  br label %._crit_edge._crit_edge57.i.i.i.i

._crit_edge._crit_edge57.i.i.i.i:                 ; preds = %bb.k, %._crit_edge.i.i.i.i
  %.sroa.032.2.i.i.i.i = phi ptr [ %i.aj, %bb.k ], [ %.sroa.032.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ] ; 2 uses
  %i.ak = load i32, ptr %.sroa.032.2.i.i.i.i, align 4, !tbaa !153
  %i.al = icmp eq i32 %i.ak, %3
  %spec.select.i.i.i.i = select i1 %i.al, ptr %.sroa.032.2.i.i.i.i, ptr %i.i
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit: ; preds = %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 4
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit127: ; preds = %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 8
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit129: ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.032.051.i.i.i.i, i64 12
  br label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit

_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit:      ; preds = %bb.d, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit127, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit129, %bb.i, %._crit_edge._crit_edge.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i
  %.sroa.08.0.in.sroa.speculated.i.i.i.i = phi ptr [ %.sroa.032.1.i.i.i.i, %._crit_edge._crit_edge.i.i.i.i ], [ %spec.select.i.i.i.i, %._crit_edge._crit_edge57.i.i.i.i ], [ %.sroa.032.0.lcssa.i.i.i.i, %bb.i ], [ %i.ao, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit129 ], [ %i.an, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit127 ], [ %i.am, %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.loopexit.split.loop.exit ], [ %.sroa.032.051.i.i.i.i, %bb.d ]
  %.not68 = icmp eq ptr %.sroa.08.0.in.sroa.speculated.i.i.i.i, %i.i
  br i1 %.not68, label %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit.thread, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL13gate_containsEPNS_4GateEi.exit
  tail call void @_ZN7CaDiCaL7Closure22check_xor_gate_impliedEPKNS_4GateE(ptr noundef nonnull align 8 dereferenceable(1040) %0, ptr noundef nonnull %1)
  %i.ap = load i8, ptr %i.b, align 1
  %i.aq = and i8 %i.ap, 2
  %.not55 = icmp eq i8 %i.aq, 0
  br i1 %.not55, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.as = call ptr @_ZNSt10_HashtableIPN7CaDiCaL4GateES2_SaIS2_ENSt8__detail9_IdentityENS0_11GateEqualToENS0_4HashENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb1ELb1ELb1EEEE4findERKS2_(ptr noundef nonnull align 8 dereferenceable(64) %i.ar, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !325
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.at = phi ptr [ %.pre, %bb.m ], [ %1, %bb.l ] ; 8 uses
  %.sroa.033.0 = phi ptr [ %i.as, %bb.m ], [ null, %bb.l ]
  %i.au = icmp slt i32 %2, 0
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.aw = call noundef i32 @llvm.abs.i32(i32 %2, i1 true) ; 7 uses
  %.lobit = lshr i32 %2, 31                       ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 56 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 64 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !312 ; 6 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !152 ; 14 uses
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc
  %i.be = ashr exact i64 %i.bd, 2                 ; 7 uses
  %.not88 = icmp eq ptr %i.az, %i.ba              ; 2 uses
  br i1 %.not88, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.n
  %i.bf = load ptr, ptr %i.av, align 8, !tbaa !123
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 472
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !310
  br label %bb.o

._crit_edge:                                      ; preds = %bb.q, %bb.n
  %.051.lcssa = phi i64 [ 0, %bb.n ], [ %.152, %bb.q ] ; 10 uses
  %.049.lcssa = phi i64 [ 0, %bb.n ], [ %.2, %bb.q ] ; 3 uses
  %.047.lcssa = phi i32 [ %.lobit, %bb.n ], [ %.148, %bb.q ]
  %.not56 = icmp eq i32 %.047.lcssa, 0
  br i1 %.not56, label %bb.s, label %bb.r

end_hunk_1
