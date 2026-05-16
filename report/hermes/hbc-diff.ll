inline.NumInlined: 1072
inline.NumDeleted: 640
begin_hunk_0_@main:bb.a
  %.sroa.speculated.i.i.i.i215.i = call i64 @llvm.umax.i64(i64 %i.pp, i64 1)
  %i.pq = add nsw i64 %.sroa.speculated.i.i.i.i215.i, %i.pp ; 2 uses
  %i.pr = icmp ult i64 %i.pq, %i.pp
  %i.ps = call i64 @llvm.umin.i64(i64 %i.pq, i64 1152921504606846975)
  %i.pt = select i1 %i.pr, i64 1152921504606846975, i64 %i.ps ; 3 uses
  %.not.i.i.i.i216.i = icmp ne i64 %i.pt, 0
  call void @llvm.assume(i1 %.not.i.i.i.i216.i)
  %i.pu = shl nuw nsw i64 %i.pt, 3
  %i.pv = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.pu) #26 ; 4 uses
  %i.pw = getelementptr inbounds i8, ptr %i.pv, i64 %i.pn ; 2 uses
  store i64 %i.pi, ptr %i.pw, align 8, !tbaa !17
  %i.px = icmp sgt i64 %i.pn, 0
  br i1 %i.px, label %bb.cj, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i217.i

bb.cj:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i214.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.pv, ptr align 8 %i.pk, i64 %i.pn, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i217.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i217.i: ; preds = %bb.cj, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i214.i
  %i.py = getelementptr inbounds nuw i8, ptr %i.pw, i64 8 ; 2 uses
  %.not.i17.i.i.i218.i = icmp eq ptr %i.pk, null
  br i1 %.not.i17.i.i.i218.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i217.i
  call void @_ZdlPvm(ptr noundef nonnull %i.pk, i64 noundef %i.pn) #23
  %.pre538.pre.i = load ptr, ptr %4, align 8, !tbaa !80
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i: ; preds = %bb.ck, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i217.i
  %.pre543694.i = phi ptr [ %.pre538.pre.i, %bb.ck ], [ %.pre543695.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i217.i ]
  store ptr %i.pv, ptr %i.hi, align 8, !tbaa !88
  store ptr %i.py, ptr %i.hm, align 8, !tbaa !84
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pv, i64 %i.pt ; 2 uses
  store ptr %i.pz, ptr %i.ho, align 8, !tbaa !87
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit220.i

_ZNSt6vectorIlSaIlEE9push_backEOl.exit220.i:      ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i, %bb.cg
  %.pre543693.i = phi ptr [ %.pre543695.i, %bb.cg ], [ %.pre543694.i, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i ] ; 3 uses
  %i.qa = phi ptr [ %i.pg, %bb.cg ], [ %i.pz, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i ] ; 3 uses
  %i.qb = phi ptr [ %i.pj, %bb.cg ], [ %i.py, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i219.i ] ; 3 uses
  %.sroa.2.0..sroa_idx.i222.i = getelementptr inbounds nuw i8, ptr %.pre543693.i, i64 216
  %.sroa.2.0.copyload.i223.i = load i64, ptr %.sroa.2.0..sroa_idx.i222.i, align 8, !tbaa !17
  %i.qc = shl i64 %.sroa.2.0.copyload.i223.i, 3   ; 2 uses
  %.not.i.i226.i = icmp eq ptr %i.qb, %i.qa
  br i1 %.not.i.i226.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit220.i
  store i64 %i.qc, ptr %i.qb, align 8, !tbaa !17
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 2 uses
  store ptr %i.qd, ptr %i.hm, align 8, !tbaa !84
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit233.i

bb.cm:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit220.i
  %i.qe = load ptr, ptr %i.hi, align 8, !tbaa !88 ; 4 uses
  %i.qf = ptrtoint ptr %i.qa to i64
  %i.qg = ptrtoint ptr %i.qe to i64
  %i.qh = sub i64 %i.qf, %i.qg                    ; 6 uses
  %i.qi = icmp eq i64 %i.qh, 9223372036854775800
  br i1 %i.qi, label %bb.cn, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i227.i

bb.cn:                                            ; preds = %bb.cm
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i227.i: ; preds = %bb.cm
  %i.qj = ashr exact i64 %i.qh, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i228.i = call i64 @llvm.umax.i64(i64 %i.qj, i64 1)
  %i.qk = add nsw i64 %.sroa.speculated.i.i.i.i228.i, %i.qj ; 2 uses
  %i.ql = icmp ult i64 %i.qk, %i.qj
  %i.qm = call i64 @llvm.umin.i64(i64 %i.qk, i64 1152921504606846975)
  %i.qn = select i1 %i.ql, i64 1152921504606846975, i64 %i.qm ; 3 uses
  %.not.i.i.i.i229.i = icmp ne i64 %i.qn, 0
  call void @llvm.assume(i1 %.not.i.i.i.i229.i)
  %i.qo = shl nuw nsw i64 %i.qn, 3
  %i.qp = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qo) #26 ; 4 uses
  %i.qq = getelementptr inbounds i8, ptr %i.qp, i64 %i.qh ; 2 uses
  store i64 %i.qc, ptr %i.qq, align 8, !tbaa !17
  %i.qr = icmp sgt i64 %i.qh, 0
  br i1 %i.qr, label %bb.co, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i230.i

bb.co:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i227.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.qp, ptr align 8 %i.qe, i64 %i.qh, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i230.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i230.i: ; preds = %bb.co, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i227.i
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 8 ; 2 uses
  %.not.i17.i.i.i231.i = icmp eq ptr %i.qe, null
  br i1 %.not.i17.i.i.i231.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i, label %bb.cp

bb.cp:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i230.i
  call void @_ZdlPvm(ptr noundef nonnull %i.qe, i64 noundef %i.qh) #23
  %.pre539.pre.i = load ptr, ptr %4, align 8, !tbaa !80
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i: ; preds = %bb.cp, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i230.i
  %.pre543692.i = phi ptr [ %.pre539.pre.i, %bb.cp ], [ %.pre543693.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i230.i ]
  store ptr %i.qp, ptr %i.hi, align 8, !tbaa !88
  store ptr %i.qs, ptr %i.hm, align 8, !tbaa !84
  %i.qt = getelementptr inbounds nuw [8 x i8], ptr %i.qp, i64 %i.qn ; 2 uses
  store ptr %i.qt, ptr %i.ho, align 8, !tbaa !87
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit233.i

_ZNSt6vectorIlSaIlEE9push_backEOl.exit233.i:      ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i, %bb.cl
  %.pre543691.i = phi ptr [ %.pre543693.i, %bb.cl ], [ %.pre543692.i, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i ] ; 5 uses
  %i.qu = phi ptr [ %i.qa, %bb.cl ], [ %i.qt, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i ] ; 3 uses
  %i.qv = phi ptr [ %i.qd, %bb.cl ], [ %i.qs, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i232.i ] ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %.pre543691.i, i64 12
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !89 ; 3 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %.pre543691.i, i64 288
  %i.qz = load ptr, ptr %i.qy, align 8, !tbaa !104 ; 5 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.pre543691.i, i64 296
  %i.rb = load ptr, ptr %i.ra, align 8, !tbaa !129 ; 8 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 15
  %i.rd = load i8, ptr %i.rc, align 1
  %i.re = and i8 %i.rd, 32                        ; 2 uses
  %.not.i.i234.i = icmp eq i8 %i.re, 0
  br i1 %.not.i.i234.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i, label %bb.cq, !prof !130

bb.cq:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit233.i
  %i.rf = getelementptr inbounds nuw i8, ptr %i.rb, i64 8
  %i.rg = load i32, ptr %i.rf, align 1
  %i.rh = shl i32 %i.rg, 16
  %i.ri = load i64, ptr %i.rb, align 1
  %i.rj = trunc i64 %i.ri to i32
  %i.rk = and i32 %i.rj, 33554431
  %i.rl = or i32 %i.rk, %i.rh
  %i.rm = zext i32 %i.rl to i64
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rm
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i: ; preds = %bb.cq, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit233.i
  %.sroa.0.0.i.i.i = phi ptr [ %i.ro, %bb.cq ], [ %i.rb, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit233.i ] ; 3 uses
  %i.rp = ptrtoint ptr %.sroa.0.0.i.i.i to i64
  %i.rq = trunc i64 %i.rp to i1
  br i1 %i.rq, label %bb.cr, label %bb.cs, !prof !131

bb.cr:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i
  %i.rr = getelementptr inbounds i8, ptr %.sroa.0.0.i.i.i, i64 -1
  %i.rs = load i32, ptr %i.rr, align 1, !tbaa !132
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i

bb.cs:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i.i
  %i.rt = load i64, ptr %.sroa.0.0.i.i.i, align 1
  %i.ru = trunc i64 %i.rt to i32
  %i.rv = and i32 %i.ru, 33554431
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i

_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i = phi i32 [ %i.rs, %bb.cr ], [ %i.rv, %bb.cs ]
  %i.rw = zext i32 %.0.i.i.i to i64
  %i.rx = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.rw ; 3 uses
  %.not511.i = icmp eq i32 %i.qx, 0               ; 2 uses
  br i1 %.not511.i, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i
  %wide.trip.count.i = zext i32 %i.qx to i64
  br label %.lr.ph.i

._crit_edge.loopexit.i:                           ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit269.i
  %.phi.trans.insert.i = zext i32 %spec.select.i to i64 ; 2 uses
  %.phi.trans.insert540.i = getelementptr inbounds nuw [16 x i8], ptr %i.rb, i64 %.phi.trans.insert.i
  %.phi.trans.insert541.i = getelementptr inbounds nuw i8, ptr %.phi.trans.insert540.i, i64 15
  %.pre542.i = load i8, ptr %.phi.trans.insert541.i, align 1
  %.pre.i = and i8 %.pre542.i, 32
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i
  %.pre-phi.i = phi i8 [ %.pre.i, %._crit_edge.loopexit.i ], [ %i.re, %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i ]
  %.084.lcssa.i = phi i64 [ %.phi.trans.insert.i, %._crit_edge.loopexit.i ], [ 0, %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i ]
  %.082.lcssa.i = phi ptr [ %spec.select95.i, %._crit_edge.loopexit.i ], [ %i.rx, %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit.i ]
  %i.ry = getelementptr inbounds nuw [16 x i8], ptr %i.rb, i64 %.084.lcssa.i ; 3 uses
  %.not.i235.i = icmp eq i8 %.pre-phi.i, 0
  br i1 %.not.i235.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i, label %bb.ct, !prof !130

bb.ct:                                            ; preds = %._crit_edge.i
  %i.rz = getelementptr inbounds nuw i8, ptr %i.ry, i64 8
  %i.sa = load i32, ptr %i.rz, align 1
  %i.sb = shl i32 %i.sa, 16
  %i.sc = load i64, ptr %i.ry, align 1
  %i.sd = trunc i64 %i.sc to i32
  %i.se = and i32 %i.sd, 33554431
  %i.sf = or i32 %i.se, %i.sb
  %i.sg = zext i32 %i.sf to i64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.sg
  %i.si = getelementptr inbounds nuw i8, ptr %i.sh, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i: ; preds = %bb.ct, %._crit_edge.i
  %.sroa.0.0.i.i = phi ptr [ %i.si, %bb.ct ], [ %i.ry, %._crit_edge.i ] ; 3 uses
  %i.sj = ptrtoint ptr %.sroa.0.0.i.i to i64
  %i.sk = trunc i64 %i.sj to i1
  br i1 %i.sk, label %bb.cu, label %bb.cv, !prof !131

bb.cu:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i
  %i.sl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 7
  %i.sm = load i32, ptr %i.sl, align 1, !tbaa !134
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i

bb.cv:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i
  %.shift.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i, i64 4
  %11 = load i32, ptr %.shift.i.i, align 1
  %i.sn = and i32 %11, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i: ; preds = %bb.cv, %bb.cu
  %.0.i236.i = phi i32 [ %i.sm, %bb.cu ], [ %i.sn, %bb.cv ]
  %i.so = zext i32 %.0.i236.i to i64
  %i.sp = getelementptr inbounds nuw i8, ptr %.082.lcssa.i, i64 %i.so
  %i.sq = ptrtoint ptr %i.sp to i64
  %i.sr = ptrtoint ptr %i.rx to i64
  %i.ss = sub i64 %i.sq, %i.sr                    ; 2 uses
  %.not.i.i237.i = icmp eq ptr %i.qv, %i.qu
  br i1 %.not.i.i237.i, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i
  store i64 %i.ss, ptr %i.qv, align 8, !tbaa !17
  %i.st = getelementptr inbounds nuw i8, ptr %i.qv, i64 8 ; 2 uses
  store ptr %i.st, ptr %i.hm, align 8, !tbaa !84
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit244.i

bb.cx:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit.i
  %i.su = load ptr, ptr %i.hi, align 8, !tbaa !88 ; 4 uses
  %i.sv = ptrtoint ptr %i.qu to i64
  %i.sw = ptrtoint ptr %i.su to i64
  %i.sx = sub i64 %i.sv, %i.sw                    ; 6 uses
  %i.sy = icmp eq i64 %i.sx, 9223372036854775800
  br i1 %i.sy, label %bb.cy, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i238.i

bb.cy:                                            ; preds = %bb.cx
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i238.i: ; preds = %bb.cx
  %i.sz = ashr exact i64 %i.sx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i239.i = call i64 @llvm.umax.i64(i64 %i.sz, i64 1)
  %i.ta = add nsw i64 %.sroa.speculated.i.i.i.i239.i, %i.sz ; 2 uses
  %i.tb = icmp ult i64 %i.ta, %i.sz
  %i.tc = call i64 @llvm.umin.i64(i64 %i.ta, i64 1152921504606846975)
  %i.td = select i1 %i.tb, i64 1152921504606846975, i64 %i.tc ; 3 uses
  %.not.i.i.i.i240.i = icmp ne i64 %i.td, 0
  call void @llvm.assume(i1 %.not.i.i.i.i240.i)
  %i.te = shl nuw nsw i64 %i.td, 3
  %i.tf = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.te) #26 ; 4 uses
  %i.tg = getelementptr inbounds i8, ptr %i.tf, i64 %i.sx ; 2 uses
  store i64 %i.ss, ptr %i.tg, align 8, !tbaa !17
  %i.th = icmp sgt i64 %i.sx, 0
  br i1 %i.th, label %bb.cz, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i241.i

bb.cz:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i238.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.tf, ptr align 8 %i.su, i64 %i.sx, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i241.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i241.i: ; preds = %bb.cz, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i238.i
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tg, i64 8 ; 2 uses
  %.not.i17.i.i.i242.i = icmp eq ptr %i.su, null
  br i1 %.not.i17.i.i.i242.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i, label %bb.da

bb.da:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i241.i
  call void @_ZdlPvm(ptr noundef nonnull %i.su, i64 noundef %i.sx) #23
  %.pre543.pre.i = load ptr, ptr %4, align 8, !tbaa !80
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i: ; preds = %bb.da, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i241.i
  %.pre543.i = phi ptr [ %.pre543.pre.i, %bb.da ], [ %.pre543691.i, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i241.i ] ; 2 uses
  store ptr %i.tf, ptr %i.hi, align 8, !tbaa !88
  store ptr %i.ti, ptr %i.hm, align 8, !tbaa !84
  %i.tj = getelementptr inbounds nuw [8 x i8], ptr %i.tf, i64 %i.td ; 2 uses
  store ptr %i.tj, ptr %i.ho, align 8, !tbaa !87
  %.phi.trans.insert715.i = getelementptr inbounds nuw i8, ptr %.pre543.i, i64 296
  %.pre716.i = load ptr, ptr %.phi.trans.insert715.i, align 8, !tbaa !129
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit244.i

_ZNSt6vectorIlSaIlEE9push_backEOl.exit244.i:      ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i, %bb.cw
  %i.tk = phi ptr [ %i.rb, %bb.cw ], [ %.pre716.i, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i ] ; 4 uses
  %i.tl = phi ptr [ %i.qu, %bb.cw ], [ %i.tj, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i ] ; 3 uses
  %i.tm = phi ptr [ %i.st, %bb.cw ], [ %i.ti, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i ] ; 3 uses
  %i.tn = phi ptr [ %.pre543691.i, %bb.cw ], [ %.pre543.i, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i243.i ]
  %i.to = getelementptr inbounds nuw i8, ptr %i.tk, i64 15
  %i.tp = load i8, ptr %i.to, align 1
  %i.tq = and i8 %i.tp, 32
  %.not.i245.i = icmp eq i8 %i.tq, 0
  br i1 %.not.i245.i, label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit247.i, label %bb.db, !prof !130

bb.db:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit244.i
  %i.tr = getelementptr inbounds nuw i8, ptr %i.tn, i64 288
  %i.ts = load ptr, ptr %i.tr, align 8, !tbaa !104
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tk, i64 8
  %i.tu = load i32, ptr %i.tt, align 1
  %i.tv = shl i32 %i.tu, 16
  %i.tw = load i64, ptr %i.tk, align 1
  %i.tx = trunc i64 %i.tw to i32
  %i.ty = and i32 %i.tx, 33554431
  %i.tz = or i32 %i.ty, %i.tv
  %i.ua = zext i32 %i.tz to i64
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ts, i64 %i.ua
  %i.uc = getelementptr inbounds nuw i8, ptr %i.ub, i64 1
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit247.i

_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit247.i: ; preds = %bb.db, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit244.i
  %.sroa.0.0.i246.i = phi ptr [ %i.uc, %bb.db ], [ %i.tk, %_ZNSt6vectorIlSaIlEE9push_backEOl.exit244.i ] ; 3 uses
  %i.ud = ptrtoint ptr %.sroa.0.0.i246.i to i64
  %i.ue = trunc i64 %i.ud to i1
  br i1 %i.ue, label %bb.dc, label %bb.dd, !prof !131

bb.dc:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit247.i
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i246.i, i64 15
  %i.ug = load i32, ptr %i.uf, align 1, !tbaa !135
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit.i

bb.dd:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit247.i
  %i.uh = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i246.i, i64 8
  %i.ui = load i32, ptr %i.uh, align 1
  %i.uj = and i32 %i.ui, 33554431
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit.i

_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit.i: ; preds = %bb.dd, %bb.dc
  %.0.i248.i = phi i32 [ %i.ug, %bb.dc ], [ %i.uj, %bb.dd ]
  %i.uk = getelementptr inbounds nuw i8, ptr %i.gg, i64 104
  %i.ul = load i32, ptr %i.uk, align 1, !tbaa !136 ; 2 uses
  %i.um = sub i32 %i.ul, %.0.i248.i
  %i.un = zext i32 %i.um to i64                   ; 2 uses
  %.not.i.i249.i = icmp eq ptr %i.tm, %i.tl
  br i1 %.not.i.i249.i, label %bb.df, label %bb.de

bb.de:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit.i
  store i64 %i.un, ptr %i.tm, align 8, !tbaa !17
  %i.uo = getelementptr inbounds nuw i8, ptr %i.tm, i64 8 ; 2 uses
  store ptr %i.uo, ptr %i.hm, align 8, !tbaa !84
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit256.i

bb.df:                                            ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader10infoOffsetEv.exit.i
  %i.up = load ptr, ptr %i.hi, align 8, !tbaa !88 ; 4 uses
  %i.uq = ptrtoint ptr %i.tl to i64
  %i.ur = ptrtoint ptr %i.up to i64
  %i.us = sub i64 %i.uq, %i.ur                    ; 6 uses
  %i.ut = icmp eq i64 %i.us, 9223372036854775800
  br i1 %i.ut, label %bb.dg, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i250.i

bb.dg:                                            ; preds = %bb.df
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.15) #25
  unreachable

_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i250.i: ; preds = %bb.df
  %i.uu = ashr exact i64 %i.us, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i251.i = call i64 @llvm.umax.i64(i64 %i.uu, i64 1)
  %i.uv = add nsw i64 %.sroa.speculated.i.i.i.i251.i, %i.uu ; 2 uses
  %i.uw = icmp ult i64 %i.uv, %i.uu
  %i.ux = call i64 @llvm.umin.i64(i64 %i.uv, i64 1152921504606846975)
  %i.uy = select i1 %i.uw, i64 1152921504606846975, i64 %i.ux ; 3 uses
  %.not.i.i.i.i252.i = icmp ne i64 %i.uy, 0
  call void @llvm.assume(i1 %.not.i.i.i.i252.i)
  %i.uz = shl nuw nsw i64 %i.uy, 3
  %i.va = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.uz) #26 ; 4 uses
  %i.vb = getelementptr inbounds i8, ptr %i.va, i64 %i.us ; 2 uses
  store i64 %i.un, ptr %i.vb, align 8, !tbaa !17
  %i.vc = icmp sgt i64 %i.us, 0
  br i1 %i.vc, label %bb.dh, label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i253.i

bb.dh:                                            ; preds = %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i250.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.va, ptr align 8 %i.up, i64 %i.us, i1 false)
  br label %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i253.i

_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i253.i: ; preds = %bb.dh, %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i250.i
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vb, i64 8 ; 2 uses
  %.not.i17.i.i.i254.i = icmp eq ptr %i.up, null
  br i1 %.not.i17.i.i.i254.i, label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i255.i, label %bb.di

bb.di:                                            ; preds = %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i253.i
  call void @_ZdlPvm(ptr noundef nonnull %i.up, i64 noundef %i.us) #23
  br label %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i255.i

_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i255.i: ; preds = %bb.di, %_ZNSt6vectorIlSaIlEE11_S_relocateEPlS2_S2_RS0_.exit16.i.i.i253.i
  store ptr %i.va, ptr %i.hi, align 8, !tbaa !88
  store ptr %i.vd, ptr %i.hm, align 8, !tbaa !84
  %i.ve = getelementptr inbounds nuw [8 x i8], ptr %i.va, i64 %i.uy ; 2 uses
  store ptr %i.ve, ptr %i.ho, align 8, !tbaa !87
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit256.i

_ZNSt6vectorIlSaIlEE9push_backEOl.exit256.i:      ; preds = %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i255.i, %bb.de
  %i.vf = phi ptr [ %i.tl, %bb.de ], [ %i.ve, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i255.i ] ; 2 uses
  %i.vg = phi ptr [ %i.uo, %bb.de ], [ %i.vd, %_ZNSt6vectorIlSaIlEE17_M_realloc_insertIJlEEEvN9__gnu_cxx17__normal_iteratorIPlS1_EEDpOT_.exit.i.i255.i ] ; 3 uses
  %i.vh = load i32, ptr %i.hj, align 1, !tbaa !82
  %i.vi = sub i32 %i.vh, %i.ul
  %i.vj = zext i32 %i.vi to i64                   ; 2 uses
  %.not.i.i257.i = icmp eq ptr %i.vg, %i.vf
  br i1 %.not.i.i257.i, label %bb.dk, label %bb.dj

bb.dj:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit256.i
  store i64 %i.vj, ptr %i.vg, align 8, !tbaa !17
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vg, i64 8 ; 2 uses
  store ptr %i.vk, ptr %i.hm, align 8, !tbaa !84
  %.pre544.i = load ptr, ptr %i.hi, align 8, !tbaa !88
  br label %_ZNSt6vectorIlSaIlEE9push_backEOl.exit264.i

bb.dk:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit256.i
  %i.vl = load ptr, ptr %i.hi, align 8, !tbaa !88 ; 4 uses
  %i.vm = ptrtoint ptr %i.vf to i64
  %i.vn = ptrtoint ptr %i.vl to i64
  %i.vo = sub i64 %i.vm, %i.vn                    ; 6 uses
  %i.vp = icmp eq i64 %i.vo, 9223372036854775800
  br i1 %i.vp, label %bb.dl, label %_ZNKSt6vectorIlSaIlEE12_M_check_lenEmPKc.exit.i.i.i258.i

end_hunk_0
begin_hunk_1_@main:bb.a
bb.dq:                                            ; preds = %_ZNK6hermes3hbc20BCProviderFromBuffer17getFunctionHeaderEj.exit.i266.i
  %i.wy = load i64, ptr %.sroa.0.0.i.i267.i, align 1
  %i.wz = trunc i64 %i.wy to i32
  %i.xa = and i32 %i.wz, 33554431
  br label %_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit269.i

_ZNK6hermes3hbc20BCProviderFromBuffer11getBytecodeEj.exit269.i: ; preds = %bb.dq, %bb.dp
  %.0.i.i268.i = phi i32 [ %i.wx, %bb.dp ], [ %i.xa, %bb.dq ]
  %i.xb = zext i32 %.0.i.i268.i to i64
  %i.xc = getelementptr inbounds nuw i8, ptr %i.qz, i64 %i.xb ; 2 uses
  %i.xd = icmp ugt ptr %i.xc, %.082489.i          ; 2 uses
  %i.xe = trunc nuw i64 %indvars.iv.i to i32
  %spec.select.i = select i1 %i.xd, i32 %i.xe, i32 %.084488.i ; 2 uses
  %spec.select95.i = select i1 %i.xd, ptr %i.xc, ptr %.082489.i ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !137

bb.dr:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit264.i
  %i.xf = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4errsEv() #22 ; 3 uses
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 16
  %i.xh = load ptr, ptr %i.xg, align 8, !tbaa !8
  %i.xi = getelementptr inbounds nuw i8, ptr %i.xf, i64 24 ; 3 uses
  %i.xj = load ptr, ptr %i.xi, align 8, !tbaa !13 ; 2 uses
  %i.xk = ptrtoint ptr %i.xh to i64
  %i.xl = ptrtoint ptr %i.xj to i64
  %i.xm = sub i64 %i.xk, %i.xl
  %i.xn = icmp ult i64 %i.xm, 50
  br i1 %i.xn, label %bb.ds, label %bb.dt

bb.ds:                                            ; preds = %bb.dr
  %i.xo = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.xf, ptr noundef nonnull @.str.4, i64 noundef 50) #22 ; 0 uses
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(50) %i.xj, ptr noundef nonnull align 1 dereferenceable(50) @.str.4, i64 50, i1 false)
  %i.xp = load ptr, ptr %i.xi, align 8, !tbaa !13
  %i.xq = getelementptr inbounds nuw i8, ptr %i.xp, i64 50
  store ptr %i.xq, ptr %i.xi, align 8, !tbaa !13
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.du:                                            ; preds = %_ZNSt6vectorIlSaIlEE9push_backEOl.exit264.i
  %i.xr = load ptr, ptr %4, align 8, !tbaa !80    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  call void @_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EEC2INS1_20BCProviderFromBufferESt14default_deleteIS7_EvEEOSt10unique_ptrIT_T0_E(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 8 dereferenceable(8) %4)
  %i.xs = load ptr, ptr %i.fs, align 8, !tbaa !138 ; 3 uses
  %i.xt = load <2 x ptr>, ptr %6, align 16, !tbaa !141
  store <2 x ptr> %i.xt, ptr %5, align 16, !tbaa !141
  %.not.i.i.i.i271.i = icmp eq ptr %i.xs, null
  br i1 %.not.i.i.i.i271.i, label %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread.i, label %bb.dv

_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread.i: ; preds = %bb.du
  store i32 1, ptr %i.ft, align 16, !tbaa !142
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dv:                                            ; preds = %bb.du
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xs, i64 8 ; 3 uses
  %i.xv = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i.i272.i = icmp eq i8 %i.xv, 0
  br i1 %.not.i.i.i.i.i272.i, label %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, label %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread853.i

_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread853.i: ; preds = %bb.dv
  %i.xw = load i32, ptr %i.xu, align 4, !tbaa !4
  %i.xx = add nsw i32 %i.xw, 1
  store i32 %i.xx, ptr %i.xu, align 4, !tbaa !4
  store i32 1, ptr %i.ft, align 16, !tbaa !142
  br label %bb.dw

_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i: ; preds = %bb.dv
  %i.xy = atomicrmw volatile add ptr %i.xu, i32 1 acq_rel, align 4 ; 0 uses
  %.pr.pre.i = load ptr, ptr %i.fs, align 8, !tbaa !138 ; 2 uses
  store i32 1, ptr %i.ft, align 16, !tbaa !142
  %.not.i.i273.i = icmp eq ptr %.pr.pre.i, null
  br i1 %.not.i.i273.i, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, label %bb.dw

bb.dw:                                            ; preds = %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread853.i
  %.pr856.i = phi ptr [ %i.xs, %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread853.i ], [ %.pr.pre.i, %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i ] ; 7 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %.pr856.i, i64 8 ; 4 uses
  %i.ya = load atomic i64, ptr %i.xz acquire, align 8 ; 2 uses
  %i.yb = icmp eq i64 %i.ya, 4294967297
  %i.yc = trunc i64 %i.ya to i32                  ; 2 uses
  br i1 %i.yb, label %bb.dx, label %bb.dy

bb.dx:                                            ; preds = %bb.dw
  store i32 0, ptr %i.xz, align 8, !tbaa !148
  %i.yd = getelementptr inbounds nuw i8, ptr %.pr856.i, i64 12
  store i32 0, ptr %i.yd, align 4, !tbaa !150
  %i.ye = load ptr, ptr %.pr856.i, align 8, !tbaa !48
  %i.yf = getelementptr inbounds nuw i8, ptr %i.ye, i64 16
  %i.yg = load ptr, ptr %i.yf, align 8
  call void %i.yg(ptr noundef nonnull align 8 dereferenceable(16) %.pr856.i) #22, !inline_history !151
  %i.yh = load ptr, ptr %.pr856.i, align 8, !tbaa !48
  %i.yi = getelementptr inbounds nuw i8, ptr %i.yh, i64 24
  %i.yj = load ptr, ptr %i.yi, align 8
  call void %i.yj(ptr noundef nonnull align 8 dereferenceable(16) %.pr856.i) #22, !inline_history !151
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

bb.dy:                                            ; preds = %bb.dw
  %i.yk = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i = icmp eq i8 %i.yk, 0
  br i1 %.not.i.i.i.i, label %bb.ea, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.yl = add nsw i32 %i.yc, -1
  store i32 %i.yl, ptr %i.xz, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.ea:                                            ; preds = %bb.dy
  %i.ym = atomicrmw volatile add ptr %i.xz, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.ea, %bb.dz
  %.0.i.i.i.i.i = phi i32 [ %i.yc, %bb.dz ], [ %i.ym, %bb.ea ]
  %i.yn = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.yn, label %bb.eb, label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i, !prof !131

bb.eb:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %.pr856.i) #22
  br label %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i

_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i: ; preds = %bb.eb, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.dx, %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.i, %_ZN6hermes3hbc20BytecodeDisassemblerC2ESt10shared_ptrINS0_14BCProviderBaseEE.exit.thread.i
  br i1 %.not511.i, label %._crit_edge493.i, label %.lr.ph492.i

.lr.ph492.i:                                      ; preds = %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.yo = getelementptr inbounds nuw [56 x i8], ptr %i.er, i64 %i.fz ; 7 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 24 ; 3 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %i.yo, i64 8 ; 4 uses
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yo, i64 16 ; 4 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %i.yo, i64 32
  br label %bb.ei

._crit_edge493.i:                                 ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IjjEEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit.i, %_ZNSt12__shared_ptrIN6hermes3hbc14BCProviderBaseELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit.i
  %i.yt = load ptr, ptr %i.fr, align 8, !tbaa !138 ; 8 uses
  %.not.i.i.i274.i = icmp eq ptr %i.yt, null
  br i1 %.not.i.i.i274.i, label %_ZN6hermes3hbc20BytecodeDisassemblerD2Ev.exit.i, label %bb.ec

bb.ec:                                            ; preds = %._crit_edge493.i
  %i.yu = getelementptr inbounds nuw i8, ptr %i.yt, i64 8 ; 4 uses
  %i.yv = load atomic i64, ptr %i.yu acquire, align 8 ; 2 uses
  %i.yw = icmp eq i64 %i.yv, 4294967297
  %i.yx = trunc i64 %i.yv to i32                  ; 2 uses
  br i1 %i.yw, label %bb.ed, label %bb.ee

bb.ed:                                            ; preds = %bb.ec
  store i32 0, ptr %i.yu, align 8, !tbaa !148
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yt, i64 12
  store i32 0, ptr %i.yy, align 4, !tbaa !150
  %i.yz = load ptr, ptr %i.yt, align 8, !tbaa !48
  %i.za = getelementptr inbounds nuw i8, ptr %i.yz, i64 16
  %i.zb = load ptr, ptr %i.za, align 8
  call void %i.zb(ptr noundef nonnull align 8 dereferenceable(16) %i.yt) #22, !inline_history !152
  %i.zc = load ptr, ptr %i.yt, align 8, !tbaa !48
  %i.zd = getelementptr inbounds nuw i8, ptr %i.zc, i64 24
  %i.ze = load ptr, ptr %i.zd, align 8
  call void %i.ze(ptr noundef nonnull align 8 dereferenceable(16) %i.yt) #22, !inline_history !152
  br label %_ZN6hermes3hbc20BytecodeDisassemblerD2Ev.exit.i

bb.ee:                                            ; preds = %bb.ec
  %i.zf = load i8, ptr @__libc_single_threaded, align 1, !tbaa !21
  %.not.i.i.i.i275.i = icmp eq i8 %i.zf, 0
  br i1 %.not.i.i.i.i275.i, label %bb.eg, label %bb.ef

bb.ef:                                            ; preds = %bb.ee
  %i.zg = add nsw i32 %i.yx, -1
  store i32 %i.zg, ptr %i.yu, align 4, !tbaa !4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.eg:                                            ; preds = %bb.ee
  %i.zh = atomicrmw volatile add ptr %i.yu, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.eg, %bb.ef
  %.0.i.i.i.i.i.i = phi i32 [ %i.yx, %bb.ef ], [ %i.zh, %bb.eg ]
  %i.zi = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.zi, label %bb.eh, label %_ZN6hermes3hbc20BytecodeDisassemblerD2Ev.exit.i, !prof !131

bb.eh:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.yt) #22
  br label %_ZN6hermes3hbc20BytecodeDisassemblerD2Ev.exit.i

_ZN6hermes3hbc20BytecodeDisassemblerD2Ev.exit.i:  ; preds = %bb.eh, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ed, %._crit_edge493.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit.i

bb.ei:                                            ; preds = %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IjjEEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit.i, %.lr.ph492.i
  %.087491.i = phi i32 [ 0, %.lr.ph492.i ], [ %i.abq, %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IjjEEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit.i ] ; 3 uses
  %i.zj = load ptr, ptr %i.xr, align 8, !tbaa !48
  %i.zk = getelementptr inbounds nuw i8, ptr %i.zj, i64 32
  %i.zl = load ptr, ptr %i.zk, align 8
  %i.zm = call ptr %i.zl(ptr noundef nonnull align 8 dereferenceable(280) %i.xr, i32 noundef %.087491.i) #22, !inline_history !153 ; 3 uses
  %i.zn = ptrtoint ptr %i.zm to i64
  %i.zo = trunc i64 %i.zn to i1
  br i1 %i.zo, label %bb.ej, label %bb.ek, !prof !131

bb.ej:                                            ; preds = %bb.ei
  %i.zp = getelementptr inbounds nuw i8, ptr %i.zm, i64 7
  %i.zq = load i32, ptr %i.zp, align 1, !tbaa !134
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit277.i

bb.ek:                                            ; preds = %bb.ei
  %.shift.i276.i = getelementptr inbounds nuw i8, ptr %i.zm, i64 4
  %12 = load i32, ptr %.shift.i276.i, align 1
  %i.zr = and i32 %12, 32767
  br label %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit277.i

_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit277.i: ; preds = %bb.ek, %bb.ej
  %.0.i276.i = phi i32 [ %i.zq, %bb.ej ], [ %i.zr, %bb.ek ]
  %i.zs = call noundef i32 @_ZN6hermes3hbc20BytecodeDisassembler17fuzzyHashBytecodeEjbb(ptr noundef nonnull align 8 dereferenceable(20) %5, i32 noundef %.087491.i, i1 noundef zeroext true, i1 noundef zeroext true) #22 ; 6 uses
  %i.zt = call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #26 ; 9 uses
  store ptr null, ptr %i.zt, align 8, !tbaa !154
  %i.zu = getelementptr inbounds nuw i8, ptr %i.zt, i64 8
  store i32 %i.zs, ptr %i.zu, align 8, !tbaa !155
  %i.zv = getelementptr inbounds nuw i8, ptr %i.zt, i64 12
  store i32 %.0.i276.i, ptr %i.zv, align 4, !tbaa !157
  %i.zw = load i64, ptr %i.yp, align 8, !tbaa !158 ; 2 uses
  %.not.not.i.i = icmp eq i64 %i.zw, 0
  br i1 %.not.not.i.i, label %.preheader515.i, label %.critedge.thread.i.i

.critedge.thread.i.i:                             ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit277.i
  %i.zx = zext i32 %i.zs to i64                   ; 4 uses
  %i.zy = load i64, ptr %i.yq, align 8, !tbaa !60 ; 5 uses
  %i.zz = urem i64 %i.zx, %i.zy                   ; 5 uses
  %i.aaa = load ptr, ptr %i.yo, align 8, !tbaa !52
  %i.aab = getelementptr inbounds nuw [8 x i8], ptr %i.aaa, i64 %i.zz
  %i.aac = load ptr, ptr %i.aab, align 8, !tbaa !159 ; 2 uses
  %.not.i.i.i347.i = icmp eq ptr %i.aac, null
  br i1 %.not.i.i.i347.i, label %.critedge17.i.i, label %bb.em

.preheader515.i:                                  ; preds = %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit277.i, %bb.el
  %.sroa.024.0.in.i.i = phi ptr [ %.sroa.024.0.i.i, %bb.el ], [ %i.yr, %_ZNK6hermes3hbc21RuntimeFunctionHeader19bytecodeSizeInBytesEv.exit277.i ]
  %.sroa.024.0.i.i = load ptr, ptr %.sroa.024.0.in.i.i, align 8, !tbaa !154 ; 3 uses
  %.not.i351.i = icmp eq ptr %.sroa.024.0.i.i, null
  br i1 %.not.i351.i, label %.critedge.i.i, label %bb.el

bb.el:                                            ; preds = %.preheader515.i
  %i.aad = getelementptr inbounds nuw i8, ptr %.sroa.024.0.i.i, i64 8
  %i.aae = load i32, ptr %i.aad, align 4, !tbaa !4
  %i.aaf = icmp eq i32 %i.zs, %i.aae
  br i1 %i.aaf, label %_ZNKSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i, label %.preheader515.i, !llvm.loop !160

.critedge.i.i:                                    ; preds = %.preheader515.i
  %i.aag = zext i32 %i.zs to i64                  ; 2 uses
  %i.aah = load i64, ptr %i.yq, align 8, !tbaa !60 ; 2 uses
  %i.aai = urem i64 %i.aag, %i.aah
  br label %.critedge17.i.i

bb.em:                                            ; preds = %.critedge.thread.i.i
  %i.aaj = load ptr, ptr %i.aac, align 8, !tbaa !154 ; 2 uses
  %i.aak = getelementptr inbounds nuw i8, ptr %i.aaj, i64 8
  %i.aal = load i32, ptr %i.aak, align 4, !tbaa !4
  %i.aam = icmp eq i32 %i.zs, %i.aal
  br i1 %i.aam, label %_ZNKSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i, label %.lr.ph.i.i.i348.i

bb.en:                                            ; preds = %bb.eo
  %i.aan = icmp eq i32 %i.zs, %i.aaq
  br i1 %i.aan, label %_ZNKSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i, label %.lr.ph.i.i.i348.i, !llvm.loop !161

.lr.ph.i.i.i348.i:                                ; preds = %bb.em, %bb.en
  %.020.i.i.i.i = phi ptr [ %i.aao, %bb.en ], [ %i.aaj, %bb.em ]
  %i.aao = load ptr, ptr %.020.i.i.i.i, align 8, !tbaa !154 ; 3 uses
  %.not18.i.i.i.i = icmp eq ptr %i.aao, null
  br i1 %.not18.i.i.i.i, label %.critedge17.i.i, label %bb.eo

bb.eo:                                            ; preds = %.lr.ph.i.i.i348.i
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aao, i64 8
  %i.aaq = load i32, ptr %i.aap, align 4, !tbaa !4 ; 2 uses
  %i.aar = zext i32 %i.aaq to i64
  %i.aas = urem i64 %i.aar, %i.zy
  %.not19.i.i.i.i = icmp eq i64 %i.aas, %i.zz
  br i1 %.not19.i.i.i.i, label %bb.en, label %..loopexit_crit_edge21.i.i.i.i, !llvm.loop !161

..loopexit_crit_edge21.i.i.i.i:                   ; preds = %bb.eo
  br label %.critedge17.i.i, !llvm.loop !161

.critedge17.i.i:                                  ; preds = %.lr.ph.i.i.i348.i, %..loopexit_crit_edge21.i.i.i.i, %.critedge.i.i, %.critedge.thread.i.i
  %i.aat = phi i64 [ %i.aai, %.critedge.i.i ], [ %i.zz, %.critedge.thread.i.i ], [ %i.zz, %..loopexit_crit_edge21.i.i.i.i ], [ %i.zz, %.lr.ph.i.i.i348.i ]
  %i.aau = phi i64 [ %i.aah, %.critedge.i.i ], [ %i.zy, %.critedge.thread.i.i ], [ %i.zy, %..loopexit_crit_edge21.i.i.i.i ], [ %i.zy, %.lr.ph.i.i.i348.i ]
  %i.aav = phi i64 [ %i.aag, %.critedge.i.i ], [ %i.zx, %.critedge.thread.i.i ], [ %i.zx, %..loopexit_crit_edge21.i.i.i.i ], [ %i.zx, %.lr.ph.i.i.i348.i ]
  %i.aaw = call { i8, i64 } @_ZNKSt8__detail20_Prime_rehash_policy14_M_need_rehashEmmm(ptr noundef nonnull align 8 dereferenceable(16) %i.ys, i64 noundef %i.aau, i64 noundef %i.zw, i64 noundef 1) #22 ; 2 uses
  %i.aax = extractvalue { i8, i64 } %i.aaw, 0
  %i.aay = trunc i8 %i.aax to i1
  br i1 %i.aay, label %bb.ep, label %bb.eq

bb.ep:                                            ; preds = %.critedge17.i.i
  %i.aaz = extractvalue { i8, i64 } %i.aaw, 1
  call void @_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE13_M_rehash_auxEmSt17integral_constantIbLb1EE(ptr noundef nonnull align 8 dereferenceable(56) %i.yo, i64 noundef %i.aaz)
  %i.aba = load i64, ptr %i.yq, align 8, !tbaa !60
  %i.abb = urem i64 %i.aav, %i.aba
  br label %bb.eq

bb.eq:                                            ; preds = %bb.ep, %.critedge17.i.i
  %.0.i18.i.i = phi i64 [ %i.abb, %bb.ep ], [ %i.aat, %.critedge17.i.i ]
  %i.abc = load ptr, ptr %i.yo, align 8, !tbaa !52 ; 2 uses
  %i.abd = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %.0.i18.i.i ; 3 uses
  %i.abe = load ptr, ptr %i.abd, align 8, !tbaa !159 ; 2 uses
  %.not.i.i19.i.i = icmp eq ptr %i.abe, null
  br i1 %.not.i.i19.i.i, label %bb.es, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.abf = load ptr, ptr %i.abe, align 8, !tbaa !154
  store ptr %i.abf, ptr %i.zt, align 8, !tbaa !154
  %i.abg = load ptr, ptr %i.abd, align 8, !tbaa !159
  store ptr %i.zt, ptr %i.abg, align 8, !tbaa !154
  br label %bb.ev

bb.es:                                            ; preds = %bb.eq
  %i.abh = load ptr, ptr %i.yr, align 8, !tbaa !162 ; 3 uses
  store ptr %i.abh, ptr %i.zt, align 8, !tbaa !154
  store ptr %i.zt, ptr %i.yr, align 8, !tbaa !162
  %.not11.i.i.i.i = icmp eq ptr %i.abh, null
  br i1 %.not11.i.i.i.i, label %bb.eu, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.abi = getelementptr inbounds nuw i8, ptr %i.abh, i64 8
  %i.abj = load i64, ptr %i.yq, align 8, !tbaa !60
  %i.abk = load i32, ptr %i.abi, align 4, !tbaa !4
  %i.abl = zext i32 %i.abk to i64
  %i.abm = urem i64 %i.abl, %i.abj
  %i.abn = getelementptr inbounds nuw [8 x i8], ptr %i.abc, i64 %i.abm
  store ptr %i.zt, ptr %i.abn, align 8, !tbaa !159
  br label %bb.eu

bb.eu:                                            ; preds = %bb.et, %bb.es
  store ptr %i.yr, ptr %i.abd, align 8, !tbaa !159
  br label %bb.ev

bb.ev:                                            ; preds = %bb.eu, %bb.er
  %i.abo = load i64, ptr %i.yp, align 8, !tbaa !158
  %i.abp = add i64 %i.abo, 1
  store i64 %i.abp, ptr %i.yp, align 8, !tbaa !158
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IjjEEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit.i

_ZNKSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i: ; preds = %bb.en, %bb.el, %bb.em
  call void @_ZdlPvm(ptr noundef nonnull %i.zt, i64 noundef 16) #23
  br label %_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IjjEEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit.i

_ZNSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE10_M_emplaceIJS0_IjjEEEES0_INS4_14_Node_iteratorIS2_Lb0ELb0EEEbESt17integral_constantIbLb1EEDpOT_.exit.i: ; preds = %_ZNKSt10_HashtableIjSt4pairIKjjESaIS2_ENSt8__detail10_Select1stESt8equal_toIjESt4hashIjENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_M_find_nodeEmRS1_m.exit.i.i, %bb.ev
  %i.abq = add nuw i32 %.087491.i, 1              ; 2 uses
  %exitcond519.not.i = icmp eq i32 %i.abq, %i.qx
  br i1 %exitcond519.not.i, label %._crit_edge493.i, label %bb.ei, !llvm.loop !163

_ZN4llvh11raw_ostreamlsEPKc.exit.i:               ; preds = %_ZN6hermes3hbc20BytecodeDisassemblerD2Ev.exit.i, %bb.dt, %bb.ds
  %i.abr = load ptr, ptr %4, align 8, !tbaa !80   ; 3 uses
  %.not.i278.i = icmp eq ptr %i.abr, null
  br i1 %.not.i278.i, label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i: ; preds = %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.abr) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.abr, i64 noundef 376) #23
  br label %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i

_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i, %_ZN4llvh11raw_ostreamlsEPKc.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  %i.abs = load ptr, ptr %i.fu, align 8, !tbaa !19 ; 2 uses
  %i.abt = icmp eq ptr %i.abs, %i.fv
  br i1 %i.abt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i280.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i279.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i279.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i
  %i.abu = load i64, ptr %i.fv, align 8, !tbaa !21
  %i.abv = add i64 %i.abu, 1
  call void @_ZdlPvm(ptr noundef %i.abs, i64 noundef %i.abv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i280.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i280.i: ; preds = %_ZNSt10unique_ptrIN6hermes3hbc20BCProviderFromBufferESt14default_deleteIS2_EED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i279.i
  %i.abw = load ptr, ptr %2, align 8, !tbaa !80   ; 3 uses
  %.not.i.i281.i = icmp eq ptr %i.abw, null
  br i1 %.not.i.i281.i, label %_ZNSt10unique_ptrIN6hermes12MemoryBufferESt14default_deleteIS1_EED2Ev.exit287.i, label %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i282.i

_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i282.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i280.i
  call void @_ZN6hermes3hbc20BCProviderFromBufferD2Ev(ptr noundef nonnull align 8 dereferenceable(376) %i.abw) #22
  call void @_ZdlPvm(ptr noundef nonnull %i.abw, i64 noundef 376) #23
  br label %_ZNSt10unique_ptrIN6hermes12MemoryBufferESt14default_deleteIS1_EED2Ev.exit287.i

_ZNSt10unique_ptrIN6hermes12MemoryBufferESt14default_deleteIS1_EED2Ev.exit287.i: ; preds = %_ZNKSt14default_deleteIN6hermes3hbc20BCProviderFromBufferEEclEPS2_.exit.i.i282.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i280.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br i1 %.not.i41, label %bb.ad, label %.lr.ph.i.i.i.preheader.i

.critedge99.i:                                    ; preds = %bb.ad, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i
  %.0.lcssa.i.i.i.i.i101852.i = phi ptr [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %.lcssa281, %bb.ad ] ; 2 uses
  %.sroa.0431.0850.i = phi ptr [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.er, %bb.ad ] ; 9 uses
  %.sroa.12.0848.i = phi i64 [ 0, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.fp, %bb.ad ] ; 2 uses
  %.0.lcssa.i.i.i.i.i464468846.i = phi ptr [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %scevgep.i.i.i.i.i.i, %bb.ad ] ; 2 uses
  %.sink.i463470844.i = phi i64 [ 0, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.fq, %bb.ad ] ; 2 uses
  %.sroa.0436.0460472841.i = phi ptr [ null, %_ZNSt6vectorIS_IlSaIlEESaIS1_EE17_S_check_init_lenEmRKS2_.exit.i.i ], [ %i.en, %bb.ad ] ; 5 uses
  %i.abx = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh4outsEv() #22 ; 4 uses
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abx, i64 16
  %i.abz = load ptr, ptr %i.aby, align 8, !tbaa !8
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abx, i64 24 ; 3 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !13 ; 2 uses
  %i.acc = ptrtoint ptr %i.abz to i64
  %i.acd = ptrtoint ptr %i.acb to i64
  %i.ace = sub i64 %i.acc, %i.acd
  %i.acf = icmp ult i64 %i.ace, 14
  br i1 %i.acf, label %bb.ew, label %bb.ex

bb.ew:                                            ; preds = %.critedge99.i
  %i.acg = call noundef nonnull align 8 dereferenceable(36) ptr @_ZN4llvh11raw_ostream5writeEPKcm(ptr noundef nonnull align 8 dereferenceable(36) %i.abx, ptr noundef nonnull @.str.5, i64 noundef 14) #22
  br label %_ZN4llvh11raw_ostreamlsEPKc.exit290.i

bb.ex:                                            ; preds = %.critedge99.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(14) %i.acb, ptr noundef nonnull align 1 dereferenceable(14) @.str.5, i64 14, i1 false)
  %i.ach = load ptr, ptr %i.aca, align 8, !tbaa !13
  %i.aci = getelementptr inbounds nuw i8, ptr %i.ach, i64 14
end_hunk_1
