Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/z3/original/dl_decl_plugin?download=true
inline.NumInlined: 1962
inline.NumDeleted: 864
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 18
begin_hunk_0_@_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_:bb.a
  store i8 1, ptr %i.ag, align 8, !tbaa !209, !noalias !448
  br label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit

_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit: ; preds = %bb.g, %bb.h
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.af) #24
  %i.aj = load i8, ptr %i.ad, align 8, !tbaa !209, !range !217, !noundef !184
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #24 ; 0 uses
  br label %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit

bb.j:                                             ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #24
  store i8 1, ptr %i.ad, align 8, !tbaa !209
  br label %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit

_ZNSt8__format16_Optional_localeaSEOSt6locale.exit: ; preds = %bb.i, %bb.j
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #24
  %i.am = load i8, ptr %i.ad, align 8, !tbaa !209, !range !217, !noundef !184
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZNSt8__format16_Optional_locale5valueEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %7) #24
  store i8 1, ptr %i.ad, align 8, !tbaa !209
  br label %_ZNSt8__format16_Optional_locale5valueEv.exit

_ZNSt8__format16_Optional_locale5valueEv.exit:    ; preds = %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24
  invoke void @_ZNKSt6locale4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNSt8__format16_Optional_locale5valueEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !115 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 1
  %.pre140 = load ptr, ptr %9, align 8, !tbaa !46 ; 3 uses
  br i1 %i.aq, label %bb.m, label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

bb.m:                                             ; preds = %bb.l
  %lhsc = load i8, ptr %.pre140, align 1
  %i.ar = icmp eq i8 %lhsc, 67
  br label %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit

_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit: ; preds = %bb.m, %bb.l
  %i.as = phi i1 [ false, %bb.l ], [ %i.ar, %bb.m ]
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.au = icmp eq ptr %.pre140, %i.at
  br i1 %i.au, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.av = icmp ult i64 %i.ap, 16
  call void @llvm.assume(i1 %i.av)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZSteqIcSt11char_traitsIcESaIcEEbRKNSt7__cxx1112basic_stringIT_T0_T1_EEPKS5_.exit
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !47
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre140, i64 noundef %i.ax) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br i1 %i.as, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #24
  %i.az = load ptr, ptr %7, align 8, !tbaa !251
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !255
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ay
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !257 ; 5 uses
  %.not.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.not.i, label %bb.o, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt16__throw_bad_castv() #25
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #24
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !41, !noalias !449
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !449
  invoke void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit unwind label %bb.u, !inline_history !5

_ZNKSt7__cxx118numpunctIcE8groupingEv.exit:       ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !115
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.w, label %bb.p

bb.p:                                             ; preds = %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit
  %i.bk = sub i64 %1, %3                          ; 2 uses
  %i.bl = shl i64 %i.bk, 1
  %i.bm = add i64 %i.bl, %3
  %i.bn = alloca i8, i64 %i.bm, align 16          ; 5 uses
  %i.bo = icmp eq i64 %3, 0
  br i1 %i.bo, label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.bn, ptr align 1 %2, i64 %3, i1 false)
  br label %_ZNSt11char_traitsIcE4copyEPcPKcm.exit

_ZNSt11char_traitsIcE4copyEPcPKcm.exit:           ; preds = %bb.p, %bb.q
  %i.bp = load ptr, ptr %i.bd, align 8, !tbaa !41
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit unwind label %bb.v, !inline_history !6 ; 2 uses

_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit
  %i.bt = getelementptr i8, ptr %i.bn, i64 %3     ; 2 uses
  %i.bu = getelementptr i8, ptr %2, i64 %3        ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !46   ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !47  ; 3 uses
  %i.bz = sext i8 %i.by to i64
  %i.ca = icmp sle i64 %i.bk, %i.bz
  %i.cb = add i8 %i.by, -127
  %i.cc = icmp ult i8 %i.cb, -126
  %or.cond5562.i = or i1 %i.ca, %i.cc
  br i1 %or.cond5562.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %i.cd = load i64, ptr %i.bh, align 8, !tbaa !115
  %i.ce = add i64 %i.cd, -1
  br label %bb.r

.critedge.preheader.i:                            ; preds = %bb.r, %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %.039.lcssa61.i = phi i64 [ 0, %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit ], [ %.140.i, %bb.r ] ; 3 uses
  %.042.lcssa.i = phi ptr [ %i.bw, %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit ], [ %i.cl, %bb.r ] ; 2 uses
  %.038.lcssa.i = phi i64 [ 0, %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit ], [ %.1.i, %bb.r ] ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.039.lcssa61.i
  %.not5269.i = icmp eq ptr %i.bu, %.042.lcssa.i
  br i1 %.not5269.i, label %.preheader60.i, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %.critedge.preheader.i
  %.042.lcssa.i138 = ptrtoaddr ptr %.042.lcssa.i to i64 ; 2 uses
  %i.cg = add i64 %3, %i.a
  %i.ch = sub i64 %.042.lcssa.i138, %i.cg
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bu, i64 %i.ch, i1 false), !tbaa !47
  %i.ci = sub i64 %.042.lcssa.i138, %i.a          ; 2 uses
  %scevgep = getelementptr i8, ptr %2, i64 %i.ci
  %scevgep139 = getelementptr i8, ptr %i.bn, i64 %i.ci
  br label %.preheader60.i

bb.r:                                             ; preds = %bb.r, %.lr.ph.i
  %i.cj = phi i8 [ %i.by, %.lr.ph.i ], [ %i.cs, %bb.r ]
  %.03865.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.r ]
  %.03964.i = phi i64 [ 0, %.lr.ph.i ], [ %.140.i, %bb.r ] ; 2 uses
  %.04263.i = phi ptr [ %i.bw, %.lr.ph.i ], [ %i.cl, %bb.r ]
  %narrow.i = sub nsw i8 0, %i.cj
  %i.ck = sext i8 %narrow.i to i64
  %i.cl = getelementptr inbounds i8, ptr %.04263.i, i64 %i.ck ; 3 uses
  %i.cm = icmp ult i64 %.03964.i, %i.ce           ; 2 uses
  %i.cn = zext i1 %i.cm to i64
  %.140.i = add i64 %.03964.i, %i.cn              ; 3 uses
  %not..i = xor i1 %i.cm, true
  %i.co = zext i1 %not..i to i64
  %.1.i = add i64 %.03865.i, %i.co                ; 2 uses
  %i.cp = ptrtoint ptr %i.cl to i64
  %i.cq = sub i64 %i.cp, %i.bx
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.140.i
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !47  ; 3 uses
  %i.ct = sext i8 %i.cs to i64
  %i.cu = icmp sle i64 %i.cq, %i.ct
  %i.cv = add i8 %i.cs, -127
  %i.cw = icmp ult i8 %i.cv, -126
  %or.cond55.i = or i1 %i.cw, %i.cu
  br i1 %or.cond55.i, label %.critedge.preheader.i, label %bb.r, !llvm.loop !7

.preheader60.i:                                   ; preds = %.critedge.i.preheader, %.critedge.preheader.i
  %.046.lcssa.i = phi ptr [ %i.bt, %.critedge.preheader.i ], [ %scevgep139, %.critedge.i.preheader ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.bu, %.critedge.preheader.i ], [ %scevgep, %.critedge.i.preheader ] ; 2 uses
  %.not5382.i = icmp eq i64 %.038.lcssa.i, 0
  br i1 %.not5382.i, label %.preheader.i, label %.lr.ph85.i

.loopexit59.i:                                    ; preds = %.lr.ph79.i, %middle.block, %vec.epilog.middle.block, %.lr.ph85.i
  %.245.lcssa.i = phi ptr [ %.14484.i, %.lr.ph85.i ], [ %i.ds, %vec.epilog.middle.block ], [ %i.dg, %middle.block ], [ %i.du, %.lr.ph79.i ] ; 2 uses
  %.248.lcssa.i = phi ptr [ %.24875.i, %.lr.ph85.i ], [ %i.dp, %vec.epilog.middle.block ], [ %i.dd, %middle.block ], [ %.248.i, %.lr.ph79.i ] ; 2 uses
  %.not53.i = icmp eq i64 %i.cx, 0
  br i1 %.not53.i, label %.preheader.i, label %.lr.ph85.i, !llvm.loop !8

.preheader.i:                                     ; preds = %.loopexit59.i, %.preheader60.i
  %.147.lcssa.i = phi ptr [ %.046.lcssa.i, %.preheader60.i ], [ %.248.lcssa.i, %.loopexit59.i ] ; 2 uses
  %.144.lcssa.i = phi ptr [ %.043.lcssa.i, %.preheader60.i ], [ %.245.lcssa.i, %.loopexit59.i ]
  %.not5495.i = icmp eq i64 %.039.lcssa61.i, 0
  br i1 %.not5495.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i

.lr.ph85.i:                                       ; preds = %.preheader60.i, %.loopexit59.i
  %.in.i = phi i64 [ %i.cx, %.loopexit59.i ], [ %.038.lcssa.i, %.preheader60.i ]
  %.14484.i = phi ptr [ %.245.lcssa.i, %.loopexit59.i ], [ %.043.lcssa.i, %.preheader60.i ] ; 12 uses
  %.14783.i = phi ptr [ %.248.lcssa.i, %.loopexit59.i ], [ %.046.lcssa.i, %.preheader60.i ] ; 8 uses
  %i.cx = add i64 %.in.i, -1                      ; 2 uses
  store i8 %i.bs, ptr %.14783.i, align 1, !tbaa !47
  %i.cy = load i8, ptr %i.cf, align 1, !tbaa !47  ; 7 uses
  %.24875.i = getelementptr inbounds nuw i8, ptr %.14783.i, i64 1 ; 6 uses
  %i.cz = icmp sgt i8 %i.cy, 0
  br i1 %i.cz, label %iter.check, label %.loopexit59.i

iter.check:                                       ; preds = %.lr.ph85.i
  %.14484.i181 = ptrtoaddr ptr %.14484.i to i64
  %.14783.i180 = ptrtoaddr ptr %.14783.i to i64
  %i.da = zext nneg i8 %i.cy to i64               ; 5 uses
  %min.iters.check = icmp ult i8 %i.cy, 4
  %i.db = sub i64 %.14783.i180, %.14484.i181
  %diff.check = icmp ult i64 %i.db, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i8 %i.cy, 32
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %i.da, 28
  %n.vec = and i64 %i.da, 96                      ; 7 uses
  %i.dd = getelementptr i8, ptr %.24875.i, i64 %n.vec ; 2 uses
  %i.de = trunc nuw nsw i64 %n.vec to i8
  %i.df = sub nsw i8 %i.cy, %i.de
  %i.dg = getelementptr i8, ptr %.14484.i, i64 %n.vec ; 2 uses
  %i.dh = getelementptr i8, ptr %.14484.i, i64 16
  %wide.load = load <16 x i8>, ptr %.14484.i, align 1, !tbaa !47
  %wide.load184 = load <16 x i8>, ptr %i.dh, align 1, !tbaa !47
  %i.di = getelementptr i8, ptr %.14783.i, i64 17
  store <16 x i8> %wide.load, ptr %.24875.i, align 1, !tbaa !47
  store <16 x i8> %wide.load184, ptr %i.di, align 1, !tbaa !47
  %i.dj = icmp eq i64 %n.vec, 32
  br i1 %i.dj, label %middle.block, label %vector.body.1.a

vector.body.1.a:                                  ; preds = %vector.ph
  %next.gep.1.a = getelementptr i8, ptr %.14783.i, i64 33
  %next.gep183.1.a = getelementptr i8, ptr %.14484.i, i64 32
  %i.dk = getelementptr i8, ptr %.14484.i, i64 48
  %wide.load.1 = load <16 x i8>, ptr %next.gep183.1.a, align 1, !tbaa !47
  %wide.load184.1 = load <16 x i8>, ptr %i.dk, align 1, !tbaa !47
  %i.dl = getelementptr i8, ptr %.14783.i, i64 49
  store <16 x i8> %wide.load.1, ptr %next.gep.1.a, align 1, !tbaa !47
  store <16 x i8> %wide.load184.1, ptr %i.dl, align 1, !tbaa !47
  %i.dm = icmp eq i64 %n.vec, 64
  br i1 %i.dm, label %middle.block, label %vector.body.2.a

vector.body.2.a:                                  ; preds = %vector.body.1.a
  %next.gep.2.a = getelementptr i8, ptr %.14783.i, i64 65
  %next.gep183.2.a = getelementptr i8, ptr %.14484.i, i64 64
  %i.dn = getelementptr i8, ptr %.14484.i, i64 80
  %wide.load.2 = load <16 x i8>, ptr %next.gep183.2.a, align 1, !tbaa !47
  %wide.load184.2 = load <16 x i8>, ptr %i.dn, align 1, !tbaa !47
  %i.do = getelementptr i8, ptr %.14783.i, i64 81
  store <16 x i8> %wide.load.2, ptr %next.gep.2.a, align 1, !tbaa !47
  store <16 x i8> %wide.load184.2, ptr %i.do, align 1, !tbaa !47
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2.a, %vector.body.1.a, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br i1 %cmp.n, label %.loopexit59.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.i.preheader, label %vec.epilog.ph, !prof !258

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec187 = and i64 %i.da, 124                  ; 5 uses
  %i.dp = getelementptr i8, ptr %.24875.i, i64 %n.vec187 ; 2 uses
  %i.dq = trunc nuw nsw i64 %n.vec187 to i8
  %i.dr = sub nsw i8 %i.cy, %i.dq
  %i.ds = getelementptr i8, ptr %.14484.i, i64 %n.vec187 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index188 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next192, %vec.epilog.vector.body ] ; 3 uses
  %next.gep189 = getelementptr i8, ptr %.24875.i, i64 %index188
  %next.gep190 = getelementptr i8, ptr %.14484.i, i64 %index188
  %wide.load191 = load <4 x i8>, ptr %next.gep190, align 1, !tbaa !47
  store <4 x i8> %wide.load191, ptr %next.gep189, align 1, !tbaa !47
  %index.next192 = add nuw i64 %index188, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !443

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n193 = icmp eq i64 %n.vec187, %i.da
  br i1 %cmp.n193, label %.loopexit59.i, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.24878.i.ph = phi ptr [ %.24875.i, %iter.check ], [ %i.dd, %vec.epilog.iter.check ], [ %i.dp, %vec.epilog.middle.block ]
  %.03777.i.ph = phi i8 [ %i.cy, %iter.check ], [ %i.df, %vec.epilog.iter.check ], [ %i.dr, %vec.epilog.middle.block ]
  %.24576.i.ph = phi ptr [ %.14484.i, %iter.check ], [ %i.dg, %vec.epilog.iter.check ], [ %i.ds, %vec.epilog.middle.block ]
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i
  %.24878.i = phi ptr [ %.248.i, %.lr.ph79.i ], [ %.24878.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.03777.i = phi i8 [ %i.dw, %.lr.ph79.i ], [ %.03777.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.24576.i = phi ptr [ %i.du, %.lr.ph79.i ], [ %.24576.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.24576.i, i64 1 ; 2 uses
  %i.dv = load i8, ptr %.24576.i, align 1, !tbaa !47
  store i8 %i.dv, ptr %.24878.i, align 1, !tbaa !47
  %i.dw = add nsw i8 %.03777.i, -1
  %.248.i = getelementptr inbounds nuw i8, ptr %.24878.i, i64 1 ; 2 uses
  %i.dx = icmp samesign ugt i8 %.03777.i, 1
  br i1 %i.dx, label %.lr.ph79.i, label %.loopexit59.i, !llvm.loop !444

.loopexit.i:                                      ; preds = %.lr.ph92.i, %middle.block213, %vec.epilog.middle.block230, %.lr.ph98.i
  %.4.lcssa.i = phi ptr [ %.397.i, %.lr.ph98.i ], [ %i.eu, %vec.epilog.middle.block230 ], [ %i.ei, %middle.block213 ], [ %i.ew, %.lr.ph92.i ]
  %.450.lcssa.i = phi ptr [ %.45088.i, %.lr.ph98.i ], [ %i.er, %vec.epilog.middle.block230 ], [ %i.ef, %middle.block213 ], [ %.450.i, %.lr.ph92.i ] ; 2 uses
  %.not54.i = icmp eq i64 %i.dy, 0
  br i1 %.not54.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i, !llvm.loop !9

.lr.ph98.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.in100.i = phi i64 [ %i.dy, %.loopexit.i ], [ %.039.lcssa61.i, %.preheader.i ]
  %.397.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.144.lcssa.i, %.preheader.i ] ; 12 uses
  %.34996.i = phi ptr [ %.450.lcssa.i, %.loopexit.i ], [ %.147.lcssa.i, %.preheader.i ] ; 8 uses
  %i.dy = add i64 %.in100.i, -1                   ; 3 uses
  store i8 %i.bs, ptr %.34996.i, align 1, !tbaa !47
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !47  ; 7 uses
  %.45088.i = getelementptr inbounds nuw i8, ptr %.34996.i, i64 1 ; 6 uses
  %i.eb = icmp sgt i8 %i.ea, 0
  br i1 %i.eb, label %iter.check218, label %.loopexit.i

iter.check218:                                    ; preds = %.lr.ph98.i
  %.397.i199 = ptrtoaddr ptr %.397.i to i64
  %.34996.i198 = ptrtoaddr ptr %.34996.i to i64
  %i.ec = zext nneg i8 %i.ea to i64               ; 5 uses
  %min.iters.check201 = icmp ult i8 %i.ea, 4
  %i.ed = sub i64 %.34996.i198, %.397.i199
  %diff.check200 = icmp ult i64 %i.ed, 31
  %or.cond235 = select i1 %min.iters.check201, i1 true, i1 %diff.check200
  br i1 %or.cond235, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check202

vector.main.loop.iter.check202:                   ; preds = %iter.check218
  %min.iters.check203 = icmp ult i8 %i.ea, 32
  br i1 %min.iters.check203, label %vec.epilog.ph222, label %vector.ph204

vector.ph204:                                     ; preds = %vector.main.loop.iter.check202
  %i.ee = and i64 %i.ec, 28
  %n.vec205 = and i64 %i.ec, 96                   ; 7 uses
  %i.ef = getelementptr i8, ptr %.45088.i, i64 %n.vec205 ; 2 uses
  %i.eg = trunc nuw nsw i64 %n.vec205 to i8
  %i.eh = sub nsw i8 %i.ea, %i.eg
  %i.ei = getelementptr i8, ptr %.397.i, i64 %n.vec205 ; 2 uses
  %i.ej = getelementptr i8, ptr %.397.i, i64 16
  %wide.load210 = load <16 x i8>, ptr %.397.i, align 1, !tbaa !47
  %wide.load211 = load <16 x i8>, ptr %i.ej, align 1, !tbaa !47
  %i.ek = getelementptr i8, ptr %.34996.i, i64 17
  store <16 x i8> %wide.load210, ptr %.45088.i, align 1, !tbaa !47
  store <16 x i8> %wide.load211, ptr %i.ek, align 1, !tbaa !47
  %i.el = icmp eq i64 %n.vec205, 32
  br i1 %i.el, label %middle.block213, label %vector.body206.1.a

vector.body206.1.a:                               ; preds = %vector.ph204
  %next.gep208.1.a = getelementptr i8, ptr %.34996.i, i64 33
  %next.gep209.1.a = getelementptr i8, ptr %.397.i, i64 32
  %i.em = getelementptr i8, ptr %.397.i, i64 48
  %wide.load210.1 = load <16 x i8>, ptr %next.gep209.1.a, align 1, !tbaa !47
  %wide.load211.1 = load <16 x i8>, ptr %i.em, align 1, !tbaa !47
  %i.en = getelementptr i8, ptr %.34996.i, i64 49
  store <16 x i8> %wide.load210.1, ptr %next.gep208.1.a, align 1, !tbaa !47
  store <16 x i8> %wide.load211.1, ptr %i.en, align 1, !tbaa !47
  %i.eo = icmp eq i64 %n.vec205, 64
  br i1 %i.eo, label %middle.block213, label %vector.body206.2.a

vector.body206.2.a:                               ; preds = %vector.body206.1.a
  %next.gep208.2.a = getelementptr i8, ptr %.34996.i, i64 65
  %next.gep209.2.a = getelementptr i8, ptr %.397.i, i64 64
  %i.ep = getelementptr i8, ptr %.397.i, i64 80
  %wide.load210.2 = load <16 x i8>, ptr %next.gep209.2.a, align 1, !tbaa !47
  %wide.load211.2 = load <16 x i8>, ptr %i.ep, align 1, !tbaa !47
  %i.eq = getelementptr i8, ptr %.34996.i, i64 81
  store <16 x i8> %wide.load210.2, ptr %next.gep208.2.a, align 1, !tbaa !47
  store <16 x i8> %wide.load211.2, ptr %i.eq, align 1, !tbaa !47
  br label %middle.block213

middle.block213:                                  ; preds = %vector.body206.2.a, %vector.body206.1.a, %vector.ph204
  %cmp.n214 = icmp eq i64 %n.vec205, %i.ec
  br i1 %cmp.n214, label %.loopexit.i, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block213
  %min.epilog.iters.check221 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check221, label %.lr.ph92.i.preheader, label %vec.epilog.ph222, !prof !258

vec.epilog.ph222:                                 ; preds = %vector.main.loop.iter.check202, %vec.epilog.iter.check220
  %vec.epilog.resume.val215 = phi i64 [ %n.vec205, %vec.epilog.iter.check220 ], [ 0, %vector.main.loop.iter.check202 ]
  %n.vec223 = and i64 %i.ec, 124                  ; 5 uses
  %i.er = getelementptr i8, ptr %.45088.i, i64 %n.vec223 ; 2 uses
  %i.es = trunc nuw nsw i64 %n.vec223 to i8
  %i.et = sub nsw i8 %i.ea, %i.es
  %i.eu = getelementptr i8, ptr %.397.i, i64 %n.vec223 ; 2 uses
  br label %vec.epilog.vector.body224

vec.epilog.vector.body224:                        ; preds = %vec.epilog.vector.body224, %vec.epilog.ph222
  %index225 = phi i64 [ %vec.epilog.resume.val215, %vec.epilog.ph222 ], [ %index.next229, %vec.epilog.vector.body224 ] ; 3 uses
  %next.gep226 = getelementptr i8, ptr %.45088.i, i64 %index225
  %next.gep227 = getelementptr i8, ptr %.397.i, i64 %index225
  %wide.load228 = load <4 x i8>, ptr %next.gep227, align 1, !tbaa !47
  store <4 x i8> %wide.load228, ptr %next.gep226, align 1, !tbaa !47
  %index.next229 = add nuw i64 %index225, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next229, %n.vec223
  br i1 %i.ev, label %vec.epilog.middle.block230, label %vec.epilog.vector.body224, !llvm.loop !445

vec.epilog.middle.block230:                       ; preds = %vec.epilog.vector.body224
  %cmp.n231 = icmp eq i64 %n.vec223, %i.ec
  br i1 %cmp.n231, label %.loopexit.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check218, %vec.epilog.iter.check220, %vec.epilog.middle.block230
  %.45091.i.ph = phi ptr [ %.45088.i, %iter.check218 ], [ %i.ef, %vec.epilog.iter.check220 ], [ %i.er, %vec.epilog.middle.block230 ]
  %.090.i.ph = phi i8 [ %i.ea, %iter.check218 ], [ %i.eh, %vec.epilog.iter.check220 ], [ %i.et, %vec.epilog.middle.block230 ]
  %.489.i.ph = phi ptr [ %.397.i, %iter.check218 ], [ %i.ei, %vec.epilog.iter.check220 ], [ %i.eu, %vec.epilog.middle.block230 ]
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %.45091.i = phi ptr [ %.450.i, %.lr.ph92.i ], [ %.45091.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.090.i = phi i8 [ %i.ey, %.lr.ph92.i ], [ %.090.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.489.i = phi ptr [ %i.ew, %.lr.ph92.i ], [ %.489.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %.489.i, i64 1 ; 2 uses
  %i.ex = load i8, ptr %.489.i, align 1, !tbaa !47
  store i8 %i.ex, ptr %.45091.i, align 1, !tbaa !47
  %i.ey = add nsw i8 %.090.i, -1
  %.450.i = getelementptr inbounds nuw i8, ptr %.45091.i, i64 1 ; 2 uses
  %i.ez = icmp samesign ugt i8 %.090.i, 1
  br i1 %i.ez, label %.lr.ph92.i, label %.loopexit.i, !llvm.loop !446

_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit: ; preds = %.loopexit.i, %.preheader.i
  %.349.lcssa.i = phi ptr [ %.147.lcssa.i, %.preheader.i ], [ %.450.lcssa.i, %.loopexit.i ]
  %i.fa = ptrtoint ptr %.349.lcssa.i to i64
  %i.fb = ptrtoint ptr %i.bn to i64
  %i.fc = sub i64 %i.fa, %i.fb
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt8__format16_Optional_locale5valueEv.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #24
  br label %bb.am

bb.t:                                             ; preds = %bb.o
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.u:                                             ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.ff = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.v:                                             ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit
  %i.fg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fh = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.v
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !47
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.w:                                             ; preds = %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit
  %.sroa.14.0 = phi ptr [ %2, %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit ], [ %i.bn, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit ]
  %.sroa.0103.0 = phi i64 [ %1, %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit ], [ %i.fc, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit ]
  %i.fm = load ptr, ptr %10, align 8, !tbaa !46   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.w
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !47
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.u
  %.pn59 = phi { ptr, i32 } [ %i.ff, %bb.u ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.fg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #24
  br label %bb.am

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %.sroa.14.1 = phi ptr [ %2, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.14.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 8 uses
  %.sroa.0103.1 = phi i64 [ %1, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0103.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 12 uses
  %.not63 = icmp ugt i64 %.0.i, %.sroa.0103.1
  br i1 %.not63, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fr, align 8, !tbaa !198 ; 8 uses
  %.not.i = icmp eq i64 %.sroa.0103.1, 0
  br i1 %.not.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24 ; 6 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !78 ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !78 ; 2 uses
  %i.fw = ptrtoint ptr %i.fv to i64
  %i.fx = ptrtoint ptr %i.fu to i64
  %i.fy = sub i64 %i.fw, %i.fx                    ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 16 ; 2 uses
  %i.ga = load i64, ptr %i.fz, align 8
  %i.gb = sub i64 %i.ga, %i.fy                    ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 %i.fy ; 2 uses
  %.not24.i.i = icmp ugt i64 %i.gb, %.sroa.0103.1
  br i1 %.not24.i.i, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.z, %.noexc81
  %i.gd = phi ptr [ %i.gm, %.noexc81 ], [ %i.fv, %bb.z ]
  %.pn2128.i.i = phi i64 [ %i.gr, %.noexc81 ], [ %i.gb, %bb.z ] ; 5 uses
  %.sroa.0.027.i.i = phi ptr [ %i.gs, %.noexc81 ], [ %i.gc, %bb.z ]
  %.sroa.010.026.i.i = phi i64 [ %i.gj, %.noexc81 ], [ %.sroa.0103.1, %bb.z ]
  %.sroa.9.025.i.i = phi ptr [ %i.gk, %.noexc81 ], [ %.sroa.14.1, %bb.z ] ; 2 uses
  %i.ge = icmp eq i64 %.pn2128.i.i, 0
  br i1 %i.ge, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.027.i.i, ptr align 1 %.sroa.9.025.i.i, i64 %.pn2128.i.i, i1 false)
  %.pre.i.i = load ptr, ptr %i.ft, align 8, !tbaa !218
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i: ; preds = %bb.aa, %.lr.ph.i.i
  %i.gf = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.pre.i.i, %bb.aa ]
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %.pn2128.i.i
  store ptr %i.gg, ptr %i.ft, align 8, !tbaa !218
  %i.gh = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !41
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i)
          to label %.noexc81 unwind label %bb.ab, !inline_history !10

.noexc81:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.gj = sub nuw i64 %.sroa.010.026.i.i, %.pn2128.i.i ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i, i64 %.pn2128.i.i ; 2 uses
  %i.gl = load ptr, ptr %i.fs, align 8, !tbaa !78 ; 2 uses
  %i.gm = load ptr, ptr %i.ft, align 8, !tbaa !78 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = load i64, ptr %i.fz, align 8
  %i.gr = sub i64 %i.gq, %i.gp                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gp ; 2 uses
  %.not.i.i = icmp ugt i64 %i.gr, %i.gj
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !2

._crit_edge.i.i:                                  ; preds = %.noexc81
  %.not1.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not1.i.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i: ; preds = %._crit_edge.i.i, %bb.z
  %.sroa.0.0.lcssa.i10.i = phi ptr [ %i.gs, %._crit_edge.i.i ], [ %i.gc, %bb.z ]
  %.sroa.010.0.lcssa.i9.i = phi i64 [ %i.gj, %._crit_edge.i.i ], [ %.sroa.0103.1, %bb.z ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i = phi ptr [ %i.gk, %._crit_edge.i.i ], [ %.sroa.14.1, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.lcssa.i10.i, ptr align 1 %.sroa.9.0.lcssa.i8.i, i64 %.sroa.010.0.lcssa.i9.i, i1 false)
  %i.gt = load ptr, ptr %i.ft, align 8, !tbaa !218
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %.sroa.010.0.lcssa.i9.i
  store ptr %i.gu, ptr %i.ft, align 8, !tbaa !218
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

bb.ab:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.x
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.gx = load i8, ptr %i.gw, align 2, !tbaa !451
  %i.gy = load i16, ptr %0, align 4               ; 2 uses
  %i.gz = and i16 %i.gy, 3                        ; 2 uses
  %i.ha = zext nneg i16 %i.gz to i32
  %i.hb = sub nuw i64 %.0.i, %.sroa.0103.1
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i82 = load ptr, ptr %i.hc, align 8, !tbaa !198 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6localeENKUlPcmE_clES9_m:bb.a
  %i.p = load i64, ptr %i.o, align 8, !tbaa !66   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !tbaa !47    ; 3 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp sle i64 %i.p, %i.t
  %i.v = add i8 %i.s, -127
  %i.w = icmp ult i8 %i.v, -126
  %or.cond5562.i = or i1 %i.u, %i.w
  br i1 %or.cond5562.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !115
  %i.z = add i64 %i.y, -1
  br label %bb.b

.critedge.preheader.i:                            ; preds = %bb.b, %bb.a
  %.039.lcssa61.i = phi i64 [ 0, %bb.a ], [ %.140.i, %bb.b ] ; 3 uses
  %.042.lcssa.i = phi ptr [ %i.q, %bb.a ], [ %i.au, %bb.b ] ; 7 uses
  %.038.lcssa.i = phi i64 [ 0, %bb.a ], [ %.1.i, %bb.b ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 %.039.lcssa61.i
  %.not5269.i = icmp eq ptr %i.m, %.042.lcssa.i
  br i1 %.not5269.i, label %.preheader60.i, label %iter.check

iter.check:                                       ; preds = %.critedge.preheader.i
  %.042.lcssa.i35 = ptrtoaddr ptr %.042.lcssa.i to i64 ; 3 uses
  %i.ab = sub i64 %.042.lcssa.i35, %i.r           ; 7 uses
  %min.iters.check = icmp ult i64 %i.ab, 8
  %i.ac = sub i64 %i.r, %i.a
  %diff.check = icmp ugt i64 %i.ac, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.critedge.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check36 = icmp ult i64 %i.ab, 32
  br i1 %min.iters.check36, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ad = and i64 %i.ab, 24
  %n.vec = and i64 %i.ab, -32                     ; 5 uses
  %i.ae = getelementptr i8, ptr %i.m, i64 %n.vec
  %i.af = getelementptr i8, ptr %1, i64 %n.vec    ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %i.m, i64 %index ; 2 uses
  %next.gep37 = getelementptr i8, ptr %1, i64 %index ; 2 uses
  %i.ag = getelementptr i8, ptr %next.gep, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !47
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !47
  %i.ah = getelementptr i8, ptr %next.gep37, i64 16
  store <16 x i8> %wide.load, ptr %next.gep37, align 1, !tbaa !47
  store <16 x i8> %wide.load38, ptr %i.ah, align 1, !tbaa !47
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !486

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.preheader60.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.critedge.i.preheader, label %vec.epilog.ph, !prof !501

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec40 = and i64 %i.ab, -8                    ; 4 uses
  %i.aj = getelementptr i8, ptr %i.m, i64 %n.vec40
  %i.ak = getelementptr i8, ptr %1, i64 %n.vec40  ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index41 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next45, %vec.epilog.vector.body ] ; 3 uses
  %next.gep42 = getelementptr i8, ptr %i.m, i64 %index41
  %next.gep43 = getelementptr i8, ptr %1, i64 %index41
  %wide.load44 = load <8 x i8>, ptr %next.gep42, align 1, !tbaa !47
  store <8 x i8> %wide.load44, ptr %next.gep43, align 1, !tbaa !47
  %index.next45 = add nuw i64 %index41, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !487

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n46 = icmp eq i64 %i.ab, %n.vec40
  br i1 %cmp.n46, label %.preheader60.i, label %.critedge.i.preheader

.critedge.i.preheader:                            ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.04371.i.ph = phi ptr [ %i.m, %iter.check ], [ %i.ae, %vec.epilog.iter.check ], [ %i.aj, %vec.epilog.middle.block ] ; 3 uses
  %.04670.i.ph = phi ptr [ %1, %iter.check ], [ %i.af, %vec.epilog.iter.check ], [ %i.ak, %vec.epilog.middle.block ] ; 2 uses
  %.04371.i.ph130 = ptrtoaddr ptr %.04371.i.ph to i64 ; 2 uses
  %i.am = sub i64 %.042.lcssa.i35, %.04371.i.ph130
  %xtraiter = and i64 %i.am, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol

.critedge.i.prol:                                 ; preds = %.critedge.i.preheader, %.critedge.i.prol
  %.04371.i.prol = phi ptr [ %i.an, %.critedge.i.prol ], [ %.04371.i.ph, %.critedge.i.preheader ] ; 2 uses
  %.04670.i.prol = phi ptr [ %i.ap, %.critedge.i.prol ], [ %.04670.i.ph, %.critedge.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.critedge.i.prol ], [ 0, %.critedge.i.preheader ]
  %i.an = getelementptr inbounds nuw i8, ptr %.04371.i.prol, i64 1 ; 2 uses
  %i.ao = load i8, ptr %.04371.i.prol, align 1, !tbaa !47
  %i.ap = getelementptr inbounds nuw i8, ptr %.04670.i.prol, i64 1 ; 3 uses
  store i8 %i.ao, ptr %.04670.i.prol, align 1, !tbaa !47
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol, !llvm.loop !488

.critedge.i.prol.loopexit:                        ; preds = %.critedge.i.prol, %.critedge.i.preheader
  %.lcssa128.unr = phi ptr [ poison, %.critedge.i.preheader ], [ %i.ap, %.critedge.i.prol ]
  %.04371.i.unr = phi ptr [ %.04371.i.ph, %.critedge.i.preheader ], [ %i.an, %.critedge.i.prol ]
  %.04670.i.unr = phi ptr [ %.04670.i.ph, %.critedge.i.preheader ], [ %i.ap, %.critedge.i.prol ]
  %i.aq = sub i64 %.04371.i.ph130, %.042.lcssa.i35
  %i.ar = icmp ugt i64 %i.aq, -8
  br i1 %i.ar, label %.preheader60.i, label %.critedge.i

bb.b:                                             ; preds = %bb.b, %.lr.ph.i
  %i.as = phi i8 [ %i.s, %.lr.ph.i ], [ %i.bb, %bb.b ]
  %.03865.i = phi i64 [ 0, %.lr.ph.i ], [ %.1.i, %bb.b ]
  %.03964.i = phi i64 [ 0, %.lr.ph.i ], [ %.140.i, %bb.b ] ; 2 uses
  %.04263.i = phi ptr [ %i.q, %.lr.ph.i ], [ %i.au, %bb.b ]
  %narrow.i = sub nsw i8 0, %i.as
  %i.at = sext i8 %narrow.i to i64
  %i.au = getelementptr inbounds i8, ptr %.04263.i, i64 %i.at ; 3 uses
  %i.av = icmp ult i64 %.03964.i, %i.z            ; 2 uses
  %i.aw = zext i1 %i.av to i64
  %.140.i = add i64 %.03964.i, %i.aw              ; 3 uses
  %not..i = xor i1 %i.av, true
  %i.ax = zext i1 %not..i to i64
  %.1.i = add i64 %.03865.i, %i.ax                ; 2 uses
  %i.ay = ptrtoint ptr %i.au to i64
  %i.az = sub i64 %i.ay, %i.r
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 %.140.i
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !47  ; 3 uses
  %i.bc = sext i8 %i.bb to i64
  %i.bd = icmp sle i64 %i.az, %i.bc
  %i.be = add i8 %i.bb, -127
  %i.bf = icmp ult i8 %i.be, -126
  %or.cond55.i = or i1 %i.bf, %i.bd
  br i1 %or.cond55.i, label %.critedge.preheader.i, label %bb.b, !llvm.loop !7

.preheader60.i:                                   ; preds = %.critedge.i.prol.loopexit, %.critedge.i, %middle.block, %vec.epilog.middle.block, %.critedge.preheader.i
  %.046.lcssa.i = phi ptr [ %1, %.critedge.preheader.i ], [ %i.ak, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %.lcssa128.unr, %.critedge.i.prol.loopexit ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.m, %.critedge.preheader.i ], [ %.042.lcssa.i, %vec.epilog.middle.block ], [ %.042.lcssa.i, %middle.block ], [ %.042.lcssa.i, %.critedge.i ], [ %.042.lcssa.i, %.critedge.i.prol.loopexit ] ; 2 uses
  %.not5382.i = icmp eq i64 %.038.lcssa.i, 0
  br i1 %.not5382.i, label %.preheader.i, label %.lr.ph85.i

.critedge.i:                                      ; preds = %.critedge.i.prol.loopexit, %.critedge.i
  %.04371.i = phi ptr [ %i.cb, %.critedge.i ], [ %.04371.i.unr, %.critedge.i.prol.loopexit ] ; 9 uses
  %.04670.i = phi ptr [ %i.cd, %.critedge.i ], [ %.04670.i.unr, %.critedge.i.prol.loopexit ] ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04371.i, i64 1
  %i.bh = load i8, ptr %.04371.i, align 1, !tbaa !47
  %i.bi = getelementptr inbounds nuw i8, ptr %.04670.i, i64 1
  store i8 %i.bh, ptr %.04670.i, align 1, !tbaa !47
  %i.bj = getelementptr inbounds nuw i8, ptr %.04371.i, i64 2
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !47
  %i.bl = getelementptr inbounds nuw i8, ptr %.04670.i, i64 2
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !47
  %i.bm = getelementptr inbounds nuw i8, ptr %.04371.i, i64 3
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !47
  %i.bo = getelementptr inbounds nuw i8, ptr %.04670.i, i64 3
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !47
  %i.bp = getelementptr inbounds nuw i8, ptr %.04371.i, i64 4
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !47
  %i.br = getelementptr inbounds nuw i8, ptr %.04670.i, i64 4
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !47
  %i.bs = getelementptr inbounds nuw i8, ptr %.04371.i, i64 5
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !47
  %i.bu = getelementptr inbounds nuw i8, ptr %.04670.i, i64 5
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !47
  %i.bv = getelementptr inbounds nuw i8, ptr %.04371.i, i64 6
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !47
  %i.bx = getelementptr inbounds nuw i8, ptr %.04670.i, i64 6
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !47
  %i.by = getelementptr inbounds nuw i8, ptr %.04371.i, i64 7
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !47
  %i.ca = getelementptr inbounds nuw i8, ptr %.04670.i, i64 7
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !47
  %i.cb = getelementptr inbounds nuw i8, ptr %.04371.i, i64 8 ; 2 uses
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !47
  %i.cd = getelementptr inbounds nuw i8, ptr %.04670.i, i64 8 ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !47
  %.not52.i.7 = icmp eq ptr %i.cb, %.042.lcssa.i
  br i1 %.not52.i.7, label %.preheader60.i, label %.critedge.i, !llvm.loop !489

.loopexit59.i:                                    ; preds = %.lr.ph79.i, %middle.block65, %vec.epilog.middle.block82, %.lr.ph85.i
  %.245.lcssa.i = phi ptr [ %.14484.i, %.lr.ph85.i ], [ %i.cz, %vec.epilog.middle.block82 ], [ %i.cn, %middle.block65 ], [ %i.db, %.lr.ph79.i ] ; 2 uses
  %.248.lcssa.i = phi ptr [ %.24875.i, %.lr.ph85.i ], [ %i.cw, %vec.epilog.middle.block82 ], [ %i.ck, %middle.block65 ], [ %.248.i, %.lr.ph79.i ] ; 2 uses
  %.not53.i = icmp eq i64 %i.ce, 0
  br i1 %.not53.i, label %.preheader.i, label %.lr.ph85.i, !llvm.loop !8

.preheader.i:                                     ; preds = %.loopexit59.i, %.preheader60.i
  %.147.lcssa.i = phi ptr [ %.046.lcssa.i, %.preheader60.i ], [ %.248.lcssa.i, %.loopexit59.i ] ; 2 uses
  %.144.lcssa.i = phi ptr [ %.043.lcssa.i, %.preheader60.i ], [ %.245.lcssa.i, %.loopexit59.i ]
  %.not5495.i = icmp eq i64 %.039.lcssa61.i, 0
  br i1 %.not5495.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i

.lr.ph85.i:                                       ; preds = %.preheader60.i, %.loopexit59.i
  %.in.i = phi i64 [ %i.ce, %.loopexit59.i ], [ %.038.lcssa.i, %.preheader60.i ]
  %.14484.i = phi ptr [ %.245.lcssa.i, %.loopexit59.i ], [ %.043.lcssa.i, %.preheader60.i ] ; 12 uses
  %.14783.i = phi ptr [ %.248.lcssa.i, %.loopexit59.i ], [ %.046.lcssa.i, %.preheader60.i ] ; 8 uses
  %i.ce = add i64 %.in.i, -1                      ; 2 uses
  store i8 %i.f, ptr %.14783.i, align 1, !tbaa !47
  %i.cf = load i8, ptr %i.aa, align 1, !tbaa !47  ; 7 uses
  %.24875.i = getelementptr inbounds nuw i8, ptr %.14783.i, i64 1 ; 6 uses
  %i.cg = icmp sgt i8 %i.cf, 0
  br i1 %i.cg, label %iter.check70, label %.loopexit59.i

iter.check70:                                     ; preds = %.lr.ph85.i
  %.14484.i51 = ptrtoaddr ptr %.14484.i to i64
  %.14783.i50 = ptrtoaddr ptr %.14783.i to i64
  %i.ch = zext nneg i8 %i.cf to i64               ; 5 uses
  %min.iters.check53 = icmp ult i8 %i.cf, 4
  %i.ci = sub i64 %.14783.i50, %.14484.i51
  %diff.check52 = icmp ult i64 %i.ci, 31
  %or.cond125 = select i1 %min.iters.check53, i1 true, i1 %diff.check52
  br i1 %or.cond125, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check54

vector.main.loop.iter.check54:                    ; preds = %iter.check70
  %min.iters.check55 = icmp ult i8 %i.cf, 32
  br i1 %min.iters.check55, label %vec.epilog.ph74, label %vector.ph56

vector.ph56:                                      ; preds = %vector.main.loop.iter.check54
  %i.cj = and i64 %i.ch, 28
  %n.vec57 = and i64 %i.ch, 96                    ; 7 uses
  %i.ck = getelementptr i8, ptr %.24875.i, i64 %n.vec57 ; 2 uses
  %i.cl = trunc nuw nsw i64 %n.vec57 to i8
  %i.cm = sub nsw i8 %i.cf, %i.cl
  %i.cn = getelementptr i8, ptr %.14484.i, i64 %n.vec57 ; 2 uses
  %i.co = getelementptr i8, ptr %.14484.i, i64 16
  %wide.load62 = load <16 x i8>, ptr %.14484.i, align 1, !tbaa !47
  %wide.load63 = load <16 x i8>, ptr %i.co, align 1, !tbaa !47
  %i.cp = getelementptr i8, ptr %.14783.i, i64 17
  store <16 x i8> %wide.load62, ptr %.24875.i, align 1, !tbaa !47
  store <16 x i8> %wide.load63, ptr %i.cp, align 1, !tbaa !47
  %i.cq = icmp eq i64 %n.vec57, 32
  br i1 %i.cq, label %middle.block65, label %vector.body58.1.a

vector.body58.1.a:                                ; preds = %vector.ph56
  %next.gep60.1.a = getelementptr i8, ptr %.14783.i, i64 33
  %next.gep61.1.a = getelementptr i8, ptr %.14484.i, i64 32
  %i.cr = getelementptr i8, ptr %.14484.i, i64 48
  %wide.load62.1 = load <16 x i8>, ptr %next.gep61.1.a, align 1, !tbaa !47
  %wide.load63.1 = load <16 x i8>, ptr %i.cr, align 1, !tbaa !47
  %i.cs = getelementptr i8, ptr %.14783.i, i64 49
  store <16 x i8> %wide.load62.1, ptr %next.gep60.1.a, align 1, !tbaa !47
  store <16 x i8> %wide.load63.1, ptr %i.cs, align 1, !tbaa !47
  %i.ct = icmp eq i64 %n.vec57, 64
  br i1 %i.ct, label %middle.block65, label %vector.body58.2.a

vector.body58.2.a:                                ; preds = %vector.body58.1.a
  %next.gep60.2.a = getelementptr i8, ptr %.14783.i, i64 65
  %next.gep61.2.a = getelementptr i8, ptr %.14484.i, i64 64
  %i.cu = getelementptr i8, ptr %.14484.i, i64 80
  %wide.load62.2 = load <16 x i8>, ptr %next.gep61.2.a, align 1, !tbaa !47
  %wide.load63.2 = load <16 x i8>, ptr %i.cu, align 1, !tbaa !47
  %i.cv = getelementptr i8, ptr %.14783.i, i64 81
  store <16 x i8> %wide.load62.2, ptr %next.gep60.2.a, align 1, !tbaa !47
  store <16 x i8> %wide.load63.2, ptr %i.cv, align 1, !tbaa !47
  br label %middle.block65

middle.block65:                                   ; preds = %vector.body58.2.a, %vector.body58.1.a, %vector.ph56
  %cmp.n66 = icmp eq i64 %n.vec57, %i.ch
  br i1 %cmp.n66, label %.loopexit59.i, label %vec.epilog.iter.check72

vec.epilog.iter.check72:                          ; preds = %middle.block65
  %min.epilog.iters.check73 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check73, label %.lr.ph79.i.preheader, label %vec.epilog.ph74, !prof !258

vec.epilog.ph74:                                  ; preds = %vector.main.loop.iter.check54, %vec.epilog.iter.check72
  %vec.epilog.resume.val67 = phi i64 [ %n.vec57, %vec.epilog.iter.check72 ], [ 0, %vector.main.loop.iter.check54 ]
  %n.vec75 = and i64 %i.ch, 124                   ; 5 uses
  %i.cw = getelementptr i8, ptr %.24875.i, i64 %n.vec75 ; 2 uses
  %i.cx = trunc nuw nsw i64 %n.vec75 to i8
  %i.cy = sub nsw i8 %i.cf, %i.cx
  %i.cz = getelementptr i8, ptr %.14484.i, i64 %n.vec75 ; 2 uses
  br label %vec.epilog.vector.body76

vec.epilog.vector.body76:                         ; preds = %vec.epilog.vector.body76, %vec.epilog.ph74
  %index77 = phi i64 [ %vec.epilog.resume.val67, %vec.epilog.ph74 ], [ %index.next81, %vec.epilog.vector.body76 ] ; 3 uses
  %next.gep78 = getelementptr i8, ptr %.24875.i, i64 %index77
  %next.gep79 = getelementptr i8, ptr %.14484.i, i64 %index77
  %wide.load80 = load <4 x i8>, ptr %next.gep79, align 1, !tbaa !47
  store <4 x i8> %wide.load80, ptr %next.gep78, align 1, !tbaa !47
  %index.next81 = add nuw i64 %index77, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.da, label %vec.epilog.middle.block82, label %vec.epilog.vector.body76, !llvm.loop !490

vec.epilog.middle.block82:                        ; preds = %vec.epilog.vector.body76
  %cmp.n83 = icmp eq i64 %n.vec75, %i.ch
  br i1 %cmp.n83, label %.loopexit59.i, label %.lr.ph79.i.preheader

.lr.ph79.i.preheader:                             ; preds = %iter.check70, %vec.epilog.iter.check72, %vec.epilog.middle.block82
  %.24878.i.ph = phi ptr [ %.24875.i, %iter.check70 ], [ %i.ck, %vec.epilog.iter.check72 ], [ %i.cw, %vec.epilog.middle.block82 ]
  %.03777.i.ph = phi i8 [ %i.cf, %iter.check70 ], [ %i.cm, %vec.epilog.iter.check72 ], [ %i.cy, %vec.epilog.middle.block82 ]
  %.24576.i.ph = phi ptr [ %.14484.i, %iter.check70 ], [ %i.cn, %vec.epilog.iter.check72 ], [ %i.cz, %vec.epilog.middle.block82 ]
  br label %.lr.ph79.i

.lr.ph79.i:                                       ; preds = %.lr.ph79.i.preheader, %.lr.ph79.i
  %.24878.i = phi ptr [ %.248.i, %.lr.ph79.i ], [ %.24878.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.03777.i = phi i8 [ %i.dd, %.lr.ph79.i ], [ %.03777.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %.24576.i = phi ptr [ %i.db, %.lr.ph79.i ], [ %.24576.i.ph, %.lr.ph79.i.preheader ] ; 2 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.24576.i, i64 1 ; 2 uses
  %i.dc = load i8, ptr %.24576.i, align 1, !tbaa !47
  store i8 %i.dc, ptr %.24878.i, align 1, !tbaa !47
  %i.dd = add nsw i8 %.03777.i, -1
  %.248.i = getelementptr inbounds nuw i8, ptr %.24878.i, i64 1 ; 2 uses
  %i.de = icmp samesign ugt i8 %.03777.i, 1
  br i1 %i.de, label %.lr.ph79.i, label %.loopexit59.i, !llvm.loop !491

.loopexit.i:                                      ; preds = %.lr.ph92.i, %middle.block103, %vec.epilog.middle.block120, %.lr.ph98.i
  %.4.lcssa.i = phi ptr [ %.397.i, %.lr.ph98.i ], [ %i.eb, %vec.epilog.middle.block120 ], [ %i.dp, %middle.block103 ], [ %i.ed, %.lr.ph92.i ]
  %.450.lcssa.i = phi ptr [ %.45088.i, %.lr.ph98.i ], [ %i.dy, %vec.epilog.middle.block120 ], [ %i.dm, %middle.block103 ], [ %.450.i, %.lr.ph92.i ] ; 2 uses
  %.not54.i = icmp eq i64 %i.df, 0
  br i1 %.not54.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i, !llvm.loop !9

.lr.ph98.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.in100.i = phi i64 [ %i.df, %.loopexit.i ], [ %.039.lcssa61.i, %.preheader.i ]
  %.397.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.144.lcssa.i, %.preheader.i ] ; 12 uses
  %.34996.i = phi ptr [ %.450.lcssa.i, %.loopexit.i ], [ %.147.lcssa.i, %.preheader.i ] ; 8 uses
  %i.df = add i64 %.in100.i, -1                   ; 3 uses
  store i8 %i.f, ptr %.34996.i, align 1, !tbaa !47
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !47  ; 7 uses
  %.45088.i = getelementptr inbounds nuw i8, ptr %.34996.i, i64 1 ; 6 uses
  %i.di = icmp sgt i8 %i.dh, 0
  br i1 %i.di, label %iter.check108, label %.loopexit.i

iter.check108:                                    ; preds = %.lr.ph98.i
  %.397.i89 = ptrtoaddr ptr %.397.i to i64
  %.34996.i88 = ptrtoaddr ptr %.34996.i to i64
  %i.dj = zext nneg i8 %i.dh to i64               ; 5 uses
  %min.iters.check91 = icmp ult i8 %i.dh, 4
  %i.dk = sub i64 %.34996.i88, %.397.i89
  %diff.check90 = icmp ult i64 %i.dk, 31
  %or.cond126 = select i1 %min.iters.check91, i1 true, i1 %diff.check90
  br i1 %or.cond126, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check92

vector.main.loop.iter.check92:                    ; preds = %iter.check108
  %min.iters.check93 = icmp ult i8 %i.dh, 32
  br i1 %min.iters.check93, label %vec.epilog.ph112, label %vector.ph94

vector.ph94:                                      ; preds = %vector.main.loop.iter.check92
  %i.dl = and i64 %i.dj, 28
  %n.vec95 = and i64 %i.dj, 96                    ; 7 uses
  %i.dm = getelementptr i8, ptr %.45088.i, i64 %n.vec95 ; 2 uses
  %i.dn = trunc nuw nsw i64 %n.vec95 to i8
  %i.do = sub nsw i8 %i.dh, %i.dn
  %i.dp = getelementptr i8, ptr %.397.i, i64 %n.vec95 ; 2 uses
  %i.dq = getelementptr i8, ptr %.397.i, i64 16
  %wide.load100 = load <16 x i8>, ptr %.397.i, align 1, !tbaa !47
  %wide.load101 = load <16 x i8>, ptr %i.dq, align 1, !tbaa !47
  %i.dr = getelementptr i8, ptr %.34996.i, i64 17
  store <16 x i8> %wide.load100, ptr %.45088.i, align 1, !tbaa !47
  store <16 x i8> %wide.load101, ptr %i.dr, align 1, !tbaa !47
  %i.ds = icmp eq i64 %n.vec95, 32
  br i1 %i.ds, label %middle.block103, label %vector.body96.1.a

vector.body96.1.a:                                ; preds = %vector.ph94
  %next.gep98.1.a = getelementptr i8, ptr %.34996.i, i64 33
  %next.gep99.1.a = getelementptr i8, ptr %.397.i, i64 32
  %i.dt = getelementptr i8, ptr %.397.i, i64 48
  %wide.load100.1 = load <16 x i8>, ptr %next.gep99.1.a, align 1, !tbaa !47
  %wide.load101.1 = load <16 x i8>, ptr %i.dt, align 1, !tbaa !47
  %i.du = getelementptr i8, ptr %.34996.i, i64 49
  store <16 x i8> %wide.load100.1, ptr %next.gep98.1.a, align 1, !tbaa !47
  store <16 x i8> %wide.load101.1, ptr %i.du, align 1, !tbaa !47
  %i.dv = icmp eq i64 %n.vec95, 64
  br i1 %i.dv, label %middle.block103, label %vector.body96.2.a

vector.body96.2.a:                                ; preds = %vector.body96.1.a
  %next.gep98.2.a = getelementptr i8, ptr %.34996.i, i64 65
  %next.gep99.2.a = getelementptr i8, ptr %.397.i, i64 64
  %i.dw = getelementptr i8, ptr %.397.i, i64 80
  %wide.load100.2 = load <16 x i8>, ptr %next.gep99.2.a, align 1, !tbaa !47
  %wide.load101.2 = load <16 x i8>, ptr %i.dw, align 1, !tbaa !47
  %i.dx = getelementptr i8, ptr %.34996.i, i64 81
  store <16 x i8> %wide.load100.2, ptr %next.gep98.2.a, align 1, !tbaa !47
  store <16 x i8> %wide.load101.2, ptr %i.dx, align 1, !tbaa !47
  br label %middle.block103

middle.block103:                                  ; preds = %vector.body96.2.a, %vector.body96.1.a, %vector.ph94
  %cmp.n104 = icmp eq i64 %n.vec95, %i.dj
  br i1 %cmp.n104, label %.loopexit.i, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block103
  %min.epilog.iters.check111 = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check111, label %.lr.ph92.i.preheader, label %vec.epilog.ph112, !prof !258

vec.epilog.ph112:                                 ; preds = %vector.main.loop.iter.check92, %vec.epilog.iter.check110
  %vec.epilog.resume.val105 = phi i64 [ %n.vec95, %vec.epilog.iter.check110 ], [ 0, %vector.main.loop.iter.check92 ]
  %n.vec113 = and i64 %i.dj, 124                  ; 5 uses
  %i.dy = getelementptr i8, ptr %.45088.i, i64 %n.vec113 ; 2 uses
  %i.dz = trunc nuw nsw i64 %n.vec113 to i8
  %i.ea = sub nsw i8 %i.dh, %i.dz
  %i.eb = getelementptr i8, ptr %.397.i, i64 %n.vec113 ; 2 uses
  br label %vec.epilog.vector.body114

vec.epilog.vector.body114:                        ; preds = %vec.epilog.vector.body114, %vec.epilog.ph112
  %index115 = phi i64 [ %vec.epilog.resume.val105, %vec.epilog.ph112 ], [ %index.next119, %vec.epilog.vector.body114 ] ; 3 uses
  %next.gep116 = getelementptr i8, ptr %.45088.i, i64 %index115
  %next.gep117 = getelementptr i8, ptr %.397.i, i64 %index115
  %wide.load118 = load <4 x i8>, ptr %next.gep117, align 1, !tbaa !47
  store <4 x i8> %wide.load118, ptr %next.gep116, align 1, !tbaa !47
  %index.next119 = add nuw i64 %index115, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.ec, label %vec.epilog.middle.block120, label %vec.epilog.vector.body114, !llvm.loop !492

vec.epilog.middle.block120:                       ; preds = %vec.epilog.vector.body114
  %cmp.n121 = icmp eq i64 %n.vec113, %i.dj
  br i1 %cmp.n121, label %.loopexit.i, label %.lr.ph92.i.preheader

.lr.ph92.i.preheader:                             ; preds = %iter.check108, %vec.epilog.iter.check110, %vec.epilog.middle.block120
  %.45091.i.ph = phi ptr [ %.45088.i, %iter.check108 ], [ %i.dm, %vec.epilog.iter.check110 ], [ %i.dy, %vec.epilog.middle.block120 ]
  %.090.i.ph = phi i8 [ %i.dh, %iter.check108 ], [ %i.do, %vec.epilog.iter.check110 ], [ %i.ea, %vec.epilog.middle.block120 ]
  %.489.i.ph = phi ptr [ %.397.i, %iter.check108 ], [ %i.dp, %vec.epilog.iter.check110 ], [ %i.eb, %vec.epilog.middle.block120 ]
  br label %.lr.ph92.i

.lr.ph92.i:                                       ; preds = %.lr.ph92.i.preheader, %.lr.ph92.i
  %.45091.i = phi ptr [ %.450.i, %.lr.ph92.i ], [ %.45091.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.090.i = phi i8 [ %i.ef, %.lr.ph92.i ], [ %.090.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %.489.i = phi ptr [ %i.ed, %.lr.ph92.i ], [ %.489.i.ph, %.lr.ph92.i.preheader ] ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.489.i, i64 1 ; 2 uses
  %i.ee = load i8, ptr %.489.i, align 1, !tbaa !47
  store i8 %i.ee, ptr %.45091.i, align 1, !tbaa !47
  %i.ef = add nsw i8 %.090.i, -1
  %.450.i = getelementptr inbounds nuw i8, ptr %.45091.i, i64 1 ; 2 uses
  %i.eg = icmp samesign ugt i8 %.090.i, 1
  br i1 %i.eg, label %.lr.ph92.i, label %.loopexit.i, !llvm.loop !493

_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit: ; preds = %.loopexit.i, %.preheader.i
  %.349.lcssa.i = phi ptr [ %.147.lcssa.i, %.preheader.i ], [ %.450.lcssa.i, %.loopexit.i ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !502, !nonnull !184, !align !185
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !66 ; 2 uses
  %.not = icmp eq i64 %i.ej, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !503, !nonnull !184, !align !185
  %i.em = load i64, ptr %i.el, align 8, !tbaa !66
  %.not8 = icmp eq i64 %i.em, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !504, !nonnull !184
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !47
  store i8 %i.ep, ptr %.349.lcssa.i, align 1, !tbaa !47
  %i.eq = getelementptr inbounds nuw i8, ptr %.349.lcssa.i, i64 1
  %i.er = load ptr, ptr %i.n, align 8, !tbaa !500, !nonnull !184, !align !185 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !66
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !66
  %.pre = load ptr, ptr %i.eh, align 8, !tbaa !502
  %.pre17 = load i64, ptr %.pre, align 8, !tbaa !66
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.eu = phi i64 [ %.pre17, %bb.d ], [ %i.ej, %bb.c ]
  %.0 = phi ptr [ %i.eq, %bb.d ], [ %.349.lcssa.i, %bb.c ] ; 3 uses
  %i.ev = icmp ugt i64 %i.eu, 1
  br i1 %i.ev, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !497, !nonnull !184, !align !185 ; 2 uses
  %i.ex = load ptr, ptr %i.n, align 8, !tbaa !500, !nonnull !184, !align !185
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !66 ; 5 uses
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !505 ; 4 uses
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.g, label %_ZSt10__sv_checkmmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.74, ptr noundef nonnull @.str.73, i64 noundef %i.ey, i64 noundef %i.ez) #25
  unreachable

_ZSt10__sv_checkmmPKc.exit.i:                     ; preds = %bb.f
  %i.fb = sub nuw i64 %i.ez, %i.ey                ; 2 uses
  %i.fc = icmp eq i64 %i.ez, %i.ey
  br i1 %i.fc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt10__sv_checkmmPKc.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !499
  %i.ff = getelementptr inbounds nuw i8, ptr %i.fe, i64 %i.ey
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.0, ptr align 1 %i.ff, i64 %i.fb, i1 false)
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit: ; preds = %_ZSt10__sv_checkmmPKc.exit.i, %bb.h
  %i.fg = getelementptr inbounds nuw i8, ptr %.0, i64 %i.fb
  br label %bb.i

bb.i:                                             ; preds = %bb.e, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit
  %.1 = phi ptr [ %i.fg, %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit ], [ %.0, %bb.e ], [ %.349.lcssa.i, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit ]
  %i.fh = ptrtoint ptr %.1 to i64
  %i.fi = ptrtoint ptr %1 to i64
  %i.fj = sub i64 %i.fh, %i.fi
  ret i64 %i.fj
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden ptr @_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %4 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i203 = alloca %union.anon.55, align 16 ; 5 uses
  %5 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %6 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i = alloca %union.anon.55, align 16    ; 5 uses
  %i.a = alloca double, align 8                   ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %8 = alloca %"struct.std::to_chars_result", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %9 = alloca %class.anon.76, align 8             ; 18 uses
  %10 = alloca %"struct.std::__format::_Optional_locale", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::locale", align 8      ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !95
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #24
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 19 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !114
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  store i64 0, ptr %i.g, align 8, !tbaa !115
  store i8 0, ptr %i.f, align 8, !tbaa !47
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #24
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #24
  store i64 6, ptr %i.c, align 8, !tbaa !66
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #24
  %i.h = load i16, ptr %0, align 4                ; 5 uses
  %i.i = and i16 %i.h, 1536
  %i.j = icmp ne i16 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.d, align 1, !tbaa !239
  br i1 %i.j, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.l = lshr i16 %i.h, 9
  %i.m = and i16 %i.l, 3
  switch i16 %i.m, label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit [
    i16 1, label %bb.c
    i16 2, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i16, ptr %i.n, align 4, !tbaa !237
  %i.p = zext i16 %i.o to i64
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !237
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = load i64, ptr %2, align 8, !noalias !518 ; 3 uses
  %i.u = and i64 %i.t, 15                         ; 2 uses
  %i.v = icmp samesign ugt i64 %i.u, %i.s
  br i1 %i.v, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.w = lshr i64 %i.t, 4
  %i.x = mul nuw nsw i64 %i.s, 5
  %i.y = lshr i64 %i.w, %i.x
  %i.z = trunc i64 %i.y to i8
  %i.aa = and i8 %i.z, 31
  %i.ab = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !47, !noalias !518
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !226
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.u, 0
  %i.af = lshr exact i64 %i.t, 4
  %i.ag = icmp samesign ugt i64 %i.af, %i.s
end_hunk_1
begin_hunk_2_@llvm.abs.i128
!58 = !{!"_ZTS3ast", !32, i64 0, !32, i64 4, !32, i64 6, !32, i64 6, !32, i64 6, !32, i64 8, !32, i64 12}
!59 = !{!"_ZTS6symbol", !42, i64 0}
!60 = !{!"p1 _ZTS9decl_info", !35, i64 0}
!61 = !{!"_ZTS4decl", !58, i64 0, !59, i64 16, !60, i64 24}
!62 = !{!61, !60, i64 24}
!63 = !{!"_ZTSN9sort_size6kind_tE", !31, i64 0}
!64 = !{!"llvm.loop.mustprogress"}
!65 = !{!63, !63, i64 0}
!66 = !{!44, !44, i64 0}
!67 = !{!"p1 _ZTS9parameter", !35, i64 0}
!68 = !{!"_ZTS6vectorI9parameterLb1EjE", !67, i64 0}
!69 = !{!"bool", !31, i64 0}
!70 = !{!"_ZTS9decl_info", !32, i64 0, !32, i64 4, !68, i64 8, !69, i64 16}
!71 = !{!70, !32, i64 0}
!72 = !{!68, !67, i64 0}
!73 = !{!32, !32, i64 0}
!74 = !{!"branch_weights", i32 2000, i32 2001, i32 1}
!75 = !{!"_ZTSSt9exception"}
!76 = !{!"_ZTSSt18bad_variant_access", !75, i64 0, !42, i64 8}
!77 = !{!76, !42, i64 8}
!78 = !{!42, !42, i64 0}
!79 = !{!"any p2 pointer", !35, i64 0}
!80 = !{!"p2 _ZTS4sort", !79, i64 0}
!81 = !{!"_ZTS6vectorIP4sortLb0EjE", !80, i64 0}
!82 = !{!81, !80, i64 0}
!83 = !{!70, !32, i64 4}
!84 = !{!"p1 _ZTS4sort", !35, i64 0}
!85 = !{!84, !84, i64 0}
!86 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIP3astLb1EEE", !56, i64 0}
!87 = !{!86, !56, i64 0}
!88 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIiLb1EEE", !32, i64 0}
!89 = !{!88, !32, i64 0}
!90 = !{!"p1 _ZTS7zstring", !35, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIP7zstringLb1EEE", !90, i64 0}
!93 = !{!92, !90, i64 0}
!94 = !{!"double", !31, i64 0}
!95 = !{!94, !94, i64 0}
!96 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIdLb1EEE", !94, i64 0}
!97 = !{!96, !94, i64 0}
!98 = !{!"_ZTSNSt8__detail9__variant14_UninitializedIjLb1EEE", !32, i64 0}
!99 = !{!98, !32, i64 0}
!100 = !{!48, !48, i64 0}
!101 = !{!"p1 _ZTSNSt8__detail9__variant15_Move_ctor_baseILb0EJiP3ast6symbolP7zstring8rationaldjEEE", !35, i64 0}
!102 = !{!"_ZTSZNSt8__detail9__variant15_Move_ctor_baseILb0EJiP3ast6symbolP7zstring8rationaldjEEC1EOS8_EUlOT_T0_E_", !101, i64 0}
!103 = !{!102, !101, i64 0}
!104 = !{!"branch_weights", i32 2002, i32 4002, i32 2000}
!105 = !{!"p2 _ZTS4expr", !79, i64 0}
!106 = !{!"_ZTS6vectorIP4exprLb0EjE", !105, i64 0}
!107 = !{!106, !105, i64 0}
!108 = !{!"p1 _ZTS4expr", !35, i64 0}
!109 = !{!108, !108, i64 0}
!110 = !{!"_ZTS4expr", !58, i64 0}
!111 = !{!"p1 _ZTS9func_decl", !35, i64 0}
!112 = !{!"_ZTS9app_flags", !32, i64 0, !32, i64 2, !32, i64 2, !32, i64 2}
!113 = !{!"_ZTS3app", !110, i64 0, !111, i64 16, !32, i64 24, !112, i64 28, !31, i64 32}
!114 = !{!43, !42, i64 0}
!115 = !{!45, !44, i64 8}
!116 = !{!"p1 int", !35, i64 0}
!117 = !{!"_ZTS10bit_vector", !32, i64 0, !32, i64 4, !116, i64 8}
!118 = !{!117, !116, i64 8}
!119 = !{!"_ZTSSt13__atomic_baseIjE", !32, i64 0}
!120 = !{!"_ZTSSt6atomicIjE", !119, i64 0}
!121 = !{!"p1 long", !35, i64 0}
!122 = !{!"_ZTS6vectorImLb0EjE", !121, i64 0}
!123 = !{!"_ZTS7svectorImjE", !122, i64 0}
!124 = !{!"p2 _ZTS8reslimit", !79, i64 0}
!125 = !{!"_ZTS6vectorIP8reslimitLb0EjE", !124, i64 0}
!126 = !{!"_ZTS10ptr_vectorI8reslimitE", !125, i64 0}
!127 = !{!"_ZTS8reslimit", !120, i64 0, !69, i64 4, !44, i64 8, !44, i64 16, !123, i64 24, !126, i64 32}
!128 = !{!"_ZTS22small_object_allocator", !31, i64 0, !31, i64 256, !44, i64 512}
!129 = !{!"p1 _ZTSN12symbol_tableIiE10hash_entryE", !35, i64 0}
!130 = !{!"_ZTS14core_hashtableIN12symbol_tableIiE10hash_entryENS1_18key_data_hash_procENS1_16key_data_eq_procEE", !129, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!131 = !{!"p1 _ZTSN12symbol_tableIiE8key_dataE", !35, i64 0}
!132 = !{!"_ZTS6vectorIN12symbol_tableIiE8key_dataELb1EjE", !131, i64 0}
!133 = !{!"_ZTS6vectorIiLb0EjE", !116, i64 0}
!134 = !{!"_ZTS7svectorIijE", !133, i64 0}
!135 = !{!"_ZTS12symbol_tableIiE", !130, i64 0, !132, i64 24, !134, i64 32}
!136 = !{!"p1 _ZTS6symbol", !35, i64 0}
!137 = !{!"_ZTS6vectorI6symbolLb0EjE", !136, i64 0}
!138 = !{!"_ZTS7svectorI6symboljE", !137, i64 0}
!139 = !{!"_ZTS14family_manager", !32, i64 0, !135, i64 8, !138, i64 48}
!140 = !{!"p1 _ZTS22small_object_allocator", !35, i64 0}
!141 = !{!"p2 _ZTSN14parray_managerIN11ast_manager17expr_array_configEE4cellE", !79, i64 0}
!142 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager17expr_array_configEE4cellELb0EjE", !141, i64 0}
!143 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager17expr_array_configEE4cellEE", !142, i64 0}
!144 = !{!"_ZTS14parray_managerIN11ast_manager17expr_array_configEE", !36, i64 0, !140, i64 8, !143, i64 16, !143, i64 24}
!145 = !{!"p2 _ZTSN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyE", !79, i64 0}
!146 = !{!"_ZTS6vectorIPN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyELb0EjE", !145, i64 0}
!147 = !{!"_ZTS10ptr_vectorIN18dependency_managerIN11ast_manager22expr_dependency_configEE10dependencyEE", !146, i64 0}
!148 = !{!"_ZTS18dependency_managerIN11ast_manager22expr_dependency_configEE", !36, i64 0, !140, i64 8, !147, i64 16}
!149 = !{!"p2 _ZTSN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellE", !79, i64 0}
!150 = !{!"_ZTS6vectorIPN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellELb0EjE", !149, i64 0}
!151 = !{!"_ZTS10ptr_vectorIN14parray_managerIN11ast_manager28expr_dependency_array_configEE4cellEE", !150, i64 0}
!152 = !{!"_ZTS14parray_managerIN11ast_manager28expr_dependency_array_configEE", !36, i64 0, !140, i64 8, !151, i64 16, !151, i64 24}
!153 = !{!"p2 _ZTS11decl_plugin", !79, i64 0}
!154 = !{!"_ZTS6vectorIP11decl_pluginLb0EjE", !153, i64 0}
!155 = !{!"_ZTS10ptr_vectorI11decl_pluginE", !154, i64 0}
!156 = !{!"_ZTS14proof_gen_mode", !31, i64 0}
!157 = !{!"p1 _ZTSN10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE4cellE", !35, i64 0}
!158 = !{!"_ZTS10chashtableIP3ast12obj_ptr_hashIS0_E11ast_eq_procE", !157, i64 0, !32, i64 8, !32, i64 12, !32, i64 16, !32, i64 20, !32, i64 24, !32, i64 28, !32, i64 32, !157, i64 40, !157, i64 48, !157, i64 56}
!159 = !{!"_ZTS9ast_table", !158, i64 0}
!160 = !{!"_ZTS6vectorIjLb0EjE", !116, i64 0}
!161 = !{!"_ZTS7svectorIjjE", !160, i64 0}
!162 = !{!"_ZTS6id_gen", !32, i64 0, !161, i64 8}
!163 = !{!"p1 _ZTS3app", !35, i64 0}
!164 = !{!"p1 _ZTS17default_map_entryIjjE", !35, i64 0}
!165 = !{!"_ZTS14core_hashtableI17default_map_entryIjjEN9table2mapIS1_6u_hash4u_eqE15entry_hash_procENS5_13entry_eq_procEE", !164, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!166 = !{!"_ZTS9table2mapI17default_map_entryIjjE6u_hash4u_eqE", !165, i64 0}
!167 = !{!"_ZTS3mapIjj6u_hash4u_eqE", !166, i64 0}
!168 = !{!"_ZTS5u_mapIjE", !167, i64 0}
!169 = !{!"p1 _ZTSSt13basic_fstreamIcSt11char_traitsIcEE", !35, i64 0}
!170 = !{!"p1 _ZTSN7obj_mapI9func_declPS0_E13obj_map_entryE", !35, i64 0}
!171 = !{!"_ZTS14core_hashtableIN7obj_mapI9func_declPS1_E13obj_map_entryE8obj_hashINS3_8key_dataEE10default_eqIS6_EE", !170, i64 0, !32, i64 8, !32, i64 12, !32, i64 16}
!172 = !{!"_ZTS7obj_mapI9func_declPS0_E", !171, i64 0}
!173 = !{!"p1 _ZTS15some_value_proc", !35, i64 0}
!174 = !{!"_ZTS11ast_manager", !127, i64 0, !128, i64 40, !139, i64 560, !144, i64 616, !148, i64 648, !152, i64 672, !155, i64 704, !156, i64 712, !69, i64 716, !159, i64 720, !162, i64 784, !162, i64 800, !84, i64 816, !84, i64 824, !163, i64 832, !163, i64 840, !163, i64 848, !32, i64 856, !69, i64 860, !168, i64 864, !169, i64 888, !69, i64 896, !69, i64 897, !36, i64 904, !59, i64 912, !172, i64 920, !173, i64 944}
!175 = !{!174, !84, i64 816}
!176 = !{!"p1 _ZTS10arith_util", !35, i64 0}
!177 = !{!"_ZTS10scoped_ptrI10arith_utilE", !176, i64 0}
!178 = !{!"p1 _ZTS7bv_util", !35, i64 0}
!179 = !{!"_ZTS10scoped_ptrI7bv_utilE", !178, i64 0}
!180 = !{!"_ZTSN7datalog12dl_decl_utilE", !36, i64 0, !177, i64 8, !179, i64 16, !32, i64 24}
!181 = !{!180, !32, i64 24}
!182 = !{!179, !178, i64 0}
!183 = !{!180, !36, i64 0}
!184 = !{}
!185 = !{i64 8}
!186 = !{!177, !176, i64 0}
!187 = !{!174, !163, i64 840}
!188 = !{!174, !163, i64 832}
!189 = !{!113, !111, i64 16}
!190 = !{!"_ZTS6bufferIP4sortLb0ELj16EE", !80, i64 0, !32, i64 8, !32, i64 12, !31, i64 16}
!191 = !{!190, !80, i64 0}
!192 = !{!"llvm.loop.isvectorized", i32 1}
!193 = !{!"llvm.loop.unroll.runtime.disable"}
!194 = !{!"llvm.loop.unroll.disable"}
!195 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!196 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!197 = !{!"p1 _ZTSNSt8__format5_SinkIcEE", !35, i64 0}
!198 = !{!197, !197, i64 0}
!199 = !{!"_ZTSNSt8__detail16__extent_storageILm18446744073709551615EEE", !44, i64 0}
!200 = !{!"_ZTSSt4spanIcLm18446744073709551615EE", !42, i64 0, !199, i64 8}
!201 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPcSt4spanIcLm18446744073709551615EEEE", !42, i64 0}
!202 = !{!"_ZTSNSt8__format5_SinkIcEE", !200, i64 8, !201, i64 24}
!203 = !{!"_ZTSNSt8__format9_Buf_sinkIcEE", !202, i64 0, !31, i64 32}
!204 = !{!"_ZTSNSt8__format10_Sink_iterIcEE", !197, i64 0}
!205 = !{!"_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE", !203, i64 0, !204, i64 288, !44, i64 296, !44, i64 304}
!206 = !{!205, !44, i64 296}
!207 = !{!205, !44, i64 304}
!208 = !{!"_ZTSNSt8__format16_Optional_localeE", !31, i64 0, !69, i64 8}
!209 = !{!208, !69, i64 8}
!210 = !{!"_ZTSNSt26basic_format_parse_contextIcE9_IndexingE", !31, i64 0}
!211 = !{!"_ZTSSt26basic_format_parse_contextIcE", !42, i64 0, !42, i64 8, !210, i64 16, !44, i64 24, !44, i64 32}
!212 = !{!211, !42, i64 0}
!213 = !{!211, !42, i64 8}
!214 = !{!211, !210, i64 16}
!215 = !{!211, !44, i64 24}
!216 = !{!"p1 _ZTSSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE", !35, i64 0}
!217 = !{i8 0, i8 2}
!218 = !{!201, !42, i64 0}
!219 = !{!199, !44, i64 0}
!220 = !{!"_ZTSNSt8__format8_ScannerIcEE", !211, i64 8}
!221 = !{!"_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE", !220, i64 0, !216, i64 48}
!222 = !{!221, !216, i64 48}
!223 = !{!"p1 _ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE", !35, i64 0}
!224 = !{!"_ZTSZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEmEUlRT_E_", !223, i64 0}
!225 = !{!224, !223, i64 0}
!226 = !{i64 0, i64 16, !47}
!227 = !{!"_ZTSNSt8__format6_Arg_tE", !31, i64 0}
!228 = !{!227, !227, i64 0}
!229 = !{i64 0, i64 16, !47, i64 16, i64 1, !228}
!230 = !{!"_ZTSNSt8__format6_AlignE", !31, i64 0}
!231 = !{!"_ZTSNSt8__format5_SignE", !31, i64 0}
!232 = !{!"_ZTSNSt8__format10_WidthPrecE", !31, i64 0}
!233 = !{!"_ZTSNSt8__format10_Pres_typeE", !31, i64 0}
!234 = !{!"short", !31, i64 0}
!235 = !{!"_ZTSNSt8__format5_SpecIcEE", !230, i64 0, !231, i64 0, !32, i64 0, !32, i64 0, !32, i64 0, !232, i64 0, !232, i64 1, !233, i64 1, !234, i64 2, !234, i64 4, !31, i64 6}
!236 = !{!235, !234, i64 2}
!237 = !{!235, !234, i64 4}
!238 = !{!235, !31, i64 6}
!239 = !{!69, !69, i64 0}
!240 = !{!"long long", !31, i64 0}
!241 = !{!240, !240, i64 0}
!242 = !{!"float", !31, i64 0}
!243 = !{!242, !242, i64 0}
!244 = !{!"long double", !31, i64 0}
!245 = !{!244, !244, i64 0}
!246 = !{!35, !35, i64 0}
!247 = !{!"branch_weights", i32 1073205, i32 2146410443}
!248 = !{!"branch_weights", i32 -2145354644, i32 2145354644}
!249 = !{!"p1 _ZTSNSt6locale5_ImplE", !35, i64 0}
!250 = !{!"_ZTSSt6locale", !249, i64 0}
!251 = !{!250, !249, i64 0}
!252 = !{!"p2 _ZTSNSt6locale5facetE", !79, i64 0}
!253 = !{!"p2 omnipotent char", !79, i64 0}
!254 = !{!"_ZTSNSt6locale5_ImplE", !32, i64 0, !252, i64 8, !44, i64 16, !252, i64 24, !253, i64 32}
!255 = !{!254, !252, i64 8}
!256 = !{!"p1 _ZTSNSt6locale5facetE", !35, i64 0}
!257 = !{!256, !256, i64 0}
!258 = !{!"branch_weights", i32 4, i32 28}
!259 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!260 = !{!"_ZTSSt12chars_format", !31, i64 0}
!261 = !{!260, !260, i64 0}
!262 = !{!"p1 bool", !35, i64 0}
!263 = !{!262, !262, i64 0}
!264 = !{!"p1 float", !35, i64 0}
!265 = !{!121, !121, i64 0}
!266 = !{!"_ZTSSt4errc", !31, i64 0}
!267 = !{!266, !266, i64 0}
!268 = !{!"_ZTSSt15to_chars_result", !42, i64 0, !266, i64 8}
!269 = !{!268, !266, i64 8}
!270 = !{!268, !42, i64 0}
!271 = !{!"_ZTSNSt8__format14__formatter_fpIcEE", !235, i64 0}
!272 = !{!271, !31, i64 6}
!273 = !{i64 4}
!274 = !{!"p1 _ZTSNSt7__cxx118numpunctIcEE", !35, i64 0}
!275 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !35, i64 0}
!276 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !35, i64 0}
!277 = !{!"p1 double", !35, i64 0}
!278 = !{!"p1 long double", !35, i64 0}
!279 = distinct !{!279, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!280 = distinct !{!280, !279, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!281 = !{!280}
!282 = distinct !{!282, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!283 = distinct !{!283, !282, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!284 = !{!283}
!285 = distinct !{!285, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!286 = distinct !{!286, !285, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!287 = !{!286}
!288 = distinct !{!288, !64}
!289 = !{!"_ZTS9sort_size", !63, i64 0, !44, i64 8}
!290 = !{!289, !63, i64 0}
!291 = !{!289, !44, i64 8}
!292 = distinct !{!292, !64}
!293 = distinct !{!293, !64}
!294 = distinct !{!294, !64}
!295 = distinct !{!295, !64}
!296 = distinct !{!296, !64}
!297 = !{!"branch_weights", i32 0, i32 716304941, i32 1431178707}
!298 = distinct !{!298, !64}
!299 = distinct !{!299, !64}
!300 = !{!113, !32, i64 24}
!301 = !{!"_ZTS3var", !110, i64 0, !32, i64 16, !84, i64 24}
!302 = !{!301, !32, i64 16}
!303 = distinct !{!303, !64, !305}
!304 = distinct !{!304, !64}
!305 = !{!"llvm.loop.peeled.count", i32 1}
!306 = distinct !{!306, !64}
!307 = distinct !{!307, !64}
!308 = distinct !{!308, !64}
!309 = distinct !{!309, !64}
!310 = distinct !{!310, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!311 = distinct !{!311, !310, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!312 = distinct !{!312, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!313 = distinct !{!313, !312, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!314 = distinct !{!314, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!315 = distinct !{!315, !314, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!316 = distinct !{!316, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!317 = distinct !{!317, !316, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!318 = distinct !{!318, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!319 = distinct !{!319, !318, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!320 = distinct !{!320, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!321 = distinct !{!321, !320, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!322 = distinct !{!322, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!323 = distinct !{!323, !322, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!324 = distinct !{!324, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!325 = distinct !{!325, !324, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!326 = distinct !{!326, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!327 = distinct !{!327, !326, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!328 = distinct !{!328, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!329 = distinct !{!329, !328, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!330 = distinct !{!330, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!331 = distinct !{!331, !330, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!332 = distinct !{!332, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!333 = distinct !{!333, !332, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!334 = distinct !{!334, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!335 = distinct !{!335, !334, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!336 = distinct !{!336, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!337 = distinct !{!337, !336, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!338 = distinct !{!338, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!339 = distinct !{!339, !338, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!340 = distinct !{!340, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!341 = distinct !{!341, !340, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!342 = distinct !{!342, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!343 = distinct !{!343, !342, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!344 = distinct !{!344, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!345 = distinct !{!345, !344, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!346 = distinct !{!346, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!347 = distinct !{!347, !346, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!348 = distinct !{!348, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!349 = distinct !{!349, !348, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!350 = distinct !{!350, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!351 = distinct !{!351, !350, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!352 = distinct !{!352, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!353 = distinct !{!353, !352, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!354 = distinct !{!354, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!355 = distinct !{!355, !354, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!356 = distinct !{!356, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!357 = distinct !{!357, !356, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!358 = distinct !{!358, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!359 = distinct !{!359, !358, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!360 = distinct !{!360, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!361 = distinct !{!361, !360, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!362 = distinct !{!362, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!363 = distinct !{!363, !362, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!364 = distinct !{!364, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!365 = distinct !{!365, !364, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!366 = distinct !{!366, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_"}
!367 = distinct !{!367, !366, !"_ZSt6formatIJRPKcRjS3_S3_EENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt19basic_format_stringIcJDpNSt13type_identityIT_E4typeEEEDpOSC_: argument 0"}
!368 = !{!311}
!369 = !{!313}
!370 = !{!315}
!371 = !{!317}
!372 = !{!319}
!373 = !{!321}
!374 = !{!323}
!375 = !{!325}
!376 = !{!327}
!377 = !{!329}
!378 = !{!331}
!379 = !{!333}
!380 = !{!335}
!381 = !{!337}
!382 = !{!339}
!383 = !{!341}
!384 = !{!343}
!385 = !{!345}
!386 = !{!347}
!387 = !{!349}
!388 = !{!351}
!389 = !{!353}
!390 = !{!355}
!391 = !{!357}
!392 = !{!359}
!393 = !{!361}
!394 = !{!363}
!395 = !{!365}
!396 = !{!367}
!397 = !{!36, !36, i64 0}
!398 = !{!"p1 _ZTS17arith_decl_plugin", !35, i64 0}
!399 = !{!"_ZTS10arith_util", !36, i64 0, !398, i64 8}
!400 = !{!399, !398, i64 8}
!401 = !{!"p2 _ZTS9func_decl", !79, i64 0}
!402 = !{!"_ZTS6vectorIP9func_declLb0EjE", !401, i64 0}
!403 = !{!402, !401, i64 0}
!404 = !{!111, !111, i64 0}
!405 = distinct !{!405, !64, !192, !193}
!406 = distinct !{!406, !194}
!407 = distinct !{!407, !64, !192}
!408 = distinct !{!408, !64}
!409 = !{!190, !32, i64 8}
!410 = !{!190, !32, i64 12}
!411 = !{!211, !44, i64 32}
!412 = !{!216, !216, i64 0}
!413 = distinct !{null, null, null, null, null}
!414 = distinct !{!414, !64}
!415 = distinct !{!415, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!416 = distinct !{!416, !415, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!417 = distinct !{!417, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!418 = distinct !{!418, !417, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!419 = !{!418, !416}
!420 = distinct !{null}
!421 = !{!"_ZTSNSt8__format10_Arg_valueISt20basic_format_contextINS_10_Sink_iterIcEEcEE11_HandleBaseE", !35, i64 0, !35, i64 8}
!422 = !{!421, !35, i64 8}
!423 = !{!421, !35, i64 0}
!424 = !{!"__int128", !31, i64 0}
!425 = !{!424, !424, i64 0}
!426 = !{!234, !234, i64 0}
!427 = !{!"branch_weights", i32 2129004, i32 2145354644}
!428 = distinct !{null}
!429 = distinct !{!429, !64}
!430 = distinct !{!430, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!431 = distinct !{!431, !430, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!432 = distinct !{!432, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!433 = distinct !{!433, !432, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!434 = !{!433, !431}
!435 = distinct !{!435, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
!436 = distinct !{!436, !435, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm: argument 0"}
!437 = distinct !{!437, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm"}
!438 = distinct !{!438, !437, !"_ZNKSt17basic_format_argsISt20basic_format_contextINSt8__format10_Sink_iterIcEEcEE3getEm: argument 0"}
!439 = distinct !{!439, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv"}
!440 = distinct !{!440, !439, !"_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv: argument 0"}
!441 = distinct !{!441, !"_ZNKSt7__cxx118numpunctIcE8groupingEv"}
!442 = distinct !{!442, !441, !"_ZNKSt7__cxx118numpunctIcE8groupingEv: argument 0"}
!443 = distinct !{!443, !64, !192, !193}
!444 = distinct !{!444, !64, !192}
!445 = distinct !{!445, !64, !192, !193}
!446 = distinct !{!446, !64, !192}
!447 = !{!438, !436}
!448 = !{!440}
!449 = !{!442}
!450 = !{!"_ZTSNSt8__format15__formatter_intIcEE", !235, i64 0}
!451 = !{!450, !31, i64 6}
!452 = distinct !{null, null, null}
!453 = distinct !{!453, !64}
!454 = distinct !{!454, !64}
!455 = distinct !{!455, !64}
!456 = distinct !{!456, !64}
!457 = distinct !{!457, !64}
!458 = distinct !{!458, !"_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm"}
end_hunk_2
