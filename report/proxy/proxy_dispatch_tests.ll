Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proxy/original/proxy_dispatch_tests?download=true
inline.NumInlined: 6981
inline.NumDeleted: 3705
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_ZNKSt8__format15__formatter_intIcE13_M_format_intINS_10_Sink_iterIcEEEENSt20basic_format_contextIT_cE8iteratorESt17basic_string_viewIcSt11char_traitsIcEEmRS7_:bb.a
  store i8 1, ptr %i.ag, align 8, !tbaa !158, !noalias !869
  br label %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit

_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit: ; preds = %bb.g, %bb.h
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(8) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.af) #30
  %i.aj = load i8, ptr %i.ad, align 8, !tbaa !158, !range !65, !noundef !66
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  %i.al = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt6localeaSERKS_(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #30 ; 0 uses
  br label %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit

bb.j:                                             ; preds = %_ZNSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE6localeEv.exit
  call void @_ZNSt6localeC1ERKS_(ptr noundef nonnull align 8 dereferenceable(9) %7, ptr noundef nonnull align 8 dereferenceable(8) %8) #30
  store i8 1, ptr %i.ad, align 8, !tbaa !158
  br label %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit

_ZNSt8__format16_Optional_localeaSEOSt6locale.exit: ; preds = %bb.i, %bb.j
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %8) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #30
  %i.am = load i8, ptr %i.ad, align 8, !tbaa !158, !range !65, !noundef !66
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %_ZNSt8__format16_Optional_locale5valueEv.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit
  call void @_ZNSt6localeC1Ev(ptr noundef nonnull align 8 dereferenceable(9) %7) #30
  store i8 1, ptr %i.ad, align 8, !tbaa !158
  br label %_ZNSt8__format16_Optional_locale5valueEv.exit

_ZNSt8__format16_Optional_locale5valueEv.exit:    ; preds = %_ZNSt8__format16_Optional_localeaSEOSt6locale.exit, %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  invoke void @_ZNKSt6locale4nameB5cxx11Ev(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %9, ptr noundef nonnull align 8 dereferenceable(8) %7)
          to label %bb.l unwind label %bb.s

bb.l:                                             ; preds = %_ZNSt8__format16_Optional_locale5valueEv.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ap = load i64, ptr %i.ao, align 8, !tbaa !114 ; 2 uses
  %i.aq = icmp eq i64 %i.ap, 1
  %.pre140 = load ptr, ptr %9, align 8, !tbaa !71 ; 3 uses
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
  %i.aw = load i64, ptr %i.at, align 8, !tbaa !74
  %i.ax = add i64 %i.aw, 1
  call void @_ZdlPvm(ptr noundef %.pre140, i64 noundef %i.ax) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
  br i1 %i.as, label %bb.x, label %bb.n

bb.n:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ay = call noundef i64 @_ZNKSt6locale2id5_M_idEv(ptr noundef nonnull align 8 dereferenceable(8) @_ZNSt7__cxx118numpunctIcE2idE) #30
  %i.az = load ptr, ptr %7, align 8, !tbaa !159
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !163
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.ay
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !165 ; 5 uses
  %.not.not.i = icmp eq ptr %i.bd, null
  br i1 %.not.not.i, label %bb.o, label %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt16__throw_bad_castv() #33
          to label %.noexc unwind label %bb.t

.noexc:                                           ; preds = %bb.o
  unreachable

_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit: ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !40, !noalias !870
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !870
  invoke void %i.bg(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit unwind label %bb.u, !inline_history !9

_ZNKSt7__cxx118numpunctIcE8groupingEv.exit:       ; preds = %_ZSt9use_facetINSt7__cxx118numpunctIcEEERKT_RKSt6locale.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 2 uses
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !114
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
  %i.bp = load ptr, ptr %i.bd, align 8, !tbaa !40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8
  %i.bs = invoke noundef signext i8 %i.br(ptr noundef nonnull align 8 dereferenceable(24) %i.bd)
          to label %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit unwind label %bb.v, !inline_history !10 ; 2 uses

_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit: ; preds = %_ZNSt11char_traitsIcE4copyEPcPKcm.exit
  %i.bt = getelementptr i8, ptr %i.bn, i64 %3     ; 2 uses
  %i.bu = getelementptr i8, ptr %2, i64 %3        ; 4 uses
  %i.bv = load ptr, ptr %10, align 8, !tbaa !71   ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %2, i64 %1 ; 2 uses
  %i.bx = ptrtoint ptr %i.bu to i64
  %i.by = load i8, ptr %i.bv, align 1, !tbaa !74  ; 3 uses
  %i.bz = sext i8 %i.by to i64
  %i.ca = icmp sle i64 %i.bk, %i.bz
  %i.cb = add i8 %i.by, -127
  %i.cc = icmp ult i8 %i.cb, -126
  %or.cond5562.i = or i1 %i.ca, %i.cc
  br i1 %or.cond5562.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNKSt7__cxx118numpunctIcE13thousands_sepEv.exit
  %i.cd = load i64, ptr %i.bh, align 8, !tbaa !114
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
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bt, ptr align 1 %i.bu, i64 %i.ch, i1 false), !tbaa !74
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
  %i.cs = load i8, ptr %i.cr, align 1, !tbaa !74  ; 3 uses
  %i.ct = sext i8 %i.cs to i64
  %i.cu = icmp sle i64 %i.cq, %i.ct
  %i.cv = add i8 %i.cs, -127
  %i.cw = icmp ult i8 %i.cv, -126
  %or.cond55.i = or i1 %i.cw, %i.cu
  br i1 %or.cond55.i, label %.critedge.preheader.i, label %bb.r, !llvm.loop !11

.preheader60.i:                                   ; preds = %.critedge.i.preheader, %.critedge.preheader.i
  %.046.lcssa.i = phi ptr [ %i.bt, %.critedge.preheader.i ], [ %scevgep139, %.critedge.i.preheader ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.bu, %.critedge.preheader.i ], [ %scevgep, %.critedge.i.preheader ] ; 2 uses
  %.not5382.i = icmp eq i64 %.038.lcssa.i, 0
  br i1 %.not5382.i, label %.preheader.i, label %.lr.ph85.i

.loopexit59.i:                                    ; preds = %.lr.ph79.i, %middle.block, %vec.epilog.middle.block, %.lr.ph85.i
  %.245.lcssa.i = phi ptr [ %.14484.i, %.lr.ph85.i ], [ %i.ds, %vec.epilog.middle.block ], [ %i.dg, %middle.block ], [ %i.du, %.lr.ph79.i ] ; 2 uses
  %.248.lcssa.i = phi ptr [ %.24875.i, %.lr.ph85.i ], [ %i.dp, %vec.epilog.middle.block ], [ %i.dd, %middle.block ], [ %.248.i, %.lr.ph79.i ] ; 2 uses
  %.not53.i = icmp eq i64 %i.cx, 0
  br i1 %.not53.i, label %.preheader.i, label %.lr.ph85.i, !llvm.loop !12

.preheader.i:                                     ; preds = %.loopexit59.i, %.preheader60.i
  %.147.lcssa.i = phi ptr [ %.046.lcssa.i, %.preheader60.i ], [ %.248.lcssa.i, %.loopexit59.i ] ; 2 uses
  %.144.lcssa.i = phi ptr [ %.043.lcssa.i, %.preheader60.i ], [ %.245.lcssa.i, %.loopexit59.i ]
  %.not5495.i = icmp eq i64 %.039.lcssa61.i, 0
  br i1 %.not5495.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i

.lr.ph85.i:                                       ; preds = %.preheader60.i, %.loopexit59.i
  %.in.i = phi i64 [ %i.cx, %.loopexit59.i ], [ %.038.lcssa.i, %.preheader60.i ]
  %.14484.i = phi ptr [ %.245.lcssa.i, %.loopexit59.i ], [ %.043.lcssa.i, %.preheader60.i ] ; 20 uses
  %.14783.i = phi ptr [ %.248.lcssa.i, %.loopexit59.i ], [ %.046.lcssa.i, %.preheader60.i ] ; 16 uses
  %i.cx = add i64 %.in.i, -1                      ; 2 uses
  store i8 %i.bs, ptr %.14783.i, align 1, !tbaa !74
  %i.cy = load i8, ptr %i.cf, align 1, !tbaa !74  ; 7 uses
  %.24875.i = getelementptr inbounds nuw i8, ptr %.14783.i, i64 1 ; 6 uses
  %i.cz = icmp sgt i8 %i.cy, 0
  br i1 %i.cz, label %iter.check, label %.loopexit59.i

iter.check:                                       ; preds = %.lr.ph85.i
  %.14484.i181 = ptrtoaddr ptr %.14484.i to i64
  %.14783.i180 = ptrtoaddr ptr %.14783.i to i64
  %i.da = zext nneg i8 %i.cy to i64               ; 5 uses
  %min.iters.check = icmp ult i8 %i.cy, 4
  %i.db = sub i64 %.14783.i180, %.14484.i181
  %diff.check = icmp ult i64 %i.db, 15
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check182 = icmp ult i8 %i.cy, 16
  br i1 %min.iters.check182, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.dc = and i64 %i.da, 12
  %n.vec = and i64 %i.da, 112                     ; 11 uses
  %i.dd = getelementptr i8, ptr %.24875.i, i64 %n.vec ; 2 uses
  %i.de = trunc nuw nsw i64 %n.vec to i8
  %i.df = sub nsw i8 %i.cy, %i.de
  %i.dg = getelementptr i8, ptr %.14484.i, i64 %n.vec ; 2 uses
  %i.dh = getelementptr i8, ptr %.14484.i, i64 8
  %wide.load = load <8 x i8>, ptr %.14484.i, align 1, !tbaa !74
  %wide.load184 = load <8 x i8>, ptr %i.dh, align 1, !tbaa !74
  %i.di = getelementptr i8, ptr %.14783.i, i64 9
  store <8 x i8> %wide.load, ptr %.24875.i, align 1, !tbaa !74
  store <8 x i8> %wide.load184, ptr %i.di, align 1, !tbaa !74
  %i.dj = icmp eq i64 %n.vec, 16
  br i1 %i.dj, label %middle.block, label %vector.body.1

vector.body.1:                                    ; preds = %vector.ph
  %next.gep.1 = getelementptr i8, ptr %.14783.i, i64 17
  %next.gep183.1 = getelementptr i8, ptr %.14484.i, i64 16
  %11 = getelementptr i8, ptr %.14484.i, i64 24
  %wide.load.1 = load <8 x i8>, ptr %next.gep183.1, align 1, !tbaa !74
  %wide.load184.1 = load <8 x i8>, ptr %11, align 1, !tbaa !74
  %12 = getelementptr i8, ptr %.14783.i, i64 25
  store <8 x i8> %wide.load.1, ptr %next.gep.1, align 1, !tbaa !74
  store <8 x i8> %wide.load184.1, ptr %12, align 1, !tbaa !74
  %13 = icmp eq i64 %n.vec, 32
  br i1 %13, label %middle.block, label %vector.body.2

vector.body.2:                                    ; preds = %vector.body.1
  %next.gep.2 = getelementptr i8, ptr %.14783.i, i64 33
  %next.gep183.2 = getelementptr i8, ptr %.14484.i, i64 32
  %14 = getelementptr i8, ptr %.14484.i, i64 40
  %wide.load.2 = load <8 x i8>, ptr %next.gep183.2, align 1, !tbaa !74
  %wide.load184.2 = load <8 x i8>, ptr %14, align 1, !tbaa !74
  %15 = getelementptr i8, ptr %.14783.i, i64 41
  store <8 x i8> %wide.load.2, ptr %next.gep.2, align 1, !tbaa !74
  store <8 x i8> %wide.load184.2, ptr %15, align 1, !tbaa !74
  %16 = icmp eq i64 %n.vec, 48
  br i1 %16, label %middle.block, label %vector.body.3

vector.body.3:                                    ; preds = %vector.body.2
  %next.gep.3 = getelementptr i8, ptr %.14783.i, i64 49
  %next.gep183.3 = getelementptr i8, ptr %.14484.i, i64 48
  %17 = getelementptr i8, ptr %.14484.i, i64 56
  %wide.load.3 = load <8 x i8>, ptr %next.gep183.3, align 1, !tbaa !74
  %wide.load184.3 = load <8 x i8>, ptr %17, align 1, !tbaa !74
  %18 = getelementptr i8, ptr %.14783.i, i64 57
  store <8 x i8> %wide.load.3, ptr %next.gep.3, align 1, !tbaa !74
  store <8 x i8> %wide.load184.3, ptr %18, align 1, !tbaa !74
  %19 = icmp eq i64 %n.vec, 64
  br i1 %19, label %middle.block, label %vector.body.4

vector.body.4:                                    ; preds = %vector.body.3
  %next.gep.4 = getelementptr i8, ptr %.14783.i, i64 65
  %next.gep183.4 = getelementptr i8, ptr %.14484.i, i64 64
  %20 = getelementptr i8, ptr %.14484.i, i64 72
  %wide.load.4 = load <8 x i8>, ptr %next.gep183.4, align 1, !tbaa !74
  %wide.load184.4 = load <8 x i8>, ptr %20, align 1, !tbaa !74
  %21 = getelementptr i8, ptr %.14783.i, i64 73
  store <8 x i8> %wide.load.4, ptr %next.gep.4, align 1, !tbaa !74
  store <8 x i8> %wide.load184.4, ptr %21, align 1, !tbaa !74
  %22 = icmp eq i64 %n.vec, 80
  br i1 %22, label %middle.block, label %vector.body.1.a

vector.body.1.a:                                  ; preds = %vector.body.4
  %next.gep.1.a = getelementptr i8, ptr %.14783.i, i64 81
  %next.gep183.1.a = getelementptr i8, ptr %.14484.i, i64 80
  %i.dk = getelementptr i8, ptr %.14484.i, i64 88
  %wide.load.5 = load <8 x i8>, ptr %next.gep183.1.a, align 1, !tbaa !74
  %wide.load184.5 = load <8 x i8>, ptr %i.dk, align 1, !tbaa !74
  %i.dl = getelementptr i8, ptr %.14783.i, i64 89
  store <8 x i8> %wide.load.5, ptr %next.gep.1.a, align 1, !tbaa !74
  store <8 x i8> %wide.load184.5, ptr %i.dl, align 1, !tbaa !74
  %i.dm = icmp eq i64 %n.vec, 96
  br i1 %i.dm, label %middle.block, label %vector.body.2.a

vector.body.2.a:                                  ; preds = %vector.body.1.a
  %next.gep.2.a = getelementptr i8, ptr %.14783.i, i64 97
  %next.gep183.2.a = getelementptr i8, ptr %.14484.i, i64 96
  %i.dn = getelementptr i8, ptr %.14484.i, i64 104
  %wide.load.6 = load <8 x i8>, ptr %next.gep183.2.a, align 1, !tbaa !74
  %wide.load184.6 = load <8 x i8>, ptr %i.dn, align 1, !tbaa !74
  %i.do = getelementptr i8, ptr %.14783.i, i64 105
  store <8 x i8> %wide.load.6, ptr %next.gep.2.a, align 1, !tbaa !74
  store <8 x i8> %wide.load184.6, ptr %i.do, align 1, !tbaa !74
  br label %middle.block

middle.block:                                     ; preds = %vector.body.2.a, %vector.body.1.a, %vector.body.4, %vector.body.3, %vector.body.2, %vector.body.1, %vector.ph
  %cmp.n = icmp eq i64 %n.vec, %i.da
  br i1 %cmp.n, label %.loopexit59.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.dc, 0
  br i1 %min.epilog.iters.check, label %.lr.ph79.i.preheader, label %vec.epilog.ph, !prof !166

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
  %wide.load191 = load <4 x i8>, ptr %next.gep190, align 1, !tbaa !74
  store <4 x i8> %wide.load191, ptr %next.gep189, align 1, !tbaa !74
  %index.next192 = add nuw i64 %index188, 4       ; 2 uses
  %i.dt = icmp eq i64 %index.next192, %n.vec187
  br i1 %i.dt, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !864

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
  %i.dv = load i8, ptr %.24576.i, align 1, !tbaa !74
  store i8 %i.dv, ptr %.24878.i, align 1, !tbaa !74
  %i.dw = add nsw i8 %.03777.i, -1
  %.248.i = getelementptr inbounds nuw i8, ptr %.24878.i, i64 1 ; 2 uses
  %i.dx = icmp samesign ugt i8 %.03777.i, 1
  br i1 %i.dx, label %.lr.ph79.i, label %.loopexit59.i, !llvm.loop !865

.loopexit.i:                                      ; preds = %.lr.ph92.i, %middle.block213, %vec.epilog.middle.block230, %.lr.ph98.i
  %.4.lcssa.i = phi ptr [ %.397.i, %.lr.ph98.i ], [ %i.eu, %vec.epilog.middle.block230 ], [ %i.ei, %middle.block213 ], [ %i.ew, %.lr.ph92.i ]
  %.450.lcssa.i = phi ptr [ %.45088.i, %.lr.ph98.i ], [ %i.er, %vec.epilog.middle.block230 ], [ %i.ef, %middle.block213 ], [ %.450.i, %.lr.ph92.i ] ; 2 uses
  %.not54.i = icmp eq i64 %i.dy, 0
  br i1 %.not54.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i, !llvm.loop !13

.lr.ph98.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.in100.i = phi i64 [ %i.dy, %.loopexit.i ], [ %.039.lcssa61.i, %.preheader.i ]
  %.397.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.144.lcssa.i, %.preheader.i ] ; 20 uses
  %.34996.i = phi ptr [ %.450.lcssa.i, %.loopexit.i ], [ %.147.lcssa.i, %.preheader.i ] ; 16 uses
  %i.dy = add i64 %.in100.i, -1                   ; 3 uses
  store i8 %i.bs, ptr %.34996.i, align 1, !tbaa !74
  %i.dz = getelementptr inbounds nuw i8, ptr %i.bv, i64 %i.dy
  %i.ea = load i8, ptr %i.dz, align 1, !tbaa !74  ; 7 uses
  %.45088.i = getelementptr inbounds nuw i8, ptr %.34996.i, i64 1 ; 6 uses
  %i.eb = icmp sgt i8 %i.ea, 0
  br i1 %i.eb, label %iter.check218, label %.loopexit.i

iter.check218:                                    ; preds = %.lr.ph98.i
  %.397.i199 = ptrtoaddr ptr %.397.i to i64
  %.34996.i198 = ptrtoaddr ptr %.34996.i to i64
  %i.ec = zext nneg i8 %i.ea to i64               ; 5 uses
  %min.iters.check201 = icmp ult i8 %i.ea, 4
  %i.ed = sub i64 %.34996.i198, %.397.i199
  %diff.check200 = icmp ult i64 %i.ed, 15
  %or.cond235 = select i1 %min.iters.check201, i1 true, i1 %diff.check200
  br i1 %or.cond235, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check202

vector.main.loop.iter.check202:                   ; preds = %iter.check218
  %min.iters.check203 = icmp ult i8 %i.ea, 16
  br i1 %min.iters.check203, label %vec.epilog.ph222, label %vector.ph204

vector.ph204:                                     ; preds = %vector.main.loop.iter.check202
  %i.ee = and i64 %i.ec, 12
  %n.vec205 = and i64 %i.ec, 112                  ; 11 uses
  %i.ef = getelementptr i8, ptr %.45088.i, i64 %n.vec205 ; 2 uses
  %i.eg = trunc nuw nsw i64 %n.vec205 to i8
  %i.eh = sub nsw i8 %i.ea, %i.eg
  %i.ei = getelementptr i8, ptr %.397.i, i64 %n.vec205 ; 2 uses
  %i.ej = getelementptr i8, ptr %.397.i, i64 8
  %wide.load210 = load <8 x i8>, ptr %.397.i, align 1, !tbaa !74
  %wide.load211 = load <8 x i8>, ptr %i.ej, align 1, !tbaa !74
  %i.ek = getelementptr i8, ptr %.34996.i, i64 9
  store <8 x i8> %wide.load210, ptr %.45088.i, align 1, !tbaa !74
  store <8 x i8> %wide.load211, ptr %i.ek, align 1, !tbaa !74
  %i.el = icmp eq i64 %n.vec205, 16
  br i1 %i.el, label %middle.block213, label %vector.body206.1

vector.body206.1:                                 ; preds = %vector.ph204
  %next.gep208.1 = getelementptr i8, ptr %.34996.i, i64 17
  %next.gep209.1 = getelementptr i8, ptr %.397.i, i64 16
  %23 = getelementptr i8, ptr %.397.i, i64 24
  %wide.load210.1 = load <8 x i8>, ptr %next.gep209.1, align 1, !tbaa !74
  %wide.load211.1 = load <8 x i8>, ptr %23, align 1, !tbaa !74
  %24 = getelementptr i8, ptr %.34996.i, i64 25
  store <8 x i8> %wide.load210.1, ptr %next.gep208.1, align 1, !tbaa !74
  store <8 x i8> %wide.load211.1, ptr %24, align 1, !tbaa !74
  %25 = icmp eq i64 %n.vec205, 32
  br i1 %25, label %middle.block213, label %vector.body206.2

vector.body206.2:                                 ; preds = %vector.body206.1
  %next.gep208.2 = getelementptr i8, ptr %.34996.i, i64 33
  %next.gep209.2 = getelementptr i8, ptr %.397.i, i64 32
  %26 = getelementptr i8, ptr %.397.i, i64 40
  %wide.load210.2 = load <8 x i8>, ptr %next.gep209.2, align 1, !tbaa !74
  %wide.load211.2 = load <8 x i8>, ptr %26, align 1, !tbaa !74
  %27 = getelementptr i8, ptr %.34996.i, i64 41
  store <8 x i8> %wide.load210.2, ptr %next.gep208.2, align 1, !tbaa !74
  store <8 x i8> %wide.load211.2, ptr %27, align 1, !tbaa !74
  %28 = icmp eq i64 %n.vec205, 48
  br i1 %28, label %middle.block213, label %vector.body206.3

vector.body206.3:                                 ; preds = %vector.body206.2
  %next.gep208.3 = getelementptr i8, ptr %.34996.i, i64 49
  %next.gep209.3 = getelementptr i8, ptr %.397.i, i64 48
  %29 = getelementptr i8, ptr %.397.i, i64 56
  %wide.load210.3 = load <8 x i8>, ptr %next.gep209.3, align 1, !tbaa !74
  %wide.load211.3 = load <8 x i8>, ptr %29, align 1, !tbaa !74
  %30 = getelementptr i8, ptr %.34996.i, i64 57
  store <8 x i8> %wide.load210.3, ptr %next.gep208.3, align 1, !tbaa !74
  store <8 x i8> %wide.load211.3, ptr %30, align 1, !tbaa !74
  %31 = icmp eq i64 %n.vec205, 64
  br i1 %31, label %middle.block213, label %vector.body206.4

vector.body206.4:                                 ; preds = %vector.body206.3
  %next.gep208.4 = getelementptr i8, ptr %.34996.i, i64 65
  %next.gep209.4 = getelementptr i8, ptr %.397.i, i64 64
  %32 = getelementptr i8, ptr %.397.i, i64 72
  %wide.load210.4 = load <8 x i8>, ptr %next.gep209.4, align 1, !tbaa !74
  %wide.load211.4 = load <8 x i8>, ptr %32, align 1, !tbaa !74
  %33 = getelementptr i8, ptr %.34996.i, i64 73
  store <8 x i8> %wide.load210.4, ptr %next.gep208.4, align 1, !tbaa !74
  store <8 x i8> %wide.load211.4, ptr %33, align 1, !tbaa !74
  %34 = icmp eq i64 %n.vec205, 80
  br i1 %34, label %middle.block213, label %vector.body206.1.a

vector.body206.1.a:                               ; preds = %vector.body206.4
  %next.gep208.1.a = getelementptr i8, ptr %.34996.i, i64 81
  %next.gep209.1.a = getelementptr i8, ptr %.397.i, i64 80
  %i.em = getelementptr i8, ptr %.397.i, i64 88
  %wide.load210.5 = load <8 x i8>, ptr %next.gep209.1.a, align 1, !tbaa !74
  %wide.load211.5 = load <8 x i8>, ptr %i.em, align 1, !tbaa !74
  %i.en = getelementptr i8, ptr %.34996.i, i64 89
  store <8 x i8> %wide.load210.5, ptr %next.gep208.1.a, align 1, !tbaa !74
  store <8 x i8> %wide.load211.5, ptr %i.en, align 1, !tbaa !74
  %i.eo = icmp eq i64 %n.vec205, 96
  br i1 %i.eo, label %middle.block213, label %vector.body206.2.a

vector.body206.2.a:                               ; preds = %vector.body206.1.a
  %next.gep208.2.a = getelementptr i8, ptr %.34996.i, i64 97
  %next.gep209.2.a = getelementptr i8, ptr %.397.i, i64 96
  %i.ep = getelementptr i8, ptr %.397.i, i64 104
  %wide.load210.6 = load <8 x i8>, ptr %next.gep209.2.a, align 1, !tbaa !74
  %wide.load211.6 = load <8 x i8>, ptr %i.ep, align 1, !tbaa !74
  %i.eq = getelementptr i8, ptr %.34996.i, i64 105
  store <8 x i8> %wide.load210.6, ptr %next.gep208.2.a, align 1, !tbaa !74
  store <8 x i8> %wide.load211.6, ptr %i.eq, align 1, !tbaa !74
  br label %middle.block213

middle.block213:                                  ; preds = %vector.body206.2.a, %vector.body206.1.a, %vector.body206.4, %vector.body206.3, %vector.body206.2, %vector.body206.1, %vector.ph204
  %cmp.n214 = icmp eq i64 %n.vec205, %i.ec
  br i1 %cmp.n214, label %.loopexit.i, label %vec.epilog.iter.check220

vec.epilog.iter.check220:                         ; preds = %middle.block213
  %min.epilog.iters.check221 = icmp eq i64 %i.ee, 0
  br i1 %min.epilog.iters.check221, label %.lr.ph92.i.preheader, label %vec.epilog.ph222, !prof !166

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
  %wide.load228 = load <4 x i8>, ptr %next.gep227, align 1, !tbaa !74
  store <4 x i8> %wide.load228, ptr %next.gep226, align 1, !tbaa !74
  %index.next229 = add nuw i64 %index225, 4       ; 2 uses
  %i.ev = icmp eq i64 %index.next229, %n.vec223
  br i1 %i.ev, label %vec.epilog.middle.block230, label %vec.epilog.vector.body224, !llvm.loop !866

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
  %i.ex = load i8, ptr %.489.i, align 1, !tbaa !74
  store i8 %i.ex, ptr %.45091.i, align 1, !tbaa !74
  %i.ey = add nsw i8 %.090.i, -1
  %.450.i = getelementptr inbounds nuw i8, ptr %.45091.i, i64 1 ; 2 uses
  %i.ez = icmp samesign ugt i8 %.090.i, 1
  br i1 %i.ez, label %.lr.ph92.i, label %.loopexit.i, !llvm.loop !867

_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit: ; preds = %.loopexit.i, %.preheader.i
  %.349.lcssa.i = phi ptr [ %.147.lcssa.i, %.preheader.i ], [ %.450.lcssa.i, %.loopexit.i ]
  %i.fa = ptrtoint ptr %.349.lcssa.i to i64
  %i.fb = ptrtoint ptr %i.bn to i64
  %i.fc = sub i64 %i.fa, %i.fb
  br label %bb.w

bb.s:                                             ; preds = %_ZNSt8__format16_Optional_locale5valueEv.exit
  %i.fd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #30
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
  %i.fh = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fj = icmp eq ptr %i.fh, %i.fi
  br i1 %i.fj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75: ; preds = %bb.v
  %i.fk = load i64, ptr %i.fi, align 8, !tbaa !74
  %i.fl = add i64 %i.fk, 1
  call void @_ZdlPvm(ptr noundef %i.fh, i64 noundef %i.fl) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77

bb.w:                                             ; preds = %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit
  %.sroa.14.0 = phi ptr [ %2, %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit ], [ %i.bn, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit ]
  %.sroa.0103.0 = phi i64 [ %1, %_ZNKSt7__cxx118numpunctIcE8groupingEv.exit ], [ %i.fc, %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit ]
  %i.fm = load ptr, ptr %10, align 8, !tbaa !71   ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.fo = icmp eq ptr %i.fm, %i.fn
  br i1 %i.fo, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.w
  %i.fp = load i64, ptr %i.fn, align 8, !tbaa !74
  %i.fq = add i64 %i.fp, 1
  call void @_ZdlPvm(ptr noundef %i.fm, i64 noundef %i.fq) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.x

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit77: ; preds = %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75, %bb.u
  %.pn59 = phi { ptr, i32 } [ %i.ff, %bb.u ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i75 ], [ %i.fg, %bb.v ]
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #30
  br label %bb.am

bb.x:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit
  %.sroa.14.1 = phi ptr [ %2, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %2, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.14.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 8 uses
  %.sroa.0103.1 = phi i64 [ %1, %_ZNKSt8__format5_SpecIcE12_M_get_widthISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit ], [ %1, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.sroa.0103.0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ] ; 12 uses
  %.not63 = icmp ugt i64 %.0.i, %.sroa.0103.1
  br i1 %.not63, label %bb.ac, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.fr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i = load ptr, ptr %i.fr, align 8, !tbaa !170 ; 8 uses
  %.not.i = icmp eq i64 %.sroa.0103.1, 0
  br i1 %.not.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.fs = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 8 ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload.i, i64 24 ; 6 uses
  %i.fu = load ptr, ptr %i.fs, align 8, !tbaa !171 ; 2 uses
  %i.fv = load ptr, ptr %i.ft, align 8, !tbaa !171 ; 2 uses
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
  %.pre.i.i = load ptr, ptr %i.ft, align 8, !tbaa !173
  br label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i: ; preds = %bb.aa, %.lr.ph.i.i
  %i.gf = phi ptr [ %i.gd, %.lr.ph.i.i ], [ %.pre.i.i, %bb.aa ]
  %i.gg = getelementptr inbounds i8, ptr %i.gf, i64 %.pn2128.i.i
  store ptr %i.gg, ptr %i.ft, align 8, !tbaa !173
  %i.gh = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !tbaa !40
  %i.gi = load ptr, ptr %i.gh, align 8
  invoke void %i.gi(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0.0.copyload.i)
          to label %.noexc81 unwind label %bb.ab, !inline_history !14

.noexc81:                                         ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.gj = sub nuw i64 %.sroa.010.026.i.i, %.pn2128.i.i ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.sroa.9.025.i.i, i64 %.pn2128.i.i ; 2 uses
  %i.gl = load ptr, ptr %i.fs, align 8, !tbaa !171 ; 2 uses
  %i.gm = load ptr, ptr %i.ft, align 8, !tbaa !171 ; 2 uses
  %i.gn = ptrtoint ptr %i.gm to i64
  %i.go = ptrtoint ptr %i.gl to i64
  %i.gp = sub i64 %i.gn, %i.go                    ; 2 uses
  %i.gq = load i64, ptr %i.fz, align 8
  %i.gr = sub i64 %i.gq, %i.gp                    ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gl, i64 %i.gp ; 2 uses
  %.not.i.i = icmp ugt i64 %i.gr, %i.gj
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !15

._crit_edge.i.i:                                  ; preds = %.noexc81
  %.not1.i.i = icmp eq i64 %i.gj, 0
  br i1 %.not1.i.i, label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i

_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit5.i.i: ; preds = %._crit_edge.i.i, %bb.z
  %.sroa.0.0.lcssa.i10.i = phi ptr [ %i.gs, %._crit_edge.i.i ], [ %i.gc, %bb.z ]
  %.sroa.010.0.lcssa.i9.i = phi i64 [ %i.gj, %._crit_edge.i.i ], [ %.sroa.0103.1, %bb.z ] ; 2 uses
  %.sroa.9.0.lcssa.i8.i = phi ptr [ %i.gk, %._crit_edge.i.i ], [ %.sroa.14.1, %bb.z ]
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %.sroa.0.0.lcssa.i10.i, ptr align 1 %.sroa.9.0.lcssa.i8.i, i64 %.sroa.010.0.lcssa.i9.i, i1 false)
  %i.gt = load ptr, ptr %i.ft, align 8, !tbaa !173
  %i.gu = getelementptr inbounds i8, ptr %i.gt, i64 %.sroa.010.0.lcssa.i9.i
  store ptr %i.gu, ptr %i.ft, align 8, !tbaa !173
  br label %_ZNSt8__format7__writeINS_10_Sink_iterIcEEcQ15output_iteratorIT_RKT0_EEES3_S3_St17basic_string_viewIS4_St11char_traitsIS4_EE.exit

bb.ab:                                            ; preds = %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit.i.i
  %i.gv = landingpad { ptr, i32 }
          cleanup
  br label %bb.am

bb.ac:                                            ; preds = %bb.x
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.gx = load i8, ptr %i.gw, align 2, !tbaa !872
  %i.gy = load i16, ptr %0, align 4               ; 2 uses
  %i.gz = and i16 %i.gy, 3                        ; 2 uses
  %i.ha = zext nneg i16 %i.gz to i32
  %i.hb = sub nuw i64 %.0.i, %.sroa.0103.1
  %i.hc = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.sroa.0.0.copyload.i82 = load ptr, ptr %i.hc, align 8, !tbaa !170 ; 6 uses
end_hunk_0
begin_hunk_1_@_ZZNKSt8__format14__formatter_fpIcE11_M_localizeB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEEcRKSt6localeENKUlPcmE_clES9_m:bb.a
  %i.p = load i64, ptr %i.o, align 8, !tbaa !109  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p ; 2 uses
  %i.r = ptrtoint ptr %i.m to i64                 ; 3 uses
  %i.s = load i8, ptr %i.i, align 1, !tbaa !74    ; 3 uses
  %i.t = sext i8 %i.s to i64
  %i.u = icmp sle i64 %i.p, %i.t
  %i.v = add i8 %i.s, -127
  %i.w = icmp ult i8 %i.v, -126
  %or.cond5562.i = or i1 %i.u, %i.w
  br i1 %or.cond5562.i, label %.critedge.preheader.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.y = load i64, ptr %i.x, align 8, !tbaa !114
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
  %wide.load = load <16 x i8>, ptr %next.gep, align 1, !tbaa !74
  %wide.load38 = load <16 x i8>, ptr %i.ag, align 1, !tbaa !74
  %i.ah = getelementptr i8, ptr %next.gep37, i64 16
  store <16 x i8> %wide.load, ptr %next.gep37, align 1, !tbaa !74
  store <16 x i8> %wide.load38, ptr %i.ah, align 1, !tbaa !74
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.ai = icmp eq i64 %index.next, %n.vec
  br i1 %i.ai, label %middle.block, label %vector.body, !llvm.loop !992

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ab, %n.vec
  br i1 %cmp.n, label %.preheader60.i, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %i.ad, 0
  br i1 %min.epilog.iters.check, label %.critedge.i.preheader, label %vec.epilog.ph, !prof !1007

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
  %wide.load44 = load <8 x i8>, ptr %next.gep42, align 1, !tbaa !74
  store <8 x i8> %wide.load44, ptr %next.gep43, align 1, !tbaa !74
  %index.next45 = add nuw i64 %index41, 8         ; 2 uses
  %i.al = icmp eq i64 %index.next45, %n.vec40
  br i1 %i.al, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !993

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
  %i.ao = load i8, ptr %.04371.i.prol, align 1, !tbaa !74
  %i.ap = getelementptr inbounds nuw i8, ptr %.04670.i.prol, i64 1 ; 3 uses
  store i8 %i.ao, ptr %.04670.i.prol, align 1, !tbaa !74
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.critedge.i.prol.loopexit, label %.critedge.i.prol, !llvm.loop !994

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
  %i.bb = load i8, ptr %i.ba, align 1, !tbaa !74  ; 3 uses
  %i.bc = sext i8 %i.bb to i64
  %i.bd = icmp sle i64 %i.az, %i.bc
  %i.be = add i8 %i.bb, -127
  %i.bf = icmp ult i8 %i.be, -126
  %or.cond55.i = or i1 %i.bf, %i.bd
  br i1 %or.cond55.i, label %.critedge.preheader.i, label %bb.b, !llvm.loop !11

.preheader60.i:                                   ; preds = %.critedge.i.prol.loopexit, %.critedge.i, %middle.block, %vec.epilog.middle.block, %.critedge.preheader.i
  %.046.lcssa.i = phi ptr [ %1, %.critedge.preheader.i ], [ %i.ak, %vec.epilog.middle.block ], [ %i.af, %middle.block ], [ %.lcssa128.unr, %.critedge.i.prol.loopexit ], [ %i.cd, %.critedge.i ] ; 2 uses
  %.043.lcssa.i = phi ptr [ %i.m, %.critedge.preheader.i ], [ %.042.lcssa.i, %vec.epilog.middle.block ], [ %.042.lcssa.i, %middle.block ], [ %.042.lcssa.i, %.critedge.i ], [ %.042.lcssa.i, %.critedge.i.prol.loopexit ] ; 2 uses
  %.not5382.i = icmp eq i64 %.038.lcssa.i, 0
  br i1 %.not5382.i, label %.preheader.i, label %.lr.ph85.i

.critedge.i:                                      ; preds = %.critedge.i.prol.loopexit, %.critedge.i
  %.04371.i = phi ptr [ %i.cb, %.critedge.i ], [ %.04371.i.unr, %.critedge.i.prol.loopexit ] ; 9 uses
  %.04670.i = phi ptr [ %i.cd, %.critedge.i ], [ %.04670.i.unr, %.critedge.i.prol.loopexit ] ; 9 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.04371.i, i64 1
  %i.bh = load i8, ptr %.04371.i, align 1, !tbaa !74
  %i.bi = getelementptr inbounds nuw i8, ptr %.04670.i, i64 1
  store i8 %i.bh, ptr %.04670.i, align 1, !tbaa !74
  %i.bj = getelementptr inbounds nuw i8, ptr %.04371.i, i64 2
  %i.bk = load i8, ptr %i.bg, align 1, !tbaa !74
  %i.bl = getelementptr inbounds nuw i8, ptr %.04670.i, i64 2
  store i8 %i.bk, ptr %i.bi, align 1, !tbaa !74
  %i.bm = getelementptr inbounds nuw i8, ptr %.04371.i, i64 3
  %i.bn = load i8, ptr %i.bj, align 1, !tbaa !74
  %i.bo = getelementptr inbounds nuw i8, ptr %.04670.i, i64 3
  store i8 %i.bn, ptr %i.bl, align 1, !tbaa !74
  %i.bp = getelementptr inbounds nuw i8, ptr %.04371.i, i64 4
  %i.bq = load i8, ptr %i.bm, align 1, !tbaa !74
  %i.br = getelementptr inbounds nuw i8, ptr %.04670.i, i64 4
  store i8 %i.bq, ptr %i.bo, align 1, !tbaa !74
  %i.bs = getelementptr inbounds nuw i8, ptr %.04371.i, i64 5
  %i.bt = load i8, ptr %i.bp, align 1, !tbaa !74
  %i.bu = getelementptr inbounds nuw i8, ptr %.04670.i, i64 5
  store i8 %i.bt, ptr %i.br, align 1, !tbaa !74
  %i.bv = getelementptr inbounds nuw i8, ptr %.04371.i, i64 6
  %i.bw = load i8, ptr %i.bs, align 1, !tbaa !74
  %i.bx = getelementptr inbounds nuw i8, ptr %.04670.i, i64 6
  store i8 %i.bw, ptr %i.bu, align 1, !tbaa !74
  %i.by = getelementptr inbounds nuw i8, ptr %.04371.i, i64 7
  %i.bz = load i8, ptr %i.bv, align 1, !tbaa !74
  %i.ca = getelementptr inbounds nuw i8, ptr %.04670.i, i64 7
  store i8 %i.bz, ptr %i.bx, align 1, !tbaa !74
  %i.cb = getelementptr inbounds nuw i8, ptr %.04371.i, i64 8 ; 2 uses
  %i.cc = load i8, ptr %i.by, align 1, !tbaa !74
  %i.cd = getelementptr inbounds nuw i8, ptr %.04670.i, i64 8 ; 2 uses
  store i8 %i.cc, ptr %i.ca, align 1, !tbaa !74
  %.not52.i.7 = icmp eq ptr %i.cb, %.042.lcssa.i
  br i1 %.not52.i.7, label %.preheader60.i, label %.critedge.i, !llvm.loop !995

.loopexit59.i:                                    ; preds = %.lr.ph79.i, %middle.block65, %vec.epilog.middle.block82, %.lr.ph85.i
  %.245.lcssa.i = phi ptr [ %.14484.i, %.lr.ph85.i ], [ %i.cz, %vec.epilog.middle.block82 ], [ %i.cn, %middle.block65 ], [ %i.db, %.lr.ph79.i ] ; 2 uses
  %.248.lcssa.i = phi ptr [ %.24875.i, %.lr.ph85.i ], [ %i.cw, %vec.epilog.middle.block82 ], [ %i.ck, %middle.block65 ], [ %.248.i, %.lr.ph79.i ] ; 2 uses
  %.not53.i = icmp eq i64 %i.ce, 0
  br i1 %.not53.i, label %.preheader.i, label %.lr.ph85.i, !llvm.loop !12

.preheader.i:                                     ; preds = %.loopexit59.i, %.preheader60.i
  %.147.lcssa.i = phi ptr [ %.046.lcssa.i, %.preheader60.i ], [ %.248.lcssa.i, %.loopexit59.i ] ; 2 uses
  %.144.lcssa.i = phi ptr [ %.043.lcssa.i, %.preheader60.i ], [ %.245.lcssa.i, %.loopexit59.i ]
  %.not5495.i = icmp eq i64 %.039.lcssa61.i, 0
  br i1 %.not5495.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i

.lr.ph85.i:                                       ; preds = %.preheader60.i, %.loopexit59.i
  %.in.i = phi i64 [ %i.ce, %.loopexit59.i ], [ %.038.lcssa.i, %.preheader60.i ]
  %.14484.i = phi ptr [ %.245.lcssa.i, %.loopexit59.i ], [ %.043.lcssa.i, %.preheader60.i ] ; 20 uses
  %.14783.i = phi ptr [ %.248.lcssa.i, %.loopexit59.i ], [ %.046.lcssa.i, %.preheader60.i ] ; 16 uses
  %i.ce = add i64 %.in.i, -1                      ; 2 uses
  store i8 %i.f, ptr %.14783.i, align 1, !tbaa !74
  %i.cf = load i8, ptr %i.aa, align 1, !tbaa !74  ; 7 uses
  %.24875.i = getelementptr inbounds nuw i8, ptr %.14783.i, i64 1 ; 6 uses
  %i.cg = icmp sgt i8 %i.cf, 0
  br i1 %i.cg, label %iter.check70, label %.loopexit59.i

iter.check70:                                     ; preds = %.lr.ph85.i
  %.14484.i51 = ptrtoaddr ptr %.14484.i to i64
  %.14783.i50 = ptrtoaddr ptr %.14783.i to i64
  %i.ch = zext nneg i8 %i.cf to i64               ; 5 uses
  %min.iters.check53 = icmp ult i8 %i.cf, 4
  %i.ci = sub i64 %.14783.i50, %.14484.i51
  %diff.check52 = icmp ult i64 %i.ci, 15
  %or.cond125 = select i1 %min.iters.check53, i1 true, i1 %diff.check52
  br i1 %or.cond125, label %.lr.ph79.i.preheader, label %vector.main.loop.iter.check54

vector.main.loop.iter.check54:                    ; preds = %iter.check70
  %min.iters.check55 = icmp ult i8 %i.cf, 16
  br i1 %min.iters.check55, label %vec.epilog.ph74, label %vector.ph56

vector.ph56:                                      ; preds = %vector.main.loop.iter.check54
  %i.cj = and i64 %i.ch, 12
  %n.vec57 = and i64 %i.ch, 112                   ; 11 uses
  %i.ck = getelementptr i8, ptr %.24875.i, i64 %n.vec57 ; 2 uses
  %i.cl = trunc nuw nsw i64 %n.vec57 to i8
  %i.cm = sub nsw i8 %i.cf, %i.cl
  %i.cn = getelementptr i8, ptr %.14484.i, i64 %n.vec57 ; 2 uses
  %i.co = getelementptr i8, ptr %.14484.i, i64 8
  %wide.load62 = load <8 x i8>, ptr %.14484.i, align 1, !tbaa !74
  %wide.load63 = load <8 x i8>, ptr %i.co, align 1, !tbaa !74
  %i.cp = getelementptr i8, ptr %.14783.i, i64 9
  store <8 x i8> %wide.load62, ptr %.24875.i, align 1, !tbaa !74
  store <8 x i8> %wide.load63, ptr %i.cp, align 1, !tbaa !74
  %i.cq = icmp eq i64 %n.vec57, 16
  br i1 %i.cq, label %middle.block65, label %vector.body58.1

vector.body58.1:                                  ; preds = %vector.ph56
  %next.gep60.1 = getelementptr i8, ptr %.14783.i, i64 17
  %next.gep61.1 = getelementptr i8, ptr %.14484.i, i64 16
  %3 = getelementptr i8, ptr %.14484.i, i64 24
  %wide.load62.1 = load <8 x i8>, ptr %next.gep61.1, align 1, !tbaa !74
  %wide.load63.1 = load <8 x i8>, ptr %3, align 1, !tbaa !74
  %4 = getelementptr i8, ptr %.14783.i, i64 25
  store <8 x i8> %wide.load62.1, ptr %next.gep60.1, align 1, !tbaa !74
  store <8 x i8> %wide.load63.1, ptr %4, align 1, !tbaa !74
  %5 = icmp eq i64 %n.vec57, 32
  br i1 %5, label %middle.block65, label %vector.body58.2

vector.body58.2:                                  ; preds = %vector.body58.1
  %next.gep60.2 = getelementptr i8, ptr %.14783.i, i64 33
  %next.gep61.2 = getelementptr i8, ptr %.14484.i, i64 32
  %6 = getelementptr i8, ptr %.14484.i, i64 40
  %wide.load62.2 = load <8 x i8>, ptr %next.gep61.2, align 1, !tbaa !74
  %wide.load63.2 = load <8 x i8>, ptr %6, align 1, !tbaa !74
  %7 = getelementptr i8, ptr %.14783.i, i64 41
  store <8 x i8> %wide.load62.2, ptr %next.gep60.2, align 1, !tbaa !74
  store <8 x i8> %wide.load63.2, ptr %7, align 1, !tbaa !74
  %8 = icmp eq i64 %n.vec57, 48
  br i1 %8, label %middle.block65, label %vector.body58.3

vector.body58.3:                                  ; preds = %vector.body58.2
  %next.gep60.3 = getelementptr i8, ptr %.14783.i, i64 49
  %next.gep61.3 = getelementptr i8, ptr %.14484.i, i64 48
  %9 = getelementptr i8, ptr %.14484.i, i64 56
  %wide.load62.3 = load <8 x i8>, ptr %next.gep61.3, align 1, !tbaa !74
  %wide.load63.3 = load <8 x i8>, ptr %9, align 1, !tbaa !74
  %10 = getelementptr i8, ptr %.14783.i, i64 57
  store <8 x i8> %wide.load62.3, ptr %next.gep60.3, align 1, !tbaa !74
  store <8 x i8> %wide.load63.3, ptr %10, align 1, !tbaa !74
  %11 = icmp eq i64 %n.vec57, 64
  br i1 %11, label %middle.block65, label %vector.body58.4

vector.body58.4:                                  ; preds = %vector.body58.3
  %next.gep60.4 = getelementptr i8, ptr %.14783.i, i64 65
  %next.gep61.4 = getelementptr i8, ptr %.14484.i, i64 64
  %12 = getelementptr i8, ptr %.14484.i, i64 72
  %wide.load62.4 = load <8 x i8>, ptr %next.gep61.4, align 1, !tbaa !74
  %wide.load63.4 = load <8 x i8>, ptr %12, align 1, !tbaa !74
  %13 = getelementptr i8, ptr %.14783.i, i64 73
  store <8 x i8> %wide.load62.4, ptr %next.gep60.4, align 1, !tbaa !74
  store <8 x i8> %wide.load63.4, ptr %13, align 1, !tbaa !74
  %14 = icmp eq i64 %n.vec57, 80
  br i1 %14, label %middle.block65, label %vector.body58.1.a

vector.body58.1.a:                                ; preds = %vector.body58.4
  %next.gep60.1.a = getelementptr i8, ptr %.14783.i, i64 81
  %next.gep61.1.a = getelementptr i8, ptr %.14484.i, i64 80
  %i.cr = getelementptr i8, ptr %.14484.i, i64 88
  %wide.load62.5 = load <8 x i8>, ptr %next.gep61.1.a, align 1, !tbaa !74
  %wide.load63.5 = load <8 x i8>, ptr %i.cr, align 1, !tbaa !74
  %i.cs = getelementptr i8, ptr %.14783.i, i64 89
  store <8 x i8> %wide.load62.5, ptr %next.gep60.1.a, align 1, !tbaa !74
  store <8 x i8> %wide.load63.5, ptr %i.cs, align 1, !tbaa !74
  %i.ct = icmp eq i64 %n.vec57, 96
  br i1 %i.ct, label %middle.block65, label %vector.body58.2.a

vector.body58.2.a:                                ; preds = %vector.body58.1.a
  %next.gep60.2.a = getelementptr i8, ptr %.14783.i, i64 97
  %next.gep61.2.a = getelementptr i8, ptr %.14484.i, i64 96
  %i.cu = getelementptr i8, ptr %.14484.i, i64 104
  %wide.load62.6 = load <8 x i8>, ptr %next.gep61.2.a, align 1, !tbaa !74
  %wide.load63.6 = load <8 x i8>, ptr %i.cu, align 1, !tbaa !74
  %i.cv = getelementptr i8, ptr %.14783.i, i64 105
  store <8 x i8> %wide.load62.6, ptr %next.gep60.2.a, align 1, !tbaa !74
  store <8 x i8> %wide.load63.6, ptr %i.cv, align 1, !tbaa !74
  br label %middle.block65

middle.block65:                                   ; preds = %vector.body58.2.a, %vector.body58.1.a, %vector.body58.4, %vector.body58.3, %vector.body58.2, %vector.body58.1, %vector.ph56
  %cmp.n66 = icmp eq i64 %n.vec57, %i.ch
  br i1 %cmp.n66, label %.loopexit59.i, label %vec.epilog.iter.check72

vec.epilog.iter.check72:                          ; preds = %middle.block65
  %min.epilog.iters.check73 = icmp eq i64 %i.cj, 0
  br i1 %min.epilog.iters.check73, label %.lr.ph79.i.preheader, label %vec.epilog.ph74, !prof !166

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
  %wide.load80 = load <4 x i8>, ptr %next.gep79, align 1, !tbaa !74
  store <4 x i8> %wide.load80, ptr %next.gep78, align 1, !tbaa !74
  %index.next81 = add nuw i64 %index77, 4         ; 2 uses
  %i.da = icmp eq i64 %index.next81, %n.vec75
  br i1 %i.da, label %vec.epilog.middle.block82, label %vec.epilog.vector.body76, !llvm.loop !996

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
  %i.dc = load i8, ptr %.24576.i, align 1, !tbaa !74
  store i8 %i.dc, ptr %.24878.i, align 1, !tbaa !74
  %i.dd = add nsw i8 %.03777.i, -1
  %.248.i = getelementptr inbounds nuw i8, ptr %.24878.i, i64 1 ; 2 uses
  %i.de = icmp samesign ugt i8 %.03777.i, 1
  br i1 %i.de, label %.lr.ph79.i, label %.loopexit59.i, !llvm.loop !997

.loopexit.i:                                      ; preds = %.lr.ph92.i, %middle.block103, %vec.epilog.middle.block120, %.lr.ph98.i
  %.4.lcssa.i = phi ptr [ %.397.i, %.lr.ph98.i ], [ %i.eb, %vec.epilog.middle.block120 ], [ %i.dp, %middle.block103 ], [ %i.ed, %.lr.ph92.i ]
  %.450.lcssa.i = phi ptr [ %.45088.i, %.lr.ph98.i ], [ %i.dy, %vec.epilog.middle.block120 ], [ %i.dm, %middle.block103 ], [ %.450.i, %.lr.ph92.i ] ; 2 uses
  %.not54.i = icmp eq i64 %i.df, 0
  br i1 %.not54.i, label %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit, label %.lr.ph98.i, !llvm.loop !13

.lr.ph98.i:                                       ; preds = %.preheader.i, %.loopexit.i
  %.in100.i = phi i64 [ %i.df, %.loopexit.i ], [ %.039.lcssa61.i, %.preheader.i ]
  %.397.i = phi ptr [ %.4.lcssa.i, %.loopexit.i ], [ %.144.lcssa.i, %.preheader.i ] ; 20 uses
  %.34996.i = phi ptr [ %.450.lcssa.i, %.loopexit.i ], [ %.147.lcssa.i, %.preheader.i ] ; 16 uses
  %i.df = add i64 %.in100.i, -1                   ; 3 uses
  store i8 %i.f, ptr %.34996.i, align 1, !tbaa !74
  %i.dg = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.df
  %i.dh = load i8, ptr %i.dg, align 1, !tbaa !74  ; 7 uses
  %.45088.i = getelementptr inbounds nuw i8, ptr %.34996.i, i64 1 ; 6 uses
  %i.di = icmp sgt i8 %i.dh, 0
  br i1 %i.di, label %iter.check108, label %.loopexit.i

iter.check108:                                    ; preds = %.lr.ph98.i
  %.397.i89 = ptrtoaddr ptr %.397.i to i64
  %.34996.i88 = ptrtoaddr ptr %.34996.i to i64
  %i.dj = zext nneg i8 %i.dh to i64               ; 5 uses
  %min.iters.check91 = icmp ult i8 %i.dh, 4
  %i.dk = sub i64 %.34996.i88, %.397.i89
  %diff.check90 = icmp ult i64 %i.dk, 15
  %or.cond126 = select i1 %min.iters.check91, i1 true, i1 %diff.check90
  br i1 %or.cond126, label %.lr.ph92.i.preheader, label %vector.main.loop.iter.check92

vector.main.loop.iter.check92:                    ; preds = %iter.check108
  %min.iters.check93 = icmp ult i8 %i.dh, 16
  br i1 %min.iters.check93, label %vec.epilog.ph112, label %vector.ph94

vector.ph94:                                      ; preds = %vector.main.loop.iter.check92
  %i.dl = and i64 %i.dj, 12
  %n.vec95 = and i64 %i.dj, 112                   ; 11 uses
  %i.dm = getelementptr i8, ptr %.45088.i, i64 %n.vec95 ; 2 uses
  %i.dn = trunc nuw nsw i64 %n.vec95 to i8
  %i.do = sub nsw i8 %i.dh, %i.dn
  %i.dp = getelementptr i8, ptr %.397.i, i64 %n.vec95 ; 2 uses
  %i.dq = getelementptr i8, ptr %.397.i, i64 8
  %wide.load100 = load <8 x i8>, ptr %.397.i, align 1, !tbaa !74
  %wide.load101 = load <8 x i8>, ptr %i.dq, align 1, !tbaa !74
  %i.dr = getelementptr i8, ptr %.34996.i, i64 9
  store <8 x i8> %wide.load100, ptr %.45088.i, align 1, !tbaa !74
  store <8 x i8> %wide.load101, ptr %i.dr, align 1, !tbaa !74
  %i.ds = icmp eq i64 %n.vec95, 16
  br i1 %i.ds, label %middle.block103, label %vector.body96.1

vector.body96.1:                                  ; preds = %vector.ph94
  %next.gep98.1 = getelementptr i8, ptr %.34996.i, i64 17
  %next.gep99.1 = getelementptr i8, ptr %.397.i, i64 16
  %15 = getelementptr i8, ptr %.397.i, i64 24
  %wide.load100.1 = load <8 x i8>, ptr %next.gep99.1, align 1, !tbaa !74
  %wide.load101.1 = load <8 x i8>, ptr %15, align 1, !tbaa !74
  %16 = getelementptr i8, ptr %.34996.i, i64 25
  store <8 x i8> %wide.load100.1, ptr %next.gep98.1, align 1, !tbaa !74
  store <8 x i8> %wide.load101.1, ptr %16, align 1, !tbaa !74
  %17 = icmp eq i64 %n.vec95, 32
  br i1 %17, label %middle.block103, label %vector.body96.2

vector.body96.2:                                  ; preds = %vector.body96.1
  %next.gep98.2 = getelementptr i8, ptr %.34996.i, i64 33
  %next.gep99.2 = getelementptr i8, ptr %.397.i, i64 32
  %18 = getelementptr i8, ptr %.397.i, i64 40
  %wide.load100.2 = load <8 x i8>, ptr %next.gep99.2, align 1, !tbaa !74
  %wide.load101.2 = load <8 x i8>, ptr %18, align 1, !tbaa !74
  %19 = getelementptr i8, ptr %.34996.i, i64 41
  store <8 x i8> %wide.load100.2, ptr %next.gep98.2, align 1, !tbaa !74
  store <8 x i8> %wide.load101.2, ptr %19, align 1, !tbaa !74
  %20 = icmp eq i64 %n.vec95, 48
  br i1 %20, label %middle.block103, label %vector.body96.3

vector.body96.3:                                  ; preds = %vector.body96.2
  %next.gep98.3 = getelementptr i8, ptr %.34996.i, i64 49
  %next.gep99.3 = getelementptr i8, ptr %.397.i, i64 48
  %21 = getelementptr i8, ptr %.397.i, i64 56
  %wide.load100.3 = load <8 x i8>, ptr %next.gep99.3, align 1, !tbaa !74
  %wide.load101.3 = load <8 x i8>, ptr %21, align 1, !tbaa !74
  %22 = getelementptr i8, ptr %.34996.i, i64 57
  store <8 x i8> %wide.load100.3, ptr %next.gep98.3, align 1, !tbaa !74
  store <8 x i8> %wide.load101.3, ptr %22, align 1, !tbaa !74
  %23 = icmp eq i64 %n.vec95, 64
  br i1 %23, label %middle.block103, label %vector.body96.4

vector.body96.4:                                  ; preds = %vector.body96.3
  %next.gep98.4 = getelementptr i8, ptr %.34996.i, i64 65
  %next.gep99.4 = getelementptr i8, ptr %.397.i, i64 64
  %24 = getelementptr i8, ptr %.397.i, i64 72
  %wide.load100.4 = load <8 x i8>, ptr %next.gep99.4, align 1, !tbaa !74
  %wide.load101.4 = load <8 x i8>, ptr %24, align 1, !tbaa !74
  %25 = getelementptr i8, ptr %.34996.i, i64 73
  store <8 x i8> %wide.load100.4, ptr %next.gep98.4, align 1, !tbaa !74
  store <8 x i8> %wide.load101.4, ptr %25, align 1, !tbaa !74
  %26 = icmp eq i64 %n.vec95, 80
  br i1 %26, label %middle.block103, label %vector.body96.1.a

vector.body96.1.a:                                ; preds = %vector.body96.4
  %next.gep98.1.a = getelementptr i8, ptr %.34996.i, i64 81
  %next.gep99.1.a = getelementptr i8, ptr %.397.i, i64 80
  %i.dt = getelementptr i8, ptr %.397.i, i64 88
  %wide.load100.5 = load <8 x i8>, ptr %next.gep99.1.a, align 1, !tbaa !74
  %wide.load101.5 = load <8 x i8>, ptr %i.dt, align 1, !tbaa !74
  %i.du = getelementptr i8, ptr %.34996.i, i64 89
  store <8 x i8> %wide.load100.5, ptr %next.gep98.1.a, align 1, !tbaa !74
  store <8 x i8> %wide.load101.5, ptr %i.du, align 1, !tbaa !74
  %i.dv = icmp eq i64 %n.vec95, 96
  br i1 %i.dv, label %middle.block103, label %vector.body96.2.a

vector.body96.2.a:                                ; preds = %vector.body96.1.a
  %next.gep98.2.a = getelementptr i8, ptr %.34996.i, i64 97
  %next.gep99.2.a = getelementptr i8, ptr %.397.i, i64 96
  %i.dw = getelementptr i8, ptr %.397.i, i64 104
  %wide.load100.6 = load <8 x i8>, ptr %next.gep99.2.a, align 1, !tbaa !74
  %wide.load101.6 = load <8 x i8>, ptr %i.dw, align 1, !tbaa !74
  %i.dx = getelementptr i8, ptr %.34996.i, i64 105
  store <8 x i8> %wide.load100.6, ptr %next.gep98.2.a, align 1, !tbaa !74
  store <8 x i8> %wide.load101.6, ptr %i.dx, align 1, !tbaa !74
  br label %middle.block103

middle.block103:                                  ; preds = %vector.body96.2.a, %vector.body96.1.a, %vector.body96.4, %vector.body96.3, %vector.body96.2, %vector.body96.1, %vector.ph94
  %cmp.n104 = icmp eq i64 %n.vec95, %i.dj
  br i1 %cmp.n104, label %.loopexit.i, label %vec.epilog.iter.check110

vec.epilog.iter.check110:                         ; preds = %middle.block103
  %min.epilog.iters.check111 = icmp eq i64 %i.dl, 0
  br i1 %min.epilog.iters.check111, label %.lr.ph92.i.preheader, label %vec.epilog.ph112, !prof !166

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
  %wide.load118 = load <4 x i8>, ptr %next.gep117, align 1, !tbaa !74
  store <4 x i8> %wide.load118, ptr %next.gep116, align 1, !tbaa !74
  %index.next119 = add nuw i64 %index115, 4       ; 2 uses
  %i.ec = icmp eq i64 %index.next119, %n.vec113
  br i1 %i.ec, label %vec.epilog.middle.block120, label %vec.epilog.vector.body114, !llvm.loop !998

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
  %i.ee = load i8, ptr %.489.i, align 1, !tbaa !74
  store i8 %i.ee, ptr %.45091.i, align 1, !tbaa !74
  %i.ef = add nsw i8 %.090.i, -1
  %.450.i = getelementptr inbounds nuw i8, ptr %.45091.i, i64 1 ; 2 uses
  %i.eg = icmp samesign ugt i8 %.090.i, 1
  br i1 %i.eg, label %.lr.ph92.i, label %.loopexit.i, !llvm.loop !999

_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit: ; preds = %.loopexit.i, %.preheader.i
  %.349.lcssa.i = phi ptr [ %.147.lcssa.i, %.preheader.i ], [ %.450.lcssa.i, %.loopexit.i ] ; 4 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !1009, !nonnull !66, !align !189
  %i.ej = load i64, ptr %i.ei, align 8, !tbaa !109 ; 2 uses
  %.not = icmp eq i64 %i.ej, 0
  br i1 %.not, label %bb.i, label %bb.c

bb.c:                                             ; preds = %_ZSt14__add_groupingIcEPT_S1_S0_PKcmPKS0_S5_.exit
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !1010, !nonnull !66, !align !189
  %i.em = load i64, ptr %i.el, align 8, !tbaa !109
  %.not8 = icmp eq i64 %i.em, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !1011, !nonnull !66
  %i.ep = load i8, ptr %i.eo, align 1, !tbaa !74
  store i8 %i.ep, ptr %.349.lcssa.i, align 1, !tbaa !74
  %i.eq = getelementptr inbounds nuw i8, ptr %.349.lcssa.i, i64 1
  %i.er = load ptr, ptr %i.n, align 8, !tbaa !1006, !nonnull !66, !align !189 ; 2 uses
  %i.es = load i64, ptr %i.er, align 8, !tbaa !109
  %i.et = add i64 %i.es, 1
  store i64 %i.et, ptr %i.er, align 8, !tbaa !109
  %.pre = load ptr, ptr %i.eh, align 8, !tbaa !1009
  %.pre17 = load i64, ptr %.pre, align 8, !tbaa !109
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.eu = phi i64 [ %.pre17, %bb.d ], [ %i.ej, %bb.c ]
  %.0 = phi ptr [ %i.eq, %bb.d ], [ %.349.lcssa.i, %bb.c ] ; 3 uses
  %i.ev = icmp ugt i64 %i.eu, 1
  br i1 %i.ev, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.ew = load ptr, ptr %i.j, align 8, !tbaa !1003, !nonnull !66, !align !189 ; 2 uses
  %i.ex = load ptr, ptr %i.n, align 8, !tbaa !1006, !nonnull !66, !align !189
  %i.ey = load i64, ptr %i.ex, align 8, !tbaa !109 ; 5 uses
  %i.ez = load i64, ptr %i.ew, align 8, !tbaa !1012 ; 4 uses
  %i.fa = icmp ugt i64 %i.ey, %i.ez
  br i1 %i.fa, label %bb.g, label %_ZSt10__sv_checkmmPKc.exit.i

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @_ZSt24__throw_out_of_range_fmtPKcz(ptr noundef nonnull @.str.320, ptr noundef nonnull @.str.319, i64 noundef %i.ey, i64 noundef %i.ez) #33
  unreachable

_ZSt10__sv_checkmmPKc.exit.i:                     ; preds = %bb.f
  %i.fb = sub nuw i64 %i.ez, %i.ey                ; 2 uses
  %i.fc = icmp eq i64 %i.ez, %i.ey
  br i1 %i.fc, label %_ZNKSt17basic_string_viewIcSt11char_traitsIcEE4copyEPcmm.exit, label %bb.h

bb.h:                                             ; preds = %_ZSt10__sv_checkmmPKc.exit.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ew, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !1005
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
define linkonce_odr dso_local ptr @_ZNKSt8__format14__formatter_fpIcE6formatIdNS_10_Sink_iterIcEEEENSt20basic_format_contextIT0_cE8iteratorET_RS7_(ptr noundef nonnull align 4 dereferenceable(8) %0, double noundef %1, ptr noundef nonnull align 8 dereferenceable(40) %2) local_unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %4 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i203 = alloca %union.anon.1198, align 16 ; 5 uses
  %5 = alloca %"class.std::basic_format_arg", align 16 ; 5 uses
  %6 = alloca %"struct.std::__format::_WidthPrecVisitor", align 1 ; 3 uses
  %.sroa.0.i = alloca %union.anon.1198, align 16  ; 5 uses
  %i.a = alloca double, align 8                   ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 29 uses
  %i.b = alloca [128 x i8], align 16              ; 5 uses
  %8 = alloca %"struct.std::to_chars_result", align 8 ; 10 uses
  %i.c = alloca i64, align 8                      ; 10 uses
  %i.d = alloca i8, align 1                       ; 10 uses
  %i.e = alloca i32, align 4                      ; 10 uses
  %9 = alloca %class.anon.1225, align 8           ; 18 uses
  %10 = alloca %"struct.std::__format::_Optional_locale", align 8 ; 7 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %13 = alloca %"class.std::locale", align 8      ; 7 uses
  store double %1, ptr %i.a, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 19 uses
  store ptr %i.f, ptr %7, align 8, !tbaa !113
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 12 uses
  store i64 0, ptr %i.g, align 8, !tbaa !114
  store i8 0, ptr %i.f, align 8, !tbaa !74
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #30
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #30
  store i64 6, ptr %i.c, align 8, !tbaa !109
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #30
  %i.h = load i16, ptr %0, align 4                ; 5 uses
  %i.i = and i16 %i.h, 1536
  %i.j = icmp ne i16 %i.i, 0                      ; 2 uses
  %i.k = zext i1 %i.j to i8
  store i8 %i.k, ptr %i.d, align 1, !tbaa !81
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
  %i.o = load i16, ptr %i.n, align 4, !tbaa !142
  %i.p = zext i16 %i.o to i64
  br label %_ZNKSt8__format5_SpecIcE16_M_get_precisionISt20basic_format_contextINS_10_Sink_iterIcEEcEEEmRT_.exit

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.r = load i16, ptr %i.q, align 4, !tbaa !142
  %i.s = zext i16 %i.r to i64                     ; 5 uses
  %i.t = load i64, ptr %2, align 8, !noalias !1025 ; 3 uses
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
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !74, !noalias !1025
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.ac, i64 %i.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 16 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !153
  br label %_ZNKSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE3argEm.exit.i

bb.f:                                             ; preds = %bb.d
  %i.ae = icmp eq i64 %i.u, 0
  %i.af = lshr exact i64 %i.t, 4
  %i.ag = icmp samesign ugt i64 %i.af, %i.s
end_hunk_1
begin_hunk_2_@llvm.abs.i128
attributes #8 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { cold nofree noreturn }
attributes #13 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint mustprogress noreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { cold noreturn }
attributes #23 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #24 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #29 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #30 = { nounwind }
attributes #31 = { builtin nounwind }
attributes #32 = { builtin allocsize(0) }
attributes #33 = { noreturn }
attributes #34 = { noreturn nounwind }
attributes #35 = { nounwind willreturn memory(read) }
attributes #36 = { cold }

!llvm.module.flags = !{!29, !30, !31, !32}
!llvm.ident = !{!33}
!llvm.errno.tbaa = !{!38}

!0 = distinct !{null, null, null}
!1 = distinct !{!1, !110}
!2 = distinct !{!2, !110}
!3 = distinct !{!3, !110}
!4 = distinct !{!4, !110}
!5 = distinct !{!5, !110}
!6 = distinct !{!6, !110}
!7 = distinct !{!7, !110}
!8 = distinct !{!8, !110}
!9 = distinct !{null}
!10 = distinct !{null}
!11 = distinct !{!11, !110}
!12 = distinct !{!12, !110}
!13 = distinct !{!13, !110}
!14 = distinct !{null}
!15 = distinct !{!15, !110}
!16 = distinct !{null, null}
!17 = distinct !{!17, !110}
!18 = distinct !{!18, !110}
!19 = distinct !{!19, !110}
!20 = distinct !{!20, !110}
!21 = distinct !{!21, !110}
!22 = distinct !{!22, !110}
!23 = distinct !{null}
!24 = distinct !{!24, !110}
!25 = distinct !{!25, !110}
!26 = distinct !{!26, !110}
!27 = distinct !{!27, !110}
!28 = distinct !{!28, !110}
!29 = !{i32 1, !"long-double-type", !"x86_fp80"}
!30 = !{i32 8, !"PIC Level", i32 2}
!31 = !{i32 7, !"PIE Level", i32 2}
!32 = !{i32 7, !"uwtable", i32 2}
!33 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!34 = !{!"Simple C++ TBAA"}
!35 = !{!"omnipotent char", !34, i64 0}
!36 = !{!"int", !35, i64 0}
!37 = !{!"__libc_errno", !36, i64 0}
!38 = !{!37, !36, i64 0}
!39 = !{!"vtable pointer", !34, i64 0}
!40 = !{!39, !39, i64 0}
!41 = !{!"long", !35, i64 0}
!42 = !{!"_ZTSSt13_Ios_Fmtflags", !35, i64 0}
!43 = !{!"_ZTSSt12_Ios_Iostate", !35, i64 0}
!44 = !{!"any pointer", !35, i64 0}
!45 = !{!"p1 _ZTSNSt8ios_base14_Callback_listE", !44, i64 0}
!46 = !{!"_ZTSNSt8ios_base6_WordsE", !44, i64 0, !41, i64 8}
!47 = !{!"p1 _ZTSNSt8ios_base6_WordsE", !44, i64 0}
!48 = !{!"p1 _ZTSNSt6locale5_ImplE", !44, i64 0}
!49 = !{!"_ZTSSt6locale", !48, i64 0}
!50 = !{!"_ZTSSt8ios_base", !41, i64 8, !41, i64 16, !42, i64 24, !43, i64 28, !43, i64 32, !45, i64 40, !46, i64 48, !35, i64 64, !36, i64 192, !47, i64 200, !49, i64 208}
!51 = !{!50, !43, i64 32}
!52 = !{!36, !36, i64 0}
!53 = !{!"p1 int", !44, i64 0}
!54 = !{!53, !53, i64 0}
!55 = !{!"bool", !35, i64 0}
!56 = !{!"p1 _ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !44, i64 0}
!57 = !{!"_ZTSSt10_Head_baseILm0EPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0EE", !56, i64 0}
!58 = !{!"_ZTSSt11_Tuple_implILm0EJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !57, i64 0}
!59 = !{!"_ZTSSt5tupleIJPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EEE", !58, i64 0}
!60 = !{!"_ZTSSt15__uniq_ptr_implINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !59, i64 0}
!61 = !{!"_ZTSSt15__uniq_ptr_dataINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_ELb1ELb1EE", !60, i64 0}
!62 = !{!"_ZTSSt10unique_ptrINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt14default_deleteIS5_EE", !61, i64 0}
!63 = !{!"_ZTSN7testing15AssertionResultE", !55, i64 0, !62, i64 8}
!64 = !{!63, !55, i64 0}
!65 = !{i8 0, i8 2}
!66 = !{}
!67 = !{!56, !56, i64 0}
!68 = !{!"p1 omnipotent char", !44, i64 0}
!69 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !68, i64 0}
!70 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !69, i64 0, !41, i64 8, !35, i64 16}
!71 = !{!70, !68, i64 0}
!72 = !{!"p1 _ZTSNSt7__cxx1118basic_stringstreamIcSt11char_traitsIcESaIcEEE", !44, i64 0}
!73 = !{!72, !72, i64 0}
!74 = !{!35, !35, i64 0}
!75 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpIncrement_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_INS0_23proxy_indirect_accessorIS6_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc43ELc43EEEELb0EEEFvvEEENS3_ISC_SH_FiiEEENS3_ISC_NS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS3_ISC_SM_KFvSN_REEENS3_ISC_SM_FvSN_OEEENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEEEEE", !44, i64 0}
!76 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpIncrement_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc43ELc43EEEELb0EEEFvvEEENS4_ISD_SI_FiiEEENS4_ISD_NS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS4_ISD_SN_KFvSO_REEENS4_ISD_SN_FvSO_OEEENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEEEEEEE", !75, i64 0}
!77 = !{!76, !75, i64 0}
!78 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpDecrement_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_INS0_23proxy_indirect_accessorIS6_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc45ELc45EEEELb0EEEFvvEEENS3_ISC_SH_FiiEEENS3_ISC_NS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS3_ISC_SM_KFvSN_REEENS3_ISC_SM_FvSN_OEEENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEEEEE", !44, i64 0}
!79 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpDecrement_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc45ELc45EEEELb0EEEFvvEEENS4_ISD_SI_FiiEEENS4_ISD_NS1_19proxy_cast_dispatchEFvNS1_18proxy_cast_contextEREEENS4_ISD_SN_KFvSO_REEENS4_ISD_SN_FvSO_OEEENS1_15reflection_metaILb0ENS1_22proxy_typeid_reflectorEEEEEEEE", !78, i64 0}
!80 = !{!79, !78, i64 0}
!81 = !{!55, !55, i64 0}
!82 = !{!"p1 bool", !44, i64 0}
!83 = !{!82, !82, i64 0}
!84 = !{!"_ZTSN27proxy_dispatch_tests_detail11CommaTesterE", !36, i64 0}
!85 = !{!84, !36, i64 0}
!86 = !{!"p1 _ZTSN27proxy_dispatch_tests_detail11CommaTesterE", !44, i64 0}
!87 = !{!86, !86, i64 0}
!88 = !{!"p1 _ZTSZN38ProxyDispatchTests_TestOpPtrToMem_Test8TestBodyEvE8Derived1", !44, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"p1 _ZTSZN38ProxyDispatchTests_TestOpPtrToMem_Test8TestBodyEvE8Derived2", !44, i64 0}
!91 = !{!90, !90, i64 0}
!92 = !{!44, !44, i64 0}
!93 = !{!"any p2 pointer", !44, i64 0}
!94 = !{!"p2 _ZTSNSt8__detail15_Hash_node_baseE", !93, i64 0}
!95 = !{!"p1 _ZTSNSt8__detail15_Hash_node_baseE", !44, i64 0}
!96 = !{!"_ZTSNSt8__detail15_Hash_node_baseE", !95, i64 0}
!97 = !{!"float", !35, i64 0}
!98 = !{!"_ZTSNSt8__detail20_Prime_rehash_policyE", !97, i64 0, !41, i64 8}
!99 = !{!"_ZTSSt10_HashtableIiSt4pairIKiiESaIS2_ENSt8__detail10_Select1stESt8equal_toIiESt4hashIiENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE", !94, i64 0, !41, i64 8, !96, i64 16, !41, i64 24, !98, i64 32, !95, i64 48}
!100 = !{!99, !94, i64 0}
!101 = !{!99, !41, i64 8}
!102 = !{!"p1 _ZTSSt13unordered_mapIiiSt4hashIiESt8equal_toIiESaISt4pairIKiiEEE", !44, i64 0}
!103 = !{!102, !102, i64 0}
!104 = !{!96, !95, i64 0}
!105 = !{!"_ZTSSt4pairIKiiE", !36, i64 0, !36, i64 4}
!106 = !{!105, !36, i64 0}
!107 = !{!105, !36, i64 4}
!108 = !{!99, !41, i64 24}
!109 = !{!41, !41, i64 0}
!110 = !{!"llvm.loop.mustprogress"}
!111 = !{!95, !95, i64 0}
!112 = !{!99, !95, i64 16}
!113 = !{!69, !68, i64 0}
!114 = !{!70, !41, i64 8}
!115 = !{!"_ZTSSt15basic_streambufIcSt11char_traitsIcEE", !68, i64 8, !68, i64 16, !68, i64 24, !68, i64 32, !68, i64 40, !68, i64 48, !49, i64 56}
!116 = !{!115, !68, i64 40}
!117 = !{!115, !68, i64 32}
!118 = !{!"_ZTSSi", !41, i64 8}
!119 = !{!118, !41, i64 8}
!120 = !{!"p1 _ZTSN27proxy_dispatch_tests_detail14PtrToMemTesterE", !44, i64 0}
!121 = !{!120, !120, i64 0}
!122 = !{!"p1 short", !44, i64 0}
!123 = !{!122, !122, i64 0}
!124 = !{!"short", !35, i64 0}
!125 = !{!124, !124, i64 0}
!126 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN48ProxyDispatchTests_TestSubstitutionDispatch_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_IS7_NS0_21substitution_dispatchEKFNS4_IZNS5_8TestBodyEvE4BaseEEvREEENS3_IS7_SB_FSD_vOEEEEEE", !44, i64 0}
!127 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN48ProxyDispatchTests_TestSubstitutionDispatch_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_IS8_NS0_21substitution_dispatchEKFNS5_IZNS6_8TestBodyEvE4BaseEEvREEENS4_IS8_SC_FSE_vOEEEEEEEE", !126, i64 0}
!128 = !{!127, !126, i64 0}
!129 = !{!"_ZTSSt9type_info", !68, i64 8}
!130 = !{!129, !68, i64 8}
!131 = !{!"branch_weights", i32 1073205, i32 2146410443}
!132 = !{!"branch_weights", !"expected", i32 2146839403, i32 644245}
!133 = !{!"_ZTSSt22_Optional_payload_baseIiE", !35, i64 0, !55, i64 4}
!134 = !{!133, !55, i64 4}
!135 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!136 = !{!"_ZTSNSt8__format6_AlignE", !35, i64 0}
!137 = !{!"_ZTSNSt8__format5_SignE", !35, i64 0}
!138 = !{!"_ZTSNSt8__format10_WidthPrecE", !35, i64 0}
!139 = !{!"_ZTSNSt8__format10_Pres_typeE", !35, i64 0}
!140 = !{!"_ZTSNSt8__format5_SpecIcEE", !136, i64 0, !137, i64 0, !36, i64 0, !36, i64 0, !36, i64 0, !138, i64 0, !138, i64 1, !139, i64 1, !124, i64 2, !124, i64 4, !35, i64 6}
!141 = !{!140, !124, i64 2}
!142 = !{!140, !124, i64 4}
!143 = !{!140, !35, i64 6}
!144 = !{!"_ZTSNSt26basic_format_parse_contextIcE9_IndexingE", !35, i64 0}
!145 = !{!"_ZTSSt26basic_format_parse_contextIcE", !68, i64 0, !68, i64 8, !144, i64 16, !41, i64 24, !41, i64 32}
!146 = !{!145, !68, i64 0}
!147 = !{!145, !68, i64 8}
!148 = !{!145, !144, i64 16}
!149 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!150 = !{!"branch_weights", i32 -2145354644, i32 2145354644}
!151 = !{!145, !41, i64 24}
!152 = !{!"branch_weights", !"expected", i32 2146410, i32 2145337238}
!153 = !{i64 0, i64 16, !74}
!154 = !{!"_ZTSNSt8__format6_Arg_tE", !35, i64 0}
!155 = !{!154, !154, i64 0}
!156 = !{i64 0, i64 16, !74, i64 16, i64 1, !155}
!157 = !{!"_ZTSNSt8__format16_Optional_localeE", !35, i64 0, !55, i64 8}
!158 = !{!157, !55, i64 8}
!159 = !{!49, !48, i64 0}
!160 = !{!"p2 _ZTSNSt6locale5facetE", !93, i64 0}
!161 = !{!"p2 omnipotent char", !93, i64 0}
!162 = !{!"_ZTSNSt6locale5_ImplE", !36, i64 0, !160, i64 8, !41, i64 16, !160, i64 24, !161, i64 32}
!163 = !{!162, !160, i64 8}
!164 = !{!"p1 _ZTSNSt6locale5facetE", !44, i64 0}
!165 = !{!164, !164, i64 0}
!166 = !{!"branch_weights", i32 4, i32 12}
!167 = !{!"llvm.loop.isvectorized", i32 1}
!168 = !{!"llvm.loop.unroll.runtime.disable"}
!169 = !{!"p1 _ZTSNSt8__format5_SinkIcEE", !44, i64 0}
!170 = !{!169, !169, i64 0}
!171 = !{!68, !68, i64 0}
!172 = !{!"_ZTSN9__gnu_cxx17__normal_iteratorIPcSt4spanIcLm18446744073709551615EEEE", !68, i64 0}
!173 = !{!172, !68, i64 0}
!174 = !{!"long long", !35, i64 0}
!175 = !{!174, !174, i64 0}
!176 = !{!"_ZTSNSt8__detail16__extent_storageILm18446744073709551615EEE", !41, i64 0}
!177 = !{!"_ZTSSt4spanIcLm18446744073709551615EE", !68, i64 0, !176, i64 8}
!178 = !{!"_ZTSNSt8__format5_SinkIcEE", !177, i64 8, !172, i64 24}
!179 = !{!"_ZTSNSt8__format9_Buf_sinkIcEE", !178, i64 0, !35, i64 32}
!180 = !{!"_ZTSNSt8__format10_Sink_iterIcEE", !169, i64 0}
!181 = !{!"_ZTSNSt8__format10_Iter_sinkIcNS_10_Sink_iterIcEEEE", !179, i64 0, !180, i64 288, !41, i64 296, !41, i64 304}
!182 = !{!181, !41, i64 296}
!183 = !{!181, !41, i64 304}
!184 = !{!"p1 _ZTSSt20basic_format_contextINSt8__format10_Sink_iterIcEEcE", !44, i64 0}
!185 = !{!176, !41, i64 0}
!186 = !{!"_ZTSNSt8__format8_ScannerIcEE", !145, i64 8}
!187 = !{!"_ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE", !186, i64 0, !184, i64 48}
!188 = !{!187, !184, i64 48}
!189 = !{i64 8}
!190 = !{!"p1 _ZTSNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcEE", !44, i64 0}
!191 = !{!"_ZTSZNSt8__format19_Formatting_scannerINS_10_Sink_iterIcEEcE13_M_format_argEmEUlRT_E_", !190, i64 0}
!192 = !{!191, !190, i64 0}
!193 = !{!97, !97, i64 0}
!194 = !{!"double", !35, i64 0}
!195 = !{!194, !194, i64 0}
!196 = !{!"long double", !35, i64 0}
!197 = !{!196, !196, i64 0}
!198 = !{!"_ZTSSt12chars_format", !35, i64 0}
!199 = !{!198, !198, i64 0}
!200 = !{!"p1 float", !44, i64 0}
!201 = !{!"p1 long", !44, i64 0}
!202 = !{!201, !201, i64 0}
!203 = !{!"_ZTSSt4errc", !35, i64 0}
!204 = !{!203, !203, i64 0}
!205 = !{!"_ZTSSt15to_chars_result", !68, i64 0, !203, i64 8}
!206 = !{!205, !203, i64 8}
!207 = !{!205, !68, i64 0}
!208 = !{!"_ZTSNSt8__format14__formatter_fpIcEE", !140, i64 0}
!209 = !{!208, !35, i64 6}
!210 = !{i64 4}
!211 = !{!"p1 _ZTSNSt7__cxx118numpunctIcEE", !44, i64 0}
!212 = !{!"p1 _ZTSSt17basic_string_viewIcSt11char_traitsIcEE", !44, i64 0}
!213 = !{!"p1 double", !44, i64 0}
!214 = !{!"p1 long double", !44, i64 0}
!215 = distinct !{null}
!216 = distinct !{null, null, null, null}
!217 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN34ProxyDispatchTests_TestOpPlus_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_INS0_23proxy_indirect_accessorIS6_EENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc43EEEELb0EEEFivEEENS3_ISC_SH_FiiEEEEEE", !44, i64 0}
!218 = !{!217, !217, i64 0}
!219 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN34ProxyDispatchTests_TestOpPlus_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc43EEEELb0EEEFivEEENS4_ISD_SI_FiiEEEEEEEE", !217, i64 0}
!220 = !{!219, !217, i64 0}
!221 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN34ProxyDispatchTests_TestOpPlus_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc43EEEELb0EEEFiiEEE", !44, i64 0}
!222 = !{!221, !44, i64 0}
!223 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN34ProxyDispatchTests_TestOpPlus_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!224 = !{!223, !44, i64 0}
!225 = distinct !{null}
!226 = distinct !{null, null, null, null}
!227 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN35ProxyDispatchTests_TestOpMinus_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_INS0_23proxy_indirect_accessorIS6_EENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc45EEEELb0EEEFivEEENS3_ISC_SH_FiiEEEEEE", !44, i64 0}
!228 = !{!227, !227, i64 0}
!229 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN35ProxyDispatchTests_TestOpMinus_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc45EEEELb0EEEFivEEENS4_ISD_SI_FiiEEEEEEEE", !227, i64 0}
!230 = !{!229, !227, i64 0}
!231 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN35ProxyDispatchTests_TestOpMinus_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc45EEEELb0EEEFiiEEE", !44, i64 0}
!232 = !{!231, !44, i64 0}
!233 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN35ProxyDispatchTests_TestOpMinus_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!234 = !{!233, !44, i64 0}
!235 = distinct !{null, null, null, null}
!236 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN38ProxyDispatchTests_TestOpAsterisk_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!237 = !{!236, !44, i64 0}
!238 = distinct !{null, null, null, null}
!239 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN35ProxyDispatchTests_TestOpSlash_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!240 = !{!239, !44, i64 0}
!241 = distinct !{null, null, null, null}
!242 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN36ProxyDispatchTests_TestOpModulo_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!243 = !{!242, !44, i64 0}
!244 = distinct !{null}
!245 = distinct !{!245, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!246 = distinct !{!246, !245, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!247 = distinct !{!247, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!248 = distinct !{!248, !247, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!249 = distinct !{null, null, null, null}
!250 = !{!75, !75, i64 0}
!251 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN39ProxyDispatchTests_TestOpIncrement_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc43ELc43EEEELb0EEEFiiEEE", !44, i64 0}
!252 = !{!251, !44, i64 0}
!253 = !{!248, !246}
!254 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpIncrement_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!255 = !{!254, !44, i64 0}
!256 = distinct !{null}
!257 = distinct !{!257, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!258 = distinct !{!258, !257, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!259 = distinct !{!259, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!260 = distinct !{!260, !259, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!261 = distinct !{null, null, null, null}
!262 = !{!78, !78, i64 0}
!263 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN39ProxyDispatchTests_TestOpDecrement_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc45ELc45EEEELb0EEEFiiEEE", !44, i64 0}
!264 = !{!263, !44, i64 0}
!265 = !{!260, !258}
!266 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpDecrement_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!267 = !{!266, !44, i64 0}
!268 = distinct !{null}
!269 = distinct !{null, null, null, null}
!270 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN37ProxyDispatchTests_TestOpEqualTo_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc61ELc61EEEELb0EEEFiiEEE", !44, i64 0}
!271 = !{!270, !44, i64 0}
!272 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN37ProxyDispatchTests_TestOpEqualTo_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!273 = !{!272, !44, i64 0}
!274 = distinct !{null}
!275 = distinct !{null, null, null, null}
!276 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN40ProxyDispatchTests_TestOpNotEqualTo_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc33ELc61EEEELb0EEEFiiEEE", !44, i64 0}
!277 = !{!276, !44, i64 0}
!278 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN40ProxyDispatchTests_TestOpNotEqualTo_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!279 = !{!278, !44, i64 0}
!280 = distinct !{null}
!281 = distinct !{null, null, null, null}
!282 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN41ProxyDispatchTests_TestOpGreaterThan_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc62EEEELb0EEEFiiEEE", !44, i64 0}
!283 = !{!282, !44, i64 0}
!284 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN41ProxyDispatchTests_TestOpGreaterThan_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!285 = !{!284, !44, i64 0}
!286 = distinct !{null}
!287 = distinct !{null, null, null, null}
!288 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN38ProxyDispatchTests_TestOpLessThan_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc60EEEELb0EEEFiiEEE", !44, i64 0}
!289 = !{!288, !44, i64 0}
!290 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN38ProxyDispatchTests_TestOpLessThan_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!291 = !{!290, !44, i64 0}
!292 = distinct !{null}
!293 = distinct !{null, null, null, null}
!294 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN50ProxyDispatchTests_TestOpGreaterThanOrEqualTo_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc62ELc61EEEELb0EEEFiiEEE", !44, i64 0}
!295 = !{!294, !44, i64 0}
!296 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN50ProxyDispatchTests_TestOpGreaterThanOrEqualTo_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!297 = !{!296, !44, i64 0}
!298 = distinct !{null}
!299 = distinct !{null, null, null, null}
!300 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN47ProxyDispatchTests_TestOpLessThanOrEqualTo_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc60ELc61EEEELb0EEEFiiEEE", !44, i64 0}
!301 = !{!300, !44, i64 0}
!302 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN47ProxyDispatchTests_TestOpLessThanOrEqualTo_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!303 = !{!302, !44, i64 0}
!304 = distinct !{null}
!305 = distinct !{null, null, null, null}
!306 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN39ProxyDispatchTests_TestOpSpaceship_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm3EEEtlA3_cLc60ELc61ELc62EEEELb0EEEFSt15strong_orderingiEEE", !44, i64 0}
!307 = !{!306, !44, i64 0}
!308 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpSpaceship_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!309 = !{!308, !44, i64 0}
!310 = distinct !{null}
!311 = distinct !{null, null, null, null}
!312 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN40ProxyDispatchTests_TestOpLogicalNot_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc33EEEELb0EEEFbvEEE", !44, i64 0}
!313 = !{!312, !44, i64 0}
!314 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN40ProxyDispatchTests_TestOpLogicalNot_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!315 = !{!314, !44, i64 0}
!316 = distinct !{null}
!317 = distinct !{null, null, null, null}
!318 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN40ProxyDispatchTests_TestOpLogicalAnd_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc38ELc38EEEELb0EEEFbbEEE", !44, i64 0}
!319 = !{!318, !44, i64 0}
!320 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN40ProxyDispatchTests_TestOpLogicalAnd_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!321 = !{!320, !44, i64 0}
!322 = distinct !{null}
!323 = distinct !{null, null, null, null}
!324 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN39ProxyDispatchTests_TestOpLogicalOr_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc124ELc124EEEELb0EEEFbbEEE", !44, i64 0}
!325 = !{!324, !44, i64 0}
!326 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpLogicalOr_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!327 = !{!326, !44, i64 0}
!328 = distinct !{null, null, null, null}
!329 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN35ProxyDispatchTests_TestOpTilde_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!330 = !{!329, !44, i64 0}
!331 = distinct !{null}
!332 = distinct !{null, null, null, null}
!333 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpAmpersand_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_INS0_23proxy_indirect_accessorIS6_EENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc38EEEELb0EEEDoFPKvvEEENS3_ISC_SH_FiiEEEEEE", !44, i64 0}
!334 = !{!333, !333, i64 0}
!335 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpAmpersand_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc38EEEELb0EEEDoFPKvvEEENS4_ISD_SI_FiiEEEEEEEE", !333, i64 0}
!336 = !{!335, !333, i64 0}
!337 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_23proxy_indirect_accessorIZN39ProxyDispatchTests_TestOpAmpersand_Test8TestBodyEvE10TestFacadeEENS0_17operator_dispatchIXtlNS1_4signILm1EEEtlA1_cLc38EEEELb0EEEFiiEEE", !44, i64 0}
!338 = !{!337, !44, i64 0}
!339 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpAmpersand_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!340 = !{!339, !44, i64 0}
!341 = distinct !{null, null, null, null}
!342 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN34ProxyDispatchTests_TestOpPipe_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!343 = !{!342, !44, i64 0}
!344 = distinct !{null, null, null, null}
!345 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN35ProxyDispatchTests_TestOpCaret_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!346 = !{!345, !44, i64 0}
!347 = distinct !{null, null, null, null}
!348 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN39ProxyDispatchTests_TestOpLeftShift_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!349 = !{!348, !44, i64 0}
!350 = distinct !{null, null, null, null}
!351 = !{!"_ZTSN3pro2v46detail9conv_metaINS0_5proxyIZN40ProxyDispatchTests_TestOpRightShift_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEE", !44, i64 0}
!352 = !{!351, !44, i64 0}
!353 = distinct !{!353, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!354 = distinct !{!354, !353, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!355 = distinct !{!355, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!356 = distinct !{!356, !355, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!357 = distinct !{!357, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_"}
!358 = distinct !{!358, !357, !"_ZN7testing8internal8EqHelper7CompareIiiTnPNSt9enable_ifIXoontsr3std11is_integralIT_EE5valuentsr3std10is_pointerIT0_EE5valueEvE4typeELPv0EEENS_15AssertionResultEPKcSC_RKS4_RKS5_: argument 0"}
!359 = distinct !{!359, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_"}
!360 = distinct !{!360, !359, !"_ZN7testing8internal11CmpHelperEQIiiEENS_15AssertionResultEPKcS4_RKT_RKT0_: argument 0"}
!361 = distinct !{null, null, null, null}
!362 = !{!"p1 _ZTSN3pro2v46detail14composite_metaIJNS1_9conv_metaINS0_5proxyIZN44ProxyDispatchTests_TestOpPlusAssignment_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS3_INS0_23proxy_indirect_accessorIS6_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc43ELc61EEEELb0EEEFviEEENS3_IS7_SH_SI_EEEEE", !44, i64 0}
!363 = !{!362, !362, i64 0}
!364 = !{!356, !354}
!365 = !{!360, !358}
!366 = !{!"_ZTSN3pro2v46detail22meta_ptr_indirect_implINS1_14composite_metaIJNS1_9conv_metaINS0_5proxyIZN44ProxyDispatchTests_TestOpPlusAssignment_Test8TestBodyEvE10TestFacadeEENS1_16destroy_dispatchEDoFvvEEENS4_INS0_23proxy_indirect_accessorIS7_EENS0_17operator_dispatchIXtlNS1_4signILm2EEEtlA2_cLc43ELc61EEEELb0EEEFviEEENS4_IS8_SI_SJ_EEEEEEE", !362, i64 0}
end_hunk_2
