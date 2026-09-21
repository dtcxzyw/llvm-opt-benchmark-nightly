Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bitwuzla/original/analyze?download=true
inline.NumInlined: 988
inline.NumDeleted: 340
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN7CaDiCaL8Internal7analyzeEv:bb.a
  %i.pc = add nsw <2 x i64> %i.pb, %i.pa
  store <2 x i64> %i.pc, ptr %i.oz, align 8, !tbaa !181
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 2400
  %i.pe = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.pf = sitofp i32 %.065 to double
  call void @_ZN7CaDiCaL3EMA6updateEPNS_8InternalEdPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.pd, ptr noundef %i.pe, double noundef %i.pf, ptr noundef nonnull @.str.8)
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.ph = load i8, ptr %i.pg, align 8, !tbaa !183, !range !184, !noundef !185
  %i.pi = trunc nuw i8 %i.ph to i1
  br i1 %i.pi, label %bb.ca, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit161

bb.ca:                                            ; preds = %bb.bz
  %i.pj = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !242 ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.pm = load ptr, ptr %i.pl, align 8, !tbaa !242 ; 2 uses
  %.not229239 = icmp eq ptr %i.pk, %i.pm
  br i1 %.not229239, label %_ZNSt6vectorImSaImEE5clearEv.exit154, label %.lr.ph242

.lr.ph242:                                        ; preds = %bb.ca
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %.pre257 = load ptr, ptr %i.po, align 8, !tbaa !179
  %.pre258 = load ptr, ptr %i.pp, align 8, !tbaa !180
  br label %bb.cb

._crit_edge243:                                   ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit169
  %.pre259 = load ptr, ptr %i.pj, align 8, !tbaa !182 ; 2 uses
  %.pre260 = load ptr, ptr %i.pl, align 8, !tbaa !179
  %i.pq = icmp eq ptr %.pre260, %.pre259
  br i1 %i.pq, label %_ZNSt6vectorImSaImEE5clearEv.exit154, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i153

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i153:     ; preds = %._crit_edge243
  store ptr %.pre259, ptr %i.pl, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE5clearEv.exit154

_ZNSt6vectorImSaImEE5clearEv.exit154:             ; preds = %bb.ca, %._crit_edge243, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i153
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ps = load ptr, ptr %i.pr, align 8, !tbaa !242 ; 3 uses
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.pu = load ptr, ptr %i.pt, align 8, !tbaa !242 ; 2 uses
  %i.pv = icmp ne ptr %i.ps, %i.pu
  %.sroa.0.08.i.i155 = getelementptr inbounds i8, ptr %i.pu, i64 -8 ; 2 uses
  %i.pw = icmp ult ptr %i.ps, %.sroa.0.08.i.i155
  %or.cond.i.i156 = select i1 %i.pv, i1 %i.pw, i1 false
  br i1 %or.cond.i.i156, label %.lr.ph.i.i157, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit161

.lr.ph.i.i157:                                    ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit154, %.lr.ph.i.i157
  %.sroa.0.010.i.i158 = phi ptr [ %.sroa.0.0.i.i160, %.lr.ph.i.i157 ], [ %.sroa.0.08.i.i155, %_ZNSt6vectorImSaImEE5clearEv.exit154 ] ; 3 uses
  %.sroa.05.09.i.i159 = phi ptr [ %i.pz, %.lr.ph.i.i157 ], [ %i.ps, %_ZNSt6vectorImSaImEE5clearEv.exit154 ] ; 3 uses
  %i.px = load i64, ptr %.sroa.05.09.i.i159, align 8, !tbaa !181
  %i.py = load i64, ptr %.sroa.0.010.i.i158, align 8, !tbaa !181
  store i64 %i.py, ptr %.sroa.05.09.i.i159, align 8, !tbaa !181
  store i64 %i.px, ptr %.sroa.0.010.i.i158, align 8, !tbaa !181
  %i.pz = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i.i159, i64 8 ; 2 uses
  %.sroa.0.0.i.i160 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i158, i64 -8 ; 2 uses
  %i.qa = icmp ult ptr %i.pz, %.sroa.0.0.i.i160
  br i1 %i.qa, label %.lr.ph.i.i157, label %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit161, !llvm.loop !313

bb.cb:                                            ; preds = %.lr.ph242, %_ZNSt6vectorImSaImEE9push_backERKm.exit169
  %i.qb = phi ptr [ %.pre258, %.lr.ph242 ], [ %i.qv, %_ZNSt6vectorImSaImEE9push_backERKm.exit169 ] ; 3 uses
  %i.qc = phi ptr [ %.pre257, %.lr.ph242 ], [ %i.qw, %_ZNSt6vectorImSaImEE9push_backERKm.exit169 ] ; 3 uses
  %.sroa.0204.0240 = phi ptr [ %i.pk, %.lr.ph242 ], [ %i.qx, %_ZNSt6vectorImSaImEE9push_backERKm.exit169 ] ; 2 uses
  %i.qd = load i64, ptr %.sroa.0204.0240, align 8, !tbaa !181 ; 2 uses
  %.not.i162 = icmp eq ptr %i.qc, %i.qb
  br i1 %.not.i162, label %bb.cd, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  store i64 %i.qd, ptr %i.qc, align 8, !tbaa !181
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qc, i64 8 ; 2 uses
  store ptr %i.qe, ptr %i.po, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit169

bb.cd:                                            ; preds = %bb.cb
  %i.qf = load ptr, ptr %i.pn, align 8, !tbaa !182 ; 4 uses
  %i.qg = ptrtoint ptr %i.qb to i64
  %i.qh = ptrtoint ptr %i.qf to i64
  %i.qi = sub i64 %i.qg, %i.qh                    ; 5 uses
  %i.qj = icmp eq i64 %i.qi, 9223372036854775800
  br i1 %i.qj, label %bb.ce, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i163

bb.ce:                                            ; preds = %bb.cd
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i163: ; preds = %bb.cd
  %i.qk = ashr exact i64 %i.qi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i164 = call i64 @llvm.umax.i64(i64 %i.qk, i64 1)
  %i.ql = add nsw i64 %.sroa.speculated.i.i.i164, %i.qk ; 2 uses
  %i.qm = icmp ult i64 %i.ql, %i.qk
  %i.qn = call i64 @llvm.umin.i64(i64 %i.ql, i64 1152921504606846975)
  %i.qo = select i1 %i.qm, i64 1152921504606846975, i64 %i.qn ; 3 uses
  %.not.i.i.i165 = icmp ne i64 %i.qo, 0
  call void @llvm.assume(i1 %.not.i.i.i165)
  %i.qp = shl nuw nsw i64 %i.qo, 3
  %i.qq = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qp) #14 ; 4 uses
  %i.qr = getelementptr inbounds i8, ptr %i.qq, i64 %i.qi ; 2 uses
  store i64 %i.qd, ptr %i.qr, align 8, !tbaa !181
  %i.qs = icmp sgt i64 %i.qi, 0
  br i1 %i.qs, label %bb.cf, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i166

bb.cf:                                            ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i163
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qq, ptr align 8 %i.qf, i64 %i.qi, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i166

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i166: ; preds = %bb.cf, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i163
  %i.qt = getelementptr inbounds nuw i8, ptr %i.qr, i64 8 ; 2 uses
  %.not.i17.i.i167 = icmp eq ptr %i.qf, null
  br i1 %.not.i17.i.i167, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i168, label %bb.cg

bb.cg:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i166
  call void @_ZdlPv(ptr noundef nonnull %i.qf) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i168

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i168: ; preds = %bb.cg, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i166
  store ptr %i.qq, ptr %i.pn, align 8, !tbaa !182
  store ptr %i.qt, ptr %i.po, align 8, !tbaa !179
  %i.qu = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qo ; 2 uses
  store ptr %i.qu, ptr %i.pp, align 8, !tbaa !180
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit169

_ZNSt6vectorImSaImEE9push_backERKm.exit169:       ; preds = %bb.cc, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i168
  %i.qv = phi ptr [ %i.qb, %bb.cc ], [ %i.qu, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i168 ]
  %i.qw = phi ptr [ %i.qe, %bb.cc ], [ %i.qt, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i168 ]
  %i.qx = getelementptr inbounds nuw i8, ptr %.sroa.0204.0240, i64 8 ; 2 uses
  %.not229 = icmp eq ptr %i.qx, %i.pm
  br i1 %.not229, label %._crit_edge243, label %bb.cb

_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit161: ; preds = %.lr.ph.i.i157, %_ZNSt6vectorImSaImEE5clearEv.exit154, %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #16
  %i.qy = call noundef ptr @_ZN7CaDiCaL8Internal18new_driving_clauseEiRi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.nr, ptr noundef nonnull align 4 dereferenceable(4) %i.e) ; 3 uses
  %i.qz = getelementptr inbounds nuw i8, ptr %0, i64 2440
  %i.ra = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.rb = load i32, ptr %i.e, align 4, !tbaa !199 ; 2 uses
  %i.rc = sitofp i32 %i.rb to double
  call void @_ZN7CaDiCaL3EMA6updateEPNS_8InternalEdPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.qz, ptr noundef %i.ra, double noundef %i.rc, ptr noundef nonnull @.str.9)
  %i.rd = call noundef i32 @_ZN7CaDiCaL8Internal32determine_actual_backtrack_levelEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.rb) ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %0, i64 2480
  %i.rf = load ptr, ptr %i.f, align 8, !tbaa !202
  %i.rg = sitofp i32 %i.rd to double
  call void @_ZN7CaDiCaL3EMA6updateEPNS_8InternalEdPKc(ptr noundef nonnull align 8 dereferenceable(40) %i.re, ptr noundef %i.rf, double noundef %i.rg, ptr noundef nonnull @.str.5)
  call void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.rd)
  %.not103 = icmp eq i32 %.5, 0
  br i1 %.not103, label %bb.ci, label %bb.ch

bb.ch:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit161
  call void @_ZN7CaDiCaL8Internal21search_assign_drivingEiPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.mh, ptr noundef %i.qy)
  br label %bb.cj

bb.ci:                                            ; preds = %_ZSt7reverseIN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEEEvT_S7_.exit161
  call void @_ZN7CaDiCaL8Internal18learn_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288) %0)
  br label %bb.cj

bb.cj:                                            ; preds = %bb.ci, %bb.ch
  %i.rh = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ri = load i8, ptr %i.rh, align 4, !tbaa !214, !range !184, !noundef !185
  %i.rj = trunc nuw i8 %i.ri to i1
  br i1 %i.rj, label %bb.ck, label %_ZN7CaDiCaL9Reluctant4tickEv.exit

bb.ck:                                            ; preds = %bb.cj
  %i.rk = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.rl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.rm = load i64, ptr %i.rl, align 8, !tbaa !328 ; 2 uses
  %.not.i170 = icmp eq i64 %i.rm, 0
  br i1 %.not.i170, label %_ZN7CaDiCaL9Reluctant4tickEv.exit, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.rn = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ro = load i8, ptr %i.rn, align 8, !tbaa !329, !range !184, !noundef !185
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %_ZN7CaDiCaL9Reluctant4tickEv.exit, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.rq = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.rr = load i64, ptr %i.rq, align 8, !tbaa !330
  %i.rs = add i64 %i.rr, -1                       ; 2 uses
  store i64 %i.rs, ptr %i.rq, align 8, !tbaa !330
  %.not1.i = icmp eq i64 %i.rs, 0
  br i1 %.not1.i, label %bb.cn, label %_ZN7CaDiCaL9Reluctant4tickEv.exit

bb.cn:                                            ; preds = %bb.cm
  %i.rt = load i64, ptr %i.rk, align 8, !tbaa !331 ; 3 uses
  %i.ru = sub i64 0, %i.rt
  %i.rv = and i64 %i.rt, %i.ru
  %i.rw = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.rx = load i64, ptr %i.rw, align 8, !tbaa !332 ; 2 uses
  %i.ry = icmp eq i64 %i.rv, %i.rx
  br i1 %i.ry, label %bb.co, label %bb.cp

bb.co:                                            ; preds = %bb.cn
  %i.rz = add i64 %i.rt, 1
  store i64 %i.rz, ptr %i.rk, align 8, !tbaa !331
  br label %bb.cq

bb.cp:                                            ; preds = %bb.cn
  %i.sa = shl i64 %i.rx, 1
  br label %bb.cq

bb.cq:                                            ; preds = %bb.cp, %bb.co
  %storemerge.i = phi i64 [ %i.sa, %bb.cp ], [ 1, %bb.co ] ; 4 uses
  store i64 %storemerge.i, ptr %i.rw, align 8, !tbaa !332
  %i.sb = getelementptr inbounds nuw i8, ptr %0, i64 65
  %i.sc = load i8, ptr %i.sb, align 1, !tbaa !333, !range !184, !noundef !185
  %i.sd = trunc nuw i8 %i.sc to i1
  br i1 %i.sd, label %1, label %bb.cs

1:                                                ; preds = %bb.cq
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %3 = load i64, ptr %2, align 8, !tbaa !334
  %.not2.i = icmp ult i64 %storemerge.i, %3
  br i1 %.not2.i, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %1
  store i64 1, ptr %i.rw, align 8, !tbaa !332
  store i64 1, ptr %i.rk, align 8, !tbaa !331
  br label %bb.cs

bb.cs:                                            ; preds = %bb.cr, %1, %bb.cq
  %4 = phi i64 [ 1, %bb.cr ], [ %storemerge.i, %1 ], [ %storemerge.i, %bb.cq ]
  %i.se = mul i64 %4, %i.rm
  store i64 %i.se, ptr %i.rq, align 8, !tbaa !330
  store i8 1, ptr %i.rn, align 8, !tbaa !329
  br label %_ZN7CaDiCaL9Reluctant4tickEv.exit

_ZN7CaDiCaL9Reluctant4tickEv.exit:                ; preds = %bb.cs, %bb.cm, %bb.cl, %bb.ck, %bb.cj
  %i.sf = load ptr, ptr %i.cs, align 8, !tbaa !213 ; 2 uses
  %i.sg = load ptr, ptr %i.ct, align 8, !tbaa !213 ; 2 uses
  %.not8.i171 = icmp eq ptr %i.sf, %i.sg
  br i1 %.not8.i171, label %_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179, label %.lr.ph.i172

._crit_edge.i175:                                 ; preds = %.lr.ph.i172
  %.pre.i176 = load ptr, ptr %i.cs, align 8, !tbaa !221 ; 2 uses
  %.pre10.i177 = load ptr, ptr %i.ct, align 8, !tbaa !222
  %i.sh = icmp eq ptr %.pre10.i177, %.pre.i176
  br i1 %i.sh, label %_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i178

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i178:   ; preds = %._crit_edge.i175
  store ptr %.pre.i176, ptr %i.ct, align 8, !tbaa !222
  br label %_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179

.lr.ph.i172:                                      ; preds = %_ZN7CaDiCaL9Reluctant4tickEv.exit, %.lr.ph.i172
  %.sroa.05.09.i173 = phi ptr [ %i.sp, %.lr.ph.i172 ], [ %i.sf, %_ZN7CaDiCaL9Reluctant4tickEv.exit ] ; 2 uses
  %i.si = load i32, ptr %.sroa.05.09.i173, align 4, !tbaa !199
  %i.sj = call noundef i32 @llvm.abs.i32(i32 %i.si, i1 true)
  %i.sk = zext nneg i32 %i.sj to i64
  %i.sl = load ptr, ptr %i.cu, align 8, !tbaa !223
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %i.sl, i64 %i.sk ; 2 uses
  %i.sn = load i32, ptr %i.sm, align 1
  %i.so = and i32 %i.sn, -2
  store i32 %i.so, ptr %i.sm, align 1
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i173, i64 4 ; 2 uses
  %.not.i174 = icmp eq ptr %i.sp, %i.sg
  br i1 %.not.i174, label %._crit_edge.i175, label %.lr.ph.i172

_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179: ; preds = %_ZN7CaDiCaL9Reluctant4tickEv.exit, %._crit_edge.i175, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i178
  %i.sq = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.sr = load ptr, ptr %i.sq, align 8, !tbaa !213 ; 2 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.st = load ptr, ptr %i.ss, align 8, !tbaa !213 ; 2 uses
  %.not8.i180 = icmp eq ptr %i.sr, %i.st
  br i1 %.not8.i180, label %_ZN7CaDiCaL8Internal28clear_unit_analyzed_literalsEv.exit, label %.lr.ph.i181

._crit_edge.i184:                                 ; preds = %.lr.ph.i181
  %.pre.i185 = load ptr, ptr %i.sq, align 8, !tbaa !221 ; 2 uses
  %.pre10.i186 = load ptr, ptr %i.ss, align 8, !tbaa !222
  %i.su = icmp eq ptr %.pre10.i186, %.pre.i185
  br i1 %i.su, label %_ZN7CaDiCaL8Internal28clear_unit_analyzed_literalsEv.exit, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i187

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i187:   ; preds = %._crit_edge.i184
  store ptr %.pre.i185, ptr %i.ss, align 8, !tbaa !222
  br label %_ZN7CaDiCaL8Internal28clear_unit_analyzed_literalsEv.exit

.lr.ph.i181:                                      ; preds = %_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179, %.lr.ph.i181
  %.sroa.05.09.i182 = phi ptr [ %i.tc, %.lr.ph.i181 ], [ %i.sr, %_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179 ] ; 2 uses
  %i.sv = load i32, ptr %.sroa.05.09.i182, align 4, !tbaa !199
  %i.sw = call noundef i32 @llvm.abs.i32(i32 %i.sv, i1 true)
  %i.sx = zext nneg i32 %i.sw to i64
  %i.sy = load ptr, ptr %i.cu, align 8, !tbaa !223
  %i.sz = getelementptr inbounds nuw [4 x i8], ptr %i.sy, i64 %i.sx ; 2 uses
  %i.ta = load i32, ptr %i.sz, align 1
  %i.tb = and i32 %i.ta, -2
  store i32 %i.tb, ptr %i.sz, align 1
  %i.tc = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i182, i64 4 ; 2 uses
  %.not.i183 = icmp eq ptr %i.tc, %i.st
  br i1 %.not.i183, label %._crit_edge.i184, label %.lr.ph.i181

_ZN7CaDiCaL8Internal28clear_unit_analyzed_literalsEv.exit: ; preds = %_ZN7CaDiCaL8Internal23clear_analyzed_literalsEv.exit179, %._crit_edge.i184, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i.i187
  %i.td = load ptr, ptr %i.ni, align 8, !tbaa !213 ; 3 uses
  %i.te = load ptr, ptr %i.nj, align 8, !tbaa !213 ; 2 uses
  %.not8.i188 = icmp eq ptr %i.td, %i.te
  br i1 %.not8.i188, label %_ZN7CaDiCaL8Internal21clear_analyzed_levelsEv.exit194, label %.lr.ph.i189

.lr.ph.i189:                                      ; preds = %_ZN7CaDiCaL8Internal28clear_unit_analyzed_literalsEv.exit
  %i.tf = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.tg = getelementptr inbounds nuw i8, ptr %0, i64 2192
  %i.th = load ptr, ptr %i.tg, align 8, !tbaa !224
  %i.ti = load ptr, ptr %i.tf, align 8, !tbaa !225 ; 2 uses
  %i.tj = ptrtoint ptr %i.th to i64
  %i.tk = ptrtoint ptr %i.ti to i64
  %i.tl = sub i64 %i.tj, %i.tk
  %i.tm = lshr exact i64 %i.tl, 4
  %i.tn = trunc i64 %i.tm to i32
  br label %bb.ct

._crit_edge.i192:                                 ; preds = %bb.cv
  store ptr %i.td, ptr %i.nj, align 8, !tbaa !222
  br label %_ZN7CaDiCaL8Internal21clear_analyzed_levelsEv.exit194

bb.ct:                                            ; preds = %bb.cv, %.lr.ph.i189
  %.sroa.05.09.i190 = phi ptr [ %i.td, %.lr.ph.i189 ], [ %i.tu, %bb.cv ] ; 2 uses
  %i.to = load i32, ptr %.sroa.05.09.i190, align 4, !tbaa !199 ; 2 uses
  %i.tp = icmp slt i32 %i.to, %i.tn
  br i1 %i.tp, label %bb.cu, label %bb.cv

bb.cu:                                            ; preds = %bb.ct
  %i.tq = sext i32 %i.to to i64
  %i.tr = getelementptr inbounds nuw [16 x i8], ptr %i.ti, i64 %i.tq ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 8
  store i32 0, ptr %i.ts, align 4, !tbaa !228
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tr, i64 12
  store i32 2147483647, ptr %i.tt, align 4, !tbaa !229
  br label %bb.cv

bb.cv:                                            ; preds = %bb.cu, %bb.ct
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.05.09.i190, i64 4 ; 2 uses
  %.not.i191 = icmp eq ptr %i.tu, %i.te
  br i1 %.not.i191, label %._crit_edge.i192, label %bb.ct

_ZN7CaDiCaL8Internal21clear_analyzed_levelsEv.exit194: ; preds = %_ZN7CaDiCaL8Internal28clear_unit_analyzed_literalsEv.exit, %._crit_edge.i192
  %i.tv = load ptr, ptr %i.cv, align 8, !tbaa !221 ; 2 uses
  %i.tw = load ptr, ptr %i.cw, align 8, !tbaa !222
  %.not.i.i195 = icmp eq ptr %i.tw, %i.tv
  br i1 %.not.i.i195, label %_ZNSt6vectorIiSaIiEE5clearEv.exit197, label %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i196

_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i196:     ; preds = %_ZN7CaDiCaL8Internal21clear_analyzed_levelsEv.exit194
  store ptr %i.tv, ptr %i.cw, align 8, !tbaa !222
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit197

_ZNSt6vectorIiSaIiEE5clearEv.exit197:             ; preds = %_ZN7CaDiCaL8Internal21clear_analyzed_levelsEv.exit194, %_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E.exit.i.i196
  store ptr null, ptr %i.bx, align 8, !tbaa !248
  %i.tx = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ty = load ptr, ptr %i.tx, align 8, !tbaa !182 ; 2 uses
  %i.tz = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.ua = load ptr, ptr %i.tz, align 8, !tbaa !179
  %.not.i.i198 = icmp eq ptr %i.ua, %i.ty
  br i1 %.not.i.i198, label %_ZNSt6vectorImSaImEE5clearEv.exit200, label %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i199

_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i199:     ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit197
  store ptr %i.ty, ptr %i.tz, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE5clearEv.exit200

_ZNSt6vectorImSaImEE5clearEv.exit200:             ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit197, %_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E.exit.i.i199
  %i.ub = load ptr, ptr %i.f, align 8, !tbaa !202 ; 7 uses
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 5600
  %i.ud = load i32, ptr %i.uc, align 8, !tbaa !316
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ub, i64 3608
  %i.uf = load i32, ptr %i.ue, align 8, !tbaa !211
  %.not104 = icmp sgt i32 %i.ud, %i.uf
  br i1 %.not104, label %bb.cz, label %bb.cw

bb.cw:                                            ; preds = %_ZNSt6vectorImSaImEE5clearEv.exit200
  %i.ug = getelementptr inbounds nuw i8, ptr %i.ub, i64 5568
  %i.uh = getelementptr inbounds nuw i8, ptr %i.ub, i64 3620
  %i.ui = load i32, ptr %i.uh, align 4, !tbaa !212
  %.not.i201 = icmp eq i32 %i.ui, 0
  br i1 %.not.i201, label %bb.cy, label %bb.cx

bb.cx:                                            ; preds = %bb.cw
  %i.uj = call noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.ub)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit202

bb.cy:                                            ; preds = %bb.cw
  %i.uk = call noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288) %i.ub)
  br label %_ZN7CaDiCaL8Internal4timeEv.exit202

_ZN7CaDiCaL8Internal4timeEv.exit202:              ; preds = %bb.cx, %bb.cy
  %i.ul = phi double [ %i.uj, %bb.cx ], [ %i.uk, %bb.cy ]
  call void @_ZN7CaDiCaL8Internal14stop_profilingERNS_7ProfileEd(ptr noundef nonnull align 8 dereferenceable(7288) %i.ub, ptr noundef nonnull align 8 dereferenceable(36) %i.ug, double noundef %i.ul)
  br label %bb.cz

bb.cz:                                            ; preds = %_ZN7CaDiCaL8Internal4timeEv.exit202, %_ZNSt6vectorImSaImEE5clearEv.exit200
  %.not105 = icmp eq ptr %i.qy, null
  br i1 %.not105, label %bb.dc, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.um = getelementptr inbounds nuw i8, ptr %0, i64 3372
  %i.un = load i32, ptr %i.um, align 4, !tbaa !335
  %.not106 = icmp eq i32 %i.un, 0
  br i1 %.not106, label %bb.dc, label %bb.db

bb.db:                                            ; preds = %bb.da
  call void @_ZN7CaDiCaL8Internal40eagerly_subsume_recently_learned_clausesEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %i.qy)
  br label %bb.dc

bb.dc:                                            ; preds = %bb.db, %bb.da, %bb.cz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #16
  br label %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread

_ZNSt6vectorIiSaIiEE5clearEv.exit.thread:         ; preds = %_ZNSt6vectorIiSaIiEE5clearEv.exit136, %_ZN7CaDiCaL8Internal4timeEv.exit138, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #16
  br label %bb.dd

bb.dd:                                            ; preds = %.thread, %_ZN7CaDiCaL8Internal4timeEv.exit114, %bb.t, %_ZNSt6vectorIiSaIiEE5clearEv.exit.thread
  ret void
}

declare void @_ZN7CaDiCaL3EMA6updateEPNS_8InternalEdPKc(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, double noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal29explain_external_propagationsEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7CaDiCaL8Internal19find_conflict_levelERi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull align 4 dereferenceable(4) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %1, align 4, !tbaa !199
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 952 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !248  ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 12 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !199  ; 2 uses
  %i.f = sext i32 %i.e to i64
  %.idx = shl nsw i64 %i.f, 2
  %i.g = getelementptr inbounds i8, ptr %i.c, i64 %.idx
  %.not101 = icmp eq i32 %i.e, 0
  br i1 %.not101, label %._crit_edge115.1.thread.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !218  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 324
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.thread
  %.070104 = phi ptr [ %i.c, %.lr.ph ], [ %i.v, %.thread ] ; 2 uses
  %.071103 = phi i32 [ 0, %.lr.ph ], [ %.27389, %.thread ] ; 3 uses
  %.074102 = phi i32 [ 0, %.lr.ph ], [ %.27688, %.thread ] ; 6 uses
  %i.k = load i32, ptr %.070104, align 4, !tbaa !199 ; 2 uses
  %i.l = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.m
  %i.o = load i32, ptr %i.n, align 8, !tbaa !220  ; 3 uses
  %i.p = icmp sgt i32 %i.o, %.074102
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 %i.k, ptr %1, align 4, !tbaa !199
  br label %.thread

bb.d:                                             ; preds = %bb.b
  %i.q = icmp eq i32 %i.o, %.074102
  br i1 %i.q, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.r = add nsw i32 %.071103, 1                  ; 2 uses
  %i.s = load i32, ptr %i.j, align 4, !tbaa !249
  %i.t = icmp ne i32 %.074102, %i.s
  %i.u = icmp slt i32 %.071103, 1
  %or.cond.not = select i1 %i.t, i1 true, i1 %i.u
  br i1 %or.cond.not, label %.thread, label %._crit_edge

.thread:                                          ; preds = %bb.c, %bb.d, %bb.e
  %.27389 = phi i32 [ %i.r, %bb.e ], [ %.071103, %bb.d ], [ 1, %bb.c ] ; 2 uses
  %.27688 = phi i32 [ %.074102, %bb.e ], [ %.074102, %bb.d ], [ %i.o, %bb.c ] ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.070104, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.v, %i.g
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.e, %.thread
  %.074.lcssa.ph = phi i32 [ %.074102, %bb.e ], [ %.27688, %.thread ] ; 12 uses
  %.3.ph = phi i32 [ %i.r, %bb.e ], [ %.27389, %.thread ]
  %.pre = load i32, ptr %i.d, align 8, !tbaa !199 ; 4 uses
  %i.w = icmp eq i32 %.3.ph, 1                    ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 928 ; 4 uses
  %i.z = load i32, ptr %i.c, align 8, !tbaa !199  ; 5 uses
  %i.aa = tail call noundef i32 @llvm.abs.i32(i32 %i.z, i1 true) ; 2 uses
  %i.ab = icmp sgt i32 %.pre, 1
  br i1 %i.ab, label %.lr.ph114.preheader, label %._crit_edge115.1.thread

.lr.ph114.preheader:                              ; preds = %._crit_edge
  %i.ac = zext nneg i32 %i.aa to i64
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !220
  %wide.trip.count = zext nneg i32 %.pre to i64
  br label %.lr.ph114

.lr.ph114:                                        ; preds = %.lr.ph114.preheader, %bb.g
  %indvars.iv122 = phi i64 [ 1, %.lr.ph114.preheader ], [ %indvars.iv.next123, %bb.g ] ; 4 uses
  %.061111 = phi i32 [ %i.ae, %.lr.ph114.preheader ], [ %.1.ph, %bb.g ] ; 2 uses
  %.062110 = phi i32 [ %i.z, %.lr.ph114.preheader ], [ %.163.ph, %bb.g ]
  %.064109 = phi i32 [ 0, %.lr.ph114.preheader ], [ %.165.ph, %bb.g ]
  %i.af = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv122
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !199 ; 3 uses
  %i.ah = tail call noundef i32 @llvm.abs.i32(i32 %i.ag, i1 true)
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ai
  %i.ak = load i32, ptr %i.aj, align 8, !tbaa !220 ; 3 uses
  %.not83 = icmp slt i32 %.061111, %i.ak
  br i1 %.not83, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph114
  %i.al = icmp eq i32 %i.ak, %.074.lcssa.ph
  %i.am = trunc nuw nsw i64 %indvars.iv122 to i32 ; 2 uses
  br i1 %i.al, label %._crit_edge115.thread164, label %bb.g

bb.g:                                             ; preds = %.lr.ph114, %bb.f
  %.165.ph = phi i32 [ %i.am, %bb.f ], [ %.064109, %.lr.ph114 ] ; 4 uses
  %.163.ph = phi i32 [ %i.ag, %bb.f ], [ %.062110, %.lr.ph114 ] ; 2 uses
  %.1.ph = phi i32 [ %i.ak, %bb.f ], [ %.061111, %.lr.ph114 ]
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge115, label %.lr.ph114, !llvm.loop !336

._crit_edge115:                                   ; preds = %bb.g
  %i.an = zext i32 %.165.ph to i64
  %i.ao = icmp eq i32 %.165.ph, 0
  br i1 %i.ao, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, label %._crit_edge115.thread164

._crit_edge115.thread164:                         ; preds = %bb.f, %._crit_edge115
  %i.ap = phi i64 [ %i.an, %._crit_edge115 ], [ %indvars.iv122, %bb.f ]
  %.2172 = phi i32 [ %.163.ph, %._crit_edge115 ], [ %i.ag, %bb.f ] ; 4 uses
  %.266171 = phi i32 [ %.165.ph, %._crit_edge115 ], [ %i.am, %bb.f ] ; 2 uses
  %i.aq = icmp sgt i32 %.266171, 1
  br i1 %i.aq, label %bb.h, label %.critedge

bb.h:                                             ; preds = %._crit_edge115.thread164
  %i.ar = tail call noundef i32 @llvm.fshl.i32(i32 %i.aa, i32 %i.z, i32 1)
  %i.as = zext i32 %i.ar to i64
  %i.at = load ptr, ptr %i.y, align 8, !tbaa !236
  %i.au = getelementptr inbounds nuw [24 x i8], ptr %i.at, i64 %i.as ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !238 ; 4 uses
  %i.ax = load ptr, ptr %i.au, align 8, !tbaa !238 ; 3 uses
  %.not15.i = icmp eq ptr %i.ax, %i.aw
  br i1 %.not15.i, label %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit, label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %.lr.ph.i
  %.pre.i = load ptr, ptr %i.au, align 8, !tbaa !238
  br label %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit

.lr.ph.i:                                         ; preds = %bb.h, %.lr.ph.i
  %.sroa.011.017.i = phi ptr [ %spec.select.i, %.lr.ph.i ], [ %i.ax, %bb.h ] ; 3 uses
  %.sroa.08.016.i = phi ptr [ %i.ba, %.lr.ph.i ], [ %i.ax, %bb.h ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.017.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.016.i, i64 16, i1 false), !tbaa.struct !239
  %i.ay = load ptr, ptr %.sroa.011.017.i, align 8, !tbaa !241
  %i.az = icmp eq ptr %i.ay, %i.b
  %spec.select.idx.i = select i1 %i.az, i64 0, i64 16
  %spec.select.i = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i, i64 %spec.select.idx.i ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i, i64 16 ; 2 uses
  %.not.i = icmp eq ptr %i.ba, %i.aw
  br i1 %.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !0

_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit: ; preds = %bb.h, %._crit_edge.loopexit.i
  %i.bb = phi ptr [ %i.aw, %bb.h ], [ %.pre.i, %._crit_edge.loopexit.i ]
  %.sroa.011.0.lcssa.i = phi ptr [ %i.aw, %bb.h ], [ %spec.select.i, %._crit_edge.loopexit.i ]
  %i.bc = ptrtoint ptr %.sroa.011.0.lcssa.i to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd
  %i.bf = ashr exact i64 %i.be, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 noundef %i.bf)
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.ap
  store i32 %i.z, ptr %i.bg, align 4, !tbaa !199
  store i32 %.2172, ptr %i.c, align 8, !tbaa !199
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !199 ; 2 uses
  %i.bj = load ptr, ptr %i.a, align 8, !tbaa !248 ; 3 uses
  %i.bk = tail call noundef i32 @llvm.abs.i32(i32 %.2172, i1 true)
  %i.bl = tail call noundef i32 @llvm.fshl.i32(i32 %i.bk, i32 %.2172, i32 1)
  %i.bm = zext i32 %i.bl to i64
  %i.bn = load ptr, ptr %i.y, align 8, !tbaa !236
  %i.bo = getelementptr inbounds nuw [24 x i8], ptr %i.bn, i64 %i.bm ; 4 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bq = load i32, ptr %i.bp, align 8, !tbaa !199 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8 ; 3 uses
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !244 ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !245
  %.not.i.i.i = icmp eq ptr %i.bs, %i.bu
  br i1 %.not.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit
  store ptr %i.bj, ptr %i.bs, align 8, !tbaa !233
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store i32 %i.bi, ptr %.sroa.5.0..sroa_idx.i, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %i.bq, ptr %.sroa.6.0..sroa_idx.i, align 4, !tbaa !199
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store ptr %i.bv, ptr %i.br, align 8, !tbaa !244
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

bb.j:                                             ; preds = %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit
  %i.bw = load ptr, ptr %i.bo, align 8, !tbaa !246 ; 5 uses
  %i.bx = ptrtoint ptr %i.bs to i64
  %i.by = ptrtoint ptr %i.bw to i64
  %i.bz = sub i64 %i.bx, %i.by                    ; 3 uses
  %i.ca = icmp eq i64 %i.bz, 9223372036854775792
  br i1 %i.ca, label %bb.k, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i

bb.k:                                             ; preds = %bb.q, %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i: ; preds = %bb.j
  %i.cb = ashr exact i64 %i.bz, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.cb, i64 1)
  %i.cc = add nsw i64 %.sroa.speculated.i.i.i.i.i, %i.cb ; 2 uses
  %i.cd = icmp ult i64 %i.cc, %i.cb
  %i.ce = tail call i64 @llvm.umin.i64(i64 %i.cc, i64 576460752303423487)
  %i.cf = select i1 %i.cd, i64 576460752303423487, i64 %i.ce ; 3 uses
  %.not.i.i.i.i.i = icmp ne i64 %i.cf, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i)
  %i.cg = shl nuw nsw i64 %i.cf, 4
  %i.ch = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cg) #14 ; 5 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 %i.bz ; 3 uses
  store ptr %i.bj, ptr %i.ci, align 8, !tbaa !233
  %.sroa.5.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i32 %i.bi, ptr %.sroa.5.0..sroa_idx5.i, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.ci, i64 12
  store i32 %i.bq, ptr %.sroa.6.0..sroa_idx7.i, align 4, !tbaa !199
  %.not10.i.i.i.i.i.i.i.i = icmp eq ptr %i.bw, %i.bs
  br i1 %.not10.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i.i = phi ptr [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ch, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i = phi ptr [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.bw, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !239, !alias.scope !340
  %i.cj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.cj, %i.bs
  br i1 %.not.i.i.i.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ch, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i ], [ %i.ck, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.cl = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i, i64 16
  %.not.i23.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i23.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bw) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i: ; preds = %bb.l, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i
  store ptr %i.ch, ptr %i.bo, align 8, !tbaa !246
  store ptr %i.cl, ptr %i.br, align 8, !tbaa !244
  %i.cm = getelementptr inbounds nuw [16 x i8], ptr %i.ch, i64 %i.cf
  store ptr %i.cm, ptr %i.bt, align 8, !tbaa !245
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

.critedge:                                        ; preds = %._crit_edge115.thread164
  %i.cn = sext i32 %.266171 to i64
  %i.co = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.cn
  store i32 %i.z, ptr %i.co, align 4, !tbaa !199
  store i32 %.2172, ptr %i.c, align 8, !tbaa !199
  br label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit: ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i, %bb.i, %.critedge, %._crit_edge115
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 28 ; 3 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !199 ; 5 uses
  %i.cr = tail call noundef i32 @llvm.abs.i32(i32 %i.cq, i1 true) ; 2 uses
  %i.cs = load ptr, ptr %i.x, align 8, !tbaa !218 ; 2 uses
  %.not195 = icmp eq i32 %.pre, 2
  br i1 %.not195, label %._crit_edge115.1.thread, label %.lr.ph114.preheader.1

.lr.ph114.preheader.1:                            ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit
  %i.ct = zext nneg i32 %i.cr to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = load i32, ptr %i.cu, align 8, !tbaa !220
  %wide.trip.count.1 = zext nneg i32 %.pre to i64
  br label %.lr.ph114.1

.lr.ph114.1:                                      ; preds = %bb.n, %.lr.ph114.preheader.1
  %indvars.iv122.1 = phi i64 [ 2, %.lr.ph114.preheader.1 ], [ %indvars.iv.next123.1, %bb.n ] ; 3 uses
  %.061111.1 = phi i32 [ %i.cv, %.lr.ph114.preheader.1 ], [ %.1.ph.1, %bb.n ] ; 2 uses
  %.062110.1 = phi i32 [ %i.cq, %.lr.ph114.preheader.1 ], [ %.163.ph.1, %bb.n ]
  %.064109.1 = phi i32 [ 1, %.lr.ph114.preheader.1 ], [ %.165.ph.1, %bb.n ]
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %indvars.iv122.1
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !199 ; 3 uses
  %i.cy = tail call noundef i32 @llvm.abs.i32(i32 %i.cx, i1 true)
  %i.cz = zext nneg i32 %i.cy to i64
  %i.da = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.cz
  %i.db = load i32, ptr %i.da, align 8, !tbaa !220 ; 3 uses
  %.not83.1 = icmp slt i32 %.061111.1, %i.db
  br i1 %.not83.1, label %bb.m, label %bb.n

bb.m:                                             ; preds = %.lr.ph114.1
  %i.dc = icmp eq i32 %i.db, %.074.lcssa.ph
  %i.dd = trunc nuw nsw i64 %indvars.iv122.1 to i32 ; 2 uses
  br i1 %i.dc, label %._crit_edge115.1, label %bb.n

bb.n:                                             ; preds = %bb.m, %.lr.ph114.1
  %.165.ph.1 = phi i32 [ %i.dd, %bb.m ], [ %.064109.1, %.lr.ph114.1 ] ; 2 uses
  %.163.ph.1 = phi i32 [ %i.cx, %bb.m ], [ %.062110.1, %.lr.ph114.1 ] ; 2 uses
  %.1.ph.1 = phi i32 [ %i.db, %bb.m ], [ %.061111.1, %.lr.ph114.1 ]
  %indvars.iv.next123.1 = add nuw nsw i64 %indvars.iv122.1, 1 ; 2 uses
  %exitcond.1.not = icmp eq i64 %indvars.iv.next123.1, %wide.trip.count.1
  br i1 %exitcond.1.not, label %._crit_edge115.1, label %.lr.ph114.1, !llvm.loop !336

._crit_edge115.1.thread:                          ; preds = %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit, %._crit_edge
  br i1 %i.w, label %bb.s, label %._crit_edge115.1.thread.thread

._crit_edge115.1:                                 ; preds = %bb.m, %bb.n
  %.266.1 = phi i32 [ %.165.ph.1, %bb.n ], [ %i.dd, %bb.m ] ; 4 uses
  %.2.1 = phi i32 [ %.163.ph.1, %bb.n ], [ %i.cx, %bb.m ] ; 4 uses
  %i.de = zext nneg i32 %.266.1 to i64
  %i.df = icmp eq i32 %.266.1, 1
  br i1 %i.df, label %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit.1, label %bb.o

bb.o:                                             ; preds = %._crit_edge115.1
  %i.dg = icmp sgt i32 %.266.1, 1
  br i1 %i.dg, label %bb.p, label %.critedge.1

.critedge.1:                                      ; preds = %bb.o
  %i.dh = sext i32 %.266.1 to i64
  %i.di = getelementptr inbounds [4 x i8], ptr %i.c, i64 %i.dh
  store i32 %i.cq, ptr %i.di, align 4, !tbaa !199
  store i32 %.2.1, ptr %i.cp, align 4, !tbaa !199
  br i1 %i.w, label %bb.s, label %._crit_edge115.1.thread.thread

bb.p:                                             ; preds = %bb.o
  %i.dj = tail call noundef i32 @llvm.fshl.i32(i32 %i.cr, i32 %i.cq, i32 1)
  %i.dk = zext i32 %i.dj to i64
  %i.dl = load ptr, ptr %i.y, align 8, !tbaa !236
  %i.dm = getelementptr inbounds nuw [24 x i8], ptr %i.dl, i64 %i.dk ; 4 uses
  %i.dn = load ptr, ptr %i.a, align 8, !tbaa !248
  %i.do = getelementptr inbounds nuw i8, ptr %i.dm, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !238 ; 4 uses
  %i.dq = load ptr, ptr %i.dm, align 8, !tbaa !238 ; 3 uses
  %.not15.i.1 = icmp eq ptr %i.dq, %i.dp
  br i1 %.not15.i.1, label %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit.1, label %.lr.ph.i.1

.lr.ph.i.1:                                       ; preds = %bb.p, %.lr.ph.i.1
  %.sroa.011.017.i.1 = phi ptr [ %spec.select.i.1, %.lr.ph.i.1 ], [ %i.dq, %bb.p ] ; 3 uses
  %.sroa.08.016.i.1 = phi ptr [ %i.dt, %.lr.ph.i.1 ], [ %i.dq, %bb.p ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.011.017.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.08.016.i.1, i64 16, i1 false), !tbaa.struct !239
  %i.dr = load ptr, ptr %.sroa.011.017.i.1, align 8, !tbaa !241
  %i.ds = icmp eq ptr %i.dr, %i.dn
  %spec.select.idx.i.1 = select i1 %i.ds, i64 0, i64 16
  %spec.select.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.011.017.i.1, i64 %spec.select.idx.i.1 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.08.016.i.1, i64 16 ; 2 uses
  %.not.i.1 = icmp eq ptr %i.dt, %i.dp
  br i1 %.not.i.1, label %._crit_edge.loopexit.i.1, label %.lr.ph.i.1, !llvm.loop !0

._crit_edge.loopexit.i.1:                         ; preds = %.lr.ph.i.1
  %.pre.i.1 = load ptr, ptr %i.dm, align 8, !tbaa !238
  br label %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit.1

_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit.1: ; preds = %._crit_edge.loopexit.i.1, %bb.p
  %i.du = phi ptr [ %i.dp, %bb.p ], [ %.pre.i.1, %._crit_edge.loopexit.i.1 ]
  %.sroa.011.0.lcssa.i.1 = phi ptr [ %i.dp, %bb.p ], [ %spec.select.i.1, %._crit_edge.loopexit.i.1 ]
  %i.dv = ptrtoint ptr %.sroa.011.0.lcssa.i.1 to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 4
  tail call void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %i.dm, i64 noundef %i.dy)
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %i.de
  store i32 %i.cq, ptr %i.dz, align 4, !tbaa !199
  store i32 %.2.1, ptr %i.cp, align 4, !tbaa !199
  %i.ea = load i32, ptr %i.c, align 8, !tbaa !199 ; 2 uses
  %i.eb = load ptr, ptr %i.a, align 8, !tbaa !248 ; 3 uses
  %i.ec = tail call noundef i32 @llvm.abs.i32(i32 %.2.1, i1 true)
  %i.ed = tail call noundef i32 @llvm.fshl.i32(i32 %i.ec, i32 %.2.1, i32 1)
  %i.ee = zext i32 %i.ed to i64
  %i.ef = load ptr, ptr %i.y, align 8, !tbaa !236
  %i.eg = getelementptr inbounds nuw [24 x i8], ptr %i.ef, i64 %i.ee ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.ei = load i32, ptr %i.eh, align 8, !tbaa !199 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !244 ; 8 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.eg, i64 16 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !245
  %.not.i.i.i.1 = icmp eq ptr %i.ek, %i.em
  br i1 %.not.i.i.i.1, label %bb.q, label %.split

.split:                                           ; preds = %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit.1
  store ptr %i.eb, ptr %i.ek, align 8, !tbaa !233
  %.sroa.5.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  store i32 %i.ea, ptr %.sroa.5.0..sroa_idx.i.1, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx.i.1 = getelementptr inbounds nuw i8, ptr %i.ek, i64 12
  store i32 %i.ei, ptr %.sroa.6.0..sroa_idx.i.1, align 4, !tbaa !199
  %i.en = getelementptr inbounds nuw i8, ptr %i.ek, i64 16
  store ptr %i.en, ptr %i.ej, align 8, !tbaa !244
  br i1 %i.w, label %bb.s, label %._crit_edge115.1.thread.thread

bb.q:                                             ; preds = %_ZN7CaDiCaL12remove_watchERSt6vectorINS_5WatchESaIS1_EEPNS_6ClauseE.exit.1
  %i.eo = load ptr, ptr %i.eg, align 8, !tbaa !246 ; 5 uses
  %i.ep = ptrtoint ptr %i.ek to i64
  %i.eq = ptrtoint ptr %i.eo to i64
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = icmp eq i64 %i.er, 9223372036854775792
  br i1 %i.es, label %bb.k, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1: ; preds = %bb.q
  %i.et = ashr exact i64 %i.er, 4                 ; 3 uses
  %.sroa.speculated.i.i.i.i.i.1 = tail call i64 @llvm.umax.i64(i64 %i.et, i64 1)
  %i.eu = add nsw i64 %.sroa.speculated.i.i.i.i.i.1, %i.et ; 2 uses
  %i.ev = icmp ult i64 %i.eu, %i.et
  %i.ew = tail call i64 @llvm.umin.i64(i64 %i.eu, i64 576460752303423487)
  %i.ex = select i1 %i.ev, i64 576460752303423487, i64 %i.ew ; 3 uses
  %.not.i.i.i.i.i.1 = icmp ne i64 %i.ex, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i.i.1)
  %i.ey = shl nuw nsw i64 %i.ex, 4
  %i.ez = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ey) #14 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 %i.er ; 3 uses
  store ptr %i.eb, ptr %i.fa, align 8, !tbaa !233
  %.sroa.5.0..sroa_idx5.i.1 = getelementptr inbounds nuw i8, ptr %i.fa, i64 8
  store i32 %i.ea, ptr %.sroa.5.0..sroa_idx5.i.1, align 8, !tbaa !199
  %.sroa.6.0..sroa_idx7.i.1 = getelementptr inbounds nuw i8, ptr %i.fa, i64 12
  store i32 %i.ei, ptr %.sroa.6.0..sroa_idx7.i.1, align 4, !tbaa !199
  %.not10.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.eo, %i.ek
  br i1 %.not10.i.i.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.1:                         ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1, %.lr.ph.i.i.i.i.i.i.i.i.1
  %.012.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.ez, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.fb, %.lr.ph.i.i.i.i.i.i.i.i.1 ], [ %i.eo, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1 ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i.i.i.i.1, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i.i.i.i.1, i64 16, i1 false), !tbaa.struct !239, !alias.scope !340
  %i.fb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i.i.1, i64 16 ; 2 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i.i.1, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.1 = icmp eq ptr %i.fb, %i.ek
  br i1 %.not.i.i.i.i.i.i.i.i.1, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.1, label %.lr.ph.i.i.i.i.i.i.i.i.1, !llvm.loop !1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.1: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.1, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1
  %.0.lcssa.i.i.i.i.i.i.i.i.1 = phi ptr [ %i.ez, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i.i.i.i.1 ], [ %i.fc, %.lr.ph.i.i.i.i.i.i.i.i.1 ]
  %i.fd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i.i.1, i64 16
  %.not.i23.i.i.i.i.1 = icmp eq ptr %i.eo, null
  br i1 %.not.i23.i.i.i.i.1, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.1
  tail call void @_ZdlPv(ptr noundef nonnull %i.eo) #15
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1: ; preds = %bb.r, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22.i.i.i.i.1
  store ptr %i.ez, ptr %i.eg, align 8, !tbaa !246
  store ptr %i.fd, ptr %i.ej, align 8, !tbaa !244
  %i.fe = getelementptr inbounds nuw [16 x i8], ptr %i.ez, i64 %i.ex
  store ptr %i.fe, ptr %i.el, align 8, !tbaa !245
  br i1 %i.w, label %bb.s, label %._crit_edge115.1.thread.thread

_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit.1: ; preds = %._crit_edge115.1
  br i1 %i.w, label %bb.s, label %._crit_edge115.1.thread.thread

._crit_edge115.1.thread.thread:                   ; preds = %bb.a, %.split, %.critedge.1, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1, %._crit_edge115.1.thread, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit.1
  %.074.lcssa152163175185186 = phi i32 [ %.074.lcssa.ph, %._crit_edge115.1.thread ], [ %.074.lcssa.ph, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit.1 ], [ %.074.lcssa.ph, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1 ], [ %.074.lcssa.ph, %.critedge.1 ], [ %.074.lcssa.ph, %.split ], [ 0, %bb.a ]
  store i32 0, ptr %1, align 4, !tbaa !199
  br label %bb.s

bb.s:                                             ; preds = %.split, %.critedge.1, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1, %._crit_edge115.1.thread, %._crit_edge115.1.thread.thread, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit.1
  %.074.lcssa152163175185187 = phi i32 [ %.074.lcssa.ph, %._crit_edge115.1.thread ], [ %.074.lcssa152163175185186, %._crit_edge115.1.thread.thread ], [ %.074.lcssa.ph, %_ZN7CaDiCaL8Internal13watch_literalEiiPNS_6ClauseE.exit.1 ], [ %.074.lcssa.ph, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i.i.i.1 ], [ %.074.lcssa.ph, %.critedge.1 ], [ %.074.lcssa.ph, %.split ]
  ret i32 %.074.lcssa152163175185187
}

declare void @_ZN7CaDiCaL8Internal9backtrackEi(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal21build_chain_for_unitsEiPNS_6ClauseEb(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal21search_assign_drivingEiPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External27export_learned_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal14analyze_reasonEiPNS_6ClauseERiS3_S3_(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = and i32 %i.b, -49153
  %i.d = or disjoint i32 %i.c, 16384
  store i32 %i.d, ptr %i.a, align 8
  %i.e = and i32 %i.b, 2368
  %or.cond18.not.i = icmp eq i32 %i.e, 2048
  br i1 %or.cond18.not.i, label %bb.b, label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4640 ; 2 uses
  %i.g = load i64, ptr %i.f, align 8, !tbaa !217
  %i.h = add nsw i64 %i.g, 1                      ; 7 uses
  store i64 %i.h, ptr %i.f, align 8, !tbaa !217
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = load i32, ptr %i.j, align 8, !tbaa !199  ; 2 uses
  %.not18.i.i = icmp eq i32 %i.k, 0
  br i1 %.not18.i.i, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %i.l = sext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !218  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 808
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !193  ; 3 uses
  %i.q = add nsw i64 %i.l, 4611686018427387903    ; 2 uses
  %i.r = and i64 %i.q, 4611686018427387903        ; 2 uses
  %i.s = add nuw nsw i64 %i.r, 1                  ; 2 uses
  %i.t = icmp eq i64 %i.r, 0
  br i1 %i.t, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %i.s, 9223372036854775806
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %.lr.ph.i.i.new
  %.01520.i.i = phi ptr [ %i.i, %.lr.ph.i.i.new ], [ %i.ap, %bb.g ] ; 3 uses
  %.01619.i.i = phi i32 [ 0, %.lr.ph.i.i.new ], [ %.1.i.i.1, %bb.g ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.g ]
  %i.u = load i32, ptr %.01520.i.i, align 4, !tbaa !199
  %i.v = tail call noundef i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.w = zext nneg i32 %i.v to i64
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.w
  %i.y = load i32, ptr %i.x, align 8, !tbaa !220
  %i.z = sext i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.z ; 2 uses
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !181
  %i.ac = icmp eq i64 %i.ab, %i.h
  br i1 %i.ac, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i64 %i.h, ptr %i.aa, align 8, !tbaa !181
  %i.ad = add nsw i32 %.01619.i.i, 1
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.1.i.i = phi i32 [ %i.ad, %bb.d ], [ %.01619.i.i, %bb.c ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !199
  %i.ag = tail call noundef i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.ah
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !220
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.ak ; 2 uses
  %i.am = load i64, ptr %i.al, align 8, !tbaa !181
  %i.an = icmp eq i64 %i.am, %i.h
  br i1 %i.an, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store i64 %i.h, ptr %i.al, align 8, !tbaa !181
  %i.ao = add nsw i32 %.1.i.i, 1
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1.i.i.1 = phi i32 [ %i.ao, %bb.f ], [ %.1.i.i, %bb.e ] ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.01520.i.i, i64 8 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa, label %bb.c

_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa: ; preds = %bb.g
  %i.aq = and i64 %i.q, 1
  %lcmp.mod.not.not = icmp eq i64 %i.aq, 0
  br i1 %lcmp.mod.not.not, label %.epil.preheader, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i

.epil.preheader:                                  ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %.01520.i.i.epil.init = phi ptr [ %i.i, %.lr.ph.i.i ], [ %i.ap, %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa ]
  %.01619.i.i.epil.init = phi i32 [ 0, %.lr.ph.i.i ], [ %.1.i.i.1, %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod27 = trunc i64 %i.s to i1
  tail call void @llvm.assume(i1 %lcmp.mod27)
  %i.ar = load i32, ptr %.01520.i.i.epil.init, align 4, !tbaa !199
  %i.as = tail call noundef i32 @llvm.abs.i32(i32 %i.ar, i1 true)
  %i.at = zext nneg i32 %i.as to i64
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %i.n, i64 %i.at
  %i.av = load i32, ptr %i.au, align 8, !tbaa !220
  %i.aw = sext i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %i.aw ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !181
  %i.az = icmp eq i64 %i.ay, %i.h
  br i1 %i.az, label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i, label %bb.h

bb.h:                                             ; preds = %.epil.preheader
  store i64 %i.h, ptr %i.ax, align 8, !tbaa !181
  %i.ba = add nsw i32 %.01619.i.i.epil.init, 1
  br label %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i

_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i: ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa, %bb.h, %.epil.preheader, %bb.b
  %.016.lcssa.i.i = phi i32 [ 0, %bb.b ], [ %.1.i.i.1, %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i.loopexit.unr-lcssa ], [ %i.ba, %bb.h ], [ %.01619.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bc = load i32, ptr %i.bb, align 4, !tbaa !199 ; 2 uses
  %i.bd = icmp slt i32 %.016.lcssa.i.i, %i.bc
  br i1 %i.bd, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i
  tail call void @_ZN7CaDiCaL8Internal14promote_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, ptr noundef nonnull %2, i32 noundef %.016.lcssa.i.i)
  br label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit

bb.j:                                             ; preds = %_ZN7CaDiCaL8Internal14recompute_glueEPNS_6ClauseE.exit.i
  %i.be = and i32 %i.b, 49152
  %.not16.i = icmp eq i32 %i.be, 0
  br i1 %.not16.i, label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 3640
  %i.bg = load i32, ptr %i.bf, align 8, !tbaa !231
  %.not17.i = icmp sgt i32 %i.bc, %i.bg
  br i1 %.not17.i, label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bh = load i32, ptr %i.a, align 8
  %i.bi = and i32 %i.bh, -49153
  %i.bj = or disjoint i32 %i.bi, 32768
  store i32 %i.bj, ptr %i.a, align 8
  br label %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit

_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit: ; preds = %bb.a, %bb.i, %bb.j, %bb.k, %bb.l
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.bl = load i8, ptr %i.bk, align 8, !tbaa !183, !range !184, !noundef !185
  %i.bm = trunc nuw i8 %i.bl to i1
  br i1 %i.bm, label %bb.m, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !179 ; 4 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 2 uses
  %i.br = load ptr, ptr %i.bq, align 8, !tbaa !180
  %.not.i = icmp eq ptr %i.bp, %i.br
  br i1 %.not.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bs = load i64, ptr %2, align 8, !tbaa !181
  store i64 %i.bs, ptr %i.bp, align 8, !tbaa !181
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  store ptr %i.bt, ptr %i.bo, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.o:                                             ; preds = %bb.m
  %i.bu = load ptr, ptr %i.bn, align 8, !tbaa !182 ; 4 uses
  %i.bv = ptrtoint ptr %i.bp to i64
  %i.bw = ptrtoint ptr %i.bu to i64
  %i.bx = sub i64 %i.bv, %i.bw                    ; 5 uses
  %i.by = icmp eq i64 %i.bx, 9223372036854775800
  br i1 %i.by, label %bb.p, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.p:                                             ; preds = %bb.o
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.o
  %i.bz = ashr exact i64 %i.bx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.bz, i64 1)
  %i.ca = add nsw i64 %.sroa.speculated.i.i.i, %i.bz ; 2 uses
  %i.cb = icmp ult i64 %i.ca, %i.bz
  %i.cc = tail call i64 @llvm.umin.i64(i64 %i.ca, i64 1152921504606846975)
  %i.cd = select i1 %i.cb, i64 1152921504606846975, i64 %i.cc ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.cd, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ce) #14 ; 4 uses
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 %i.bx ; 2 uses
  %i.ch = load i64, ptr %2, align 8, !tbaa !181
  store i64 %i.ch, ptr %i.cg, align 8, !tbaa !181
  %i.ci = icmp sgt i64 %i.bx, 0
  br i1 %i.ci, label %bb.q, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.q:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.cf, ptr align 8 %i.bu, i64 %i.bx, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.q, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bu, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.bu) #15
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  store ptr %i.cf, ptr %i.bn, align 8, !tbaa !182
  store ptr %i.cj, ptr %i.bo, align 8, !tbaa !179
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.cd
  store ptr %i.ck, ptr %i.bq, align 8, !tbaa !180
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.n, %_ZN7CaDiCaL8Internal11bump_clauseEPNS_6ClauseE.exit
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.cn = load i32, ptr %i.cm, align 8, !tbaa !199 ; 2 uses
  %i.co = sext i32 %i.cn to i64
  %.idx = shl nsw i64 %i.co, 2
  %i.cp = getelementptr inbounds i8, ptr %i.cl, i64 %.idx
  %.not17 = icmp eq i32 %i.cn, 0
  br i1 %.not17, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.t, %_ZNSt6vectorImSaImEE9push_backERKm.exit
  ret void

.lr.ph:                                           ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit, %bb.t
  %.018 = phi ptr [ %i.cr, %bb.t ], [ %i.cl, %_ZNSt6vectorImSaImEE9push_backERKm.exit ] ; 2 uses
  %i.cq = load i32, ptr %.018, align 4, !tbaa !199 ; 2 uses
  %.not16 = icmp eq i32 %i.cq, %1
  br i1 %.not16, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  tail call void @_ZN7CaDiCaL8Internal15analyze_literalEiRiS1_S1_(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.018, i64 4 ; 2 uses
  %.not = icmp eq ptr %i.cr, %i.cp
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr noundef i32 @_ZN7CaDiCaL8Internal32determine_actual_backtrack_levelEi(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3280
  %i.b = load i32, ptr %i.a, align 8, !tbaa !247
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.z, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3284
  %i.d = load i32, ptr %i.c, align 4, !tbaa !344
  %.not45 = icmp eq i32 %i.d, 0
  br i1 %.not45, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !345
  %i.g = add nsw i64 %i.f, 1
  store i64 %i.g, ptr %i.e, align 8, !tbaa !345
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.i = load i32, ptr %i.h, align 4, !tbaa !249
  %i.j = add nsw i32 %i.i, -1
  br label %bb.z

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.l = load i32, ptr %i.k, align 4, !tbaa !249  ; 2 uses
  %i.m = add nsw i32 %i.l, -1                     ; 4 uses
  %.not46 = icmp slt i32 %1, %i.m
  br i1 %.not46, label %bb.e, label %bb.z

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %1 to i64                       ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1112
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !222
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !221
  %i.s = ptrtoint ptr %i.q to i64
  %i.t = ptrtoint ptr %i.r to i64
  %i.u = sub i64 %i.s, %i.t
  %i.v = ashr exact i64 %i.u, 2
  %i.w = icmp ugt i64 %i.v, %i.n
  br i1 %i.w, label %bb.z, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = sub nsw i32 %i.l, %1
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3288
  %i.z = load i32, ptr %i.y, align 8, !tbaa !346
  %i.aa = icmp sgt i32 %i.x, %i.z
  br i1 %i.aa, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !tbaa !345
  %i.ad = add nsw i64 %i.ac, 1
  store i64 %i.ad, ptr %i.ab, align 8, !tbaa !345
  br label %bb.z

bb.h:                                             ; preds = %bb.f
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 3292
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !347
  %.not47 = icmp eq i32 %i.af, 0
  br i1 %.not47, label %bb.z, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 3700
  %i.ah = load i32, ptr %i.ag, align 4, !tbaa !209
  %.not.i = icmp ne i32 %i.ah, 0
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.aj = load i8, ptr %i.ai, align 4, !range !184
  %i.ak = trunc nuw i8 %i.aj to i1
  %i.al = select i1 %.not.i, i1 %i.ak, i1 false
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 2184
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !225 ; 2 uses
  %i.ao = getelementptr [16 x i8], ptr %i.an, i64 %i.n
  %i.ap = getelementptr i8, ptr %i.ao, i64 20
  %i.aq = load i32, ptr %i.ap, align 4, !tbaa !348
  %i.ar = sext i32 %i.aq to i64                   ; 6 uses
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1064
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1072
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !222
  %i.av = load ptr, ptr %i.as, align 8, !tbaa !221 ; 5 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = ptrtoint ptr %i.av to i64
  %i.ay = sub i64 %i.aw, %i.ax
  %i.az = ashr exact i64 %i.ay, 2                 ; 4 uses
  %i.ba = icmp ugt i64 %i.az, %i.ar               ; 2 uses
  br i1 %i.al, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  br i1 %i.ba, label %.lr.ph59, label %.loopexit

.lr.ph59:                                         ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 688
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph59, %bb.m
  %.03558 = phi i64 [ %i.ar, %.lr.ph59 ], [ %i.bq, %bb.m ] ; 3 uses
  %.03657 = phi i32 [ 0, %.lr.ph59 ], [ %.1, %bb.m ]
  %.03756 = phi i32 [ 0, %.lr.ph59 ], [ %.138, %bb.m ] ; 4 uses
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.03558
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !199
  %i.be = tail call i32 @llvm.abs.i32(i32 %i.bd, i1 true) ; 3 uses
  %.not51 = icmp eq i32 %.03756, 0
  br i1 %.not51, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bf = zext nneg i32 %.03756 to i64
  %i.bg = load ptr, ptr %i.bb, align 8, !tbaa !200 ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !201 ; 2 uses
  %i.bj = zext nneg i32 %i.be to i64
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bj
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !201 ; 2 uses
  %i.bm = fcmp olt double %i.bi, %i.bl
  %i.bn = fcmp ule double %i.bi, %i.bl
  %i.bo = icmp samesign ugt i32 %.03756, %i.be
  %spec.select.i = and i1 %i.bo, %i.bn
  %.0.i = or i1 %i.bm, %spec.select.i
  br i1 %.0.i, label %.critedge, label %bb.m

.critedge:                                        ; preds = %bb.k, %bb.l
  %i.bp = trunc i64 %.03558 to i32
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.critedge
  %.138 = phi i32 [ %i.be, %.critedge ], [ %.03756, %bb.l ]
  %.1 = phi i32 [ %i.bp, %.critedge ], [ %.03657, %bb.l ] ; 2 uses
  %i.bq = add nuw i64 %.03558, 1                  ; 2 uses
  %exitcond62.not = icmp eq i64 %i.bq, %i.az
  br i1 %exitcond62.not, label %.loopexit, label %bb.k, !llvm.loop !341

bb.n:                                             ; preds = %bb.i
  br i1 %i.ba, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.n
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 784 ; 3 uses
  %i.bs = sub nuw nsw i64 %i.az, %i.ar            ; 3 uses
  %.neg = add nsw i64 %i.ar, 1
  %xtraiter = and i64 %i.bs, 1
  %i.bt = icmp eq i64 %i.az, %.neg
  br i1 %i.bt, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %i.bs, -2
  br label %bb.o

bb.o:                                             ; preds = %bb.u, %.lr.ph.new
  %.055 = phi i64 [ %i.ar, %.lr.ph.new ], [ %i.cr, %bb.u ] ; 4 uses
  %.254 = phi i32 [ 0, %.lr.ph.new ], [ %.3.1, %bb.u ]
  %.23953 = phi i32 [ 0, %.lr.ph.new ], [ %.340.1, %bb.u ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.1, %bb.u ]
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.055
  %i.bv = load i32, ptr %i.bu, align 4, !tbaa !199
  %i.bw = tail call i32 @llvm.abs.i32(i32 %i.bv, i1 true) ; 2 uses
  %.not48 = icmp eq i32 %.23953, 0
  br i1 %.not48, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bx = zext nneg i32 %.23953 to i64
  %i.by = load ptr, ptr %i.br, align 8, !tbaa !193 ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.bx
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !181
  %i.cb = zext nneg i32 %i.bw to i64
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.by, i64 %i.cb
  %i.cd = load i64, ptr %i.cc, align 8, !tbaa !181
  %.not49 = icmp slt i64 %i.ca, %i.cd
  br i1 %.not49, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ce = trunc i64 %.055 to i32
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %.340 = phi i32 [ %i.bw, %bb.q ], [ %.23953, %bb.p ] ; 3 uses
  %.3 = phi i32 [ %i.ce, %bb.q ], [ %.254, %bb.p ]
  %i.cf = add nuw i64 %.055, 1                    ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.cf
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !199
  %i.ci = tail call i32 @llvm.abs.i32(i32 %i.ch, i1 true) ; 2 uses
  %.not48.1 = icmp eq i32 %.340, 0
  br i1 %.not48.1, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.cj = zext nneg i32 %.340 to i64
  %i.ck = load ptr, ptr %i.br, align 8, !tbaa !193 ; 2 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cj
  %i.cm = load i64, ptr %i.cl, align 8, !tbaa !181
  %i.cn = zext nneg i32 %i.ci to i64
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.cn
  %i.cp = load i64, ptr %i.co, align 8, !tbaa !181
  %.not49.1 = icmp slt i64 %i.cm, %i.cp
  br i1 %.not49.1, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.cq = trunc i64 %i.cf to i32
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %.340.1 = phi i32 [ %i.ci, %bb.t ], [ %.340, %bb.s ] ; 2 uses
  %.3.1 = phi i32 [ %i.cq, %bb.t ], [ %.3, %bb.s ] ; 3 uses
  %i.cr = add nuw i64 %.055, 2                    ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit83.unr-lcssa, label %bb.o, !llvm.loop !342

.loopexit.loopexit83.unr-lcssa:                   ; preds = %bb.u
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit83.unr-lcssa, %.lr.ph
  %.055.epil.init = phi i64 [ %i.ar, %.lr.ph ], [ %i.cr, %.loopexit.loopexit83.unr-lcssa ] ; 2 uses
  %.254.epil.init = phi i32 [ 0, %.lr.ph ], [ %.3.1, %.loopexit.loopexit83.unr-lcssa ]
  %.23953.epil.init = phi i32 [ 0, %.lr.ph ], [ %.340.1, %.loopexit.loopexit83.unr-lcssa ] ; 2 uses
  %lcmp.mod85 = trunc i64 %i.bs to i1
  tail call void @llvm.assume(i1 %lcmp.mod85)
  %.not48.epil = icmp eq i32 %.23953.epil.init, 0
  br i1 %.not48.epil, label %bb.w, label %bb.v

bb.v:                                             ; preds = %.epil.preheader
  %i.cs = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.055.epil.init
  %i.ct = load i32, ptr %i.cs, align 4, !tbaa !199
  %i.cu = tail call i32 @llvm.abs.i32(i32 %i.ct, i1 true)
  %i.cv = zext nneg i32 %.23953.epil.init to i64
  %i.cw = load ptr, ptr %i.br, align 8, !tbaa !193 ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cv
  %i.cy = load i64, ptr %i.cx, align 8, !tbaa !181
  %i.cz = zext nneg i32 %i.cu to i64
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.cw, i64 %i.cz
  %i.db = load i64, ptr %i.da, align 8, !tbaa !181
  %.not49.epil = icmp slt i64 %i.cy, %i.db
  br i1 %.not49.epil, label %bb.w, label %.loopexit

bb.w:                                             ; preds = %bb.v, %.epil.preheader
  %i.dc = trunc i64 %.055.epil.init to i32
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit83.unr-lcssa, %bb.w, %bb.v, %bb.m, %bb.n, %bb.j
  %.4 = phi i32 [ %.1, %bb.m ], [ 0, %bb.j ], [ 0, %bb.n ], [ %.3.1, %.loopexit.loopexit83.unr-lcssa ], [ %i.dc, %bb.w ], [ %.254.epil.init, %bb.v ]
  %smax = tail call i32 @llvm.smax.i32(i32 %1, i32 %i.m) ; 3 uses
  %wide.trip.count = sext i32 %smax to i64
  %exitcond64.not79.not = icmp slt i32 %1, %i.m
  br i1 %exitcond64.not79.not, label %.lr.ph81, label %.critedge2

bb.x:                                             ; preds = %.lr.ph81
  %exitcond64.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond64.not, label %.critedge2, label %.lr.ph81, !llvm.loop !343

.lr.ph81:                                         ; preds = %.loopexit, %bb.x
  %indvars.iv80 = phi i64 [ %indvars.iv.next, %bb.x ], [ %i.n, %.loopexit ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv80, 1 ; 3 uses
  %i.dd = getelementptr inbounds nuw [16 x i8], ptr %i.an, i64 %indvars.iv.next
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 4
  %i.df = load i32, ptr %i.de, align 4, !tbaa !348
  %.not50 = icmp sgt i32 %i.df, %.4
  br i1 %.not50, label %.critedge2.split.loop.exit75, label %bb.x, !llvm.loop !343

.critedge2.split.loop.exit75:                     ; preds = %.lr.ph81
  %i.dg = trunc nsw i64 %indvars.iv80 to i32
  br label %.critedge2

.critedge2:                                       ; preds = %bb.x, %.loopexit, %.critedge2.split.loop.exit75
  %.041.lcssa = phi i32 [ %i.dg, %.critedge2.split.loop.exit75 ], [ %smax, %.loopexit ], [ %smax, %bb.x ] ; 2 uses
  %i.dh = icmp eq i32 %.041.lcssa, %1
  br i1 %i.dh, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.critedge2
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 4592 ; 2 uses
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !345
  %i.dk = add nsw i64 %i.dj, 1
  store i64 %i.dk, ptr %i.di, align 8, !tbaa !345
  br label %bb.z

bb.z:                                             ; preds = %bb.h, %bb.y, %.critedge2, %bb.e, %bb.d, %bb.a, %bb.c, %bb.g
  %.142 = phi i32 [ %i.j, %bb.c ], [ %1, %bb.a ], [ %1, %bb.d ], [ %i.m, %bb.g ], [ %1, %bb.e ], [ %.041.lcssa, %bb.y ], [ %1, %.critedge2 ], [ %1, %bb.h ]
  ret i32 %.142
}

declare noundef ptr @_ZN7CaDiCaL8Internal28learn_external_reason_clauseEiib(ptr noundef nonnull align 8 dereferenceable(7288), i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal26shrink_and_minimize_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8Internal15minimize_clauseEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External27export_learned_large_clauseERKSt6vectorIiSaIiEE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External26export_learned_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(568), i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define void @_ZN7CaDiCaL8Internal7iterateEv(ptr noundef nonnull align 8 dereferenceable(7288) initializes((5, 6)) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 0, ptr %i.a, align 1, !tbaa !230
  tail call void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288) %0, i8 noundef signext 105, i32 noundef 0)
  ret void
}

declare void @_ZN7CaDiCaL8Internal6reportEci(ptr noundef nonnull align 8 dereferenceable(7288), i8 noundef signext, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External45check_no_solution_after_learning_empty_clauseEv(ptr noundef nonnull align 8 dereferenceable(568)) local_unnamed_addr #1

declare void @_ZN7CaDiCaL8External37check_solution_on_learned_unit_clauseEi(ptr noundef nonnull align 8 dereferenceable(568), i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

declare noundef double @_ZNK7CaDiCaL8Internal9real_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

declare noundef double @_ZNK7CaDiCaL8Internal12process_timeEv(ptr noundef nonnull align 8 dereferenceable(7288)) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal25bump_also_reason_literalsEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.b = tail call noundef i32 @llvm.abs.i32(i32 %1, i1 true)
  %i.c = zext nneg i32 %i.b to i64
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.c ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !tbaa !220
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !250  ; 4 uses
  %.not21 = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 976
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = icmp eq ptr %i.h, %i.j
  %or.cond29 = select i1 %.not21, i1 true, i1 %i.k
  br i1 %or.cond29, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = load i32, ptr %i.m, align 8, !tbaa !199  ; 2 uses
  %i.o = sext i32 %i.n to i64
  %.idx = shl nsw i64 %i.o, 2
  %i.p = getelementptr inbounds i8, ptr %i.l, i64 %.idx
  %.not2230 = icmp eq i32 %i.n, 0
  br i1 %.not2230, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1216 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1224 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1232 ; 2 uses
  %i.u = icmp slt i32 %2, 2
  %i.v = add nsw i32 %2, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread
  %.031 = phi ptr [ %i.l, %.lr.ph ], [ %i.bd, %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread ] ; 3 uses
  %i.w = load i32, ptr %.031, align 4, !tbaa !199 ; 4 uses
  %i.x = icmp eq i32 %i.w, %1
  br i1 %i.x, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call noundef i32 @llvm.abs.i32(i32 %i.w, i1 true)
  %i.z = zext nneg i32 %i.y to i64                ; 2 uses
  %i.aa = load ptr, ptr %i.q, align 8, !tbaa !223
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 1            ; 2 uses
  %i.ad = trunc i32 %i.ac to i1
  br i1 %i.ad, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ae = load ptr, ptr %i.a, align 8, !tbaa !218
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ae, i64 %i.z
  %i.ag = load i32, ptr %i.af, align 8, !tbaa !220
  %.not.not.i = icmp eq i32 %i.ag, 0
  br i1 %.not.not.i, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ah = or disjoint i32 %i.ac, 1
  store i32 %i.ah, ptr %i.ab, align 1
  %i.ai = load ptr, ptr %i.s, align 8, !tbaa !222 ; 4 uses
  %i.aj = load ptr, ptr %i.t, align 8, !tbaa !235
  %.not.i.i = icmp eq ptr %i.ai, %i.aj
  br i1 %.not.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 %i.w, ptr %i.ai, align 4, !tbaa !199
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  store ptr %i.ak, ptr %i.s, align 8, !tbaa !222
  br label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit

bb.i:                                             ; preds = %bb.g
  %i.al = load ptr, ptr %i.r, align 8, !tbaa !221 ; 4 uses
  %i.am = ptrtoint ptr %i.ai to i64
  %i.an = ptrtoint ptr %i.al to i64
  %i.ao = sub i64 %i.am, %i.an                    ; 5 uses
  %i.ap = icmp eq i64 %i.ao, 9223372036854775804
  br i1 %i.ap, label %bb.j, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i

bb.j:                                             ; preds = %bb.i
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.i
  %i.aq = ashr exact i64 %i.ao, 2                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.aq, i64 1)
  %i.ar = add nsw i64 %.sroa.speculated.i.i.i.i, %i.aq ; 2 uses
  %i.as = icmp ult i64 %i.ar, %i.aq
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.ar, i64 2305843009213693951)
  %i.au = select i1 %i.as, i64 2305843009213693951, i64 %i.at ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.au, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.av = shl nuw nsw i64 %i.au, 2
  %i.aw = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.av) #14 ; 4 uses
  %i.ax = getelementptr inbounds i8, ptr %i.aw, i64 %i.ao ; 2 uses
  store i32 %i.w, ptr %i.ax, align 4, !tbaa !199
  %i.ay = icmp sgt i64 %i.ao, 0
  br i1 %i.ay, label %bb.k, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

bb.k:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.aw, ptr align 4 %i.al, i64 %i.ao, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.k, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i.i
  %i.az = getelementptr inbounds nuw i8, ptr %i.ax, i64 4
  %.not.i17.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.al) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i: ; preds = %bb.l, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i.i
  store ptr %i.aw, ptr %i.r, align 8, !tbaa !221
  store ptr %i.az, ptr %i.s, align 8, !tbaa !222
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.aw, i64 %i.au
  store ptr %i.ba, ptr %i.t, align 8, !tbaa !235
  br label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit

_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i.i
  br i1 %i.u, label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, label %bb.m

bb.m:                                             ; preds = %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit
  %i.bb = load i32, ptr %.031, align 4, !tbaa !199
  %i.bc = sub nsw i32 0, %i.bb
  tail call void @_ZN7CaDiCaL8Internal25bump_also_reason_literalsEii(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %i.bc, i32 noundef %i.v)
  br label %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread

_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread: ; preds = %bb.f, %bb.e, %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit, %bb.d, %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %.031, i64 4 ; 2 uses
  %.not22 = icmp eq ptr %i.bd, %i.p
  br i1 %.not22, label %.loopexit, label %bb.d

.loopexit:                                        ; preds = %_ZN7CaDiCaL8Internal24bump_also_reason_literalEi.exit.thread, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !244  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !246    ; 6 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 4                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !245
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 4                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 576460752303423488
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 576460752303423487         ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 4
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !244
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.d:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #13
  unreachable

_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.d
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 576460752303423487) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 4
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #14 ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i ], [ %i.w, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i.i.i ], [ %i.c, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.012.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0911.i.i.i.i.i, i64 16, i1 false), !tbaa.struct !239, !alias.scope !352
  %i.y = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 16 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 16
  %.not.i.i.i.i.i = icmp eq ptr %i.y, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %_ZNKSt6vectorIN7CaDiCaL5WatchESaIS1_EE12_M_check_lenEmPKc.exit.i
  %.not.i31.i = icmp eq ptr %i.c, null
  br i1 %.not.i31.i, label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #15
  br label %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i

_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i: ; preds = %bb.f, %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !246
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aa, ptr %i.a, align 8, !tbaa !244
  %i.ab = getelementptr inbounds nuw [16 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ab, ptr %i.j, align 8, !tbaa !245
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.a
  %i.ac = icmp ult i64 %1, %i.g
  br i1 %i.ac, label %bb.h, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

bb.h:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.c, i64 %1 ; 2 uses
  %.not.i4 = icmp eq ptr %i.b, %i.ad
  br i1 %.not.i4, label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit, label %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %bb.h
  store ptr %i.ad, ptr %i.a, align 8, !tbaa !244
  br label %_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit

_ZNSt6vectorIN7CaDiCaL5WatchESaIS1_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN7CaDiCaL5WatchES1_EvT_S3_RSaIT0_E.exit.i, %bb.h, %_ZNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE13_M_deallocateEPS1_m.exit32.i, %bb.c, %bb.g
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #10

declare void @_ZN7CaDiCaL8External33check_solution_on_shrunken_clauseEPNS_6ClauseE(ptr noundef nonnull align 8 dereferenceable(568), ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL8Internal15analyze_literalEiRiS1_S1_(ptr noundef nonnull align 8 dereferenceable(7288) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef nonnull align 4 dereferenceable(4) %3, ptr noundef nonnull align 4 dereferenceable(4) %4) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 3 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  store i32 %1, ptr %i.a, align 4, !tbaa !199
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 712
  %i.d = tail call i32 @llvm.abs.i32(i32 %1, i1 true) ; 2 uses
  %i.e = zext nneg i32 %i.d to i64                ; 2 uses
  %i.f = load ptr, ptr %i.c, align 8, !tbaa !218
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.e ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 760
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !223
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %i.e ; 7 uses
  %i.k = load i32, ptr %i.g, align 8, !tbaa !220
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.b, label %bb.n

bb.b:                                             ; preds = %bb.a
  %i.l = load i32, ptr %i.j, align 1              ; 2 uses
  %i.m = trunc i32 %i.l to i1
  %.not56 = xor i1 %i.m, true
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 320
  %i.o = load i8, ptr %i.n, align 8, !range !184
  %i.p = trunc nuw i8 %i.o to i1
  %or.cond = select i1 %.not56, i1 %i.p, i1 false
  br i1 %or.cond, label %bb.c, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.c:                                             ; preds = %bb.b
  %i.q = or disjoint i32 %i.l, 1
  store i32 %i.q, ptr %i.j, align 1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1240 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1248 ; 3 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !222  ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 1256 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !235
  %.not.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store i32 %1, ptr %i.t, align 4, !tbaa !199
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  store ptr %i.w, ptr %i.s, align 8, !tbaa !222
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

bb.e:                                             ; preds = %bb.c
  %i.x = load ptr, ptr %i.r, align 8, !tbaa !221  ; 4 uses
  %i.y = ptrtoint ptr %i.t to i64
  %i.z = ptrtoint ptr %i.x to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 5 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775804
  br i1 %i.ab, label %bb.f, label %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.e
  %i.ac = ashr exact i64 %i.aa, 2                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 2305843009213693951)
  %i.ag = select i1 %i.ae, i64 2305843009213693951, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 2
  %i.ai = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #14 ; 4 uses
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store i32 %1, ptr %i.aj, align 4, !tbaa !199
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.g, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.ai, ptr align 4 %i.x, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i: ; preds = %bb.g, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.not.i17.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.x) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i: ; preds = %bb.h, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i
  store ptr %i.ai, ptr %i.r, align 8, !tbaa !221
  store ptr %i.al, ptr %i.s, align 8, !tbaa !222
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.ag
  store ptr %i.am, ptr %i.u, align 8, !tbaa !235
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit

_ZNSt6vectorIiSaIiEE9push_backERKi.exit:          ; preds = %bb.d, %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i
  %i.an = sub nsw i32 0, %1
  %i.ao = tail call noundef i32 @llvm.fshl.i32(i32 %i.d, i32 %i.an, i32 1)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.aq = sext i32 %i.ao to i64
  %i.ar = load ptr, ptr %i.ap, align 8, !tbaa !182
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.aq
  %i.at = load i64, ptr %i.as, align 8, !tbaa !181 ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 3 uses
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !179 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !180
  %.not.i27 = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  store i64 %i.at, ptr %i.aw, align 8, !tbaa !181
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  store ptr %i.az, ptr %i.av, align 8, !tbaa !179
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.j:                                             ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit
  %i.ba = load ptr, ptr %i.au, align 8, !tbaa !182 ; 4 uses
  %i.bb = ptrtoint ptr %i.aw to i64
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = sub i64 %i.bb, %i.bc                    ; 5 uses
  %i.be = icmp eq i64 %i.bd, 9223372036854775800
  br i1 %i.be, label %bb.k, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.11) #13
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bf = ashr exact i64 %i.bd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i28 = tail call i64 @llvm.umax.i64(i64 %i.bf, i64 1)
  %i.bg = add nsw i64 %.sroa.speculated.i.i.i28, %i.bf ; 2 uses
  %i.bh = icmp ult i64 %i.bg, %i.bf
  %i.bi = tail call i64 @llvm.umin.i64(i64 %i.bg, i64 1152921504606846975)
  %i.bj = select i1 %i.bh, i64 1152921504606846975, i64 %i.bi ; 3 uses
  %.not.i.i.i29 = icmp ne i64 %i.bj, 0
  tail call void @llvm.assume(i1 %.not.i.i.i29)
  %i.bk = shl nuw nsw i64 %i.bj, 3
  %i.bl = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bk) #14 ; 4 uses
  %i.bm = getelementptr inbounds i8, ptr %i.bl, i64 %i.bd ; 2 uses
  store i64 %i.at, ptr %i.bm, align 8, !tbaa !181
  %i.bn = icmp sgt i64 %i.bd, 0
  br i1 %i.bn, label %bb.l, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bl, ptr align 8 %i.ba, i64 %i.bd, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.not.i17.i.i30 = icmp eq ptr %i.ba, null
  br i1 %.not.i17.i.i30, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.m
end_hunk_0
begin_hunk_1_@_ZN7CaDiCaL8Internal15analyze_literalEiRiS1_S1_:bb.a
  %i.fn = add nsw i64 %.sroa.speculated.i.i.i49, %i.fm ; 2 uses
  %i.fo = icmp ult i64 %i.fn, %i.fm
  %i.fp = tail call i64 @llvm.umin.i64(i64 %i.fn, i64 2305843009213693951)
  %i.fq = select i1 %i.fo, i64 2305843009213693951, i64 %i.fp ; 3 uses
  %.not.i.i.i50 = icmp ne i64 %i.fq, 0
  tail call void @llvm.assume(i1 %.not.i.i.i50)
  %i.fr = shl nuw nsw i64 %i.fq, 2
  %i.fs = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fr) #14 ; 4 uses
  %i.ft = getelementptr inbounds i8, ptr %i.fs, i64 %i.fk ; 2 uses
  %i.fu = load i32, ptr %i.g, align 8, !tbaa !199
  store i32 %i.fu, ptr %i.ft, align 4, !tbaa !199
  %i.fv = icmp sgt i64 %i.fk, 0
  br i1 %i.fv, label %bb.aj, label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51

bb.aj:                                            ; preds = %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.fs, ptr align 4 %i.fh, i64 %i.fk, i1 false)
  br label %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51

_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51: ; preds = %bb.aj, %_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc.exit.i.i48
  %i.fw = getelementptr inbounds nuw i8, ptr %i.ft, i64 4
  %.not.i17.i.i52 = icmp eq ptr %i.fh, null
  br i1 %.not.i17.i.i52, label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53, label %bb.ak

bb.ak:                                            ; preds = %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51
  tail call void @_ZdlPv(ptr noundef nonnull %i.fh) #15
  br label %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53

_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53: ; preds = %bb.ak, %_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_.exit16.i.i51
  store ptr %i.fs, ptr %i.fa, align 8, !tbaa !221
  store ptr %i.fw, ptr %i.fb, align 8, !tbaa !222
  %i.fx = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %i.fq
  store ptr %i.fx, ptr %i.fd, align 8, !tbaa !235
  br label %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54

_ZNSt6vectorIiSaIiEE9push_backERKi.exit54:        ; preds = %_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_.exit.i53, %bb.ag, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit46
  %i.fy = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.fz = load i32, ptr %i.fy, align 4, !tbaa !232 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %i.ew, i64 12 ; 2 uses
  %i.gb = load i32, ptr %i.ga, align 4, !tbaa !229
  %i.gc = icmp slt i32 %i.fz, %i.gb
  br i1 %i.gc, label %bb.al, label %bb.am

bb.al:                                            ; preds = %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54
  store i32 %i.fz, ptr %i.ga, align 4, !tbaa !229
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %_ZNSt6vectorIiSaIiEE9push_backERKi.exit54
  %i.gd = load i32, ptr %3, align 4, !tbaa !199
  %i.ge = add nsw i32 %i.gd, 1
  store i32 %i.ge, ptr %3, align 4, !tbaa !199
  %i.gf = load i32, ptr %i.g, align 8, !tbaa !220
  %i.gg = load i32, ptr %i.dt, align 4, !tbaa !249
  %i.gh = icmp eq i32 %i.gf, %i.gg
  br i1 %i.gh, label %bb.an, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.an:                                            ; preds = %bb.am
  %i.gi = load i32, ptr %2, align 4, !tbaa !199
  %i.gj = add nsw i32 %i.gi, 1
  store i32 %i.gj, ptr %2, align 4, !tbaa !199
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.i, %bb.am, %bb.an, %bb.q, %bb.r, %bb.n, %bb.b, %bb.s
  ret void
}

declare void @_ZN7CaDiCaL8Internal14promote_clauseEPNS_6ClauseEi(ptr noundef nonnull align 8 dereferenceable(7288), ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN7CaDiCaL5Proof10strengthenEm(ptr noundef nonnull align 8 dereferenceable(128), i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_13score_smallerEE2upEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 9 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.d = add nuw nsw i64 %i.a, 1                  ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !208
  br label %bb.b

bb.b:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE8exchangeEjj.exit, %bb.a
  %i.f = phi ptr [ %i.ay, %_ZN7CaDiCaL4heapINS_13score_smallerEE8exchangeEjj.exit ], [ %.pre, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = ptrtoint ptr %i.f to i64
  %i.j = sub i64 %i.h, %i.i
  %i.k = ashr exact i64 %i.j, 2                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.k, %i.a
  br i1 %.not.i.i, label %_ZN7CaDiCaL4heapINS_13score_smallerEE10has_parentEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw nsw i64 %i.d, %i.k
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.g, i64 noundef %i.l, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !208
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE10has_parentEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE10has_parentEj.exit: ; preds = %bb.b, %bb.c
  %i.m = phi ptr [ %.pre.i.i, %bb.c ], [ %i.f, %bb.b ] ; 3 uses
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.a
  %i.o = load i32, ptr %i.n, align 4, !tbaa !199  ; 2 uses
  %.not = icmp eq i32 %i.o, 0
  br i1 %.not, label %.critedge, label %bb.d

bb.d:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE10has_parentEj.exit
  %i.p = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.q = ptrtoint ptr %i.p to i64
  %i.r = ptrtoint ptr %i.m to i64
  %i.s = sub i64 %i.q, %i.r
  %i.t = ashr exact i64 %i.s, 2                   ; 2 uses
  %.not.i.i5 = icmp ugt i64 %i.t, %i.a
  br i1 %.not.i.i5, label %_ZN7CaDiCaL4heapINS_13score_smallerEE6parentEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = sub nuw nsw i64 %i.d, %i.t
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.p, i64 noundef %i.u, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i6 = load ptr, ptr %i.b, align 8, !tbaa !208 ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i6, i64 %i.a
  %.pre11 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !199
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE6parentEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE6parentEj.exit: ; preds = %bb.d, %bb.e
  %i.v = phi ptr [ %.pre.i.i6, %bb.e ], [ %i.m, %bb.d ] ; 2 uses
  %i.w = phi i32 [ %.pre11, %bb.e ], [ %i.o, %bb.d ]
  %i.x = add i32 %i.w, -1
  %i.y = lshr i32 %i.x, 1
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = load ptr, ptr %0, align 8, !tbaa !208
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.z
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !199 ; 2 uses
  %i.ad = load ptr, ptr %i.e, align 8, !tbaa !252
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 688
  %i.af = zext i32 %i.ac to i64                   ; 4 uses
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !200 ; 2 uses
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.af
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !201 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.a
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !201 ; 2 uses
  %i.al = fcmp olt double %i.ai, %i.ak
  %i.am = fcmp ule double %i.ai, %i.ak
  %i.an = icmp ugt i32 %i.ac, %1
  %spec.select.i = and i1 %i.an, %i.am
  %.0.i = or i1 %i.al, %spec.select.i
  br i1 %.0.i, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE6parentEj.exit
  %i.ao = load ptr, ptr %i.c, align 8, !tbaa !207 ; 3 uses
  %i.ap = ptrtoint ptr %i.ao to i64
  %i.aq = ptrtoint ptr %i.v to i64
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = ashr exact i64 %i.ar, 2                 ; 3 uses
  %.not.i.i7 = icmp ugt i64 %i.as, %i.af
  br i1 %.not.i.i7, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.at = add nuw nsw i64 %i.af, 1
  %i.au = sub nuw nsw i64 %i.at, %i.as
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ao, i64 noundef %i.au, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i8 = load ptr, ptr %i.b, align 8, !tbaa !208 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !207 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i8 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i: ; preds = %bb.g, %bb.f
  %i.av = phi ptr [ %i.v, %bb.f ], [ %.pre.i.i8, %bb.g ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.as, %bb.f ], [ %.pre15.i, %bb.g ] ; 2 uses
  %i.aw = phi ptr [ %i.ao, %bb.f ], [ %.pre.i, %bb.g ]
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %i.a
  br i1 %.not.i6.i, label %_ZN7CaDiCaL4heapINS_13score_smallerEE8exchangeEjj.exit, label %bb.h

bb.h:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.ax = sub nuw nsw i64 %i.d, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.aw, i64 noundef %i.ax, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !208
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE8exchangeEjj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE8exchangeEjj.exit: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i, %bb.h
  %i.ay = phi ptr [ %.pre.i7.i, %bb.h ], [ %i.av, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i ] ; 2 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.af ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.a ; 3 uses
  %i.bb = load i32, ptr %i.az, align 4, !tbaa !199
  %i.bc = zext i32 %i.bb to i64
  %i.bd = load ptr, ptr %0, align 8, !tbaa !208   ; 2 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc ; 2 uses
  %i.bf = load i32, ptr %i.ba, align 4, !tbaa !199
  %i.bg = zext i32 %i.bf to i64
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bg ; 2 uses
  %i.bi = load i32, ptr %i.be, align 4, !tbaa !199
  %i.bj = load i32, ptr %i.bh, align 4, !tbaa !199
  store i32 %i.bj, ptr %i.be, align 4, !tbaa !199
  store i32 %i.bi, ptr %i.bh, align 4, !tbaa !199
  %i.bk = load i32, ptr %i.az, align 4, !tbaa !199
  %i.bl = load i32, ptr %i.ba, align 4, !tbaa !199
  store i32 %i.bl, ptr %i.az, align 4, !tbaa !199
  store i32 %i.bk, ptr %i.ba, align 4, !tbaa !199
  br label %bb.b, !llvm.loop !353

.critedge:                                        ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE10has_parentEj.exit, %_ZN7CaDiCaL4heapINS_13score_smallerEE6parentEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7CaDiCaL4heapINS_13score_smallerEE4downEj(ptr noundef nonnull align 8 dereferenceable(56) %0, i32 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 12 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 6 uses
  %i.d = add nuw nsw i64 %i.a, 1                  ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !208
  br label %bb.b

bb.b:                                             ; preds = %bb.m, %bb.a
  %i.g = phi ptr [ %i.cv, %bb.m ], [ %.pre, %bb.a ] ; 2 uses
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !207  ; 2 uses
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = ptrtoint ptr %i.g to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = ashr exact i64 %i.k, 2                   ; 2 uses
  %.not.i.i = icmp ugt i64 %i.l, %i.a
  br i1 %.not.i.i, label %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = sub nuw nsw i64 %i.d, %i.l
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.h, i64 noundef %i.m, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i = load ptr, ptr %i.b, align 8, !tbaa !208
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit: ; preds = %bb.b, %bb.c
  %i.n = phi ptr [ %.pre.i.i, %bb.c ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = getelementptr inbounds nuw [4 x i8], ptr %i.n, i64 %i.a
  %i.p = load i32, ptr %i.o, align 4, !tbaa !199  ; 2 uses
  %i.q = zext i32 %i.p to i64
  %i.r = shl nuw nsw i64 %i.q, 1
  %i.s = or disjoint i64 %i.r, 1
  %i.t = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.u = load ptr, ptr %0, align 8, !tbaa !208    ; 2 uses
  %i.v = ptrtoint ptr %i.t to i64
  %i.w = ptrtoint ptr %i.u to i64
  %i.x = sub i64 %i.v, %i.w
  %i.y = ashr exact i64 %i.x, 2
  %i.z = icmp ult i64 %i.s, %i.y
  br i1 %i.z, label %bb.d, label %.thread

bb.d:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !207 ; 3 uses
  %i.ab = ptrtoint ptr %i.aa to i64
  %i.ac = ptrtoint ptr %i.n to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = ashr exact i64 %i.ad, 2                 ; 3 uses
  %.not.i.i13 = icmp ugt i64 %i.ae, %i.a
  br i1 %.not.i.i13, label %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = sub nuw nsw i64 %i.d, %i.ae
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.aa, i64 noundef %i.af, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i14 = load ptr, ptr %i.b, align 8, !tbaa !208 ; 3 uses
  %.phi.trans.insert = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i14, i64 %i.a
  %.pre28 = load i32, ptr %.phi.trans.insert, align 4, !tbaa !199
  %.pre29 = load ptr, ptr %0, align 8, !tbaa !208
  %.pre30 = load ptr, ptr %i.c, align 8, !tbaa !207 ; 2 uses
  %.pre44 = ptrtoint ptr %.pre30 to i64
  %.pre46 = ptrtoint ptr %.pre.i.i14 to i64
  %.pre48 = sub i64 %.pre44, %.pre46
  %.pre50 = ashr exact i64 %.pre48, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit: ; preds = %bb.d, %bb.e
  %.pre-phi51 = phi i64 [ %i.ae, %bb.d ], [ %.pre50, %bb.e ] ; 2 uses
  %i.ag = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i14, %bb.e ]
  %i.ah = phi ptr [ %i.aa, %bb.d ], [ %.pre30, %bb.e ]
  %i.ai = phi ptr [ %i.u, %bb.d ], [ %.pre29, %bb.e ] ; 2 uses
  %i.aj = phi i32 [ %i.p, %bb.d ], [ %.pre28, %bb.e ] ; 2 uses
  %i.ak = shl i32 %i.aj, 1
  %i.al = or disjoint i32 %i.ak, 1
  %i.am = zext i32 %i.al to i64
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.am
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !199 ; 5 uses
  %.not.i.i15 = icmp ugt i64 %.pre-phi51, %i.a
  br i1 %.not.i.i15, label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit, label %bb.f

bb.f:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit
  %i.ap = sub nuw nsw i64 %i.d, %.pre-phi51
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.ah, i64 noundef %i.ap, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i16 = load ptr, ptr %i.b, align 8, !tbaa !208 ; 2 uses
  %.phi.trans.insert31 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i16, i64 %i.a
  %.pre32 = load i32, ptr %.phi.trans.insert31, align 4, !tbaa !199
  %.pre33 = load ptr, ptr %0, align 8, !tbaa !208
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit, %bb.f
  %i.aq = phi ptr [ %.pre.i.i16, %bb.f ], [ %i.ag, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 3 uses
  %i.ar = phi ptr [ %.pre33, %bb.f ], [ %i.ai, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 2 uses
  %i.as = phi i32 [ %.pre32, %bb.f ], [ %i.aj, %_ZN7CaDiCaL4heapINS_13score_smallerEE4leftEj.exit ] ; 2 uses
  %i.at = zext i32 %i.as to i64
  %i.au = shl nuw nsw i64 %i.at, 1
  %i.av = add nuw nsw i64 %i.au, 2
  %i.aw = load ptr, ptr %i.e, align 8, !tbaa !207
  %i.ax = ptrtoint ptr %i.aw to i64
  %i.ay = ptrtoint ptr %i.ar to i64
  %i.az = sub i64 %i.ax, %i.ay
  %i.ba = ashr exact i64 %i.az, 2
  %i.bb = icmp ult i64 %i.av, %i.ba
  br i1 %i.bb, label %bb.g, label %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge

_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge: ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit
  %.pre37 = load ptr, ptr %i.f, align 8, !tbaa !252
  %.phi.trans.insert38 = getelementptr inbounds nuw i8, ptr %.pre37, i64 688
  %.pre39 = load ptr, ptr %.phi.trans.insert38, align 8, !tbaa !200 ; 2 uses
  %.phi.trans.insert40 = zext i32 %i.ao to i64    ; 2 uses
  %.phi.trans.insert41 = getelementptr inbounds nuw [8 x i8], ptr %.pre39, i64 %.phi.trans.insert40
  %.pre42 = load double, ptr %.phi.trans.insert41, align 8, !tbaa !201
  br label %bb.i

bb.g:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit
  %i.bc = load ptr, ptr %i.c, align 8, !tbaa !207 ; 2 uses
  %i.bd = ptrtoint ptr %i.bc to i64
  %i.be = ptrtoint ptr %i.aq to i64
  %i.bf = sub i64 %i.bd, %i.be
  %i.bg = ashr exact i64 %i.bf, 2                 ; 2 uses
  %.not.i.i17 = icmp ugt i64 %i.bg, %i.a
  br i1 %.not.i.i17, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bh = sub nuw nsw i64 %i.d, %i.bg
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.bc, i64 noundef %i.bh, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i18 = load ptr, ptr %i.b, align 8, !tbaa !208 ; 2 uses
  %.phi.trans.insert34 = getelementptr inbounds nuw [4 x i8], ptr %.pre.i.i18, i64 %i.a
  %.pre35 = load i32, ptr %.phi.trans.insert34, align 4, !tbaa !199
  %.pre36 = load ptr, ptr %0, align 8, !tbaa !208
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit

_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit: ; preds = %bb.g, %bb.h
  %i.bi = phi ptr [ %.pre.i.i18, %bb.h ], [ %i.aq, %bb.g ]
  %i.bj = phi ptr [ %.pre36, %bb.h ], [ %i.ar, %bb.g ]
  %i.bk = phi i32 [ %.pre35, %bb.h ], [ %i.as, %bb.g ]
  %i.bl = shl i32 %i.bk, 1
  %i.bm = add i32 %i.bl, 2
  %i.bn = zext i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.bj, i64 %i.bn
  %i.bp = load i32, ptr %i.bo, align 4, !tbaa !199 ; 3 uses
  %i.bq = load ptr, ptr %i.f, align 8, !tbaa !252
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 688
  %i.bs = zext i32 %i.ao to i64
  %i.bt = load ptr, ptr %i.br, align 8, !tbaa !200 ; 3 uses
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bs
  %i.bv = load double, ptr %i.bu, align 8, !tbaa !201 ; 3 uses
  %i.bw = zext i32 %i.bp to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %i.bw
  %i.by = load double, ptr %i.bx, align 8, !tbaa !201 ; 3 uses
  %i.bz = fcmp olt double %i.bv, %i.by
  %i.ca = fcmp ule double %i.bv, %i.by
  %i.cb = icmp ugt i32 %i.ao, %i.bp
  %spec.select.i = and i1 %i.cb, %i.ca
  %.0.i = or i1 %i.bz, %spec.select.i             ; 2 uses
  %spec.select = select i1 %.0.i, i32 %i.bp, i32 %i.ao ; 2 uses
  %i.cc = select i1 %.0.i, double %i.by, double %i.bv
  %.pre43 = zext i32 %spec.select to i64
  br label %bb.i

bb.i:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit
  %.pre-phi = phi i64 [ %.phi.trans.insert40, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %.pre43, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 3 uses
  %i.cd = phi ptr [ %i.aq, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %i.bi, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 2 uses
  %i.ce = phi double [ %.pre42, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %i.cc, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ] ; 2 uses
  %i.cf = phi ptr [ %.pre39, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %i.bt, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ]
  %.1 = phi i32 [ %i.ao, %_ZN7CaDiCaL4heapINS_13score_smallerEE9has_rightEj.exit._crit_edge ], [ %spec.select, %_ZN7CaDiCaL4heapINS_13score_smallerEE5rightEj.exit ]
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cf, i64 %i.a
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !201 ; 2 uses
  %i.ci = fcmp olt double %i.ch, %i.ce
  %i.cj = fcmp ule double %i.ch, %i.ce
  %i.ck = icmp ugt i32 %1, %.1
  %spec.select.i19 = and i1 %i.ck, %i.cj
  %.0.i20 = or i1 %i.ci, %spec.select.i19
  br i1 %.0.i20, label %bb.j, label %.thread

bb.j:                                             ; preds = %bb.i
  %i.cl = load ptr, ptr %i.c, align 8, !tbaa !207 ; 3 uses
  %i.cm = ptrtoint ptr %i.cl to i64
  %i.cn = ptrtoint ptr %i.cd to i64
  %i.co = sub i64 %i.cm, %i.cn
  %i.cp = ashr exact i64 %i.co, 2                 ; 3 uses
  %.not.i.i21 = icmp ugt i64 %i.cp, %i.a
  br i1 %.not.i.i21, label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.cq = sub nuw nsw i64 %i.d, %i.cp
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cl, i64 noundef %i.cq, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i.i22 = load ptr, ptr %i.b, align 8, !tbaa !208 ; 2 uses
  %.pre.i = load ptr, ptr %i.c, align 8, !tbaa !207 ; 2 uses
  %.pre10.i = ptrtoint ptr %.pre.i to i64
  %.pre11.i = ptrtoint ptr %.pre.i.i22 to i64
  %.pre13.i = sub i64 %.pre10.i, %.pre11.i
  %.pre15.i = ashr exact i64 %.pre13.i, 2
  br label %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i

_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i: ; preds = %bb.k, %bb.j
  %i.cr = phi ptr [ %i.cd, %bb.j ], [ %.pre.i.i22, %bb.k ] ; 2 uses
  %.pre-phi16.i = phi i64 [ %i.cp, %bb.j ], [ %.pre15.i, %bb.k ] ; 2 uses
  %i.cs = phi ptr [ %i.cl, %bb.j ], [ %.pre.i, %bb.k ]
  %.not.i6.i = icmp ugt i64 %.pre-phi16.i, %.pre-phi
  br i1 %.not.i6.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.ct = add nuw nsw i64 %.pre-phi, 1
  %i.cu = sub nuw nsw i64 %i.ct, %.pre-phi16.i
  tail call void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr %i.cs, i64 noundef %i.cu, ptr noundef nonnull align 4 dereferenceable(4) @_ZN7CaDiCaLL21invalid_heap_positionE)
  %.pre.i7.i = load ptr, ptr %i.b, align 8, !tbaa !208
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i
  %i.cv = phi ptr [ %.pre.i7.i, %bb.l ], [ %i.cr, %_ZN7CaDiCaL4heapINS_13score_smallerEE5indexEj.exit.i ] ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %i.cr, i64 %i.a ; 3 uses
  %i.cx = getelementptr inbounds nuw [4 x i8], ptr %i.cv, i64 %.pre-phi ; 3 uses
  %i.cy = load i32, ptr %i.cw, align 4, !tbaa !199
  %i.cz = zext i32 %i.cy to i64
  %i.da = load ptr, ptr %0, align 8, !tbaa !208   ; 2 uses
  %i.db = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.cz ; 2 uses
  %i.dc = load i32, ptr %i.cx, align 4, !tbaa !199
  %i.dd = zext i32 %i.dc to i64
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %i.da, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.db, align 4, !tbaa !199
  %i.dg = load i32, ptr %i.de, align 4, !tbaa !199
  store i32 %i.dg, ptr %i.db, align 4, !tbaa !199
  store i32 %i.df, ptr %i.de, align 4, !tbaa !199
  %i.dh = load i32, ptr %i.cw, align 4, !tbaa !199
  %i.di = load i32, ptr %i.cx, align 4, !tbaa !199
  store i32 %i.di, ptr %i.cw, align 4, !tbaa !199
  store i32 %i.dh, ptr %i.cx, align 4, !tbaa !199
  br label %bb.b

.thread:                                          ; preds = %bb.i, %_ZN7CaDiCaL4heapINS_13score_smallerEE8has_leftEj.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIjSaIjEE14_M_fill_insertEN9__gnu_cxx17__normal_iteratorIPjS1_EEmRKj(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, i64 noundef %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !362
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !207  ; 15 uses
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 5 uses
  %i.g = sub i64 %i.e, %i.f
  %i.h = ashr exact i64 %i.g, 2
  %.not65 = icmp ult i64 %i.h, %2
  br i1 %.not65, label %bb.q, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %3, align 4, !tbaa !199    ; 6 uses
  %i.j = ptrtoint ptr %1 to i64                   ; 3 uses
  %i.k = sub i64 %i.f, %i.j                       ; 6 uses
  %i.l = ashr exact i64 %i.k, 2                   ; 3 uses
  %i.m = icmp ugt i64 %i.l, %2
  br i1 %i.m, label %bb.d, label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.n = sub i64 0, %2
  %i.o = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.n ; 3 uses
  %i.p = ptrtoint ptr %i.o to i64
  %i.q = icmp sgt i64 %2, 1
  br i1 %i.q, label %bb.e, label %bb.f, !prof !253

bb.e:                                             ; preds = %bb.d
  %.idx.neg = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.d, ptr nonnull align 4 %i.o, i64 %.idx.neg, i1 false)
  %.pre97 = load ptr, ptr %i.c, align 8, !tbaa !207
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.f:                                             ; preds = %bb.d
  %i.r = icmp eq i64 %2, 1
  br i1 %i.r, label %bb.g, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.g:                                             ; preds = %bb.f
  %i.s = load i32, ptr %i.o, align 4, !tbaa !199
  store i32 %i.s, ptr %i.d, align 4, !tbaa !199
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.g, %bb.f, %bb.e
  %i.t = phi ptr [ %i.d, %bb.g ], [ %i.d, %bb.f ], [ %.pre97, %bb.e ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.t, i64 %2
  store ptr %i.u, ptr %i.c, align 8, !tbaa !207
  %i.v = sub i64 %i.p, %i.j                       ; 3 uses
  %i.w = ashr exact i64 %i.v, 2                   ; 2 uses
  %i.x = icmp sgt i64 %i.w, 1
  br i1 %i.x, label %bb.h, label %bb.i, !prof !253

bb.h:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.y = sub nsw i64 0, %i.w
  %i.z = getelementptr inbounds [4 x i8], ptr %i.d, i64 %i.y
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.z, ptr align 4 %1, i64 %i.v, i1 false)
  br label %bb.k

bb.i:                                             ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.aa = icmp eq i64 %i.v, 4
  br i1 %i.aa, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ab = getelementptr inbounds i8, ptr %i.d, i64 -4
  %i.ac = load i32, ptr %1, align 4, !tbaa !199
  store i32 %i.ac, ptr %i.ab, align 4, !tbaa !199
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.idx = shl nuw nsw i64 %2, 2                   ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 %.idx
  %i.ae = add nsw i64 %.idx, -4                   ; 2 uses
  %i.af = lshr exact i64 %i.ae, 2
  %i.ag = add nuw nsw i64 %i.af, 1                ; 2 uses
  %min.iters.check126 = icmp ult i64 %i.ae, 28
  br i1 %min.iters.check126, label %.lr.ph.i.i.i.preheader, label %vector.ph127

vector.ph127:                                     ; preds = %bb.k
  %n.vec128 = and i64 %i.ag, 9223372036854775800  ; 3 uses
  %i.ah = shl i64 %n.vec128, 2
  %i.ai = getelementptr i8, ptr %1, i64 %i.ah
  %broadcast.splatinsert129 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat130 = shufflevector <4 x i32> %broadcast.splatinsert129, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body131

vector.body131:                                   ; preds = %vector.body131, %vector.ph127
  %index132 = phi i64 [ 0, %vector.ph127 ], [ %index.next134, %vector.body131 ] ; 2 uses
  %i.aj = shl i64 %index132, 2
  %next.gep133 = getelementptr i8, ptr %1, i64 %i.aj ; 2 uses
  %i.ak = getelementptr i8, ptr %next.gep133, i64 16
  store <4 x i32> %broadcast.splat130, ptr %next.gep133, align 4, !tbaa !199
  store <4 x i32> %broadcast.splat130, ptr %i.ak, align 4, !tbaa !199
  %index.next134 = add nuw i64 %index132, 8       ; 2 uses
  %i.al = icmp eq i64 %index.next134, %n.vec128
  br i1 %i.al, label %middle.block135, label %vector.body131, !llvm.loop !354

middle.block135:                                  ; preds = %vector.body131
  %cmp.n136 = icmp eq i64 %i.ag, %n.vec128
  br i1 %cmp.n136, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %bb.k, %middle.block135
  %.06.i.i.i.ph = phi ptr [ %1, %bb.k ], [ %i.ai, %middle.block135 ]
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i.preheader, %.lr.ph.i.i.i
  %.06.i.i.i = phi ptr [ %i.am, %.lr.ph.i.i.i ], [ %.06.i.i.i.ph, %.lr.ph.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i, align 4, !tbaa !199
  %i.am = getelementptr inbounds nuw i8, ptr %.06.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.am, %i.ad
  br i1 %.not.i.i.i, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i, !llvm.loop !355

bb.l:                                             ; preds = %bb.c
  %i.an = icmp eq i64 %2, %i.l
  br i1 %i.an, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ao = sub nuw i64 %2, %i.l
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.ao, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %.idx.i.i.i.i.i ; 3 uses
  %i.aq = shl i64 %2, 2
  %i.ar = add i64 %i.aq, -4
  %i.as = sub i64 %i.ar, %i.k                     ; 2 uses
  %i.at = lshr i64 %i.as, 2
  %i.au = add nuw nsw i64 %i.at, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.as, 28
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %bb.m
  %n.vec = and i64 %i.au, 9223372036854775800     ; 3 uses
  %i.av = shl i64 %n.vec, 2
  %i.aw = getelementptr i8, ptr %i.d, i64 %i.av
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ax = shl i64 %index, 2
  %next.gep = getelementptr i8, ptr %i.d, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %broadcast.splat, ptr %next.gep, align 4, !tbaa !199
  store <4 x i32> %broadcast.splat, ptr %i.ay, align 4, !tbaa !199
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !356

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.au, %n.vec
  br i1 %cmp.n, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %bb.m, %middle.block
  %.06.i.i.i.i.i.i.i.ph = phi ptr [ %i.d, %bb.m ], [ %i.aw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.06.i.i.i.i.i.i.i = phi ptr [ %i.ba, %.lr.ph.i.i.i.i.i.i.i ], [ %.06.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i.i.i.i.i, align 4, !tbaa !199
  %i.ba = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ba, %i.ap
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !357

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %bb.l
  %.0.i.i.i.i.i = phi ptr [ %i.d, %bb.l ], [ %i.ap, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ] ; 5 uses
  store ptr %.0.i.i.i.i.i, ptr %i.c, align 8, !tbaa !207
  %i.bb = icmp sgt i64 %i.k, 4
  br i1 %i.bb, label %bb.n, label %bb.o, !prof !253

bb.n:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %1, i64 %i.k, i1 false)
  %.pre = load ptr, ptr %i.c, align 8, !tbaa !207
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.o:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit
  %i.bc = icmp eq i64 %i.k, 4
  br i1 %i.bc, label %bb.p, label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

bb.p:                                             ; preds = %bb.o
  %i.bd = load i32, ptr %1, align 4, !tbaa !199
  store i32 %i.bd, ptr %.0.i.i.i.i.i, align 4, !tbaa !199
  br label %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69

_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69: ; preds = %bb.p, %bb.o, %bb.n
  %i.be = phi ptr [ %.0.i.i.i.i.i, %bb.p ], [ %.0.i.i.i.i.i, %bb.o ], [ %.pre, %bb.n ]
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.k
  store ptr %i.bf, ptr %i.c, align 8, !tbaa !207
  %.not5.i.i.i70 = icmp eq ptr %1, %i.d
  br i1 %.not5.i.i.i70, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader

.lr.ph.i.i.i71.preheader:                         ; preds = %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69
  %i.bg = add i64 %i.f, -4
  %i.bh = sub i64 %i.bg, %i.j                     ; 2 uses
  %i.bi = lshr i64 %i.bh, 2
  %i.bj = add nuw nsw i64 %i.bi, 1                ; 2 uses
  %min.iters.check113 = icmp ult i64 %i.bh, 28
  br i1 %min.iters.check113, label %.lr.ph.i.i.i71.preheader151, label %vector.ph114

vector.ph114:                                     ; preds = %.lr.ph.i.i.i71.preheader
  %n.vec115 = and i64 %i.bj, 9223372036854775800  ; 3 uses
  %i.bk = shl i64 %n.vec115, 2
  %i.bl = getelementptr i8, ptr %1, i64 %i.bk
  %broadcast.splatinsert116 = insertelement <4 x i32> poison, i32 %i.i, i64 0
  %broadcast.splat117 = shufflevector <4 x i32> %broadcast.splatinsert116, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body118

vector.body118:                                   ; preds = %vector.body118, %vector.ph114
  %index119 = phi i64 [ 0, %vector.ph114 ], [ %index.next121, %vector.body118 ] ; 2 uses
  %i.bm = shl i64 %index119, 2
  %next.gep120 = getelementptr i8, ptr %1, i64 %i.bm ; 2 uses
  %i.bn = getelementptr i8, ptr %next.gep120, i64 16
  store <4 x i32> %broadcast.splat117, ptr %next.gep120, align 4, !tbaa !199
  store <4 x i32> %broadcast.splat117, ptr %i.bn, align 4, !tbaa !199
  %index.next121 = add nuw i64 %index119, 8       ; 2 uses
  %i.bo = icmp eq i64 %index.next121, %n.vec115
  br i1 %i.bo, label %middle.block122, label %vector.body118, !llvm.loop !358

middle.block122:                                  ; preds = %vector.body118
  %cmp.n123 = icmp eq i64 %i.bj, %n.vec115
  br i1 %cmp.n123, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71.preheader151

.lr.ph.i.i.i71.preheader151:                      ; preds = %.lr.ph.i.i.i71.preheader, %middle.block122
  %.06.i.i.i72.ph = phi ptr [ %1, %.lr.ph.i.i.i71.preheader ], [ %i.bl, %middle.block122 ]
  br label %.lr.ph.i.i.i71

.lr.ph.i.i.i71:                                   ; preds = %.lr.ph.i.i.i71.preheader151, %.lr.ph.i.i.i71
  %.06.i.i.i72 = phi ptr [ %i.bp, %.lr.ph.i.i.i71 ], [ %.06.i.i.i72.ph, %.lr.ph.i.i.i71.preheader151 ] ; 2 uses
  store i32 %i.i, ptr %.06.i.i.i72, align 4, !tbaa !199
  %i.bp = getelementptr inbounds nuw i8, ptr %.06.i.i.i72, i64 4 ; 2 uses
  %.not.i.i.i73 = icmp eq ptr %i.bp, %i.d
  br i1 %.not.i.i.i73, label %_ZSt4fillIPjjEvT_S1_RKT0_.exit, label %.lr.ph.i.i.i71, !llvm.loop !359

bb.q:                                             ; preds = %bb.b
  %i.bq = load ptr, ptr %0, align 8, !tbaa !208   ; 5 uses
  %i.br = ptrtoint ptr %i.bq to i64               ; 2 uses
  %i.bs = sub i64 %i.f, %i.br
  %i.bt = ashr exact i64 %i.bs, 2                 ; 4 uses
  %i.bu = sub nsw i64 2305843009213693951, %i.bt
  %i.bv = icmp ult i64 %i.bu, %2
  br i1 %i.bv, label %bb.r, label %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit

bb.r:                                             ; preds = %bb.q
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.12) #13
  unreachable

_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit:    ; preds = %bb.q
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.bt, i64 %2)
  %i.bw = add nsw i64 %.sroa.speculated.i, %i.bt  ; 2 uses
  %i.bx = icmp ult i64 %i.bw, %i.bt
  %i.by = tail call i64 @llvm.umin.i64(i64 %i.bw, i64 2305843009213693951)
  %i.bz = select i1 %i.bx, i64 2305843009213693951, i64 %i.by ; 3 uses
  %i.ca = ptrtoint ptr %1 to i64                  ; 2 uses
  %i.cb = sub i64 %i.ca, %i.br                    ; 4 uses
  %.not.i = icmp eq i64 %i.bz, 0
  br i1 %.not.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.cc = shl nuw nsw i64 %i.bz, 2
  %i.cd = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cc) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit
  %i.ce = phi ptr [ %i.cd, %bb.s ], [ null, %_ZNKSt6vectorIjSaIjEE12_M_check_lenEmPKc.exit ] ; 5 uses
  %i.cf = getelementptr inbounds i8, ptr %i.ce, i64 %i.cb ; 5 uses
  %.idx.i.i.i.i.i75 = shl nuw nsw i64 %2, 2       ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.idx.i.i.i.i.i75
  %i.ch = load i32, ptr %3, align 4, !tbaa !199   ; 2 uses
  %i.ci = add nsw i64 %.idx.i.i.i.i.i75, -4       ; 2 uses
  %i.cj = lshr exact i64 %i.ci, 2
  %i.ck = add nuw nsw i64 %i.cj, 1                ; 2 uses
  %min.iters.check139 = icmp ult i64 %i.ci, 28
  br i1 %min.iters.check139, label %.lr.ph.i.i.i.i.i.i.i76.preheader, label %vector.ph140

vector.ph140:                                     ; preds = %bb.t
  %n.vec141 = and i64 %i.ck, 9223372036854775800  ; 3 uses
  %i.cl = shl i64 %n.vec141, 2
  %i.cm = getelementptr i8, ptr %i.cf, i64 %i.cl
  %broadcast.splatinsert142 = insertelement <4 x i32> poison, i32 %i.ch, i64 0
  %broadcast.splat143 = shufflevector <4 x i32> %broadcast.splatinsert142, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body144

vector.body144:                                   ; preds = %vector.body144, %vector.ph140
  %index145 = phi i64 [ 0, %vector.ph140 ], [ %index.next147, %vector.body144 ] ; 2 uses
  %i.cn = shl i64 %index145, 2
  %next.gep146 = getelementptr i8, ptr %i.cf, i64 %i.cn ; 2 uses
  %i.co = getelementptr i8, ptr %next.gep146, i64 16
  store <4 x i32> %broadcast.splat143, ptr %next.gep146, align 4, !tbaa !199
  store <4 x i32> %broadcast.splat143, ptr %i.co, align 4, !tbaa !199
  %index.next147 = add nuw i64 %index145, 8       ; 2 uses
  %i.cp = icmp eq i64 %index.next147, %n.vec141
  br i1 %i.cp, label %middle.block148, label %vector.body144, !llvm.loop !360

middle.block148:                                  ; preds = %vector.body144
  %cmp.n149 = icmp eq i64 %i.ck, %n.vec141
  br i1 %cmp.n149, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76.preheader

.lr.ph.i.i.i.i.i.i.i76.preheader:                 ; preds = %bb.t, %middle.block148
  %.06.i.i.i.i.i.i.i77.ph = phi ptr [ %i.cf, %bb.t ], [ %i.cm, %middle.block148 ]
  br label %.lr.ph.i.i.i.i.i.i.i76

.lr.ph.i.i.i.i.i.i.i76:                           ; preds = %.lr.ph.i.i.i.i.i.i.i76.preheader, %.lr.ph.i.i.i.i.i.i.i76
  %.06.i.i.i.i.i.i.i77 = phi ptr [ %i.cq, %.lr.ph.i.i.i.i.i.i.i76 ], [ %.06.i.i.i.i.i.i.i77.ph, %.lr.ph.i.i.i.i.i.i.i76.preheader ] ; 2 uses
  store i32 %i.ch, ptr %.06.i.i.i.i.i.i.i77, align 4, !tbaa !199
  %i.cq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i.i.i.i77, i64 4 ; 2 uses
  %.not.i.i.i.i.i.i.i78 = icmp eq ptr %i.cq, %i.cg
  br i1 %.not.i.i.i.i.i.i.i78, label %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80, label %.lr.ph.i.i.i.i.i.i.i76, !llvm.loop !361

_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80: ; preds = %.lr.ph.i.i.i.i.i.i.i76, %middle.block148
  %i.cr = icmp sgt i64 %i.cb, 4
  br i1 %i.cr, label %bb.u, label %bb.v, !prof !253

bb.u:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  tail call void @llvm.memmove.p0.p0.i64(ptr align 4 %i.ce, ptr align 4 %i.bq, i64 %i.cb, i1 false)
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.v:                                             ; preds = %_ZSt24__uninitialized_fill_n_aIPjmjjET_S1_T0_RKT1_RSaIT2_E.exit80
  %i.cs = icmp eq i64 %i.cb, 4
  br i1 %i.cs, label %bb.w, label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

bb.w:                                             ; preds = %bb.v
  %i.ct = load i32, ptr %i.bq, align 4, !tbaa !199
  store i32 %i.ct, ptr %i.ce, align 4, !tbaa !199
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit

_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit: ; preds = %bb.w, %bb.v, %bb.u
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.cf, i64 %2 ; 3 uses
  %i.cv = sub i64 %i.f, %i.ca                     ; 4 uses
  %i.cw = icmp sgt i64 %i.cv, 4
  br i1 %i.cw, label %bb.x, label %bb.y, !prof !253

bb.x:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cu, ptr align 4 %1, i64 %i.cv, i1 false)
  br label %bb.aa

bb.y:                                             ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit
  %i.cx = icmp eq i64 %i.cv, 4
  br i1 %i.cx, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.cy = load i32, ptr %1, align 4, !tbaa !199
  store i32 %i.cy, ptr %i.cu, align 4, !tbaa !199
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.x
  %i.cz = getelementptr inbounds i8, ptr %i.cu, i64 %i.cv
  %.not.i82 = icmp eq ptr %i.bq, null
  br i1 %.not.i82, label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  tail call void @_ZdlPv(ptr noundef nonnull %i.bq) #15
  br label %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit

_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit: ; preds = %bb.aa, %bb.ab
  store ptr %i.ce, ptr %0, align 8, !tbaa !208
  store ptr %i.cz, ptr %i.c, align 8, !tbaa !207
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %i.bz
  store ptr %i.da, ptr %i.a, align 8, !tbaa !362
  br label %_ZSt4fillIPjjEvT_S1_RKT0_.exit

_ZSt4fillIPjjEvT_S1_RKT0_.exit:                   ; preds = %.lr.ph.i.i.i71, %.lr.ph.i.i.i, %middle.block122, %middle.block135, %_ZSt22__uninitialized_move_aIPjS0_SaIjEET0_T_S3_S2_RT1_.exit69, %_ZNSt12_Vector_baseIjSaIjEE13_M_deallocateEPjm.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %.fr29 = freeze ptr %1                          ; 3 uses
  %.fr28 = freeze ptr %0                          ; 34 uses
  %i.a = ptrtoint ptr %.fr28 to i64               ; 3 uses
  %i.b = ptrtoint ptr %.fr29 to i64
  %i.c = sub i64 %i.b, %i.a                       ; 2 uses
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %.fr28, i64 4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 784 ; 5 uses
  %i.h = icmp eq i64 %2, 0
  br i1 %i.h, label %._crit_edge, label %.lr.ph56

bb.b:                                             ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit
  %i.i = icmp eq i64 %i.dp, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph56, !llvm.loop !363

._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.fr.i27.lcssa = phi i64 [ %i.c, %.lr.ph ], [ %i.fm, %bb.b ] ; 3 uses
  %storemerge25.lcssa = phi ptr [ %.fr29, %.lr.ph ], [ %.sroa.012.1.i.i, %bb.b ]
  %i.j = lshr i64 %.fr.i27.lcssa, 2               ; 2 uses
  %i.k = add nsw i64 %i.j, -2                     ; 2 uses
  %i.l = lshr i64 %i.k, 1                         ; 3 uses
  %i.m = add nsw i64 %i.j, -1
  %i.n = lshr i64 %i.m, 1                         ; 2 uses
  %i.o = and i64 %.fr.i27.lcssa, 4
  %i.p = icmp eq i64 %i.o, 0
  %i.q = or disjoint i64 %i.k, 1                  ; 2 uses
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.q
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.l
  br label %bb.c

bb.c:                                             ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i, %._crit_edge
  %.09.i.i = phi i64 [ %i.l, %._crit_edge ], [ %i.bj, %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i ] ; 8 uses
  %i.t = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.09.i.i
  %i.u = load i32, ptr %i.t, align 4, !tbaa !199  ; 2 uses
  %i.v = icmp slt i64 %.09.i.i, %i.n
  br i1 %i.v, label %.lr.ph.i.i.i, label %._crit_edge.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.w = load ptr, ptr %i.g, align 8, !tbaa !193  ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i
  %.036.i.i.i = phi i64 [ %.09.i.i, %.lr.ph.i.i.i ], [ %spec.select.i.i.i, %bb.d ] ; 2 uses
  %i.x = shl i64 %.036.i.i.i, 1                   ; 2 uses
  %i.y = add i64 %i.x, 2                          ; 2 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.y
  %i.aa = or disjoint i64 %i.x, 1                 ; 2 uses
  %i.ab = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.aa
  %i.ac = load i32, ptr %i.z, align 4, !tbaa !199
  %i.ad = tail call noundef i32 @llvm.abs.i32(i32 %i.ac, i1 true)
  %i.ae = zext nneg i32 %i.ad to i64
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !181
  %i.ah = load i32, ptr %i.ab, align 4, !tbaa !199
  %i.ai = tail call noundef i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.aj
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !181
  %i.am = icmp ult i64 %i.ag, %i.al
  %spec.select.i.i.i = select i1 %i.am, i64 %i.aa, i64 %i.y ; 4 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %spec.select.i.i.i
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !199
  %i.ap = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.036.i.i.i
  store i32 %i.ao, ptr %i.ap, align 4, !tbaa !199
  %i.aq = icmp slt i64 %spec.select.i.i.i, %i.n
  br i1 %i.aq, label %bb.d, label %._crit_edge.i.i.i, !llvm.loop !364

._crit_edge.i.i.i:                                ; preds = %bb.d, %bb.c
  %.0.lcssa.i.i.i = phi i64 [ %.09.i.i, %bb.c ], [ %spec.select.i.i.i, %bb.d ] ; 2 uses
  %i.ar = icmp eq i64 %.0.lcssa.i.i.i, %i.l
  %or.cond.i.i = select i1 %i.p, i1 %i.ar, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i.i
  %i.as = load i32, ptr %i.r, align 4, !tbaa !199
  store i32 %i.as, ptr %i.s, align 4, !tbaa !199
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %._crit_edge.i.i.i
  %.1.i.i.i = phi i64 [ %i.q, %bb.e ], [ %.0.lcssa.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.at = icmp sgt i64 %.1.i.i.i, %.09.i.i
  br i1 %i.at, label %.lr.ph.i.i.i.i15, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i

.lr.ph.i.i.i.i15:                                 ; preds = %bb.f
  %i.au = load ptr, ptr %i.g, align 8, !tbaa !193 ; 2 uses
  %i.av = tail call noundef i32 @llvm.abs.i32(i32 %i.u, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !181
  br label %bb.g

bb.g:                                             ; preds = %bb.h, %.lr.ph.i.i.i.i15
  %.019.i.i.i.i = phi i64 [ %.1.i.i.i, %.lr.ph.i.i.i.i15 ], [ %.0920.i.i.i.i, %bb.h ] ; 3 uses
  %.0920.in.i.i.i.i = add nsw i64 %.019.i.i.i.i, -1
  %.0920.i.i.i.i = sdiv i64 %.0920.in.i.i.i.i, 2  ; 4 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0920.i.i.i.i
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !199 ; 2 uses
  %i.bb = tail call noundef i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.au, i64 %i.bc
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !181
  %i.bf = icmp ult i64 %i.be, %i.ay
  br i1 %i.bf, label %bb.h, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i

bb.h:                                             ; preds = %bb.g
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.019.i.i.i.i
  store i32 %i.ba, ptr %i.bg, align 4, !tbaa !199
  %i.bh = icmp sgt i64 %.0920.i.i.i.i, %.09.i.i
  br i1 %i.bh, label %bb.g, label %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i, !llvm.loop !365

_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i: ; preds = %bb.h, %bb.g, %bb.f
  %.0.lcssa.i.i.i.i14 = phi i64 [ %.1.i.i.i, %bb.f ], [ %.0920.i.i.i.i, %bb.h ], [ %.019.i.i.i.i, %bb.g ]
  %i.bi = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i14
  store i32 %i.u, ptr %i.bi, align 4, !tbaa !199
  %.not.i.i = icmp eq i64 %.09.i.i, 0
  %i.bj = add nsw i64 %.09.i.i, -1
  br i1 %.not.i.i, label %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, label %bb.c, !llvm.loop !366

_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_SD_T1_T2_.exit.i.i
  %i.bk = icmp sgt i64 %.fr.i27.lcssa, 4
  br i1 %i.bk, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit

.lr.ph.i.i:                                       ; preds = %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i
  %.sroa.0.05.i.i = phi ptr [ %i.bl, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i ], [ %storemerge25.lcssa, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit ]
  %i.bl = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.bm = load i32, ptr %i.bl, align 4, !tbaa !199 ; 2 uses
  %i.bn = load i32, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.bn, ptr %i.bl, align 4, !tbaa !199
  %i.bo = ptrtoint ptr %i.bl to i64
  %i.bp = sub i64 %i.bo, %i.a                     ; 3 uses
  %i.bq = ashr exact i64 %i.bp, 2                 ; 3 uses
  %i.br = add nsw i64 %i.bq, -1
  %i.bs = lshr i64 %i.br, 1
  %i.bt = icmp sgt i64 %i.bq, 2
  br i1 %i.bt, label %.lr.ph.i.i.i.i, label %._crit_edge.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i
  %i.bu = load ptr, ptr %i.g, align 8, !tbaa !193 ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.lr.ph.i.i.i.i
  %.036.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %spec.select.i.i.i.i, %bb.i ] ; 2 uses
  %i.bv = shl i64 %.036.i.i.i.i, 1                ; 2 uses
  %i.bw = add i64 %i.bv, 2                        ; 2 uses
  %i.bx = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.bw
  %i.by = or disjoint i64 %i.bv, 1                ; 2 uses
  %i.bz = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %i.by
  %i.ca = load i32, ptr %i.bx, align 4, !tbaa !199
  %i.cb = tail call noundef i32 @llvm.abs.i32(i32 %i.ca, i1 true)
  %i.cc = zext nneg i32 %i.cb to i64
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.cc
  %i.ce = load i64, ptr %i.cd, align 8, !tbaa !181
  %i.cf = load i32, ptr %i.bz, align 4, !tbaa !199
  %i.cg = tail call noundef i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !181
  %i.ck = icmp ult i64 %i.ce, %i.cj
  %spec.select.i.i.i.i = select i1 %i.ck, i64 %i.by, i64 %i.bw ; 4 uses
  %i.cl = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %spec.select.i.i.i.i
  %i.cm = load i32, ptr %i.cl, align 4, !tbaa !199
  %i.cn = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.036.i.i.i.i
  store i32 %i.cm, ptr %i.cn, align 4, !tbaa !199
  %i.co = icmp slt i64 %spec.select.i.i.i.i, %i.bs
  br i1 %i.co, label %bb.i, label %._crit_edge.i.i.i.i, !llvm.loop !364

._crit_edge.i.i.i.i:                              ; preds = %bb.i, %.lr.ph.i.i
  %.0.lcssa.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %spec.select.i.i.i.i, %bb.i ] ; 5 uses
  %i.cp = and i64 %i.bp, 4
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.cr = add nsw i64 %i.bq, -2
  %i.cs = ashr exact i64 %i.cr, 1
  %i.ct = icmp eq i64 %.0.lcssa.i.i.i.i, %i.cs
  br i1 %i.ct, label %.thread.i.i.i, label %bb.k

.thread.i.i.i:                                    ; preds = %bb.j
  %i.cu = shl nuw nsw i64 %.0.lcssa.i.i.i.i, 1
  %i.cv = or disjoint i64 %i.cu, 1                ; 2 uses
  %i.cw = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.cv
  %i.cx = load i32, ptr %i.cw, align 4, !tbaa !199
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i
  store i32 %i.cx, ptr %i.cy, align 4, !tbaa !199
  br label %.lr.ph.i.i.i.i.i

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i
  %.not.i.i.i = icmp eq i64 %.0.lcssa.i.i.i.i, 0
  br i1 %.not.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.k, %.thread.i.i.i
  %.1.i7.i.i.i = phi i64 [ %i.cv, %.thread.i.i.i ], [ %.0.lcssa.i.i.i.i, %bb.k ]
  %i.cz = load ptr, ptr %i.g, align 8, !tbaa !193 ; 2 uses
  %i.da = tail call noundef i32 @llvm.abs.i32(i32 %i.bm, i1 true)
  %i.db = zext nneg i32 %i.da to i64
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.db
  %i.dd = load i64, ptr %i.dc, align 8, !tbaa !181
  br label %bb.l

bb.l:                                             ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %.019.i.i.i.i.i = phi i64 [ %.1.i7.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0920.i.i89.i.i.i, %bb.m ] ; 3 uses
  %.0920.in.i.i.i.i.i = add nsw i64 %.019.i.i.i.i.i, -1
  %.0920.i.i89.i.i.i = lshr i64 %.0920.in.i.i.i.i.i, 1 ; 3 uses
  %i.de = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %.0920.i.i89.i.i.i
  %i.df = load i32, ptr %i.de, align 4, !tbaa !199 ; 2 uses
  %i.dg = tail call noundef i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.cz, i64 %i.dh
  %i.dj = load i64, ptr %i.di, align 8, !tbaa !181
  %i.dk = icmp ult i64 %i.dj, %i.dd
  br i1 %i.dk, label %bb.m, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.dl = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.019.i.i.i.i.i
  store i32 %i.df, ptr %i.dl, align 4, !tbaa !199
  %.not10.i.i.i = icmp eq i64 %.0920.i.i89.i.i.i, 0
  br i1 %.not10.i.i.i, label %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i, label %bb.l, !llvm.loop !365

_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i: ; preds = %bb.m, %bb.l, %bb.k
  %.0.lcssa.i.i.i.i.i = phi i64 [ 0, %bb.k ], [ %.019.i.i.i.i.i, %bb.l ], [ 0, %bb.m ]
  %i.dm = getelementptr inbounds [4 x i8], ptr %.fr28, i64 %.0.lcssa.i.i.i.i.i
  store i32 %i.bm, ptr %i.dm, align 4, !tbaa !199
  %i.dn = icmp sgt i64 %i.bp, 4
  br i1 %i.dn, label %.lr.ph.i.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, !llvm.loop !367

.lr.ph56:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2555 = phi ptr [ %.sroa.012.1.i.i, %bb.b ], [ %.fr29, %.lr.ph ] ; 3 uses
  %.02654 = phi i64 [ %i.dp, %bb.b ], [ %2, %.lr.ph ]
  %i.do = phi i64 [ %i.fn, %bb.b ], [ %i.d, %.lr.ph ]
  %i.dp = add nsw i64 %.02654, -1                 ; 3 uses
  %i.dq = lshr i64 %i.do, 1
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %.fr28, i64 %i.dq ; 3 uses
  %i.ds = getelementptr inbounds i8, ptr %storemerge2555, i64 -4 ; 3 uses
  %i.dt = load i32, ptr %i.f, align 4, !tbaa !199 ; 3 uses
  %i.du = tail call noundef i32 @llvm.abs.i32(i32 %i.dt, i1 true)
  %i.dv = zext nneg i32 %i.du to i64
  %i.dw = load ptr, ptr %i.g, align 8, !tbaa !193 ; 6 uses
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.dv
  %i.dy = load i64, ptr %i.dx, align 8, !tbaa !181 ; 3 uses
  %i.dz = load i32, ptr %i.dr, align 4, !tbaa !199 ; 3 uses
  %i.ea = tail call noundef i32 @llvm.abs.i32(i32 %i.dz, i1 true)
  %i.eb = zext nneg i32 %i.ea to i64
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eb
  %i.ed = load i64, ptr %i.ec, align 8, !tbaa !181 ; 3 uses
  %i.ee = icmp ult i64 %i.dy, %i.ed
  %i.ef = load i32, ptr %i.ds, align 4, !tbaa !199 ; 3 uses
  %i.eg = tail call noundef i32 @llvm.abs.i32(i32 %i.ef, i1 true)
  %i.eh = zext nneg i32 %i.eg to i64
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eh
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !181 ; 4 uses
  br i1 %i.ee, label %bb.n, label %bb.s

bb.n:                                             ; preds = %.lr.ph56
  %i.ek = icmp ult i64 %i.ed, %i.ej
  br i1 %i.ek, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.el = load i32, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.dz, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.el, ptr %i.dr, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.p:                                             ; preds = %bb.n
  %i.em = icmp ult i64 %i.dy, %i.ej
  %i.en = load i32, ptr %.fr28, align 4, !tbaa !199 ; 2 uses
  br i1 %i.em, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store i32 %i.ef, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.en, ptr %i.ds, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.r:                                             ; preds = %bb.p
  store i32 %i.dt, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.en, ptr %i.f, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.s:                                             ; preds = %.lr.ph56
  %i.eo = icmp ult i64 %i.dy, %i.ej
  br i1 %i.eo, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.ep = load i32, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.dt, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.ep, ptr %i.f, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.u:                                             ; preds = %bb.s
  %i.eq = icmp ult i64 %i.ed, %i.ej
  %i.er = load i32, ptr %.fr28, align 4, !tbaa !199 ; 2 uses
  br i1 %i.eq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  store i32 %i.ef, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.er, ptr %i.ds, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

bb.w:                                             ; preds = %bb.u
  store i32 %i.dz, ptr %.fr28, align 4, !tbaa !199
  store i32 %i.er, ptr %i.dr, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader: ; preds = %bb.w, %bb.v, %bb.t, %bb.r, %bb.q, %bb.o
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader, %bb.z
  %.sroa.09.0.i.i = phi ptr [ %.sroa.09.1.i.i, %bb.z ], [ %storemerge2555, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %.sroa.012.0.i.i = phi ptr [ %i.fd, %bb.z ], [ %i.f, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i.preheader ]
  %i.es = load i32, ptr %.fr28, align 4, !tbaa !199
  %i.et = tail call noundef i32 @llvm.abs.i32(i32 %i.es, i1 true)
  %i.eu = zext nneg i32 %i.et to i64
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.eu
  %i.ew = load i64, ptr %i.ev, align 8, !tbaa !181 ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i
  %.sroa.012.1.i.i = phi ptr [ %.sroa.012.0.i.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i ], [ %i.fd, %bb.x ] ; 8 uses
  %i.ex = load i32, ptr %.sroa.012.1.i.i, align 4, !tbaa !199 ; 2 uses
  %i.ey = tail call noundef i32 @llvm.abs.i32(i32 %i.ex, i1 true)
  %i.ez = zext nneg i32 %i.ey to i64
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.ez
  %i.fb = load i64, ptr %i.fa, align 8, !tbaa !181
  %i.fc = icmp ult i64 %i.fb, %i.ew
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i.i, i64 4 ; 2 uses
  br i1 %i.fc, label %bb.x, label %.preheader.i.i, !llvm.loop !368

.preheader.i.i:                                   ; preds = %bb.x, %.preheader.i.i
  %.sroa.09.0.pn.i.i = phi ptr [ %.sroa.09.1.i.i, %.preheader.i.i ], [ %.sroa.09.0.i.i, %bb.x ]
  %.sroa.09.1.i.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i.i, i64 -4 ; 5 uses
  %i.fe = load i32, ptr %.sroa.09.1.i.i, align 4, !tbaa !199 ; 2 uses
  %i.ff = tail call noundef i32 @llvm.abs.i32(i32 %i.fe, i1 true)
  %i.fg = zext nneg i32 %i.ff to i64
  %i.fh = getelementptr inbounds nuw [8 x i8], ptr %i.dw, i64 %i.fg
  %i.fi = load i64, ptr %i.fh, align 8, !tbaa !181
  %i.fj = icmp ult i64 %i.ew, %i.fi
  br i1 %i.fj, label %.preheader.i.i, label %bb.y, !llvm.loop !369

bb.y:                                             ; preds = %.preheader.i.i
  %i.fk = icmp ult ptr %.sroa.012.1.i.i, %.sroa.09.1.i.i
  br i1 %i.fk, label %bb.z, label %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit

bb.z:                                             ; preds = %bb.y
  store i32 %i.fe, ptr %.sroa.012.1.i.i, align 4, !tbaa !199
  store i32 %i.ex, ptr %.sroa.09.1.i.i, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_SC_T0_.exit.i, !llvm.loop !370

_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit: ; preds = %bb.y
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_T1_(ptr nonnull %.sroa.012.1.i.i, ptr %storemerge2555, i64 noundef %i.dp, ptr %3)
  %i.fl = ptrtoint ptr %.sroa.012.1.i.i to i64
  %i.fm = sub i64 %i.fl, %i.a                     ; 2 uses
  %i.fn = ashr exact i64 %i.fm, 2                 ; 2 uses
  %i.fo = icmp sgt i64 %i.fn, 16
  br i1 %i.fo, label %bb.b, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit, !llvm.loop !363

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit: ; preds = %_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEET_SC_SC_T0_.exit, %_ZSt10__pop_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_RT0_.exit.i.i, %bb.a, %_ZSt13__heap_selectIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_SC_T0_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 784 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !199 ; 2 uses
  %i.g = tail call noundef i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !193  ; 4 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.h
  %i.k = load i64, ptr %i.j, align 8, !tbaa !181  ; 3 uses
  %i.l = load i32, ptr %0, align 4, !tbaa !199    ; 2 uses
  %i.m = tail call noundef i32 @llvm.abs.i32(i32 %i.l, i1 true)
  %i.n = zext nneg i32 %i.m to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.n
  %i.p = load i64, ptr %i.o, align 8, !tbaa !181
  %i.q = icmp ult i64 %i.k, %i.p
  br i1 %i.q, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.r = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.r, label %bb.d, label %bb.e, !prof !253

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.l, ptr %i.s, align 4, !tbaa !199
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.t = load i32, ptr %.pn20.i, align 4, !tbaa !199 ; 2 uses
  %i.u = tail call noundef i32 @llvm.abs.i32(i32 %i.t, i1 true)
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.v
  %i.x = load i64, ptr %i.w, align 8, !tbaa !181
  %i.y = icmp ult i64 %i.k, %i.x
  br i1 %i.y, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.z = phi i32 [ %i.aa, %.lr.ph.i.i ], [ %i.t, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.z, ptr %.sroa.05.09.i.i, align 4, !tbaa !199
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.aa = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !199 ; 2 uses
  %i.ab = tail call noundef i32 @llvm.abs.i32(i32 %i.aa, i1 true)
  %i.ac = zext nneg i32 %i.ab to i64
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.ac
  %i.ae = load i64, ptr %i.ad, align 8, !tbaa !181
  %i.af = icmp ult i64 %i.k, %i.ae
  br i1 %i.af, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !371

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !199
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !372

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.ag, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit
  %i.ah = load ptr, ptr %i.e, align 8, !tbaa !193 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i, %.lr.ph.i10
  %.sroa.0.08.i = phi ptr [ %i.ag, %.lr.ph.i10 ], [ %i.ba, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i ] ; 5 uses
  %i.ai = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !199 ; 2 uses
  %i.aj = tail call noundef i32 @llvm.abs.i32(i32 %i.ai, i1 true)
  %i.ak = zext nneg i32 %i.aj to i64
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8, !tbaa !181 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.an = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !199 ; 2 uses
  %i.ao = tail call noundef i32 @llvm.abs.i32(i32 %i.an, i1 true)
  %i.ap = zext nneg i32 %i.ao to i64
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.ap
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !181
  %i.as = icmp ult i64 %i.am, %i.ar
  br i1 %i.as, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %bb.g, %.lr.ph.i.i12
  %i.at = phi i32 [ %i.au, %.lr.ph.i.i12 ], [ %i.an, %bb.g ]
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %bb.g ]
  store i32 %i.at, ptr %.sroa.05.09.i.i14, align 4, !tbaa !199
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -4 ; 2 uses
  %i.au = load i32, ptr %.sroa.0.0.i.i15, align 4, !tbaa !199 ; 2 uses
  %i.av = tail call noundef i32 @llvm.abs.i32(i32 %i.au, i1 true)
  %i.aw = zext nneg i32 %i.av to i64
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aw
  %i.ay = load i64, ptr %i.ax, align 8, !tbaa !181
  %i.az = icmp ult i64 %i.am, %i.ay
  br i1 %i.az, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i, !llvm.loop !371

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %bb.g ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i32 %i.ai, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !199
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i11 = icmp eq ptr %i.ba, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %bb.g, !llvm.loop !373

bb.h:                                             ; preds = %bb.a
  %i.bb = icmp eq ptr %0, %1
  br i1 %i.bb, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.h
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 784
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, %.lr.ph.i19
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.018.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 6 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 4 uses
  %i.bd = load i32, ptr %.sroa.0.021.i20, align 4, !tbaa !199 ; 2 uses
  %i.be = tail call noundef i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = load ptr, ptr %i.bc, align 8, !tbaa !193 ; 4 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bf
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !181 ; 3 uses
  %i.bj = load i32, ptr %0, align 4, !tbaa !199   ; 2 uses
  %i.bk = tail call noundef i32 @llvm.abs.i32(i32 %i.bj, i1 true)
  %i.bl = zext nneg i32 %i.bk to i64
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.bl
  %i.bn = load i64, ptr %i.bm, align 8, !tbaa !181
  %i.bo = icmp ult i64 %i.bi, %i.bn
  br i1 %i.bo, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.bp = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.bq = sub i64 %i.bp, %i.b                     ; 3 uses
  %i.br = ashr exact i64 %i.bq, 2                 ; 2 uses
  %i.bs = icmp sgt i64 %i.br, 1
  br i1 %i.bs, label %bb.k, label %bb.l, !prof !253

bb.k:                                             ; preds = %bb.j
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.bu = sub nsw i64 0, %i.br
  %i.bv = getelementptr inbounds [4 x i8], ptr %i.bt, i64 %i.bu
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.bv, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.bq, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %bb.j
  %i.bw = icmp eq i64 %i.bq, 4
  br i1 %i.bw, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.m:                                             ; preds = %bb.l
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 4
  store i32 %i.bj, ptr %i.bx, align 4, !tbaa !199
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.n:                                             ; preds = %bb.i
  %i.by = load i32, ptr %.pn20.i21, align 4, !tbaa !199 ; 2 uses
  %i.bz = tail call noundef i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ca
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !181
  %i.cd = icmp ult i64 %i.bi, %i.cc
  br i1 %i.cd, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.n, %.lr.ph.i.i26
  %i.ce = phi i32 [ %i.cf, %.lr.ph.i.i26 ], [ %i.by, %bb.n ]
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.n ]
  store i32 %i.ce, ptr %.sroa.05.09.i.i28, align 4, !tbaa !199
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -4 ; 2 uses
  %i.cf = load i32, ptr %.sroa.0.0.i.i29, align 4, !tbaa !199 ; 2 uses
  %i.cg = tail call noundef i32 @llvm.abs.i32(i32 %i.cf, i1 true)
  %i.ch = zext nneg i32 %i.cg to i64
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bg, i64 %i.ch
  %i.cj = load i64, ptr %i.ci, align 8, !tbaa !181
  %i.ck = icmp ult i64 %i.bi, %i.cj
  br i1 %i.ck, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !371

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i23 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.021.i20, %bb.n ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store i32 %i.bd, ptr %.sink.i23, align 4, !tbaa !199
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 4 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !372

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_T0_.exit.i, %.preheader.i16, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL22analyze_bumped_smallerEEEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_T1_(ptr %0, ptr %1, i64 noundef %2, ptr %3) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %0 to i64                   ; 3 uses
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub i64 %i.b, %i.a
  %i.d = ashr exact i64 %i.c, 2                   ; 2 uses
  %i.e = icmp sgt i64 %i.d, 16
  br i1 %i.e, label %.lr.ph.preheader, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_T0_.exit

.lr.ph.preheader:                                 ; preds = %bb.a
  %i.f = icmp eq i64 %2, 0
  br i1 %i.f, label %.lr.ph._crit_edge, label %.lr.ph34

.lr.ph:                                           ; preds = %.lr.ph34
  %i.g = icmp eq i64 %i.t, 0
  br i1 %i.g, label %.lr.ph._crit_edge, label %.lr.ph34, !llvm.loop !374

.lr.ph._crit_edge:                                ; preds = %.lr.ph, %.lr.ph.preheader
  %.lcssa = phi i64 [ %i.d, %.lr.ph.preheader ], [ %i.x, %.lr.ph ] ; 2 uses
  %storemerge20.lcssa = phi ptr [ %1, %.lr.ph.preheader ], [ %i.u, %.lr.ph ]
  %i.h = add nsw i64 %.lcssa, -2
  %i.i = lshr i64 %i.h, 1
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph._crit_edge
  %.09.i.i.i = phi i64 [ %i.i, %.lr.ph._crit_edge ], [ %i.l, %bb.b ] ; 4 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %.09.i.i.i
  %i.k = load i32, ptr %i.j, align 4, !tbaa !199
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa, i32 noundef %i.k, ptr %3)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.l = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.b, !llvm.loop !375

.lr.ph.i9.i:                                      ; preds = %bb.b, %.lr.ph.i9.i
  %.sroa.0.05.i.i = phi ptr [ %i.m, %.lr.ph.i9.i ], [ %storemerge20.lcssa, %bb.b ]
  %i.m = getelementptr inbounds i8, ptr %.sroa.0.05.i.i, i64 -4 ; 4 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !199
  %i.o = load i32, ptr %0, align 4, !tbaa !199
  store i32 %i.o, ptr %i.m, align 4, !tbaa !199
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.a                       ; 2 uses
  %i.r = ashr exact i64 %i.q, 2
  tail call void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_T2_(ptr nonnull %0, i64 noundef 0, i64 noundef %i.r, i32 noundef %i.n, ptr %3)
  %i.s = icmp sgt i64 %i.q, 4
  br i1 %i.s, label %.lr.ph.i9.i, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_T0_.exit, !llvm.loop !376

.lr.ph34:                                         ; preds = %.lr.ph.preheader, %.lr.ph
  %storemerge2033 = phi ptr [ %i.u, %.lr.ph ], [ %1, %.lr.ph.preheader ] ; 2 uses
  %.02132 = phi i64 [ %i.t, %.lr.ph ], [ %2, %.lr.ph.preheader ]
  %i.t = add nsw i64 %.02132, -1                  ; 3 uses
  %i.u = tail call ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEET_SC_SC_T0_(ptr %0, ptr %storemerge2033, ptr %3) ; 4 uses
  tail call void @_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEElNS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_T1_(ptr %i.u, ptr %storemerge2033, i64 noundef %i.t, ptr %3)
  %i.v = ptrtoint ptr %i.u to i64
  %i.w = sub i64 %i.v, %i.a
  %i.x = ashr exact i64 %i.w, 2                   ; 2 uses
  %i.y = icmp sgt i64 %i.x, 16
  br i1 %i.y, label %.lr.ph, label %_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_T0_.exit, !llvm.loop !374

_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_T0_.exit: ; preds = %.lr.ph34, %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt22__final_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64                   ; 2 uses
  %i.c = sub i64 %i.a, %i.b
  %i.d = icmp sgt i64 %i.c, 64
  br i1 %i.d, label %.lr.ph.i, label %bb.h

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 712 ; 2 uses
  %scevgep = getelementptr i8, ptr %0, i64 4
  br label %bb.b

bb.b:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, %.lr.ph.i
  %.sroa.0.021.i.idx = phi i64 [ 4, %.lr.ph.i ], [ %.sroa.0.021.i.add, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 4 uses
  %.pn20.i = phi ptr [ %0, %.lr.ph.i ], [ %.sroa.0.021.i.ptr, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i ] ; 3 uses
  %.sroa.0.021.i.ptr = getelementptr inbounds nuw i8, ptr %0, i64 %.sroa.0.021.i.idx ; 4 uses
  %i.f = load i32, ptr %.sroa.0.021.i.ptr, align 4, !tbaa !199 ; 2 uses
  %i.g = tail call noundef i32 @llvm.abs.i32(i32 %i.f, i1 true)
  %i.h = zext nneg i32 %i.g to i64
  %i.i = load ptr, ptr %i.e, align 8, !tbaa !218  ; 4 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.h ; 3 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !220
  %i.l = sext i32 %i.k to i64
  %i.m = shl nsw i64 %i.l, 32
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 4 ; 2 uses
  %i.o = load i32, ptr %i.n, align 4, !tbaa !232
  %i.p = sext i32 %i.o to i64
  %i.q = or i64 %i.m, %i.p                        ; 2 uses
  %i.r = load i32, ptr %0, align 4, !tbaa !199    ; 2 uses
  %i.s = tail call noundef i32 @llvm.abs.i32(i32 %i.r, i1 true)
  %i.t = zext nneg i32 %i.s to i64
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.t ; 2 uses
  %i.v = load i32, ptr %i.u, align 8, !tbaa !220
  %i.w = sext i32 %i.v to i64
  %i.x = shl nsw i64 %i.w, 32
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 4
  %i.z = load i32, ptr %i.y, align 4, !tbaa !232
  %i.aa = sext i32 %i.z to i64
  %i.ab = or i64 %i.x, %i.aa
  %i.ac = icmp ugt i64 %i.q, %i.ab
  br i1 %i.ac, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.ad = icmp samesign ugt i64 %.sroa.0.021.i.idx, 4
  br i1 %i.ad, label %bb.d, label %bb.e, !prof !253

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %scevgep, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %.sroa.0.021.i.idx, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.e:                                             ; preds = %bb.c
  %i.ae = getelementptr inbounds nuw i8, ptr %.pn20.i, i64 4
  store i32 %i.r, ptr %i.ae, align 4, !tbaa !199
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

bb.f:                                             ; preds = %bb.b
  %i.af = load i32, ptr %.pn20.i, align 4, !tbaa !199 ; 2 uses
  %i.ag = tail call noundef i32 @llvm.abs.i32(i32 %i.af, i1 true)
  %i.ah = zext nneg i32 %i.ag to i64
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ah ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8, !tbaa !220
  %i.ak = sext i32 %i.aj to i64
  %i.al = shl nsw i64 %i.ak, 32
  %i.am = getelementptr inbounds nuw i8, ptr %i.ai, i64 4
  %i.an = load i32, ptr %i.am, align 4, !tbaa !232
  %i.ao = sext i32 %i.an to i64
  %i.ap = or i64 %i.al, %i.ao
  %i.aq = icmp ugt i64 %i.q, %i.ap
  br i1 %i.aq, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.lr.ph.i.i
  %i.ar = phi i32 [ %i.ay, %.lr.ph.i.i ], [ %i.af, %bb.f ]
  %.sroa.0.010.i.i = phi ptr [ %.sroa.0.0.i.i, %.lr.ph.i.i ], [ %.pn20.i, %bb.f ] ; 3 uses
  %.sroa.05.09.i.i = phi ptr [ %.sroa.0.010.i.i, %.lr.ph.i.i ], [ %.sroa.0.021.i.ptr, %bb.f ]
  store i32 %i.ar, ptr %.sroa.05.09.i.i, align 4, !tbaa !199
  %.sroa.0.0.i.i = getelementptr inbounds i8, ptr %.sroa.0.010.i.i, i64 -4 ; 2 uses
  %i.as = load i32, ptr %i.j, align 8, !tbaa !220
  %i.at = sext i32 %i.as to i64
  %i.au = shl nsw i64 %i.at, 32
  %i.av = load i32, ptr %i.n, align 4, !tbaa !232
  %i.aw = sext i32 %i.av to i64
  %i.ax = or i64 %i.au, %i.aw
  %i.ay = load i32, ptr %.sroa.0.0.i.i, align 4, !tbaa !199 ; 2 uses
  %i.az = tail call noundef i32 @llvm.abs.i32(i32 %i.ay, i1 true)
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = getelementptr inbounds nuw [16 x i8], ptr %i.i, i64 %i.ba ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !220
  %i.bd = sext i32 %i.bc to i64
  %i.be = shl nsw i64 %i.bd, 32
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 4
  %i.bg = load i32, ptr %i.bf, align 4, !tbaa !232
  %i.bh = sext i32 %i.bg to i64
  %i.bi = or i64 %i.be, %i.bh
  %i.bj = icmp ugt i64 %i.ax, %i.bi
  br i1 %i.bj, label %.lr.ph.i.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !377

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i: ; preds = %.lr.ph.i.i, %bb.f, %bb.e, %bb.d
  %.sink.i = phi ptr [ %0, %bb.e ], [ %0, %bb.d ], [ %.sroa.0.021.i.ptr, %bb.f ], [ %.sroa.0.010.i.i, %.lr.ph.i.i ]
  store i32 %i.f, ptr %.sink.i, align 4, !tbaa !199
  %.sroa.0.021.i.add = add nuw nsw i64 %.sroa.0.021.i.idx, 4 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.021.i.add, 64
  br i1 %.not.i, label %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit, label %bb.b, !llvm.loop !378

_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.not7.i = icmp eq ptr %i.bk, %1
  br i1 %.not7.i, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit, label %.lr.ph.i10

.lr.ph.i10:                                       ; preds = %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit
  %i.bl = load ptr, ptr %i.e, align 8, !tbaa !218 ; 3 uses
  br label %bb.g

bb.g:                                             ; preds = %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_.exit.i, %.lr.ph.i10
  %.sroa.0.08.i = phi ptr [ %i.bk, %.lr.ph.i10 ], [ %i.dc, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_.exit.i ] ; 5 uses
  %i.bm = load i32, ptr %.sroa.0.08.i, align 4, !tbaa !199 ; 2 uses
  %i.bn = tail call noundef i32 @llvm.abs.i32(i32 %i.bm, i1 true)
  %i.bo = zext nneg i32 %i.bn to i64
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bo ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 4 ; 2 uses
  %.sroa.0.08.i.i = getelementptr inbounds i8, ptr %.sroa.0.08.i, i64 -4 ; 2 uses
  %i.br = load i32, ptr %i.bp, align 8, !tbaa !220
  %i.bs = sext i32 %i.br to i64
  %i.bt = shl nsw i64 %i.bs, 32
  %i.bu = load i32, ptr %i.bq, align 4, !tbaa !232
  %i.bv = sext i32 %i.bu to i64
  %i.bw = or i64 %i.bt, %i.bv
  %i.bx = load i32, ptr %.sroa.0.08.i.i, align 4, !tbaa !199 ; 2 uses
  %i.by = tail call noundef i32 @llvm.abs.i32(i32 %i.bx, i1 true)
  %i.bz = zext nneg i32 %i.by to i64
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.bz ; 2 uses
  %i.cb = load i32, ptr %i.ca, align 8, !tbaa !220
  %i.cc = sext i32 %i.cb to i64
  %i.cd = shl nsw i64 %i.cc, 32
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ca, i64 4
  %i.cf = load i32, ptr %i.ce, align 4, !tbaa !232
  %i.cg = sext i32 %i.cf to i64
  %i.ch = or i64 %i.cd, %i.cg
  %i.ci = icmp ugt i64 %i.bw, %i.ch
  br i1 %i.ci, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_.exit.i

.lr.ph.i.i12:                                     ; preds = %bb.g, %.lr.ph.i.i12
  %i.cj = phi i32 [ %i.cq, %.lr.ph.i.i12 ], [ %i.bx, %bb.g ]
  %.sroa.0.010.i.i13 = phi ptr [ %.sroa.0.0.i.i15, %.lr.ph.i.i12 ], [ %.sroa.0.08.i.i, %bb.g ] ; 3 uses
  %.sroa.05.09.i.i14 = phi ptr [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ], [ %.sroa.0.08.i, %bb.g ]
  store i32 %i.cj, ptr %.sroa.05.09.i.i14, align 4, !tbaa !199
  %.sroa.0.0.i.i15 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i13, i64 -4 ; 2 uses
  %i.ck = load i32, ptr %i.bp, align 8, !tbaa !220
  %i.cl = sext i32 %i.ck to i64
  %i.cm = shl nsw i64 %i.cl, 32
  %i.cn = load i32, ptr %i.bq, align 4, !tbaa !232
  %i.co = sext i32 %i.cn to i64
  %i.cp = or i64 %i.cm, %i.co
  %i.cq = load i32, ptr %.sroa.0.0.i.i15, align 4, !tbaa !199 ; 2 uses
  %i.cr = tail call noundef i32 @llvm.abs.i32(i32 %i.cq, i1 true)
  %i.cs = zext nneg i32 %i.cr to i64
  %i.ct = getelementptr inbounds nuw [16 x i8], ptr %i.bl, i64 %i.cs ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8, !tbaa !220
  %i.cv = sext i32 %i.cu to i64
  %i.cw = shl nsw i64 %i.cv, 32
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ct, i64 4
  %i.cy = load i32, ptr %i.cx, align 4, !tbaa !232
  %i.cz = sext i32 %i.cy to i64
  %i.da = or i64 %i.cw, %i.cz
  %i.db = icmp ugt i64 %i.cp, %i.da
  br i1 %i.db, label %.lr.ph.i.i12, label %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_.exit.i, !llvm.loop !377

_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_.exit.i: ; preds = %.lr.ph.i.i12, %bb.g
  %.sroa.05.0.lcssa.i.i = phi ptr [ %.sroa.0.08.i, %bb.g ], [ %.sroa.0.010.i.i13, %.lr.ph.i.i12 ]
  store i32 %i.bm, ptr %.sroa.05.0.lcssa.i.i, align 4, !tbaa !199
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i, i64 4 ; 2 uses
  %.not.i11 = icmp eq ptr %i.dc, %1
  br i1 %.not.i11, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit, label %bb.g, !llvm.loop !379

bb.h:                                             ; preds = %bb.a
  %i.dd = icmp eq ptr %0, %1
  br i1 %i.dd, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit, label %.preheader.i16

.preheader.i16:                                   ; preds = %bb.h
  %.sroa.0.018.i17 = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not19.i18 = icmp eq ptr %.sroa.0.018.i17, %1
  br i1 %.not19.i18, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit, label %.lr.ph.i19

.lr.ph.i19:                                       ; preds = %.preheader.i16
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 712
  br label %bb.i

bb.i:                                             ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, %.lr.ph.i19
  %.sroa.0.021.i20 = phi ptr [ %.sroa.0.018.i17, %.lr.ph.i19 ], [ %.sroa.0.0.i24, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 6 uses
  %.pn20.i21 = phi ptr [ %0, %.lr.ph.i19 ], [ %.sroa.0.021.i20, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22 ] ; 4 uses
  %i.df = load i32, ptr %.sroa.0.021.i20, align 4, !tbaa !199 ; 2 uses
  %i.dg = tail call noundef i32 @llvm.abs.i32(i32 %i.df, i1 true)
  %i.dh = zext nneg i32 %i.dg to i64
  %i.di = load ptr, ptr %i.de, align 8, !tbaa !218 ; 4 uses
  %i.dj = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dh ; 3 uses
  %i.dk = load i32, ptr %i.dj, align 8, !tbaa !220
  %i.dl = sext i32 %i.dk to i64
  %i.dm = shl nsw i64 %i.dl, 32
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dj, i64 4 ; 2 uses
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !232
  %i.dp = sext i32 %i.do to i64
  %i.dq = or i64 %i.dm, %i.dp                     ; 2 uses
  %i.dr = load i32, ptr %0, align 4, !tbaa !199   ; 2 uses
  %i.ds = tail call noundef i32 @llvm.abs.i32(i32 %i.dr, i1 true)
  %i.dt = zext nneg i32 %i.ds to i64
  %i.du = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.dt ; 2 uses
  %i.dv = load i32, ptr %i.du, align 8, !tbaa !220
  %i.dw = sext i32 %i.dv to i64
  %i.dx = shl nsw i64 %i.dw, 32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.du, i64 4
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !232
  %i.ea = sext i32 %i.dz to i64
  %i.eb = or i64 %i.dx, %i.ea
  %i.ec = icmp ugt i64 %i.dq, %i.eb
  br i1 %i.ec, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.ed = ptrtoint ptr %.sroa.0.021.i20 to i64
  %i.ee = sub i64 %i.ed, %i.b                     ; 3 uses
  %i.ef = ashr exact i64 %i.ee, 2                 ; 2 uses
  %i.eg = icmp sgt i64 %i.ef, 1
  br i1 %i.eg, label %bb.k, label %bb.l, !prof !253

bb.k:                                             ; preds = %bb.j
  %i.eh = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 8
  %i.ei = sub nsw i64 0, %i.ef
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.ei
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ej, ptr noundef nonnull align 4 dereferenceable(1) %0, i64 %i.ee, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.l:                                             ; preds = %bb.j
  %i.ek = icmp eq i64 %i.ee, 4
  br i1 %i.ek, label %bb.m, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.m:                                             ; preds = %bb.l
  %i.el = getelementptr inbounds nuw i8, ptr %.pn20.i21, i64 4
  store i32 %i.dr, ptr %i.el, align 4, !tbaa !199
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

bb.n:                                             ; preds = %bb.i
  %i.em = load i32, ptr %.pn20.i21, align 4, !tbaa !199 ; 2 uses
  %i.en = tail call noundef i32 @llvm.abs.i32(i32 %i.em, i1 true)
  %i.eo = zext nneg i32 %i.en to i64
  %i.ep = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.eo ; 2 uses
  %i.eq = load i32, ptr %i.ep, align 8, !tbaa !220
  %i.er = sext i32 %i.eq to i64
  %i.es = shl nsw i64 %i.er, 32
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 4
  %i.eu = load i32, ptr %i.et, align 4, !tbaa !232
  %i.ev = sext i32 %i.eu to i64
  %i.ew = or i64 %i.es, %i.ev
  %i.ex = icmp ugt i64 %i.dq, %i.ew
  br i1 %i.ex, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22

.lr.ph.i.i26:                                     ; preds = %bb.n, %.lr.ph.i.i26
  %i.ey = phi i32 [ %i.ff, %.lr.ph.i.i26 ], [ %i.em, %bb.n ]
  %.sroa.0.010.i.i27 = phi ptr [ %.sroa.0.0.i.i29, %.lr.ph.i.i26 ], [ %.pn20.i21, %bb.n ] ; 3 uses
  %.sroa.05.09.i.i28 = phi ptr [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ], [ %.sroa.0.021.i20, %bb.n ]
  store i32 %i.ey, ptr %.sroa.05.09.i.i28, align 4, !tbaa !199
  %.sroa.0.0.i.i29 = getelementptr inbounds i8, ptr %.sroa.0.010.i.i27, i64 -4 ; 2 uses
  %i.ez = load i32, ptr %i.dj, align 8, !tbaa !220
  %i.fa = sext i32 %i.ez to i64
  %i.fb = shl nsw i64 %i.fa, 32
  %i.fc = load i32, ptr %i.dn, align 4, !tbaa !232
  %i.fd = sext i32 %i.fc to i64
  %i.fe = or i64 %i.fb, %i.fd
  %i.ff = load i32, ptr %.sroa.0.0.i.i29, align 4, !tbaa !199 ; 2 uses
  %i.fg = tail call noundef i32 @llvm.abs.i32(i32 %i.ff, i1 true)
  %i.fh = zext nneg i32 %i.fg to i64
  %i.fi = getelementptr inbounds nuw [16 x i8], ptr %i.di, i64 %i.fh ; 2 uses
  %i.fj = load i32, ptr %i.fi, align 8, !tbaa !220
  %i.fk = sext i32 %i.fj to i64
  %i.fl = shl nsw i64 %i.fk, 32
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fi, i64 4
  %i.fn = load i32, ptr %i.fm, align 4, !tbaa !232
  %i.fo = sext i32 %i.fn to i64
  %i.fp = or i64 %i.fl, %i.fo
  %i.fq = icmp ugt i64 %i.fe, %i.fp
  br i1 %i.fq, label %.lr.ph.i.i26, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, !llvm.loop !377

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22: ; preds = %.lr.ph.i.i26, %bb.n, %bb.m, %bb.l, %bb.k
  %.sink.i23 = phi ptr [ %0, %bb.m ], [ %0, %bb.k ], [ %0, %bb.l ], [ %.sroa.0.021.i20, %bb.n ], [ %.sroa.0.010.i.i27, %.lr.ph.i.i26 ]
  store i32 %i.df, ptr %.sink.i23, align 4, !tbaa !199
  %.sroa.0.0.i24 = getelementptr inbounds nuw i8, ptr %.sroa.0.021.i20, i64 4 ; 2 uses
  %.not.i25 = icmp eq ptr %.sroa.0.0.i24, %1
  br i1 %.not.i25, label %_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit, label %bb.i, !llvm.loop !378

_ZSt26__unguarded_insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit: ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEES6_ET0_T_S8_S7_.exit.i22, %_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops14_Val_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_.exit.i, %.preheader.i16, %bb.h, %_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_T0_.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr ptr @_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEET_SC_SC_T0_(ptr %0, ptr %1, ptr %2) local_unnamed_addr #6 comdat {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %i.b = ptrtoint ptr %0 to i64
  %i.c = sub i64 %i.a, %i.b
  %i.d = ashr exact i64 %i.c, 2
  %i.e = sdiv i64 %i.d, 2
  %i.f = getelementptr inbounds [4 x i8], ptr %0, i64 %i.e ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 4 uses
  %i.h = getelementptr inbounds i8, ptr %1, i64 -4 ; 3 uses
  %i.i = load i32, ptr %i.g, align 4, !tbaa !199  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 712
  %i.k = tail call noundef i32 @llvm.abs.i32(i32 %i.i, i1 true)
  %i.l = zext nneg i32 %i.k to i64
  %i.m = load ptr, ptr %i.j, align 8, !tbaa !218  ; 6 uses
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.l ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !220
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !232
  %i.t = sext i32 %i.s to i64
  %i.u = or i64 %i.q, %i.t                        ; 3 uses
  %i.v = load i32, ptr %i.f, align 4, !tbaa !199  ; 3 uses
  %i.w = tail call noundef i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !220
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !232
  %i.ae = sext i32 %i.ad to i64
  %i.af = or i64 %i.ab, %i.ae                     ; 3 uses
  %i.ag = icmp ugt i64 %i.u, %i.af
  %i.ah = load i32, ptr %i.h, align 4, !tbaa !199 ; 3 uses
  %i.ai = tail call noundef i32 @llvm.abs.i32(i32 %i.ah, i1 true)
  %i.aj = zext nneg i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.aj ; 2 uses
  %i.al = load i32, ptr %i.ak, align 8, !tbaa !220
  %i.am = sext i32 %i.al to i64
  %i.an = shl nsw i64 %i.am, 32
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 4
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !232
  %i.aq = sext i32 %i.ap to i64
  %i.ar = or i64 %i.an, %i.aq                     ; 4 uses
  br i1 %i.ag, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.as = icmp ugt i64 %i.af, %i.ar
  br i1 %i.as, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.at = load i32, ptr %0, align 4, !tbaa !199
  store i32 %i.v, ptr %0, align 4, !tbaa !199
  store i32 %i.at, ptr %i.f, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.d:                                             ; preds = %bb.b
  %i.au = icmp ugt i64 %i.u, %i.ar
  %i.av = load i32, ptr %0, align 4, !tbaa !199   ; 2 uses
  br i1 %i.au, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store i32 %i.ah, ptr %0, align 4, !tbaa !199
  store i32 %i.av, ptr %i.h, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.f:                                             ; preds = %bb.d
  store i32 %i.i, ptr %0, align 4, !tbaa !199
  store i32 %i.av, ptr %i.g, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.g:                                             ; preds = %bb.a
  %i.aw = icmp ugt i64 %i.u, %i.ar
  br i1 %i.aw, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ax = load i32, ptr %0, align 4, !tbaa !199
  store i32 %i.i, ptr %0, align 4, !tbaa !199
  store i32 %i.ax, ptr %i.g, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.i:                                             ; preds = %bb.g
  %i.ay = icmp ugt i64 %i.af, %i.ar
  %i.az = load i32, ptr %0, align 4, !tbaa !199   ; 2 uses
  br i1 %i.ay, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store i32 %i.ah, ptr %0, align 4, !tbaa !199
  store i32 %i.az, ptr %i.h, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader

bb.k:                                             ; preds = %bb.i
  store i32 %i.v, ptr %0, align 4, !tbaa !199
  store i32 %i.az, ptr %i.f, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader: ; preds = %bb.c, %bb.e, %bb.f, %bb.h, %bb.j, %bb.k
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit

_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit: ; preds = %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader, %bb.n
  %.sroa.09.0.i = phi ptr [ %.sroa.09.1.i, %bb.n ], [ %1, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader ]
  %.sroa.012.0.i = phi ptr [ %i.bx, %bb.n ], [ %i.g, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit.preheader ]
  %i.ba = load i32, ptr %0, align 4, !tbaa !199
  %i.bb = tail call noundef i32 @llvm.abs.i32(i32 %i.ba, i1 true)
  %i.bc = zext nneg i32 %i.bb to i64
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.bc ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8, !tbaa !220
  %i.bf = sext i32 %i.be to i64
  %i.bg = shl nsw i64 %i.bf, 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 4
  %i.bi = load i32, ptr %i.bh, align 4, !tbaa !232
  %i.bj = sext i32 %i.bi to i64
  %i.bk = or i64 %i.bg, %i.bj                     ; 2 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit
  %.sroa.012.1.i = phi ptr [ %.sroa.012.0.i, %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit ], [ %i.bx, %bb.l ] ; 5 uses
  %i.bl = load i32, ptr %.sroa.012.1.i, align 4, !tbaa !199 ; 2 uses
  %i.bm = tail call noundef i32 @llvm.abs.i32(i32 %i.bl, i1 true)
  %i.bn = zext nneg i32 %i.bm to i64
  %i.bo = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.bn ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !220
  %i.bq = sext i32 %i.bp to i64
  %i.br = shl nsw i64 %i.bq, 32
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !232
  %i.bu = sext i32 %i.bt to i64
  %i.bv = or i64 %i.br, %i.bu
  %i.bw = icmp ugt i64 %i.bv, %i.bk
  %i.bx = getelementptr inbounds nuw i8, ptr %.sroa.012.1.i, i64 4 ; 2 uses
  br i1 %i.bw, label %bb.l, label %.preheader.i, !llvm.loop !380

.preheader.i:                                     ; preds = %bb.l, %.preheader.i
  %.sroa.09.0.pn.i = phi ptr [ %.sroa.09.1.i, %.preheader.i ], [ %.sroa.09.0.i, %bb.l ]
  %.sroa.09.1.i = getelementptr inbounds i8, ptr %.sroa.09.0.pn.i, i64 -4 ; 5 uses
  %i.by = load i32, ptr %.sroa.09.1.i, align 4, !tbaa !199 ; 2 uses
  %i.bz = tail call noundef i32 @llvm.abs.i32(i32 %i.by, i1 true)
  %i.ca = zext nneg i32 %i.bz to i64
  %i.cb = getelementptr inbounds nuw [16 x i8], ptr %i.m, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !220
  %i.cd = sext i32 %i.cc to i64
  %i.ce = shl nsw i64 %i.cd, 32
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cb, i64 4
  %i.cg = load i32, ptr %i.cf, align 4, !tbaa !232
  %i.ch = sext i32 %i.cg to i64
  %i.ci = or i64 %i.ce, %i.ch
  %i.cj = icmp ugt i64 %i.bk, %i.ci
  br i1 %i.cj, label %.preheader.i, label %bb.m, !llvm.loop !381

bb.m:                                             ; preds = %.preheader.i
  %i.ck = icmp ult ptr %.sroa.012.1.i, %.sroa.09.1.i
  br i1 %i.ck, label %bb.n, label %_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEET_SC_SC_SC_T0_.exit

bb.n:                                             ; preds = %bb.m
  store i32 %i.by, ptr %.sroa.012.1.i, align 4, !tbaa !199
  store i32 %i.bl, ptr %.sroa.09.1.i, align 4, !tbaa !199
  br label %_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_SC_SC_SC_T0_.exit, !llvm.loop !382

_ZSt21__unguarded_partitionIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEENS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEET_SC_SC_SC_T0_.exit: ; preds = %bb.m
  ret ptr %.sroa.012.1.i
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops15_Iter_comp_iterIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_T2_(ptr %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr %4) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !218  ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %.036 = phi i64 [ %1, %.lr.ph ], [ %spec.select, %bb.b ] ; 2 uses
  %i.f = shl i64 %.036, 1                         ; 2 uses
  %i.g = add i64 %i.f, 2                          ; 2 uses
  %i.h = getelementptr inbounds [4 x i8], ptr %0, i64 %i.g
  %i.i = or disjoint i64 %i.f, 1                  ; 2 uses
  %i.j = getelementptr inbounds [4 x i8], ptr %0, i64 %i.i
  %i.k = load i32, ptr %i.h, align 4, !tbaa !199
  %i.l = tail call noundef i32 @llvm.abs.i32(i32 %i.k, i1 true)
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 8, !tbaa !220
  %i.p = sext i32 %i.o to i64
  %i.q = shl nsw i64 %i.p, 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.s = load i32, ptr %i.r, align 4, !tbaa !232
  %i.t = sext i32 %i.s to i64
  %i.u = or i64 %i.q, %i.t
  %i.v = load i32, ptr %i.j, align 4, !tbaa !199
  %i.w = tail call noundef i32 @llvm.abs.i32(i32 %i.v, i1 true)
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [16 x i8], ptr %i.e, i64 %i.x ; 2 uses
  %i.z = load i32, ptr %i.y, align 8, !tbaa !220
  %i.aa = sext i32 %i.z to i64
  %i.ab = shl nsw i64 %i.aa, 32
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !232
  %i.ae = sext i32 %i.ad to i64
  %i.af = or i64 %i.ab, %i.ae
  %i.ag = icmp ugt i64 %i.u, %i.af
  %spec.select = select i1 %i.ag, i64 %i.i, i64 %i.g ; 4 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %0, i64 %spec.select
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !199
  %i.aj = getelementptr inbounds [4 x i8], ptr %0, i64 %.036
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !199
  %i.ak = icmp slt i64 %spec.select, %i.b
  br i1 %i.ak, label %bb.b, label %._crit_edge, !llvm.loop !383

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %bb.b ] ; 5 uses
  %i.al = and i64 %2, 1
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.c, label %bb.e

bb.c:                                             ; preds = %._crit_edge
  %i.an = add nsw i64 %2, -2
  %i.ao = ashr exact i64 %i.an, 1
  %i.ap = icmp eq i64 %.0.lcssa, %i.ao
  br i1 %i.ap, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.aq = shl nsw i64 %.0.lcssa, 1
  %i.ar = or disjoint i64 %i.aq, 1                ; 2 uses
  %i.as = getelementptr inbounds [4 x i8], ptr %0, i64 %i.ar
  %i.at = load i32, ptr %i.as, align 4, !tbaa !199
  %i.au = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa
  store i32 %i.at, ptr %i.au, align 4, !tbaa !199
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %._crit_edge
  %.1 = phi i64 [ %i.ar, %bb.d ], [ %.0.lcssa, %bb.c ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.av = icmp sgt i64 %.1, %1
  br i1 %i.av, label %.lr.ph.i, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_RT2_.exit

.lr.ph.i:                                         ; preds = %bb.e
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 712
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !218 ; 2 uses
  %i.ay = tail call noundef i32 @llvm.abs.i32(i32 %3, i1 true)
  %i.az = zext nneg i32 %i.ay to i64
  %i.ba = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i
  %.019.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0920.i, %bb.g ] ; 3 uses
  %.0920.in.i = add nsw i64 %.019.i, -1
  %.0920.i = sdiv i64 %.0920.in.i, 2              ; 4 uses
  %i.bc = getelementptr inbounds [4 x i8], ptr %0, i64 %.0920.i
  %i.bd = load i32, ptr %i.bc, align 4, !tbaa !199 ; 2 uses
  %i.be = tail call noundef i32 @llvm.abs.i32(i32 %i.bd, i1 true)
  %i.bf = zext nneg i32 %i.be to i64
  %i.bg = getelementptr inbounds nuw [16 x i8], ptr %i.ax, i64 %i.bf ; 2 uses
  %i.bh = load i32, ptr %i.bg, align 8, !tbaa !220
  %i.bi = sext i32 %i.bh to i64
  %i.bj = shl nsw i64 %i.bi, 32
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bg, i64 4
  %i.bl = load i32, ptr %i.bk, align 4, !tbaa !232
  %i.bm = sext i32 %i.bl to i64
  %i.bn = or i64 %i.bj, %i.bm
  %i.bo = load i32, ptr %i.ba, align 8, !tbaa !220
  %i.bp = sext i32 %i.bo to i64
  %i.bq = shl nsw i64 %i.bp, 32
  %i.br = load i32, ptr %i.bb, align 4, !tbaa !232
  %i.bs = sext i32 %i.br to i64
  %i.bt = or i64 %i.bq, %i.bs
  %i.bu = icmp ugt i64 %i.bn, %i.bt
  br i1 %i.bu, label %bb.g, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_RT2_.exit

bb.g:                                             ; preds = %bb.f
  %i.bv = getelementptr inbounds [4 x i8], ptr %0, i64 %.019.i
  store i32 %i.bd, ptr %i.bv, align 4, !tbaa !199
  %i.bw = icmp sgt i64 %.0920.i, %1
  br i1 %i.bw, label %bb.f, label %_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_RT2_.exit, !llvm.loop !384

_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEEliNS0_5__ops14_Iter_comp_valIN7CaDiCaL20analyze_trail_largerEEEEvT_T0_SD_T1_RT2_.exit: ; preds = %bb.f, %bb.g, %bb.e
  %.0.lcssa.i = phi i64 [ %.1, %bb.e ], [ %.019.i, %bb.f ], [ %.0920.i, %bb.g ]
  %i.bx = getelementptr inbounds [4 x i8], ptr %0, i64 %.0.lcssa.i
  store i32 %3, ptr %i.bx, align 4, !tbaa !199
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.fshl.i32(i32, i32, i32) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { noreturn }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !216}
!1 = distinct !{!1, !216}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!5 = !{!"Simple C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"bool", !6, i64 0}
!11 = !{!"long", !6, i64 0}
!12 = !{!"_ZTSN7CaDiCaL9ReluctantE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !10, i64 40, !10, i64 41}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!"p1 long", !13, i64 0}
!15 = !{!"_ZTSNSt12_Vector_baseImSaImEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!16 = !{!"_ZTSNSt12_Vector_baseImSaImEE12_Vector_implE", !15, i64 0}
!17 = !{!"_ZTSSt12_Vector_baseImSaImEE", !16, i64 0}
!18 = !{!"_ZTSSt6vectorImSaImEE", !17, i64 0}
!19 = !{!"any p2 pointer", !13, i64 0}
!20 = !{!"p2 _ZTSN7CaDiCaL6ClauseE", !19, i64 0}
!21 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE17_Vector_impl_dataE", !20, i64 0, !20, i64 8, !20, i64 16}
!22 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE12_Vector_implE", !21, i64 0}
!23 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6ClauseESaIS2_EE", !22, i64 0}
!24 = !{!"_ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !23, i64 0}
!25 = !{!"p1 _ZTSSt6vectorIS_ImSaImEESaIS1_EE", !13, i64 0}
!26 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE17_Vector_impl_dataE", !25, i64 0, !25, i64 8, !25, i64 16}
!27 = !{!"_ZTSNSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE12_Vector_implE", !26, i64 0}
!28 = !{!"_ZTSSt12_Vector_baseISt6vectorIS0_ImSaImEESaIS2_EESaIS4_EE", !27, i64 0}
!29 = !{!"_ZTSSt6vectorIS_IS_ImSaImEESaIS1_EESaIS3_EE", !28, i64 0}
!30 = !{!"p1 omnipotent char", !13, i64 0}
!31 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE17_Vector_impl_dataE", !30, i64 0, !30, i64 8, !30, i64 16}
!32 = !{!"_ZTSNSt12_Vector_baseIaSaIaEE12_Vector_implE", !31, i64 0}
!33 = !{!"_ZTSSt12_Vector_baseIaSaIaEE", !32, i64 0}
!34 = !{!"_ZTSSt6vectorIaSaIaEE", !33, i64 0}
!35 = !{!"_ZTSN7CaDiCaL6PhasesE", !34, i64 0, !34, i64 24, !34, i64 48, !34, i64 72, !34, i64 96, !34, i64 120}
!36 = !{!"p1 int", !13, i64 0}
!37 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!38 = !{!"_ZTSNSt12_Vector_baseIjSaIjEE12_Vector_implE", !37, i64 0}
!39 = !{!"_ZTSSt12_Vector_baseIjSaIjEE", !38, i64 0}
!40 = !{!"_ZTSSt6vectorIjSaIjEE", !39, i64 0}
!41 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataE", !36, i64 0, !36, i64 8, !36, i64 16}
!42 = !{!"_ZTSNSt12_Vector_baseIiSaIiEE12_Vector_implE", !41, i64 0}
!43 = !{!"_ZTSSt12_Vector_baseIiSaIiEE", !42, i64 0}
!44 = !{!"_ZTSSt6vectorIiSaIiEE", !43, i64 0}
!45 = !{!"_ZTSN7CaDiCaL5QueueE", !7, i64 0, !7, i64 4, !7, i64 8, !11, i64 16}
!46 = !{!"p1 _ZTSN7CaDiCaL4LinkE", !13, i64 0}
!47 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE17_Vector_impl_dataE", !46, i64 0, !46, i64 8, !46, i64 16}
!48 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE12_Vector_implE", !47, i64 0}
!49 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL4LinkESaIS1_EE", !48, i64 0}
!50 = !{!"_ZTSSt6vectorIN7CaDiCaL4LinkESaIS1_EE", !49, i64 0}
!51 = !{!"double", !6, i64 0}
!52 = !{!"p1 _ZTSN7CaDiCaL8InternalE", !13, i64 0}
!53 = !{!"_ZTSN7CaDiCaL13score_smallerE", !52, i64 0}
!54 = !{!"_ZTSN7CaDiCaL4heapINS_13score_smallerEEE", !40, i64 0, !40, i64 24, !53, i64 48}
!55 = !{!"p1 double", !13, i64 0}
!56 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataE", !55, i64 0, !55, i64 8, !55, i64 16}
!57 = !{!"_ZTSNSt12_Vector_baseIdSaIdEE12_Vector_implE", !56, i64 0}
!58 = !{!"_ZTSSt12_Vector_baseIdSaIdEE", !57, i64 0}
!59 = !{!"_ZTSSt6vectorIdSaIdEE", !58, i64 0}
!60 = !{!"p1 _ZTSN7CaDiCaL3VarE", !13, i64 0}
!61 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE17_Vector_impl_dataE", !60, i64 0, !60, i64 8, !60, i64 16}
!62 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE12_Vector_implE", !61, i64 0}
!63 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL3VarESaIS1_EE", !62, i64 0}
!64 = !{!"_ZTSSt6vectorIN7CaDiCaL3VarESaIS1_EE", !63, i64 0}
!65 = !{!"p1 _ZTSN7CaDiCaL5FlagsE", !13, i64 0}
!66 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE17_Vector_impl_dataE", !65, i64 0, !65, i64 8, !65, i64 16}
!67 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE12_Vector_implE", !66, i64 0}
!68 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5FlagsESaIS1_EE", !67, i64 0}
!69 = !{!"_ZTSSt6vectorIN7CaDiCaL5FlagsESaIS1_EE", !68, i64 0}
!70 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE17_Vector_impl_dataE", !14, i64 0, !14, i64 8, !14, i64 16}
!71 = !{!"_ZTSNSt12_Vector_baseIlSaIlEE12_Vector_implE", !70, i64 0}
!72 = !{!"_ZTSSt12_Vector_baseIlSaIlEE", !71, i64 0}
!73 = !{!"_ZTSSt6vectorIlSaIlEE", !72, i64 0}
!74 = !{!"p1 _ZTSSt6vectorIPN7CaDiCaL6ClauseESaIS2_EE", !13, i64 0}
!75 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE17_Vector_impl_dataE", !74, i64 0, !74, i64 8, !74, i64 16}
!76 = !{!"_ZTSNSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE12_Vector_implE", !75, i64 0}
!77 = !{!"_ZTSSt12_Vector_baseISt6vectorIPN7CaDiCaL6ClauseESaIS3_EESaIS5_EE", !76, i64 0}
!78 = !{!"_ZTSSt6vectorIS_IPN7CaDiCaL6ClauseESaIS2_EESaIS4_EE", !77, i64 0}
!79 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL3BinESaIS1_EE", !13, i64 0}
!80 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE17_Vector_impl_dataE", !79, i64 0, !79, i64 8, !79, i64 16}
!81 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE12_Vector_implE", !80, i64 0}
!82 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL3BinESaIS2_EESaIS4_EE", !81, i64 0}
!83 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL3BinESaIS1_EESaIS3_EE", !82, i64 0}
!84 = !{!"p1 _ZTSSt6vectorIN7CaDiCaL5WatchESaIS1_EE", !13, i64 0}
!85 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE17_Vector_impl_dataE", !84, i64 0, !84, i64 8, !84, i64 16}
!86 = !{!"_ZTSNSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE12_Vector_implE", !85, i64 0}
!87 = !{!"_ZTSSt12_Vector_baseISt6vectorIN7CaDiCaL5WatchESaIS2_EESaIS4_EE", !86, i64 0}
!88 = !{!"_ZTSSt6vectorIS_IN7CaDiCaL5WatchESaIS1_EESaIS3_EE", !87, i64 0}
!89 = !{!"p1 _ZTSN7CaDiCaL6ClauseE", !13, i64 0}
!90 = !{!"_ZTS4Reap", !11, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !6, i64 24}
!91 = !{!"p1 _ZTSN7CaDiCaL5LevelE", !13, i64 0}
!92 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE17_Vector_impl_dataE", !91, i64 0, !91, i64 8, !91, i64 16}
!93 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE12_Vector_implE", !92, i64 0}
!94 = !{!"_ZTSSt12_Vector_baseIN7CaDiCaL5LevelESaIS1_EE", !93, i64 0}
!95 = !{!"_ZTSSt6vectorIN7CaDiCaL5LevelESaIS1_EE", !94, i64 0}
!96 = !{!"_ZTSN7CaDiCaL3EMAE", !51, i64 0, !51, i64 8, !51, i64 16, !51, i64 24, !51, i64 32}
!97 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut_E", !96, i64 0, !96, i64 40}
!98 = !{!"_ZTSN7CaDiCaL8AveragesUt_Ut0_E", !96, i64 0, !96, i64 40}
!99 = !{!"_ZTSN7CaDiCaL8AveragesUt_E", !97, i64 0, !98, i64 80, !96, i64 160, !96, i64 200, !96, i64 240}
!100 = !{!"_ZTSN7CaDiCaL8AveragesE", !11, i64 0, !99, i64 8, !99, i64 288}
!101 = !{!"_ZTSN7CaDiCaL5LimitUt_E", !7, i64 0, !7, i64 4}
!102 = !{!"_ZTSN7CaDiCaL5LimitE", !10, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !11, i64 120, !7, i64 128, !7, i64 132, !6, i64 136, !11, i64 152, !101, i64 160}
!103 = !{!"_ZTSN7CaDiCaL4LastUt_E", !11, i64 0}
!104 = !{!"_ZTSN7CaDiCaL4LastUt0_E", !11, i64 0, !11, i64 8, !11, i64 16}
!105 = !{!"_ZTSN7CaDiCaL4LastUt1_E", !11, i64 0, !11, i64 8}
!106 = !{!"_ZTSN7CaDiCaL4LastUt2_E", !11, i64 0}
!107 = !{!"_ZTSN7CaDiCaL4LastUt3_E", !11, i64 0}
!108 = !{!"_ZTSN7CaDiCaL4LastUt4_E", !11, i64 0}
!109 = !{!"_ZTSN7CaDiCaL4LastE", !103, i64 0, !103, i64 8, !104, i64 16, !105, i64 40, !106, i64 56, !106, i64 64, !107, i64 72, !108, i64 80}
!110 = !{!"_ZTSN7CaDiCaL3IncE", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40}
!111 = !{!"p1 _ZTSN7CaDiCaL5ProofE", !13, i64 0}
!112 = !{!"p1 _ZTSN7CaDiCaL11LratBuilderE", !13, i64 0}
!113 = !{!"p2 _ZTSN7CaDiCaL6TracerE", !19, i64 0}
!114 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE17_Vector_impl_dataE", !113, i64 0, !113, i64 8, !113, i64 16}
!115 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE12_Vector_implE", !114, i64 0}
!116 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL6TracerESaIS2_EE", !115, i64 0}
!117 = !{!"_ZTSSt6vectorIPN7CaDiCaL6TracerESaIS2_EE", !116, i64 0}
!118 = !{!"p2 _ZTSN7CaDiCaL10FileTracerE", !19, i64 0}
!119 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE17_Vector_impl_dataE", !118, i64 0, !118, i64 8, !118, i64 16}
!120 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE12_Vector_implE", !119, i64 0}
!121 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10FileTracerESaIS2_EE", !120, i64 0}
!122 = !{!"_ZTSSt6vectorIPN7CaDiCaL10FileTracerESaIS2_EE", !121, i64 0}
!123 = !{!"p2 _ZTSN7CaDiCaL10StatTracerE", !19, i64 0}
!124 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE17_Vector_impl_dataE", !123, i64 0, !123, i64 8, !123, i64 16}
!125 = !{!"_ZTSNSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE12_Vector_implE", !124, i64 0}
!126 = !{!"_ZTSSt12_Vector_baseIPN7CaDiCaL10StatTracerESaIS2_EE", !125, i64 0}
!127 = !{!"_ZTSSt6vectorIPN7CaDiCaL10StatTracerESaIS2_EE", !126, i64 0}
!128 = !{!"_ZTSN7CaDiCaL7OptionsE", !52, i64 0, !7, i64 8, !7, i64 12, !7, i64 16, !7, i64 20, !7, i64 24, !7, i64 28, !7, i64 32, !7, i64 36, !7, i64 40, !7, i64 44, !7, i64 48, !7, i64 52, !7, i64 56, !7, i64 60, !7, i64 64, !7, i64 68, !7, i64 72, !7, i64 76, !7, i64 80, !7, i64 84, !7, i64 88, !7, i64 92, !7, i64 96, !7, i64 100, !7, i64 104, !7, i64 108, !7, i64 112, !7, i64 116, !7, i64 120, !7, i64 124, !7, i64 128, !7, i64 132, !7, i64 136, !7, i64 140, !7, i64 144, !7, i64 148, !7, i64 152, !7, i64 156, !7, i64 160, !7, i64 164, !7, i64 168, !7, i64 172, !7, i64 176, !7, i64 180, !7, i64 184, !7, i64 188, !7, i64 192, !7, i64 196, !7, i64 200, !7, i64 204, !7, i64 208, !7, i64 212, !7, i64 216, !7, i64 220, !7, i64 224, !7, i64 228, !7, i64 232, !7, i64 236, !7, i64 240, !7, i64 244, !7, i64 248, !7, i64 252, !7, i64 256, !7, i64 260, !7, i64 264, !7, i64 268, !7, i64 272, !7, i64 276, !7, i64 280, !7, i64 284, !7, i64 288, !7, i64 292, !7, i64 296, !7, i64 300, !7, i64 304, !7, i64 308, !7, i64 312, !7, i64 316, !7, i64 320, !7, i64 324, !7, i64 328, !7, i64 332, !7, i64 336, !7, i64 340, !7, i64 344, !7, i64 348, !7, i64 352, !7, i64 356, !7, i64 360, !7, i64 364, !7, i64 368, !7, i64 372, !7, i64 376, !7, i64 380, !7, i64 384, !7, i64 388, !7, i64 392, !7, i64 396, !7, i64 400, !7, i64 404, !7, i64 408, !7, i64 412, !7, i64 416, !7, i64 420, !7, i64 424, !7, i64 428, !7, i64 432, !7, i64 436, !7, i64 440, !7, i64 444, !7, i64 448, !7, i64 452, !7, i64 456, !7, i64 460, !7, i64 464, !7, i64 468, !7, i64 472, !7, i64 476, !7, i64 480, !7, i64 484, !7, i64 488, !7, i64 492, !7, i64 496, !7, i64 500, !7, i64 504, !7, i64 508, !7, i64 512, !7, i64 516, !7, i64 520, !7, i64 524, !7, i64 528, !7, i64 532, !7, i64 536, !7, i64 540, !7, i64 544, !7, i64 548, !7, i64 552, !7, i64 556, !7, i64 560, !7, i64 564, !7, i64 568, !7, i64 572, !7, i64 576, !7, i64 580, !7, i64 584, !7, i64 588, !7, i64 592, !7, i64 596, !7, i64 600, !7, i64 604, !7, i64 608, !7, i64 612, !7, i64 616, !7, i64 620, !7, i64 624, !7, i64 628, !7, i64 632, !7, i64 636, !7, i64 640, !7, i64 644, !7, i64 648, !7, i64 652, !7, i64 656, !7, i64 660, !7, i64 664, !7, i64 668, !7, i64 672, !7, i64 676, !7, i64 680, !7, i64 684, !7, i64 688, !7, i64 692, !7, i64 696, !7, i64 700, !7, i64 704, !7, i64 708, !7, i64 712, !7, i64 716}
!129 = !{!"_ZTSN7CaDiCaL5StatsUt_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!130 = !{!"_ZTSN7CaDiCaL5StatsUt0_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72}
!131 = !{!"_ZTSN7CaDiCaL5StatsUt1_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!132 = !{!"_ZTSN7CaDiCaL5StatsUt2_E", !11, i64 0, !11, i64 8, !11, i64 16}
!133 = !{!"_ZTSN7CaDiCaL5StatsUt3_E", !51, i64 0, !51, i64 8}
!134 = !{!"_ZTSN7CaDiCaL5StatsUt4_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!135 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut_E", !11, i64 0, !11, i64 8}
!136 = !{!"_ZTSN7CaDiCaL5StatsUt5_Ut0_E", !11, i64 0, !11, i64 8}
!137 = !{!"_ZTSN7CaDiCaL5StatsUt5_E", !11, i64 0, !11, i64 8, !135, i64 16, !135, i64 32, !135, i64 48, !136, i64 64}
!138 = !{!"_ZTSN7CaDiCaL5StatsUt6_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48}
!139 = !{!"_ZTSN7CaDiCaL5StatsUt7_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!140 = !{!"_ZTSN7CaDiCaL5StatsUt8_E", !11, i64 0, !11, i64 8, !11, i64 16}
!141 = !{!"_ZTSN7CaDiCaL5StatsUt9_E", !11, i64 0, !11, i64 8}
!142 = !{!"_ZTSN7CaDiCaL5StatsUt10_E", !11, i64 0, !11, i64 8, !11, i64 16}
!143 = !{!"_ZTSN7CaDiCaL5StatsUt11_E", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24}
!144 = !{!"_ZTSN7CaDiCaL5StatsUt12_E", !11, i64 0, !11, i64 8}
!145 = !{!"_ZTSN7CaDiCaL5StatsE", !52, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !129, i64 32, !130, i64 88, !11, i64 168, !11, i64 176, !11, i64 184, !11, i64 192, !11, i64 200, !11, i64 208, !11, i64 216, !11, i64 224, !11, i64 232, !11, i64 240, !11, i64 248, !11, i64 256, !131, i64 264, !132, i64 296, !132, i64 320, !133, i64 344, !134, i64 360, !137, i64 392, !138, i64 472, !139, i64 528, !140, i64 560, !11, i64 584, !11, i64 592, !11, i64 600, !11, i64 608, !11, i64 616, !11, i64 624, !11, i64 632, !11, i64 640, !11, i64 648, !11, i64 656, !11, i64 664, !11, i64 672, !11, i64 680, !11, i64 688, !11, i64 696, !11, i64 704, !11, i64 712, !11, i64 720, !11, i64 728, !11, i64 736, !11, i64 744, !11, i64 752, !11, i64 760, !11, i64 768, !11, i64 776, !11, i64 784, !11, i64 792, !11, i64 800, !11, i64 808, !11, i64 816, !11, i64 824, !11, i64 832, !11, i64 840, !11, i64 848, !11, i64 856, !11, i64 864, !11, i64 872, !11, i64 880, !11, i64 888, !11, i64 896, !11, i64 904, !11, i64 912, !11, i64 920, !11, i64 928, !11, i64 936, !11, i64 944, !11, i64 952, !11, i64 960, !11, i64 968, !11, i64 976, !11, i64 984, !11, i64 992, !11, i64 1000, !11, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !11, i64 1064, !11, i64 1072, !11, i64 1080, !11, i64 1088, !11, i64 1096, !11, i64 1104, !11, i64 1112, !11, i64 1120, !11, i64 1128, !11, i64 1136, !11, i64 1144, !11, i64 1152, !11, i64 1160, !11, i64 1168, !11, i64 1176, !11, i64 1184, !11, i64 1192, !11, i64 1200, !11, i64 1208, !11, i64 1216, !11, i64 1224, !141, i64 1232, !11, i64 1248, !11, i64 1256, !11, i64 1264, !11, i64 1272, !142, i64 1280, !11, i64 1304, !11, i64 1312, !11, i64 1320, !11, i64 1328, !11, i64 1336, !11, i64 1344, !11, i64 1352, !11, i64 1360, !11, i64 1368, !11, i64 1376, !11, i64 1384, !11, i64 1392, !11, i64 1400, !11, i64 1408, !11, i64 1416, !11, i64 1424, !11, i64 1432, !11, i64 1440, !11, i64 1448, !11, i64 1456, !11, i64 1464, !11, i64 1472, !11, i64 1480, !11, i64 1488, !11, i64 1496, !11, i64 1504, !11, i64 1512, !11, i64 1520, !11, i64 1528, !11, i64 1536, !143, i64 1544, !143, i64 1576, !144, i64 1608, !11, i64 1624, !11, i64 1632, !11, i64 1640}
!146 = !{!"_ZTSN7CaDiCaL7ProfileE", !10, i64 0, !51, i64 8, !51, i64 16, !30, i64 24, !7, i64 32}
!147 = !{!"_ZTSN7CaDiCaL8ProfilesE", !52, i64 0, !146, i64 8, !146, i64 48, !146, i64 88, !146, i64 128, !146, i64 168, !146, i64 208, !146, i64 248, !146, i64 288, !146, i64 328, !146, i64 368, !146, i64 408, !146, i64 448, !146, i64 488, !146, i64 528, !146, i64 568, !146, i64 608, !146, i64 648, !146, i64 688, !146, i64 728, !146, i64 768, !146, i64 808, !146, i64 848, !146, i64 888, !146, i64 928, !146, i64 968, !146, i64 1008, !146, i64 1048, !146, i64 1088, !146, i64 1128, !146, i64 1168, !146, i64 1208, !146, i64 1248, !146, i64 1288, !146, i64 1328, !146, i64 1368, !146, i64 1408, !146, i64 1448, !146, i64 1488, !146, i64 1528}
!148 = !{!"_ZTSN7CaDiCaL5ArenaUt_E", !30, i64 0, !30, i64 8, !30, i64 16}
!149 = !{!"_ZTSN7CaDiCaL5ArenaE", !52, i64 0, !148, i64 8, !148, i64 32}
!150 = !{!"_ZTSN7CaDiCaL6FormatE", !30, i64 0, !11, i64 8, !11, i64 16}
!151 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !30, i64 0}
!152 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !151, i64 0, !11, i64 8, !6, i64 16}
!153 = !{!"p1 _ZTSN7CaDiCaL8ExternalE", !13, i64 0}
!154 = !{!"_ZTSN7CaDiCaL5RangeE", !36, i64 0}
!155 = !{!"_ZTSN7CaDiCaL5SangeE", !36, i64 0}
!156 = !{!"_ZTSN7CaDiCaL8InternalE", !7, i64 0, !10, i64 4, !10, i64 5, !10, i64 6, !10, i64 7, !10, i64 8, !10, i64 9, !10, i64 10, !10, i64 11, !10, i64 12, !10, i64 13, !10, i64 14, !10, i64 15, !10, i64 16, !10, i64 17, !10, i64 18, !6, i64 19, !12, i64 24, !11, i64 72, !7, i64 80, !11, i64 88, !11, i64 96, !11, i64 104, !11, i64 112, !10, i64 120, !18, i64 128, !18, i64 152, !18, i64 176, !18, i64 200, !18, i64 224, !18, i64 248, !24, i64 272, !29, i64 296, !10, i64 320, !10, i64 321, !7, i64 324, !35, i64 328, !30, i64 472, !34, i64 480, !40, i64 504, !44, i64 528, !40, i64 552, !45, i64 576, !50, i64 600, !51, i64 624, !54, i64 632, !59, i64 688, !64, i64 712, !44, i64 736, !69, i64 760, !73, i64 784, !73, i64 808, !78, i64 832, !44, i64 856, !73, i64 880, !83, i64 904, !88, i64 928, !89, i64 952, !89, i64 960, !89, i64 968, !89, i64 976, !89, i64 984, !10, i64 992, !10, i64 993, !10, i64 994, !7, i64 996, !11, i64 1000, !89, i64 1008, !11, i64 1016, !11, i64 1024, !11, i64 1032, !11, i64 1040, !11, i64 1048, !11, i64 1056, !44, i64 1064, !44, i64 1088, !44, i64 1112, !44, i64 1136, !10, i64 1160, !10, i64 1161, !44, i64 1168, !44, i64 1192, !44, i64 1216, !44, i64 1240, !44, i64 1264, !44, i64 1288, !44, i64 1312, !90, i64 1336, !11, i64 2152, !44, i64 2160, !95, i64 2184, !24, i64 2208, !100, i64 2232, !102, i64 2800, !109, i64 2968, !110, i64 3056, !111, i64 3104, !112, i64 3112, !117, i64 3120, !122, i64 3144, !127, i64 3168, !128, i64 3192, !145, i64 3912, !147, i64 5560, !10, i64 7128, !149, i64 7136, !150, i64 7192, !152, i64 7216, !52, i64 7248, !153, i64 7256, !10, i64 7264, !154, i64 7272, !155, i64 7280}
!157 = !{!156, !153, i64 7256}
!158 = !{!"_ZTSSt18_Bit_iterator_base", !14, i64 0, !7, i64 8}
!159 = !{!"_ZTSSt13_Bit_iterator", !158, i64 0}
!160 = !{!"_ZTSNSt13_Bvector_baseISaIbEE18_Bvector_impl_dataE", !159, i64 0, !159, i64 16, !14, i64 32}
!161 = !{!"_ZTSNSt13_Bvector_baseISaIbEE13_Bvector_implE", !160, i64 0}
!162 = !{!"_ZTSSt13_Bvector_baseISaIbEE", !161, i64 0}
!163 = !{!"_ZTSSt6vectorIbSaIbEE", !162, i64 0}
!164 = !{!"p1 _ZTSN7CaDiCaL10TerminatorE", !13, i64 0}
!165 = !{!"p1 _ZTSN7CaDiCaL7LearnerE", !13, i64 0}
!166 = !{!"p1 _ZTSN7CaDiCaL23FixedAssignmentListenerE", !13, i64 0}
!167 = !{!"p1 _ZTSN7CaDiCaL18ExternalPropagatorE", !13, i64 0}
!168 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !19, i64 0}
!169 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !13, i64 0}
!170 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !169, i64 0}
!171 = !{!"float", !6, i64 0}
!172 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !171, i64 0, !11, i64 8}
!173 = !{!"_ZTSSt10_HashtableImSt4pairIKmSt6vectorIiSaIiEEESaIS5_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb0ELb0ELb1EEEE", !168, i64 0, !11, i64 8, !170, i64 16, !11, i64 24, !172, i64 32, !169, i64 48}
!174 = !{!"_ZTSSt13unordered_mapImSt6vectorIiSaIiEESt4hashImESt8equal_toImESaISt4pairIKmS2_EEE", !173, i64 0}
!175 = !{!"_ZTSN7CaDiCaL8ExternalE", !52, i64 0, !7, i64 8, !11, i64 16, !163, i64 24, !44, i64 64, !44, i64 88, !44, i64 112, !18, i64 136, !163, i64 160, !44, i64 200, !10, i64 224, !10, i64 225, !44, i64 232, !163, i64 256, !163, i64 296, !40, i64 336, !164, i64 360, !165, i64 368, !166, i64 376, !167, i64 384, !163, i64 392, !174, i64 432, !30, i64 488, !44, i64 496, !163, i64 520, !154, i64 560}
!176 = !{!175, !30, i64 488}
!177 = !{!156, !11, i64 88}
!178 = !{!156, !111, i64 3104}
!179 = !{!15, !14, i64 8}
!180 = !{!15, !14, i64 16}
!181 = !{!11, !11, i64 0}
!182 = !{!15, !14, i64 0}
!183 = !{!156, !10, i64 320}
!184 = !{i8 0, i8 2}
!185 = !{}
!186 = !{!47, !46, i64 0}
!187 = !{!"_ZTSN7CaDiCaL4LinkE", !7, i64 0, !7, i64 4}
!188 = !{!187, !7, i64 4}
!189 = !{!187, !7, i64 0}
!190 = !{!45, !7, i64 0}
!191 = !{!45, !7, i64 4}
!192 = !{!156, !11, i64 4632}
!193 = !{!70, !14, i64 0}
!194 = !{!156, !30, i64 472}
!195 = !{!6, !6, i64 0}
!196 = !{!156, !7, i64 584}
!197 = !{!156, !11, i64 592}
!198 = !{!156, !51, i64 624}
!199 = !{!7, !7, i64 0}
!200 = !{!56, !55, i64 0}
!201 = !{!51, !51, i64 0}
!202 = !{!156, !52, i64 7248}
!203 = !{!"llvm.loop.isvectorized", i32 1}
!204 = !{!"llvm.loop.unroll.runtime.disable"}
!205 = !{!"llvm.loop.unroll.disable"}
!206 = !{!156, !11, i64 3928}
!207 = !{!37, !36, i64 8}
!208 = !{!37, !36, i64 0}
!209 = !{!156, !7, i64 3700}
!210 = !{!156, !7, i64 3704}
!211 = !{!156, !7, i64 3608}
!212 = !{!156, !7, i64 3620}
!213 = !{!36, !36, i64 0}
!214 = !{!156, !10, i64 12}
!215 = !{!156, !7, i64 3616}
!216 = !{!"llvm.loop.mustprogress"}
!217 = !{!156, !11, i64 4640}
!218 = !{!61, !60, i64 0}
!219 = !{!"_ZTSN7CaDiCaL3VarE", !7, i64 0, !7, i64 4, !89, i64 8}
!220 = !{!219, !7, i64 0}
!221 = !{!41, !36, i64 0}
!222 = !{!41, !36, i64 8}
!223 = !{!66, !65, i64 0}
!224 = !{!92, !91, i64 8}
!225 = !{!92, !91, i64 0}
!226 = !{!"_ZTSN7CaDiCaL5LevelUt_E", !7, i64 0, !7, i64 4}
!227 = !{!"_ZTSN7CaDiCaL5LevelE", !7, i64 0, !7, i64 4, !226, i64 8}
!228 = !{!227, !7, i64 8}
!229 = !{!227, !7, i64 12}
!230 = !{!156, !10, i64 5}
!231 = !{!156, !7, i64 3640}
!232 = !{!219, !7, i64 4}
!233 = !{!89, !89, i64 0}
!234 = !{!156, !11, i64 4744}
!235 = !{!41, !36, i64 16}
!236 = !{!85, !84, i64 0}
!237 = !{!"p1 _ZTSN7CaDiCaL5WatchE", !13, i64 0}
!238 = !{!237, !237, i64 0}
!239 = !{i64 0, i64 8, !233, i64 8, i64 4, !199, i64 12, i64 4, !199}
!240 = !{!"_ZTSN7CaDiCaL5WatchE", !89, i64 0, !7, i64 8, !7, i64 12}
!241 = !{!240, !89, i64 0}
!242 = !{!14, !14, i64 0}
!243 = !{!"_ZTSNSt12_Vector_baseIN7CaDiCaL5WatchESaIS1_EE17_Vector_impl_dataE", !237, i64 0, !237, i64 8, !237, i64 16}
!244 = !{!243, !237, i64 8}
!245 = !{!243, !237, i64 16}
!246 = !{!243, !237, i64 0}
!247 = !{!156, !7, i64 3280}
!248 = !{!156, !89, i64 952}
!249 = !{!156, !7, i64 324}
!250 = !{!219, !89, i64 8}
!251 = !{!156, !89, i64 976}
!252 = !{!53, !52, i64 0}
!253 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!254 = !{!156, !10, i64 4}
!255 = !{!156, !11, i64 112}
!256 = !{!156, !10, i64 1161}
!257 = !{!156, !10, i64 321}
!258 = distinct !{!258, !203, !204}
!259 = distinct !{!259, !205}
!260 = distinct !{!260, !203}
!261 = !{!156, !11, i64 4552}
!262 = !{!154, !36, i64 0}
!263 = !{i64 4}
!264 = !{!156, !7, i64 80}
!265 = !{!156, !7, i64 5720}
!266 = !{!156, !7, i64 3244}
!267 = !{!156, !7, i64 3248}
!268 = distinct !{!268, !216, !203, !204}
!269 = distinct !{!269, !205}
!270 = distinct !{!270, !216}
!271 = distinct !{!271, !205}
!272 = distinct !{!272, !216}
!273 = distinct !{!273, !216}
!274 = distinct !{!274, !216}
!275 = distinct !{!275, !216, !203}
!276 = distinct !{!276, !216, !203, !204}
!277 = distinct !{!277, !205}
!278 = distinct !{!278, !216}
!279 = distinct !{!279, !205}
!280 = distinct !{!280, !216}
!281 = distinct !{!281, !216}
!282 = distinct !{!282, !216}
!283 = distinct !{!283, !216, !203}
!284 = distinct !{!284, !216}
!285 = !{!156, !11, i64 4848}
!286 = !{!156, !7, i64 3376}
!287 = !{!20, !20, i64 0}
!288 = !{!31, !30, i64 0}
!289 = !{!156, !11, i64 4856}
!290 = distinct !{!290, !216}
!291 = distinct !{!291, !"_ZNSt6vectorImSaImEE4rendEv"}
!292 = distinct !{!292, !291, !"_ZNSt6vectorImSaImEE4rendEv: argument 0"}
!293 = distinct !{!293, !"_ZNSt6vectorImSaImEE6rbeginEv"}
!294 = distinct !{!294, !293, !"_ZNSt6vectorImSaImEE6rbeginEv: argument 0"}
!295 = distinct !{!295, !216}
!296 = distinct !{!296, !216}
!297 = distinct !{!297, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!298 = distinct !{!298, !297, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!299 = distinct !{!299, !297, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!300 = distinct !{!300, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!301 = distinct !{!301, !300, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!302 = distinct !{!302, !300, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!303 = !{!156, !11, i64 5520}
!304 = !{!292}
!305 = !{!294}
!306 = !{!299, !298}
!307 = !{!240, !7, i64 12}
!308 = !{!240, !7, i64 8}
!309 = !{!302, !301}
!310 = !{!156, !11, i64 4768}
!311 = !{!156, !11, i64 4184}
!312 = !{!156, !11, i64 4176}
!313 = distinct !{!313, !216}
!314 = distinct !{!314, !216}
!315 = distinct !{!315, !216}
!316 = !{!156, !7, i64 5600}
!317 = !{!156, !11, i64 2152}
!318 = !{!156, !10, i64 14}
!319 = !{!156, !10, i64 16}
!320 = !{!156, !7, i64 3488}
!321 = !{!175, !165, i64 368}
!322 = !{!156, !7, i64 3572}
!323 = !{!156, !7, i64 3240}
!324 = !{!156, !11, i64 5184}
!325 = !{!156, !11, i64 5528}
!326 = !{!156, !7, i64 3712}
!327 = !{!156, !7, i64 3564}
!328 = !{!12, !11, i64 24}
!329 = !{!12, !10, i64 40}
!330 = !{!12, !11, i64 32}
!331 = !{!12, !11, i64 0}
!332 = !{!12, !11, i64 8}
!333 = !{!12, !10, i64 41}
!334 = !{!12, !11, i64 16}
!335 = !{!156, !7, i64 3372}
!336 = distinct !{!336, !216}
!337 = distinct !{!337, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!338 = distinct !{!338, !337, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!339 = distinct !{!339, !337, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!340 = !{!339, !338}
!341 = distinct !{!341, !216}
!342 = distinct !{!342, !216}
!343 = distinct !{!343, !216}
!344 = !{!156, !7, i64 3284}
!345 = !{!156, !11, i64 4592}
!346 = !{!156, !7, i64 3288}
!347 = !{!156, !7, i64 3292}
!348 = !{!227, !7, i64 4}
!349 = distinct !{!349, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_"}
!350 = distinct !{!350, !349, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 1"}
!351 = distinct !{!351, !349, !"_ZSt19__relocate_object_aIN7CaDiCaL5WatchES1_SaIS1_EEvPT_PT0_RT1_: argument 0"}
!352 = !{!351, !350}
!353 = distinct !{!353, !216}
!354 = distinct !{!354, !216, !203, !204}
!355 = distinct !{!355, !216, !204, !203}
!356 = distinct !{!356, !216, !203, !204}
!357 = distinct !{!357, !216, !204, !203}
!358 = distinct !{!358, !216, !203, !204}
!359 = distinct !{!359, !216, !204, !203}
!360 = distinct !{!360, !216, !203, !204}
!361 = distinct !{!361, !216, !204, !203}
!362 = !{!37, !36, i64 16}
!363 = distinct !{!363, !216}
!364 = distinct !{!364, !216}
!365 = distinct !{!365, !216}
!366 = distinct !{!366, !216}
!367 = distinct !{!367, !216}
!368 = distinct !{!368, !216}
!369 = distinct !{!369, !216}
!370 = distinct !{!370, !216}
!371 = distinct !{!371, !216}
!372 = distinct !{!372, !216}
!373 = distinct !{!373, !216}
!374 = distinct !{!374, !216}
!375 = distinct !{!375, !216}
!376 = distinct !{!376, !216}
!377 = distinct !{!377, !216}
!378 = distinct !{!378, !216}
!379 = distinct !{!379, !216}
!380 = distinct !{!380, !216}
!381 = distinct !{!381, !216}
!382 = distinct !{!382, !216}
!383 = distinct !{!383, !216}
!384 = distinct !{!384, !216}
end_hunk_1
