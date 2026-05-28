inline.NumInlined: 1784
inline.NumDeleted: 914
begin_hunk_0_@_ZN8facebook5velox9functions9prestosql11getEnumTypeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESA_SA_:bb.a
  %i.rw = getelementptr i8, ptr %i.rj, i64 %n.vec496
  %i.rx = getelementptr i8, ptr %.sroa.045.0.lcssa.i.i, i64 %n.vec496
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index497 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next501, %vec.epilog.vector.body ] ; 3 uses
  %next.gep498.a = getelementptr i8, ptr %i.rj, i64 %index497
  %next.gep499 = getelementptr i8, ptr %.sroa.045.0.lcssa.i.i, i64 %index497
  %wide.load500 = load <8 x i8>, ptr %next.gep499, align 1, !tbaa !16
  store <8 x i8> %wide.load500, ptr %next.gep498.a, align 1, !tbaa !16
  %index.next501 = add nuw i64 %index497, 8       ; 2 uses
  %i.ry = icmp eq i64 %index.next501, %n.vec496
  br i1 %i.ry, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !209

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n502 = icmp eq i64 %i.rd, %n.vec496
  br i1 %cmp.n502, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i92.i.preheader

.lr.ph.i.i.i.i92.i.preheader:                     ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.06.i.i.i.i93.i.ph = phi ptr [ %i.rj, %iter.check ], [ %i.rn, %vec.epilog.iter.check ], [ %i.rw, %vec.epilog.middle.block ] ; 2 uses
  %.sroa.02.05.i.i.i.i.i.ph = phi ptr [ %.sroa.045.0.lcssa.i.i, %iter.check ], [ %i.ro, %vec.epilog.iter.check ], [ %i.rx, %vec.epilog.middle.block ] ; 3 uses
  %.sroa.02.05.i.i.i.i.i.ph531 = ptrtoint ptr %.sroa.02.05.i.i.i.i.i.ph to i64 ; 2 uses
  %i.rz = sub i64 %i.rb, %.sroa.02.05.i.i.i.i.i.ph531
  %xtraiter = and i64 %i.rz, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i92.i.prol.loopexit, label %.lr.ph.i.i.i.i92.i.prol

.lr.ph.i.i.i.i92.i.prol:                          ; preds = %.lr.ph.i.i.i.i92.i.preheader, %.lr.ph.i.i.i.i92.i.prol
  %.06.i.i.i.i93.i.prol = phi ptr [ %i.sc, %.lr.ph.i.i.i.i92.i.prol ], [ %.06.i.i.i.i93.i.ph, %.lr.ph.i.i.i.i92.i.preheader ] ; 2 uses
  %.sroa.02.05.i.i.i.i.i.prol = phi ptr [ %i.sb, %.lr.ph.i.i.i.i92.i.prol ], [ %.sroa.02.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i92.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i92.i.prol ], [ 0, %.lr.ph.i.i.i.i92.i.preheader ]
  %i.sa = load i8, ptr %.sroa.02.05.i.i.i.i.i.prol, align 1, !tbaa !16
  store i8 %i.sa, ptr %.06.i.i.i.i93.i.prol, align 1, !tbaa !16
  %i.sb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.sc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i.prol, i64 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i92.i.prol.loopexit, label %.lr.ph.i.i.i.i92.i.prol, !llvm.loop !210

.lr.ph.i.i.i.i92.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i92.i.prol, %.lr.ph.i.i.i.i92.i.preheader
  %.06.i.i.i.i93.i.unr = phi ptr [ %.06.i.i.i.i93.i.ph, %.lr.ph.i.i.i.i92.i.preheader ], [ %i.sc, %.lr.ph.i.i.i.i92.i.prol ]
  %.sroa.02.05.i.i.i.i.i.unr = phi ptr [ %.sroa.02.05.i.i.i.i.i.ph, %.lr.ph.i.i.i.i92.i.preheader ], [ %i.sb, %.lr.ph.i.i.i.i92.i.prol ]
  %i.sd = sub i64 %.sroa.02.05.i.i.i.i.i.ph531, %i.rb
  %i.se = icmp ugt i64 %i.sd, -8
  br i1 %i.se, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i92.i

.lr.ph.i.i.i.i92.i:                               ; preds = %.lr.ph.i.i.i.i92.i.prol.loopexit, %.lr.ph.i.i.i.i92.i
  %.06.i.i.i.i93.i = phi ptr [ %i.tc, %.lr.ph.i.i.i.i92.i ], [ %.06.i.i.i.i93.i.unr, %.lr.ph.i.i.i.i92.i.prol.loopexit ] ; 9 uses
  %.sroa.02.05.i.i.i.i.i = phi ptr [ %i.tb, %.lr.ph.i.i.i.i92.i ], [ %.sroa.02.05.i.i.i.i.i.unr, %.lr.ph.i.i.i.i92.i.prol.loopexit ] ; 9 uses
  %i.sf = load i8, ptr %.sroa.02.05.i.i.i.i.i, align 1, !tbaa !16
  store i8 %i.sf, ptr %.06.i.i.i.i93.i, align 1, !tbaa !16
  %i.sg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 1
  %i.sh = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 1
  %i.si = load i8, ptr %i.sg, align 1, !tbaa !16
  store i8 %i.si, ptr %i.sh, align 1, !tbaa !16
  %i.sj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 2
  %i.sk = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 2
  %i.sl = load i8, ptr %i.sj, align 1, !tbaa !16
  store i8 %i.sl, ptr %i.sk, align 1, !tbaa !16
  %i.sm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 3
  %i.sn = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 3
  %i.so = load i8, ptr %i.sm, align 1, !tbaa !16
  store i8 %i.so, ptr %i.sn, align 1, !tbaa !16
  %i.sp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 4
  %i.sq = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 4
  %i.sr = load i8, ptr %i.sp, align 1, !tbaa !16
  store i8 %i.sr, ptr %i.sq, align 1, !tbaa !16
  %i.ss = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 5
  %i.st = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 5
  %i.su = load i8, ptr %i.ss, align 1, !tbaa !16
  store i8 %i.su, ptr %i.st, align 1, !tbaa !16
  %i.sv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 6
  %i.sw = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 6
  %i.sx = load i8, ptr %i.sv, align 1, !tbaa !16
  store i8 %i.sx, ptr %i.sw, align 1, !tbaa !16
  %i.sy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 7
  %i.sz = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 7
  %i.ta = load i8, ptr %i.sy, align 1, !tbaa !16
  store i8 %i.ta, ptr %i.sz, align 1, !tbaa !16
  %i.tb = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i.i.i.i, i64 8 ; 2 uses
  %i.tc = getelementptr inbounds nuw i8, ptr %.06.i.i.i.i93.i, i64 8
  %i.td = icmp eq ptr %i.tb, %.sroa.9.0.lcssa.i.i
  br i1 %i.td, label %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i92.i, !llvm.loop !212

_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i92.i.prol.loopexit, %.lr.ph.i.i.i.i92.i, %vec.epilog.middle.block, %middle.block
  %.pre17.i.i.i.i = load ptr, ptr %27, align 8, !tbaa !11, !alias.scope !203, !noalias !172
  br label %bb.eq

.lr.ph.i.i:                                       ; preds = %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i
  %.076.i.i = phi i32 [ %.1.i.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ 0, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i ] ; 3 uses
  %.01375.i.i = phi i32 [ %.2.i.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ 0, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i ] ; 5 uses
  %.sroa.045.074.i.i = phi ptr [ %.sroa.045.2.i.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ null, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i ] ; 11 uses
  %.sroa.9.073.i.i = phi ptr [ %.sroa.9.2.i.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ null, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i ] ; 9 uses
  %.sroa.14.072.i.i = phi ptr [ %.sroa.14.2.i.i, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ null, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i ] ; 6 uses
  %.sroa.042.071.i.i = phi ptr [ %i.us, %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i ], [ %i.qx, %_ZNK5folly7dynamic8asStringB5cxx11Ev.exit91.i ] ; 2 uses
  %i.te = load i8, ptr %.sroa.042.071.i.i, align 1, !tbaa !16, !noalias !203 ; 4 uses
  %i.tf = icmp eq i8 %i.te, 61
  br i1 %i.tf, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i, label %bb.ec

bb.ec:                                            ; preds = %.lr.ph.i.i
  %i.tg = zext i8 %i.te to i32
  %i.th = call i32 @isspace(i32 noundef %i.tg) #29, !noalias !203
  %.not.i.i = icmp eq i32 %i.th, 0
  br i1 %.not.i.i, label %bb.ed, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

bb.ed:                                            ; preds = %bb.ec
  %i.ti = zext i8 %i.te to i64
  %i.tj = getelementptr inbounds nuw [4 x i8], ptr @_ZN8facebook5velox9functions9prestosql12_GLOBAL__N_19base32MapE, i64 %i.ti
  %i.tk = load i32, ptr %i.tj, align 4, !tbaa !3, !noalias !206 ; 2 uses
  %.not23.i.i = icmp eq i32 %i.tk, -1
  br i1 %.not23.i.i, label %bb.ee, label %bb.ej, !prof !15

bb.ee:                                            ; preds = %bb.ed
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25, !noalias !206
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25, !noalias !213
  store i32 -1, ptr %7, align 16, !tbaa !16, !alias.scope !216, !noalias !213
  %i.tl = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i32 -1, ptr %i.tl, align 16, !tbaa !16, !alias.scope !216, !noalias !213
  %i.tm = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.tn = load ptr, ptr %28, align 8, !tbaa !11, !noalias !213
  %i.to = load i64, ptr %i.nu, align 8, !tbaa !14, !noalias !213
  store ptr %i.tn, ptr %i.tm, align 16, !tbaa !16, !noalias !213
  %i.tp = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %i.to, ptr %i.tp, align 8, !tbaa !16, !noalias !213
  %i.tq = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i8 %i.te, ptr %i.tq, align 16, !tbaa !16, !noalias !213
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %8, ptr nonnull @.str.52, i64 66, i64 36113, ptr nonnull %7)
          to label %bb.ef unwind label %bb.eh, !noalias !203

bb.ef:                                            ; preds = %bb.ee
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25, !noalias !213
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions9prestosql12_GLOBAL__N_112base32DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE18veloxCheckFailArgs, ptr noundef nonnull align 8 dereferenceable(32) %8, ptr nonnull @.str.52) #26
          to label %bb.eg unwind label %bb.ei, !noalias !203

bb.eg:                                            ; preds = %bb.ef
  unreachable

bb.eh:                                            ; preds = %bb.ee
  %i.tr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

bb.ei:                                            ; preds = %bb.ef
  %i.ts = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.tt = load ptr, ptr %8, align 8, !tbaa !11, !noalias !206 ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %i.tv = icmp eq ptr %i.tt, %i.tu
  br i1 %i.tv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.ei
  %i.tw = load i64, ptr %i.tu, align 8, !tbaa !16, !noalias !206
  %i.tx = add i64 %i.tw, 1
  call void @_ZdlPvm(ptr noundef %i.tt, i64 noundef %i.tx) #28, !noalias !203
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.ei, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.eh
  %.pn.i.i = phi { ptr, i32 } [ %i.ts, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.tr, %bb.eh ], [ %i.ts, %bb.ei ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25, !noalias !206
  br label %bb.es

bb.ej:                                            ; preds = %bb.ed
  %i.ty = shl i32 %.076.i.i, 5
  %i.tz = or i32 %i.tk, %i.ty                     ; 4 uses
  %i.ua = add nuw nsw i32 %.01375.i.i, 5
  %i.ub = icmp sgt i32 %.01375.i.i, 2
  br i1 %i.ub, label %bb.ek, label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

bb.ek:                                            ; preds = %bb.ej
  %i.uc = add nsw i32 %.01375.i.i, -3             ; 3 uses
  %i.ud = ashr i32 %i.tz, %i.uc
  %i.ue = trunc i32 %i.ud to i8                   ; 2 uses
  %.not.i.i.i95.i = icmp eq ptr %.sroa.9.073.i.i, %.sroa.14.072.i.i
  br i1 %.not.i.i.i95.i, label %bb.em, label %bb.el

bb.el:                                            ; preds = %bb.ek
  store i8 %i.ue, ptr %.sroa.9.073.i.i, align 1, !tbaa !16, !noalias !203
  %i.uf = getelementptr inbounds nuw i8, ptr %.sroa.9.073.i.i, i64 1
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

bb.em:                                            ; preds = %bb.ek
  %i.ug = ptrtoint ptr %.sroa.9.073.i.i to i64
  %i.uh = ptrtoint ptr %.sroa.045.074.i.i to i64
  %i.ui = sub i64 %i.ug, %i.uh                    ; 8 uses
  %i.uj = icmp eq i64 %i.ui, 9223372036854775807
  br i1 %i.uj, label %bb.en, label %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i

bb.en:                                            ; preds = %bb.em
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc30.i.i unwind label %.loopexit.split-lp.i.i, !noalias !203

.noexc30.i.i:                                     ; preds = %bb.en
  unreachable

_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i: ; preds = %bb.em
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ui, i64 1)
  %i.uk = add i64 %.sroa.speculated.i.i.i.i.i.i, %i.ui ; 2 uses
  %i.ul = icmp ult i64 %i.uk, %i.ui
  %i.um = call i64 @llvm.umin.i64(i64 %i.uk, i64 9223372036854775807)
  %i.un = select i1 %i.ul, i64 9223372036854775807, i64 %i.um ; 3 uses
  %.not.i.i.i.i.i.i = icmp ne i64 %i.un, 0
  call void @llvm.assume(i1 %.not.i.i.i.i.i.i)
  %64 = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.un) #27
          to label %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i unwind label %.loopexit.i.i, !noalias !203 ; 4 uses

_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i: ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %i.uo = getelementptr inbounds nuw i8, ptr %64, i64 %i.ui ; 2 uses
  store i8 %i.ue, ptr %i.uo, align 1, !tbaa !16, !noalias !203
  %i.up = icmp sgt i64 %i.ui, 0
  br i1 %i.up, label %bb.eo, label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

bb.eo:                                            ; preds = %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 1 %64, ptr align 1 %.sroa.045.074.i.i, i64 %i.ui, i1 false), !noalias !203
  br label %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i

_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i: ; preds = %bb.eo, %_ZNSt12_Vector_baseIhSaIhEE11_M_allocateEm.exit.i.i.i.i.i
  %i.uq = getelementptr inbounds nuw i8, ptr %i.uo, i64 1
  %.not.i17.i.i.i.i.i = icmp eq ptr %.sroa.045.074.i.i, null
  br i1 %.not.i17.i.i.i.i.i, label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, label %bb.ep

bb.ep:                                            ; preds = %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.074.i.i, i64 noundef %i.ui) #28, !noalias !203
  br label %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i

_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i: ; preds = %bb.ep, %_ZNSt6vectorIhSaIhEE11_S_relocateEPhS2_S2_RS0_.exit16.i.i.i.i.i
  %i.ur = getelementptr inbounds nuw i8, ptr %64, i64 %i.un
  br label %_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i

.loopexit.i.i:                                    ; preds = %_ZNKSt6vectorIhSaIhEE12_M_check_lenEmPKc.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit.split-lp.i.i:                           ; preds = %bb.en
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

_ZNSt6vectorIhSaIhEE9push_backEOh.exit.i.i:       ; preds = %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i, %bb.el, %bb.ej, %bb.ec, %.lr.ph.i.i
  %.sroa.14.2.i.i = phi ptr [ %.sroa.14.072.i.i, %.lr.ph.i.i ], [ %.sroa.14.072.i.i, %bb.ec ], [ %.sroa.14.072.i.i, %bb.ej ], [ %i.ur, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.14.072.i.i, %bb.el ] ; 2 uses
  %.sroa.9.2.i.i = phi ptr [ %.sroa.9.073.i.i, %.lr.ph.i.i ], [ %.sroa.9.073.i.i, %bb.ec ], [ %.sroa.9.073.i.i, %bb.ej ], [ %i.uq, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %i.uf, %bb.el ] ; 2 uses
  %.sroa.045.2.i.i = phi ptr [ %.sroa.045.074.i.i, %.lr.ph.i.i ], [ %.sroa.045.074.i.i, %bb.ec ], [ %.sroa.045.074.i.i, %bb.ej ], [ %64, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %.sroa.045.074.i.i, %bb.el ] ; 2 uses
  %.2.i.i = phi i32 [ %.01375.i.i, %.lr.ph.i.i ], [ %.01375.i.i, %bb.ec ], [ %i.ua, %bb.ej ], [ %i.uc, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %i.uc, %bb.el ]
  %.1.i.i = phi i32 [ %.076.i.i, %.lr.ph.i.i ], [ %.076.i.i, %bb.ec ], [ %i.tz, %bb.ej ], [ %i.tz, %_ZNSt6vectorIhSaIhEE17_M_realloc_insertIJhEEEvN9__gnu_cxx17__normal_iteratorIPhS1_EEDpOT_.exit.i.i.i.i ], [ %i.tz, %bb.el ]
  %i.us = getelementptr inbounds nuw i8, ptr %.sroa.042.071.i.i, i64 1 ; 2 uses
  %i.ut = icmp eq ptr %i.us, %i.qz
  br i1 %i.ut, label %._crit_edge.i.i108, label %.lr.ph.i.i

bb.eq:                                            ; preds = %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i, %._crit_edge.i.i.i.i
  %i.uu = phi ptr [ %.pre17.i.i.i.i, %_ZZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIN9__gnu_cxx17__normal_iteratorIPhSt6vectorIhSaIhEEEEEEvT_SD_St20forward_iterator_tagEN6_GuardD2Ev.exit.loopexit.i.i.i.i ], [ %i.rj, %._crit_edge.i.i.i.i ]
  store i64 %i.rd, ptr %i.nw, align 8, !tbaa !14, !alias.scope !203, !noalias !172
  %i.uv = getelementptr inbounds nuw i8, ptr %i.uu, i64 %i.rd
  store i8 0, ptr %i.uv, align 1, !tbaa !16
  %.not.i.i.i.i94.i = icmp eq ptr %.sroa.045.0.lcssa.i.i, null
  br i1 %.not.i.i.i.i94.i, label %_ZN8facebook5velox9functions9prestosql12_GLOBAL__N_112base32DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i, label %bb.er

bb.er:                                            ; preds = %bb.eq
  %i.uw = ptrtoint ptr %.sroa.14.0.lcssa.i.i to i64
  %i.ux = sub i64 %i.uw, %i.rc
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.0.lcssa.i.i, i64 noundef %i.ux) #28
  br label %_ZN8facebook5velox9functions9prestosql12_GLOBAL__N_112base32DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i

.loopexit.i:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

.loopexit.split-lp.i:                             ; preds = %.noexc5.i.i.i, %.noexc.i.i.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.es

bb.es:                                            ; preds = %.loopexit.split-lp.i, %.loopexit.i, %.loopexit.split-lp.i.i, %.loopexit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i
  %.sroa.14.064.i.i = phi ptr [ %.sroa.9.073.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.14.072.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.9.073.i.i, %.loopexit.i.i ], [ %.sroa.14.0.lcssa.i.i, %.loopexit.i ], [ %.sroa.14.0.lcssa.i.i, %.loopexit.split-lp.i ]
  %.sroa.045.056.i.i = phi ptr [ %.sroa.045.074.i.i, %.loopexit.split-lp.i.i ], [ %.sroa.045.074.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.sroa.045.074.i.i, %.loopexit.i.i ], [ %.sroa.045.0.lcssa.i.i, %.loopexit.i ], [ %.sroa.045.0.lcssa.i.i, %.loopexit.split-lp.i ] ; 3 uses
  %.pn.pn.pn.i.i = phi { ptr, i32 } [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ], [ %.pn.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ] ; 2 uses
  %.not.i.i.i32.i.i = icmp eq ptr %.sroa.045.056.i.i, null
  br i1 %.not.i.i.i32.i.i, label %.body96.i, label %bb.et

bb.et:                                            ; preds = %bb.es
  %i.uy = ptrtoint ptr %.sroa.14.064.i.i to i64
  %i.uz = ptrtoint ptr %.sroa.045.056.i.i to i64
  %i.va = sub i64 %i.uy, %i.uz
  call void @_ZdlPvm(ptr noundef nonnull %.sroa.045.056.i.i, i64 noundef %i.va) #28
  br label %.body96.i

_ZN8facebook5velox9functions9prestosql12_GLOBAL__N_112base32DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i: ; preds = %bb.er, %bb.eq
  %i.vb = load ptr, ptr %25, align 8, !tbaa !11, !noalias !172 ; 6 uses
  %i.vc = icmp eq ptr %i.vb, %i.nq
  %i.vd = load ptr, ptr %27, align 8, !tbaa !11, !noalias !172 ; 5 uses
  %i.ve = icmp eq ptr %i.vd, %i.nv                ; 2 uses
  br i1 %i.vc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119: ; preds = %_ZN8facebook5velox9functions9prestosql12_GLOBAL__N_112base32DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  br i1 %i.ve, label %bb.eu, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109: ; preds = %_ZN8facebook5velox9functions9prestosql12_GLOBAL__N_112base32DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit.i
  br i1 %i.ve, label %bb.eu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.eu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  %i.vf = load i64, ptr %i.nw, align 8, !tbaa !14, !noalias !172 ; 3 uses
  %i.vg = icmp ult i64 %i.vf, 16
  call void @llvm.assume(i1 %i.vg)
  switch i64 %i.vf, label %bb.ew [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.ev
  ]

bb.ev:                                            ; preds = %bb.eu
  %i.vh = load i8, ptr %i.vd, align 1, !tbaa !16
  store i8 %i.vh, ptr %i.vb, align 1, !tbaa !16
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.ew:                                            ; preds = %bb.eu
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.vb, ptr align 1 %i.vd, i64 %i.vf, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.ew, %bb.ev, %bb.eu
  %i.vi = load i64, ptr %i.nw, align 8, !tbaa !14, !noalias !172 ; 2 uses
  store i64 %i.vi, ptr %i.nr, align 8, !tbaa !14, !noalias !172
  %i.vj = load ptr, ptr %25, align 8, !tbaa !11, !noalias !172
  %i.vk = getelementptr inbounds nuw i8, ptr %i.vj, i64 %i.vi
  store i8 0, ptr %i.vk, align 1, !tbaa !16
  %.pre.i.i = load ptr, ptr %27, align 8, !tbaa !11, !noalias !172
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i119
  store ptr %i.vd, ptr %25, align 8, !tbaa !11, !noalias !172
  %i.vl = load <2 x i64>, ptr %i.nw, align 8, !tbaa !16, !noalias !172
  store <2 x i64> %i.vl, ptr %i.nr, align 8, !tbaa !16, !noalias !172
  br label %bb.ey

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i109
  %i.vm = load i64, ptr %i.nq, align 8, !tbaa !16, !noalias !172
  store ptr %i.vd, ptr %25, align 8, !tbaa !11, !noalias !172
  %i.vn = load <2 x i64>, ptr %i.nw, align 8, !tbaa !16, !noalias !172
  store <2 x i64> %i.vn, ptr %i.nr, align 8, !tbaa !16, !noalias !172
  %.not.i98.i = icmp eq ptr %i.vb, null
  br i1 %.not.i98.i, label %bb.ey, label %bb.ex

bb.ex:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.vb, ptr %27, align 8, !tbaa !11, !noalias !172
  store i64 %i.vm, ptr %i.nv, align 8, !tbaa !16, !noalias !172
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.ey:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.nv, ptr %27, align 8, !tbaa !11, !noalias !172
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.ey, %bb.ex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.vo = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.vb, %bb.ex ], [ %i.nv, %bb.ey ]
  store i64 0, ptr %i.nw, align 8, !tbaa !14, !noalias !172
  store i8 0, ptr %i.vo, align 1, !tbaa !16
  %i.vp = load ptr, ptr %27, align 8, !tbaa !11, !noalias !172 ; 2 uses
  %i.vq = icmp eq ptr %i.vp, %i.nv
  br i1 %i.vq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.vr = load i64, ptr %i.nv, align 8, !tbaa !16, !noalias !172
  %i.vs = add i64 %i.vr, 1
  call void @_ZdlPvm(ptr noundef %i.vp, i64 noundef %i.vs) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i99.i
  %i.vt = load ptr, ptr %28, align 8, !tbaa !11, !noalias !172 ; 2 uses
  %i.vu = icmp eq ptr %i.vt, %i.nx
  br i1 %i.vu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i
  %i.vv = load i64, ptr %i.nx, align 8, !tbaa !16, !noalias !172
  %i.vw = add i64 %i.vv, 1
  call void @_ZdlPvm(ptr noundef %i.vt, i64 noundef %i.vw) #28
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i102.i
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25, !noalias !172
  store ptr %19, ptr %6, align 8, !tbaa !219, !noalias !172
  %i.vx = invoke { ptr, i8 } @_ZNSt10_HashtableINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_ENSt8__detail9_IdentityESt8equal_toIS5_ESt4hashIS5_ENS7_18_Mod_range_hashingENS7_20_Default_ranged_hashENS7_20_Prime_rehash_policyENS7_17_Hashtable_traitsILb1ELb1ELb1EEEE16_M_insert_uniqueIRKS5_SL_NS7_10_AllocNodeISaINS7_10_Hash_nodeIS5_Lb1EEEEEEEESt4pairINS7_14_Node_iteratorIS5_Lb1ELb1EEEbEOT_OT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(56) %19, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(32) %25, ptr noundef nonnull align 8 dereferenceable(8) %6)
          to label %bb.ez unwind label %bb.fe

bb.ez:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25, !noalias !172
  %.fca.1.extract.i110 = extractvalue { ptr, i8 } %i.vx, 1
  %i.vy = trunc i8 %.fca.1.extract.i110 to i1
  br i1 %i.vy, label %bb.fh, label %bb.fa, !prof !114

bb.fa:                                            ; preds = %bb.ez
  call void @llvm.lifetime.start.p0(ptr nonnull %29) #25, !noalias !172
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25, !noalias !221
  %i.vz = load ptr, ptr %3, align 8, !tbaa !11, !noalias !221
  %i.wa = load i64, ptr %i.mh, align 8, !tbaa !14, !noalias !221
  store ptr %i.vz, ptr %5, align 16, !tbaa !16, !noalias !221
  %i.wb = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.wa, ptr %i.wb, align 8, !tbaa !16, !noalias !221
  %i.wc = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.wd = load ptr, ptr %25, align 8, !tbaa !11, !noalias !221
  %i.we = load i64, ptr %i.nr, align 8, !tbaa !14, !noalias !221
  store ptr %i.wd, ptr %i.wc, align 16, !tbaa !16, !noalias !221
  %i.wf = getelementptr inbounds nuw i8, ptr %5, i64 24
  store i64 %i.we, ptr %i.wf, align 8, !tbaa !16, !noalias !221
  invoke void @_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %29, ptr nonnull @.str.41, i64 50, i64 221, ptr nonnull %5)
          to label %bb.fb unwind label %bb.ff

bb.fb:                                            ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25, !noalias !221
  invoke void @_ZN8facebook5velox6detail14veloxCheckFailINS0_17VeloxRuntimeErrorERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEvRKNS1_18VeloxCheckFailArgsET0_NS0_24CompileTimeStringLiteralE(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN8facebook5velox9functions9prestosql12_GLOBAL__N_118parseMapFromStringINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEESt13unordered_mapISA_T_St4hashISA_ESt8equal_toISA_ESaISt4pairIKSA_SC_EEERSI_E18veloxCheckFailArgs_3, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr nonnull @.str.41) #26
          to label %bb.fc unwind label %bb.fg

bb.fc:                                            ; preds = %bb.fb
  unreachable

bb.fd:                                            ; preds = %bb.dz
  %i.wg = landingpad { ptr, i32 }
          cleanup
  br label %.body87.i

.body96.i:                                        ; preds = %bb.et, %bb.es
  %i.wh = load ptr, ptr %28, align 8, !tbaa !11, !noalias !172 ; 2 uses
  %i.wi = icmp eq ptr %i.wh, %i.nx
  br i1 %i.wi, label %.body87.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i: ; preds = %.body96.i
  %i.wj = load i64, ptr %i.nx, align 8, !tbaa !16, !noalias !172
  %i.wk = add i64 %i.wj, 1
  call void @_ZdlPvm(ptr noundef %i.wh, i64 noundef %i.wk) #28
  br label %.body87.i

.body87.i:                                        ; preds = %.body96.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i, %bb.fd, %bb.dy
  %.pn32.i = phi { ptr, i32 } [ %i.qw, %bb.dy ], [ %i.wg, %bb.fd ], [ %.pn.pn.pn.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i108.i ], [ %.pn.pn.pn.i.i, %.body96.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #25, !noalias !172
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #25, !noalias !172
  br label %.body77.i

bb.fe:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit104.i
  %i.wl = landingpad { ptr, i32 }
          cleanup
  br label %.body77.i

bb.ff:                                            ; preds = %bb.fa
  %i.wm = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_ZNSt6vectorIN8facebook5velox13TypeParameterESaIS2_EE17_M_realloc_insertIJS2_EEEvN9__gnu_cxx17__normal_iteratorIPS2_S4_EEDpOT_:bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !20     ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = icmp eq i64 %i.f, 9223372036854775680
  br i1 %i.g, label %bb.b, label %_ZNKSt6vectorIN8facebook5velox13TypeParameterESaIS2_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
  unreachable

_ZNKSt6vectorIN8facebook5velox13TypeParameterESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.h = sdiv exact i64 %i.f, 272                 ; 3 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1)
  %i.i = add nsw i64 %.sroa.speculated.i, %i.h    ; 2 uses
  %i.j = icmp ult i64 %i.i, %i.h
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.i, i64 33909456017848440)
  %i.l = select i1 %i.j, i64 33909456017848440, i64 %i.k ; 3 uses
  %i.m = ptrtoint ptr %1 to i64
  %i.n = sub i64 %i.m, %i.e
  %.not.i = icmp ne i64 %i.l, 0
  tail call void @llvm.assume(i1 %.not.i)
  %i.o = mul nuw nsw i64 %i.l, 272                ; 2 uses
  %i.p = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.o) #27 ; 10 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.n ; 2 uses
  invoke void @_ZN8facebook5velox13TypeParameterC2EOS1_(ptr noundef nonnull align 8 dereferenceable(272) %i.q, ptr noundef nonnull align 8 dereferenceable(272) %2)
          to label %_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit unwind label %.thread

_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit: ; preds = %_ZNKSt6vectorIN8facebook5velox13TypeParameterESaIS2_EE12_M_check_lenEmPKc.exit
  %.not14.i.i.i.i.i = icmp eq ptr %i.c, %1
  br i1 %.not14.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i
  %.016.i.i.i.i.i = phi ptr [ %i.s, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.p, %_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 4 uses
  %.01215.i.i.i.i.i = phi ptr [ %i.r, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ], [ %i.c, %_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ] ; 2 uses
  invoke void @_ZN8facebook5velox13TypeParameterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(272) %.016.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(272) %.01215.i.i.i.i.i)
          to label %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i unwind label %bb.c

_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i, i64 272 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i.i, i64 272 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.r, %1
  br i1 %.not.i.i.i.i.i, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !238

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.t = landingpad { ptr, i32 }
          catch ptr null
  %i.u = extractvalue { ptr, i32 } %i.t, 0
  %i.v = tail call ptr @__cxa_begin_catch(ptr %i.u) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.p, %.016.i.i.i.i.i
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %i.p, %bb.c ] ; 2 uses
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %.05.i.i.i.i.i.i.i) #25
  %i.w = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 272 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.w, %.016.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !24

_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  invoke void @__cxa_rethrow() #26
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterES2_EvT_S4_RSaIT0_E.exit.thread unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = landingpad { ptr, i32 }
          catch ptr null
  %i.z = extractvalue { ptr, i32 } %i.y, 0
  tail call void @__clang_call_terminate(ptr %i.z) #30
  unreachable

bb.f:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit: ; preds = %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i, %_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.p, %_ZNSt16allocator_traitsISaIN8facebook5velox13TypeParameterEEE9constructIS2_JS2_EEEvRS3_PT_DpOT0_.exit ], [ %i.s, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i ] ; 4 uses
  %.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 272 ; 3 uses
  %.not14.i.i.i.i.i28 = icmp eq ptr %1, %i.b
  br i1 %.not14.i.i.i.i.i28, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, label %.lr.ph.i.i.i.i.i29

.lr.ph.i.i.i.i.i29:                               ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.016.i.i.i.i.i30.idx = phi i64 [ %.016.i.i.i.i.i30.add, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ 272, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 3 uses
  %.01215.i.i.i.i.i31 = phi ptr [ %i.aa, %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 ], [ %1, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit ] ; 2 uses
  %.016.i.i.i.i.i30.ptr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.idx ; 2 uses
  invoke void @_ZN8facebook5velox13TypeParameterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(272) %.016.i.i.i.i.i30.ptr, ptr noundef nonnull align 8 dereferenceable(272) %.01215.i.i.i.i.i31)
          to label %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37 unwind label %bb.g

_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37: ; preds = %.lr.ph.i.i.i.i.i29
  %i.aa = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i.i31, i64 272 ; 2 uses
  %.016.i.i.i.i.i30.add = add nuw nsw i64 %.016.i.i.i.i.i30.idx, 272 ; 2 uses
  %.not.i.i.i.i.i38 = icmp eq ptr %i.aa, %i.b
  br i1 %.not.i.i.i.i.i38, label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, label %.lr.ph.i.i.i.i.i29, !llvm.loop !238

bb.g:                                             ; preds = %.lr.ph.i.i.i.i.i29
  %i.ab = landingpad { ptr, i32 }
          catch ptr null
  %i.ac = extractvalue { ptr, i32 } %i.ab, 0
  %i.ad = tail call ptr @__cxa_begin_catch(ptr %i.ac) #25 ; 0 uses
  %.not4.i.i.i.i.i.i.i32 = icmp eq i64 %.016.i.i.i.i.i30.idx, 272
  br i1 %.not4.i.i.i.i.i.i.i32, label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33

.lr.ph.i.i.i.i.i.i.i33:                           ; preds = %bb.g, %.lr.ph.i.i.i.i.i.i.i33
  %.05.i.i.i.i.i.i.i34 = phi ptr [ %i.ae, %.lr.ph.i.i.i.i.i.i.i33 ], [ %.ptr, %bb.g ] ; 2 uses
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %.05.i.i.i.i.i.i.i34) #25
  %i.ae = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i34, i64 272 ; 2 uses
  %.not.i.i.i.i.i.i.i35 = icmp eq ptr %i.ae, %.016.i.i.i.i.i30.ptr
  br i1 %.not.i.i.i.i.i.i.i35, label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i36, label %.lr.ph.i.i.i.i.i.i.i33, !llvm.loop !24

_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i36: ; preds = %.lr.ph.i.i.i.i.i.i.i33, %bb.g
  invoke void @__cxa_rethrow() #26
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i36
  %i.af = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %bb.l unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #30
  unreachable

bb.j:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit.i.i.i.i.i36
  unreachable

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit: ; preds = %_ZSt10_ConstructIN8facebook5velox13TypeParameterEJRKS2_EEvPT_DpOT0_.exit.i.i.i.i.i37
  %.ptr60.le = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i, i64 %.016.i.i.i.i.i30.add
  br label %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43

_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43: ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit
  %.0.lcssa.i.i.i.i.i39 = phi ptr [ %.ptr, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit ], [ %.ptr60.le, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43.loopexit ]
  %.not4.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not4.i.i, label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43, %.lr.ph.i.i
  %.05.i.i = phi ptr [ %i.ai, %.lr.ph.i.i ], [ %i.c, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43 ] ; 2 uses
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %.05.i.i) #25
  %i.ai = getelementptr inbounds nuw i8, ptr %.05.i.i, i64 272 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ai, %i.b
  br i1 %.not.i.i, label %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit, label %.lr.ph.i.i, !llvm.loop !24

_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit: ; preds = %.lr.ph.i.i, %_ZSt34__uninitialized_move_if_noexcept_aIPN8facebook5velox13TypeParameterES3_SaIS2_EET0_T_S6_S5_RT1_.exit43
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i44 = icmp eq ptr %i.c, null
  br i1 %.not.i44, label %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit, label %bb.k

bb.k:                                             ; preds = %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !25
  %i.al = ptrtoint ptr %i.ak to i64
  %i.am = sub i64 %i.al, %i.e
  tail call void @_ZdlPvm(ptr noundef nonnull %i.c, i64 noundef %i.am) #28
  br label %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit

_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit: ; preds = %_ZSt8_DestroyIPN8facebook5velox13TypeParameterEEvT_S4_.exit, %bb.k
  store ptr %i.p, ptr %0, align 8, !tbaa !20
  store ptr %.0.lcssa.i.i.i.i.i39, ptr %i.a, align 8, !tbaa !23
  %i.an = getelementptr inbounds nuw [272 x i8], ptr %i.p, i64 %i.l
  store ptr %i.an, ptr %i.aj, align 8, !tbaa !25
  ret void

.thread:                                          ; preds = %_ZNKSt6vectorIN8facebook5velox13TypeParameterESaIS2_EE12_M_check_lenEmPKc.exit
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  %i.aq = tail call ptr @__cxa_begin_catch(ptr %i.ap) #25 ; 0 uses
  br label %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51

_ZSt8_DestroyIPN8facebook5velox13TypeParameterES2_EvT_S4_RSaIT0_E.exit.thread: ; preds = %bb.d
  %i.ar = extractvalue { ptr, i32 } %i.x, 0
  %i.as = tail call ptr @__cxa_begin_catch(ptr %i.ar) #25 ; 0 uses
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %i.q) #25
  br label %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51

bb.l:                                             ; preds = %bb.h
  %i.at = extractvalue { ptr, i32 } %i.af, 0
  %i.au = tail call ptr @__cxa_begin_catch(ptr %i.at) #25 ; 0 uses
  %.not4.i.i45 = icmp eq ptr %i.p, %.ptr
  br i1 %.not4.i.i45, label %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51, label %.lr.ph.i.i46

.lr.ph.i.i46:                                     ; preds = %bb.l, %.lr.ph.i.i46
  %.05.i.i47 = phi ptr [ %i.av, %.lr.ph.i.i46 ], [ %i.p, %bb.l ] ; 3 uses
  tail call void @_ZN8facebook5velox13TypeParameterD2Ev(ptr noundef nonnull align 8 dead_on_return(272) dereferenceable(272) %.05.i.i47) #25
  %i.av = getelementptr inbounds nuw i8, ptr %.05.i.i47, i64 272
  %.not.i.i48 = icmp eq ptr %.05.i.i47, %.0.lcssa.i.i.i.i.i
  br i1 %.not.i.i48, label %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51, label %.lr.ph.i.i46, !llvm.loop !24

bb.m:                                             ; preds = %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.n unwind label %bb.o

_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51: ; preds = %.lr.ph.i.i46, %.thread, %bb.l, %_ZSt8_DestroyIPN8facebook5velox13TypeParameterES2_EvT_S4_RSaIT0_E.exit.thread
  tail call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.o) #28
  invoke void @__cxa_rethrow() #26
          to label %bb.p unwind label %bb.m

bb.n:                                             ; preds = %bb.m
  resume { ptr, i32 } %i.aw

bb.o:                                             ; preds = %bb.m
  %i.ax = landingpad { ptr, i32 }
          catch ptr null
  %i.ay = extractvalue { ptr, i32 } %i.ax, 0
  tail call void @__clang_call_terminate(ptr %i.ay) #30
  unreachable

bb.p:                                             ; preds = %_ZNSt12_Vector_baseIN8facebook5velox13TypeParameterESaIS2_EE13_M_deallocateEPS2_m.exit51
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN8facebook5velox13TypeParameterC2EOS1_(ptr noundef nonnull align 8 dereferenceable(272) %0, ptr noundef nonnull align 8 dereferenceable(272) %1) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !44
  store i32 %i.a, ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !29   ; 2 uses
  %i.f = load <2 x ptr>, ptr %i.c, align 8, !tbaa !43
  store <2 x ptr> %i.f, ptr %i.b, align 8, !tbaa !43
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 3 uses
  %i.h = load i8, ptr @__libc_single_threaded, align 1, !tbaa !16
  %.not.i.i.i.i = icmp eq i8 %i.h, 0
  br i1 %.not.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load i32, ptr %i.g, align 4, !tbaa !3
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.g, align 4, !tbaa !3
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

bb.d:                                             ; preds = %bb.b
  %i.k = atomicrmw volatile add ptr %i.g, i32 1 acq_rel, align 4 ; 0 uses
  br label %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit

_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit: ; preds = %bb.a, %bb.c, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 4 uses
  store i8 0, ptr %i.p, align 8, !tbaa !71
  %i.q = load i8, ptr %i.o, align 8, !tbaa !71, !range !233, !noundef !234
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %_ZNSt22_Optional_payload_baseIN8facebook5velox17LongEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox17LongEnumParameterEEC2ERKS3_.exit

_ZNSt22_Optional_payload_baseIN8facebook5velox17LongEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  invoke void @_ZN8facebook5velox17LongEnumParameterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull align 8 dereferenceable(96) %i.s)
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %_ZNSt22_Optional_payload_baseIN8facebook5velox17LongEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i
  store i8 1, ptr %i.p, align 8, !tbaa !71
  br label %_ZNSt8optionalIN8facebook5velox17LongEnumParameterEEC2ERKS3_.exit

_ZNSt8optionalIN8facebook5velox17LongEnumParameterEEC2ERKS3_.exit: ; preds = %.noexc, %_ZNSt10shared_ptrIKN8facebook5velox4TypeEEC2ERKS4_.exit
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  store i8 0, ptr %i.v, align 8, !tbaa !72
  %i.w = load i8, ptr %i.u, align 8, !tbaa !72, !range !233, !noundef !234
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %_ZNSt22_Optional_payload_baseIN8facebook5velox20VarcharEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i, label %_ZNSt8optionalIN8facebook5velox20VarcharEnumParameterEEC2ERKS3_.exit

_ZNSt22_Optional_payload_baseIN8facebook5velox20VarcharEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %_ZNSt8optionalIN8facebook5velox17LongEnumParameterEEC2ERKS3_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 136
  invoke void @_ZN8facebook5velox20VarcharEnumParameterC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(96) %i.t, ptr noundef nonnull align 8 dereferenceable(96) %i.y)
          to label %.noexc12 unwind label %bb.k

.noexc12:                                         ; preds = %_ZNSt22_Optional_payload_baseIN8facebook5velox20VarcharEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i
  store i8 1, ptr %i.v, align 8, !tbaa !72
  br label %_ZNSt8optionalIN8facebook5velox20VarcharEnumParameterEEC2ERKS3_.exit

_ZNSt8optionalIN8facebook5velox20VarcharEnumParameterEEC2ERKS3_.exit: ; preds = %.noexc12, %_ZNSt8optionalIN8facebook5velox17LongEnumParameterEEC2ERKS3_.exit
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  store i8 0, ptr %i.ab, align 8, !tbaa !73
  %i.ac = load i8, ptr %i.aa, align 8, !tbaa !73, !range !233, !noundef !234
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.e, label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

bb.e:                                             ; preds = %_ZNSt8optionalIN8facebook5velox20VarcharEnumParameterEEC2ERKS3_.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  store ptr %i.af, ptr %i.z, align 8, !tbaa !7
  %i.ag = load ptr, ptr %i.ae, align 8, !tbaa !11 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !14 ; 8 uses
  %i.aj = icmp ugt i64 %i.ai, 15
  br i1 %i.aj, label %bb.f, label %._crit_edge.i.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.ak = icmp slt i64 %i.ai, 0
  br i1 %i.ak, label %.noexc.i.i.i.i.i.i.i.i, label %bb.g

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %bb.f
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.21) #26
          to label %.noexc13 unwind label %bb.l

.noexc13:                                         ; preds = %.noexc.i.i.i.i.i.i.i.i
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.al = add nuw i64 %i.ai, 1                    ; 2 uses
  %i.am = icmp slt i64 %i.al, 0
  br i1 %i.am, label %.noexc6.i.i.i.i.i.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, !prof !15

.noexc6.i.i.i.i.i.i.i.i:                          ; preds = %bb.g
  invoke void @_ZSt17__throw_bad_allocv() #26
          to label %.noexc14 unwind label %bb.l

.noexc14:                                         ; preds = %.noexc6.i.i.i.i.i.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.an = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.al) #27
          to label %.noexc15 unwind label %bb.l   ; 2 uses

.noexc15:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i
  store ptr %i.an, ptr %i.z, align 8, !tbaa !11
  store i64 %i.ai, ptr %i.af, align 8, !tbaa !16
  br label %._crit_edge.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i:                    ; preds = %.noexc15, %bb.e
  %i.ao = phi ptr [ %i.an, %.noexc15 ], [ %i.af, %bb.e ] ; 3 uses
  switch i64 %i.ai, label %bb.i [
    i64 1, label %bb.h
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i
  ]

bb.h:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.ap = load i8, ptr %i.ag, align 1, !tbaa !16
  store i8 %i.ap, ptr %i.ao, align 1, !tbaa !16
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ao, ptr align 1 %i.ag, i64 %i.ai, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i: ; preds = %bb.i, %bb.h, %._crit_edge.i.i.i.i.i.i.i.i.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ai, ptr %i.aq, align 8, !tbaa !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 %i.ai
  store i8 0, ptr %i.ar, align 1, !tbaa !16
  store i8 1, ptr %i.ab, align 8, !tbaa !73
  br label %_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit

_ZNSt8optionalINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC2ERKS6_.exit: ; preds = %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit.i.i.i.i.i, %_ZNSt8optionalIN8facebook5velox20VarcharEnumParameterEEC2ERKS3_.exit
  ret void

bb.j:                                             ; preds = %_ZNSt22_Optional_payload_baseIN8facebook5velox17LongEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt14_Optional_baseIN8facebook5velox17LongEnumParameterELb0ELb0EED2Ev.exit

bb.k:                                             ; preds = %_ZNSt22_Optional_payload_baseIN8facebook5velox20VarcharEnumParameterEE12_M_constructIJRKS2_EEEvDpOT_.exit.i.i.i.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.l:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i.i.i.i.i.i, %.noexc6.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZNSt14_Optional_baseIN8facebook5velox20VarcharEnumParameterELb0ELb0EED2Ev(ptr noundef nonnull align 8 dereferenceable(96) %i.t) #25
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.au, %bb.l ], [ %i.at, %bb.k ] ; 2 uses
  %i.av = load i8, ptr %i.p, align 8, !tbaa !71, !range !233, !noundef !234
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @_ZNSt22_Optional_payload_baseIN8facebook5velox17LongEnumParameterEE10_M_destroyEv(ptr noundef nonnull align 8 dereferenceable(96) %i.n) #25
  br label %_ZNSt14_Optional_baseIN8facebook5velox17LongEnumParameterELb0ELb0EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  store i8 0, ptr %i.p, align 8, !tbaa !71
  br label %_ZNSt14_Optional_baseIN8facebook5velox17LongEnumParameterELb0ELb0EED2Ev.exit

_ZNSt14_Optional_baseIN8facebook5velox17LongEnumParameterELb0ELb0EED2Ev.exit: ; preds = %bb.o, %bb.n, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.as, %bb.j ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  tail call void @_ZNSt12__shared_ptrIKN8facebook5velox4TypeELN9__gnu_cxx12_Lock_policyE2EED2Ev(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #25
  resume { ptr, i32 } %.pn.pn
}
end_hunk_1
