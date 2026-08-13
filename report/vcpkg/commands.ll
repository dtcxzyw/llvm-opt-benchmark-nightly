inline.NumInlined: 293
inline.NumDeleted: 116
begin_hunk_0_@_ZN5vcpkg19get_zero_args_usageB5cxx11Ev:bb.a

bb.av:                                            ; preds = %bb.au
  %i.bh = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %9) #15 ; 2 uses
  %i.bi = extractvalue { ptr, i64 } %i.bh, 0
  %i.bj = extractvalue { ptr, i64 } %i.bh, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter6headerENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.bi, i64 %i.bj)
          to label %bb.aw unwind label %bb.ce

bb.aw:                                            ; preds = %bb.av
  %i.bk = load ptr, ptr %9, align 8, !tbaa !28    ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %i.bm = icmp eq ptr %i.bk, %i.bl
  br i1 %i.bm, label %_ZN5vcpkg15LocalizedStringD2Ev.exit108, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106: ; preds = %bb.aw
  %i.bn = load i64, ptr %i.bl, align 8, !tbaa !26
  %i.bo = add i64 %i.bn, 1
  call void @_ZdlPvm(ptr noundef %i.bk, i64 noundef %i.bo) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit108

_ZN5vcpkg15LocalizedStringD2Ev.exit108:           ; preds = %bb.aw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i106
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #15
  %.sroa.017.0.copyload = load i64, ptr @_ZN5vcpkg20msgHelpTopicsCommandE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %10, i64 %.sroa.017.0.copyload)
          to label %bb.ax unwind label %bb.cf

bb.ax:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit108
  %i.bp = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %10) #15 ; 2 uses
  %i.bq = extractvalue { ptr, i64 } %i.bp, 0
  %i.br = extractvalue { ptr, i64 } %i.bp, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter6formatENS_10StringViewES1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str, i64 11, ptr %i.bq, i64 %i.br)
          to label %bb.ay unwind label %bb.cg

bb.ay:                                            ; preds = %bb.ax
  %i.bs = load ptr, ptr %10, align 8, !tbaa !28   ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 2 uses
  %i.bu = icmp eq ptr %i.bs, %i.bt
  br i1 %i.bu, label %_ZN5vcpkg15LocalizedStringD2Ev.exit111, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109: ; preds = %bb.ay
  %i.bv = load i64, ptr %i.bt, align 8, !tbaa !26
  %i.bw = add i64 %i.bv, 1
  call void @_ZdlPvm(ptr noundef %i.bs, i64 noundef %i.bw) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit111

_ZN5vcpkg15LocalizedStringD2Ev.exit111:           ; preds = %bb.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i109
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #15
  %.sroa.014.0.copyload = load i64, ptr @_ZN5vcpkg15msgCmdHelpTopicE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %11, i64 %.sroa.014.0.copyload)
          to label %bb.az unwind label %bb.ch

bb.az:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit111
  %i.bx = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %11) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #15
  %.sroa.011.0.copyload = load i64, ptr @_ZN5vcpkg19msgHelpTopicCommandE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %12, i64 %.sroa.011.0.copyload)
          to label %bb.ba unwind label %bb.ci

bb.ba:                                            ; preds = %bb.az
  %i.by = extractvalue { ptr, i64 } %i.bx, 1
  %i.bz = extractvalue { ptr, i64 } %i.bx, 0
  %i.ca = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %12) #15 ; 2 uses
  %i.cb = extractvalue { ptr, i64 } %i.ca, 0
  %i.cc = extractvalue { ptr, i64 } %i.ca, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter6formatENS_10StringViewES1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.bz, i64 %i.by, ptr %i.cb, i64 %i.cc)
          to label %bb.bb unwind label %bb.cj

bb.bb:                                            ; preds = %bb.ba
  %i.cd = load ptr, ptr %12, align 8, !tbaa !28   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.cf = icmp eq ptr %i.cd, %i.ce
  br i1 %i.cf, label %_ZN5vcpkg15LocalizedStringD2Ev.exit114, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112: ; preds = %bb.bb
  %i.cg = load i64, ptr %i.ce, align 8, !tbaa !26
  %i.ch = add i64 %i.cg, 1
  call void @_ZdlPvm(ptr noundef %i.cd, i64 noundef %i.ch) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit114

_ZN5vcpkg15LocalizedStringD2Ev.exit114:           ; preds = %bb.bb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i112
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #15
  %i.ci = load ptr, ptr %11, align 8, !tbaa !28   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 2 uses
  %i.ck = icmp eq ptr %i.ci, %i.cj
  br i1 %i.ck, label %_ZN5vcpkg15LocalizedStringD2Ev.exit117, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit114
  %i.cl = load i64, ptr %i.cj, align 8, !tbaa !26
  %i.cm = add i64 %i.cl, 1
  call void @_ZdlPvm(ptr noundef %i.ci, i64 noundef %i.cm) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit117

_ZN5vcpkg15LocalizedStringD2Ev.exit117:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit114, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i115
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #15
  %.sroa.08.0.copyload = load i64, ptr @_ZN5vcpkg26msgCmdHelpCommandsSynopsisE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %13, i64 %.sroa.08.0.copyload)
          to label %bb.bc unwind label %bb.ck

bb.bc:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit117
  %i.cn = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %13) #15 ; 2 uses
  %i.co = extractvalue { ptr, i64 } %i.cn, 0
  %i.cp = extractvalue { ptr, i64 } %i.cn, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter6formatENS_10StringViewES1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr nonnull @.str.1, i64 13, ptr %i.co, i64 %i.cp)
          to label %bb.bd unwind label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  %i.cq = load ptr, ptr %13, align 8, !tbaa !28   ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 2 uses
  %i.cs = icmp eq ptr %i.cq, %i.cr
  br i1 %i.cs, label %_ZN5vcpkg15LocalizedStringD2Ev.exit120, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118: ; preds = %bb.bd
  %i.ct = load i64, ptr %i.cr, align 8, !tbaa !26
  %i.cu = add i64 %i.ct, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.cu) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit120

_ZN5vcpkg15LocalizedStringD2Ev.exit120:           ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i118
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #15
  %.sroa.05.0.copyload = load i64, ptr @_ZN5vcpkg18msgCmdHelpCommandsE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %14, i64 %.sroa.05.0.copyload)
          to label %bb.be unwind label %bb.cm

bb.be:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit120
  %i.cv = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %14) #15 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #15
  %.sroa.02.0.copyload = load i64, ptr @_ZN5vcpkg25msgCmdHelpCommandSynopsisE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %15, i64 %.sroa.02.0.copyload)
          to label %bb.bf unwind label %bb.cn

bb.bf:                                            ; preds = %bb.be
  %i.cw = extractvalue { ptr, i64 } %i.cv, 1
  %i.cx = extractvalue { ptr, i64 } %i.cv, 0
  %i.cy = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %15) #15 ; 2 uses
  %i.cz = extractvalue { ptr, i64 } %i.cy, 0
  %i.da = extractvalue { ptr, i64 } %i.cy, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter6formatENS_10StringViewES1_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.cx, i64 %i.cw, ptr %i.cz, i64 %i.da)
          to label %bb.bg unwind label %bb.co

bb.bg:                                            ; preds = %bb.bf
  %i.db = load ptr, ptr %15, align 8, !tbaa !28   ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.dd = icmp eq ptr %i.db, %i.dc
  br i1 %i.dd, label %_ZN5vcpkg15LocalizedStringD2Ev.exit123, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121: ; preds = %bb.bg
  %i.de = load i64, ptr %i.dc, align 8, !tbaa !26
  %i.df = add i64 %i.de, 1
  call void @_ZdlPvm(ptr noundef %i.db, i64 noundef %i.df) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit123

_ZN5vcpkg15LocalizedStringD2Ev.exit123:           ; preds = %bb.bg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i121
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #15
  %i.dg = load ptr, ptr %14, align 8, !tbaa !28   ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.di = icmp eq ptr %i.dg, %i.dh
  br i1 %i.di, label %_ZN5vcpkg15LocalizedStringD2Ev.exit126, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit123
  %i.dj = load i64, ptr %i.dh, align 8, !tbaa !26
  %i.dk = add i64 %i.dj, 1
  call void @_ZdlPvm(ptr noundef %i.dg, i64 noundef %i.dk) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit126

_ZN5vcpkg15LocalizedStringD2Ev.exit126:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit123, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i124
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #15
  invoke void @_ZN5vcpkg18HelpTableFormatter5blankEv(ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.bh unwind label %bb.bu

bb.bh:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit126
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #15
  %.sroa.0.0.copyload = load i64, ptr @_ZN5vcpkg21msgHelpExampleCommandE, align 8, !tbaa !27
  invoke void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %16, i64 %.sroa.0.0.copyload)
          to label %bb.bi unwind label %bb.cp

bb.bi:                                            ; preds = %bb.bh
  %i.dl = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %16) #15 ; 2 uses
  %i.dm = extractvalue { ptr, i64 } %i.dl, 0
  %i.dn = extractvalue { ptr, i64 } %i.dl, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter7exampleENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr %i.dm, i64 %i.dn)
          to label %bb.bj unwind label %bb.cq

bb.bj:                                            ; preds = %bb.bi
  %i.do = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZN5vcpkg15LocalizedStringD2Ev.exit129, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127: ; preds = %bb.bj
  %i.dr = load i64, ptr %i.dp, align 8, !tbaa !26
  %i.ds = add i64 %i.dr, 1
  call void @_ZdlPvm(ptr noundef %i.do, i64 noundef %i.ds) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit129

_ZN5vcpkg15LocalizedStringD2Ev.exit129:           ; preds = %bb.bj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i127
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  %i.dt = load i64, ptr %i.c, align 8, !tbaa !23  ; 5 uses
  %i.du = add i64 %i.dt, 1                        ; 2 uses
  %i.dv = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.b
  br i1 %i.dw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit129
  %i.dx = icmp ult i64 %i.dt, 16
  call void @llvm.assume(i1 %i.dx)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit129
  %i.dy = load i64, ptr %i.b, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.dz = phi i64 [ %i.dy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ea = icmp ugt i64 %i.du, %i.dz
  br i1 %i.ea, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %1, i64 noundef %i.dt, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.bu

.noexc:                                           ; preds = %bb.bk
  %.pre.i = load ptr, ptr %1, align 8, !tbaa !28
  br label %bb.bl

bb.bl:                                            ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.eb = phi ptr [ %.pre.i, %.noexc ], [ %i.dv, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 %i.dt
  store i8 10, ptr %i.ec, align 1, !tbaa !26
  store i64 %i.du, ptr %i.c, align 8, !tbaa !23
  %i.ed = load ptr, ptr %1, align 8, !tbaa !28
  %17 = getelementptr i8, ptr %i.ed, i64 %i.dt
  %i.ee = getelementptr i8, ptr %17, i64 1
  store i8 0, ptr %i.ee, align 1, !tbaa !26
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.ef, ptr %0, align 8, !tbaa !20
  %i.eg = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.eh = load i64, ptr %i.c, align 8, !tbaa !23  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store i64 %i.eh, ptr %i.a, align 8, !tbaa !27
  %i.ei = icmp ugt i64 %i.eh, 15
  br i1 %i.ei, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.bl
  %i.ej = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc130 unwind label %bb.bu ; 2 uses

.noexc130:                                        ; preds = %.noexc.i
  store ptr %i.ej, ptr %0, align 8, !tbaa !28
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !27
  store i64 %i.ek, ptr %i.ef, align 8, !tbaa !26
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc130, %bb.bl
  %i.el = phi ptr [ %i.ej, %.noexc130 ], [ %i.ef, %bb.bl ] ; 2 uses
  switch i64 %i.eh, label %bb.bn [
    i64 1, label %bb.bm
    i64 0, label %bb.bo
  ]

bb.bm:                                            ; preds = %._crit_edge.i.i
  %i.em = load i8, ptr %i.eg, align 1, !tbaa !26
  store i8 %i.em, ptr %i.el, align 1, !tbaa !26
  br label %bb.bo

bb.bn:                                            ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.el, ptr align 1 %i.eg, i64 %i.eh, i1 false)
  br label %bb.bo

bb.bo:                                            ; preds = %bb.bn, %bb.bm, %._crit_edge.i.i
  %i.en = load i64, ptr %i.a, align 8, !tbaa !27  ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.en, ptr %i.eo, align 8, !tbaa !23
  %i.ep = load ptr, ptr %0, align 8, !tbaa !28
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 %i.en
  store i8 0, ptr %i.eq, align 1, !tbaa !26
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  %i.er = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.es = icmp eq ptr %i.er, %i.b
  br i1 %i.es, label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131: ; preds = %bb.bo
  %i.et = load i64, ptr %i.b, align 8, !tbaa !26
  %i.eu = add i64 %i.et, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.eu) #14
  br label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit

_ZN5vcpkg18HelpTableFormatterD2Ev.exit:           ; preds = %bb.bo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  ret void

bb.bp:                                            ; preds = %bb.a
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit135

bb.bq:                                            ; preds = %bb.b
  %i.ew = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ex = load ptr, ptr %2, align 8, !tbaa !28    ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZN5vcpkg15LocalizedStringD2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133: ; preds = %bb.bq
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !26
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit135

_ZN5vcpkg15LocalizedStringD2Ev.exit135:           ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133, %bb.bp
  %.pn = phi { ptr, i32 } [ %i.ev, %bb.bp ], [ %i.ew, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i133 ], [ %i.ew, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.cr

bb.br:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit
  %i.fc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit141

bb.bs:                                            ; preds = %bb.d
  %i.fd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit138

bb.bt:                                            ; preds = %bb.e
  %i.fe = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ff = load ptr, ptr %4, align 8, !tbaa !28    ; 2 uses
  %i.fg = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.fh = icmp eq ptr %i.ff, %i.fg
  br i1 %i.fh, label %_ZN5vcpkg15LocalizedStringD2Ev.exit138, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136: ; preds = %bb.bt
  %i.fi = load i64, ptr %i.fg, align 8, !tbaa !26
  %i.fj = add i64 %i.fi, 1
  call void @_ZdlPvm(ptr noundef %i.ff, i64 noundef %i.fj) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit138

_ZN5vcpkg15LocalizedStringD2Ev.exit138:           ; preds = %bb.bt, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136, %bb.bs
  %.pn61 = phi { ptr, i32 } [ %i.fd, %bb.bs ], [ %i.fe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i136 ], [ %i.fe, %bb.bt ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  %i.fk = load ptr, ptr %3, align 8, !tbaa !28    ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.fm = icmp eq ptr %i.fk, %i.fl
  br i1 %i.fm, label %_ZN5vcpkg15LocalizedStringD2Ev.exit141, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139: ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit138
  %i.fn = load i64, ptr %i.fl, align 8, !tbaa !26
  %i.fo = add i64 %i.fn, 1
  call void @_ZdlPvm(ptr noundef %i.fk, i64 noundef %i.fo) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit141

_ZN5vcpkg15LocalizedStringD2Ev.exit141:           ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit138, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139, %bb.br
  %.pn61.pn = phi { ptr, i32 } [ %i.fc, %bb.br ], [ %.pn61, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i139 ], [ %.pn61, %_ZN5vcpkg15LocalizedStringD2Ev.exit138 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.cr

bb.bu:                                            ; preds = %.noexc.i, %bb.bk, %_ZN5vcpkg15LocalizedStringD2Ev.exit126, %bb.at, %bb.as, %bb.ar, %bb.aq, %bb.ap, %_ZN5vcpkg15LocalizedStringD2Ev.exit105, %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %_ZN5vcpkg15LocalizedStringD2Ev.exit102, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %_ZN5vcpkg15LocalizedStringD2Ev.exit99, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %_ZN5vcpkg15LocalizedStringD2Ev.exit96, %_ZN5vcpkg15LocalizedStringD2Ev.exit93
  %i.fp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.bv:                                            ; preds = %bb.g
  %i.fq = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit144

bb.bw:                                            ; preds = %bb.h
  %i.fr = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fs = load ptr, ptr %5, align 8, !tbaa !28    ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 2 uses
  %i.fu = icmp eq ptr %i.fs, %i.ft
  br i1 %i.fu, label %_ZN5vcpkg15LocalizedStringD2Ev.exit144, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142: ; preds = %bb.bw
  %i.fv = load i64, ptr %i.ft, align 8, !tbaa !26
  %i.fw = add i64 %i.fv, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fw) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit144

_ZN5vcpkg15LocalizedStringD2Ev.exit144:           ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142, %bb.bv
  %.pn64 = phi { ptr, i32 } [ %i.fq, %bb.bv ], [ %i.fr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i142 ], [ %i.fr, %bb.bw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  br label %bb.cr

bb.bx:                                            ; preds = %bb.o
  %i.fx = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit147

bb.by:                                            ; preds = %bb.p
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = load ptr, ptr %6, align 8, !tbaa !28    ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.gb = icmp eq ptr %i.fz, %i.ga
  br i1 %i.gb, label %_ZN5vcpkg15LocalizedStringD2Ev.exit147, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145: ; preds = %bb.by
  %i.gc = load i64, ptr %i.ga, align 8, !tbaa !26
  %i.gd = add i64 %i.gc, 1
  call void @_ZdlPvm(ptr noundef %i.fz, i64 noundef %i.gd) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit147

_ZN5vcpkg15LocalizedStringD2Ev.exit147:           ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145, %bb.bx
  %.pn66 = phi { ptr, i32 } [ %i.fx, %bb.bx ], [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i145 ], [ %i.fy, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  br label %bb.cr

bb.bz:                                            ; preds = %bb.z
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit150

bb.ca:                                            ; preds = %bb.aa
  %i.gf = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gg = load ptr, ptr %7, align 8, !tbaa !28    ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZN5vcpkg15LocalizedStringD2Ev.exit150, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148: ; preds = %bb.ca
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !26
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit150

_ZN5vcpkg15LocalizedStringD2Ev.exit150:           ; preds = %bb.ca, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148, %bb.bz
  %.pn68 = phi { ptr, i32 } [ %i.ge, %bb.bz ], [ %i.gf, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i148 ], [ %i.gf, %bb.ca ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
end_hunk_0
begin_hunk_1_@_ZN5vcpkg19get_zero_args_usageB5cxx11Ev:bb.a
bb.cp:                                            ; preds = %bb.bh
  %i.in = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit177

bb.cq:                                            ; preds = %bb.bi
  %i.io = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ip = load ptr, ptr %16, align 8, !tbaa !28   ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ir = icmp eq ptr %i.ip, %i.iq
  br i1 %i.ir, label %_ZN5vcpkg15LocalizedStringD2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175: ; preds = %bb.cq
  %i.is = load i64, ptr %i.iq, align 8, !tbaa !26
  %i.it = add i64 %i.is, 1
  call void @_ZdlPvm(ptr noundef %i.ip, i64 noundef %i.it) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit177

_ZN5vcpkg15LocalizedStringD2Ev.exit177:           ; preds = %bb.cq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175, %bb.cp
  %.pn84 = phi { ptr, i32 } [ %i.in, %bb.cp ], [ %i.io, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i175 ], [ %i.io, %bb.cq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #15
  br label %bb.cr

bb.cr:                                            ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit177, %_ZN5vcpkg15LocalizedStringD2Ev.exit174, %_ZN5vcpkg15LocalizedStringD2Ev.exit168, %_ZN5vcpkg15LocalizedStringD2Ev.exit165, %_ZN5vcpkg15LocalizedStringD2Ev.exit159, %_ZN5vcpkg15LocalizedStringD2Ev.exit156, %_ZN5vcpkg15LocalizedStringD2Ev.exit153, %_ZN5vcpkg15LocalizedStringD2Ev.exit150, %_ZN5vcpkg15LocalizedStringD2Ev.exit147, %_ZN5vcpkg15LocalizedStringD2Ev.exit144, %bb.bu, %_ZN5vcpkg15LocalizedStringD2Ev.exit141, %_ZN5vcpkg15LocalizedStringD2Ev.exit135
  %.pn86 = phi { ptr, i32 } [ %i.fp, %bb.bu ], [ %.pn84, %_ZN5vcpkg15LocalizedStringD2Ev.exit177 ], [ %.pn81.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit174 ], [ %.pn79, %_ZN5vcpkg15LocalizedStringD2Ev.exit168 ], [ %.pn76.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit165 ], [ %.pn74, %_ZN5vcpkg15LocalizedStringD2Ev.exit159 ], [ %.pn72, %_ZN5vcpkg15LocalizedStringD2Ev.exit156 ], [ %.pn70, %_ZN5vcpkg15LocalizedStringD2Ev.exit153 ], [ %.pn68, %_ZN5vcpkg15LocalizedStringD2Ev.exit150 ], [ %.pn66, %_ZN5vcpkg15LocalizedStringD2Ev.exit147 ], [ %.pn64, %_ZN5vcpkg15LocalizedStringD2Ev.exit144 ], [ %.pn61.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit141 ], [ %.pn, %_ZN5vcpkg15LocalizedStringD2Ev.exit135 ]
  %i.iu = load ptr, ptr %1, align 8, !tbaa !28    ; 2 uses
  %i.iv = icmp eq ptr %i.iu, %i.b
  br i1 %i.iv, label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit180, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178: ; preds = %bb.cr
  %i.iw = load i64, ptr %i.b, align 8, !tbaa !26
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.iu, i64 noundef %i.ix) #14
  br label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit180

_ZN5vcpkg18HelpTableFormatterD2Ev.exit180:        ; preds = %bb.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i178
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  resume { ptr, i32 } %.pn86
}

declare void @_ZN5vcpkg18HelpTableFormatter7exampleENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

declare void @_ZN5vcpkg3msg6formatIJEJEEENS_15LocalizedStringENS0_8MessageTIJDpT_EEEDpNS0_6TagArgINS_8identityIS4_E4typeET0_EE(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8, i64) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nounwind
declare { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #3

declare void @_ZN5vcpkg18HelpTableFormatter6formatENS_10StringViewES1_(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64, ptr, i64) local_unnamed_addr #2

declare void @_ZN5vcpkg18HelpTableFormatter5blankEv(ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #2

declare void @_ZN5vcpkg18HelpTableFormatter6headerENS_10StringViewE(ptr noundef nonnull align 8 dereferenceable(32), ptr, i64) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5vcpkgL26format_command_usage_entryERNS_18HelpTableFormatterERKNS_15CommandMetadataE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(184) %1) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.vcpkg::LocalizedString", align 8 ; 9 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = tail call noundef zeroext i1 @_ZNK5vcpkg15MetadataMessagecvbEv(ptr noundef nonnull align 8 dereferenceable(16) %i.a) #15
  br i1 %i.b, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !tbaa !29
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.22.0.copyload = load i64, ptr %.sroa.22.0..sroa_idx, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  call void @_ZNK5vcpkg15MetadataMessage9to_stringEv(ptr dead_on_unwind nonnull writable sret(%"struct.vcpkg::LocalizedString") align 8 %2, ptr noundef nonnull align 8 dereferenceable(16) %i.a)
  %i.c = call { ptr, i64 } @_ZNK5vcpkg15LocalizedStringcvNS_10StringViewEEv(ptr noundef nonnull align 8 dereferenceable(32) %2) #15 ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  invoke void @_ZN5vcpkg18HelpTableFormatter6formatENS_10StringViewES1_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr %.sroa.01.0.copyload, i64 %.sroa.22.0.copyload, ptr %i.d, i64 %i.e)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZN5vcpkg15LocalizedStringD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.c
  %i.i = load i64, ptr %i.g, align 8, !tbaa !26
  %i.j = add i64 %i.i, 1
  call void @_ZdlPvm(ptr noundef %i.f, i64 noundef %i.j) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit

_ZN5vcpkg15LocalizedStringD2Ev.exit:              ; preds = %bb.c, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  %i.l = load ptr, ptr %2, align 8, !tbaa !28     ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN5vcpkg15LocalizedStringD2Ev.exit9, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7: ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !tbaa !26
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #14
  br label %_ZN5vcpkg15LocalizedStringD2Ev.exit9

_ZN5vcpkg15LocalizedStringD2Ev.exit9:             ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  resume { ptr, i32 } %i.k

bb.e:                                             ; preds = %_ZN5vcpkg15LocalizedStringD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN5vcpkg23print_full_command_listEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %0 = alloca %"struct.vcpkg::HelpTableFormatter", align 8 ; 14 uses
  %1 = alloca %"class.std::vector", align 8       ; 8 uses
  %2 = alloca %"struct.vcpkg::StringView", align 8 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %0) #15
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 8 uses
  store ptr %i.a, ptr %0, align 8, !tbaa !20
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  store i64 0, ptr %i.b, align 8, !tbaa !23
  store i8 0, ptr %i.a, align 8, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #15
  invoke void @_ZN5vcpkg25get_all_commands_metadataEv(ptr dead_on_unwind nonnull writable sret(%"class.std::vector") align 8 %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !tbaa !30    ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.c, align 8, !tbaa !30 ; 7 uses
  %.not.i.i.i = icmp eq ptr %.val, %.val8
  br i1 %.not.i.i.i, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = ptrtoint ptr %.val8 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3
  %i.h = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.g, i1 true)
  %i.i = shl nuw nsw i64 %i.h, 1
  %i.j = xor i64 %i.i, 126
  call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_T0_T1_"(ptr %.val, ptr %.val8, i64 noundef %i.j)
  %i.k = icmp sgt i64 %i.f, 128
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 128 ; 3 uses
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_T0_"(ptr %.val, ptr nonnull %i.l)
  %.not6.i.i.i.i.i = icmp eq ptr %i.l, %.val8
  br i1 %.not6.i.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.d, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_.exit.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i = phi ptr [ %i.v, %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_.exit.i.i.i.i.i" ], [ %i.l, %bb.d ] ; 5 uses
  %i.m = load ptr, ptr %.sroa.0.07.i.i.i.i.i, align 8, !tbaa !15 ; 4 uses
  %i.n = getelementptr i8, ptr %i.m, i64 8        ; 2 uses
  %.sroa.0.07.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.07.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val8.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !29
  %.val.val19.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !27
  %i.o = load ptr, ptr %.sroa.0.07.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %.val3.i10.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !tbaa !29
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val4.i11.i.i.i.i.i.i = load i64, ptr %i.p, align 8, !tbaa !27
  %i.q = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.val8.i.i.i.i.i.i, i64 %.val.val19.i.i.i.i.i.i, ptr %.val3.i10.i.i.i.i.i.i, i64 %.val4.i11.i.i.i.i.i.i) #15
  br i1 %i.q, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_.exit.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.sroa.0.013.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 4 uses
  %.sroa.04.012.i.i.i.i.i.i = phi ptr [ %.sroa.0.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ]
  %i.r = load ptr, ptr %.sroa.0.013.i.i.i.i.i.i, align 8, !tbaa !15
  store ptr %i.r, ptr %.sroa.04.012.i.i.i.i.i.i, align 8, !tbaa !15
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.sroa.0.013.i.i.i.i.i.i, i64 -8 ; 2 uses
  %.val.val.i.i.i.i.i.i = load ptr, ptr %i.m, align 8, !tbaa !29
  %.val.val1.i.i.i.i.i.i = load i64, ptr %i.n, align 8, !tbaa !27
  %i.s = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !tbaa !15 ; 2 uses
  %.val3.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr i8, ptr %i.s, i64 8
  %.val4.i.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !tbaa !27
  %i.u = call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.val.i.i.i.i.i.i, i64 %.val.val1.i.i.i.i.i.i, ptr %.val3.i.i.i.i.i.i.i, i64 %.val4.i.i.i.i.i.i.i) #15
  br i1 %i.u, label %.lr.ph.i.i.i.i.i.i, label %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_.exit.i.i.i.i.i", !llvm.loop !33

"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_.exit.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %.sroa.04.0.lcssa.i.i.i.i.i.i = phi ptr [ %.sroa.0.07.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.sroa.0.013.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ]
  store ptr %i.m, ptr %.sroa.04.0.lcssa.i.i.i.i.i.i, align 8, !tbaa !15
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.07.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.v, %.val8
  br i1 %.not.i.i.i.i.i, label %.lr.ph.preheader, label %.lr.ph.i.i.i.i.i, !llvm.loop !35

bb.e:                                             ; preds = %bb.c
  call fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_T0_"(ptr %.val, ptr %.val8)
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %"_ZSt25__unguarded_linear_insertIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops14_Val_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_.exit.i.i.i.i.i", %bb.d, %bb.e
  br label %.lr.ph

._crit_edge:                                      ; preds = %bb.i, %bb.b
  %i.w = load i64, ptr %i.b, align 8, !tbaa !23   ; 5 uses
  %i.x = add i64 %i.w, 1                          ; 2 uses
  %i.y = load ptr, ptr %0, align 8, !tbaa !28     ; 2 uses
  %i.z = icmp eq ptr %i.y, %i.a
  br i1 %i.z, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i: ; preds = %._crit_edge
  %i.aa = icmp ult i64 %i.w, 16
  call void @llvm.assume(i1 %i.aa)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %._crit_edge
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !26
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i
  %i.ac = phi i64 [ %i.ab, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ 15, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i ]
  %i.ad = icmp ugt i64 %i.x, %i.ac
  br i1 %i.ad, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_mutateEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %i.w, i64 noundef 0, ptr noundef null, i64 noundef 1)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.f
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !28
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit11

bb.h:                                             ; preds = %bb.f, %bb.k
  %i.af = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.i
  %.sroa.015.019 = phi ptr [ %i.ah, %bb.i ], [ %.val, %.lr.ph.preheader ] ; 2 uses
  %i.ag = load ptr, ptr %.sroa.015.019, align 8, !tbaa !15
  invoke fastcc void @_ZN5vcpkgL26format_command_usage_entryERNS_18HelpTableFormatterERKNS_15CommandMetadataE(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(184) %i.ag)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %.lr.ph
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.015.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.ah, %.val8
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %.lr.ph
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.k:                                             ; preds = %.noexc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i
  %i.aj = phi ptr [ %.pre.i, %.noexc ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8capacityEv.exit.i ]
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.w
  store i8 10, ptr %i.ak, align 1, !tbaa !26
  store i64 %i.x, ptr %i.b, align 8, !tbaa !23
  %i.al = load ptr, ptr %0, align 8, !tbaa !28
  %3 = getelementptr i8, ptr %i.al, i64 %i.w
  %i.am = getelementptr i8, ptr %3, i64 1
  store i8 0, ptr %i.am, align 1, !tbaa !26
  call void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #15
  %i.an = load ptr, ptr %2, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ap = load i64, ptr %i.ao, align 8
  invoke void @_ZN5vcpkg3msg32write_unlocalized_text_to_stderrENS_5ColorENS_10StringViewE(i8 noundef signext 0, ptr %i.an, i64 %i.ap)
          to label %bb.l unwind label %bb.h

bb.l:                                             ; preds = %bb.k
  %.not.i.i.i9 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i9, label %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !36
  %i.as = ptrtoint ptr %i.ar to i64
  %i.at = ptrtoint ptr %.val to i64
  %i.au = sub i64 %i.as, %i.at
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.au) #14
  br label %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit

_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit: ; preds = %bb.l, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.av = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.aw = icmp eq ptr %i.av, %i.a
  br i1 %i.aw, label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit
  %i.ax = load i64, ptr %i.a, align 8, !tbaa !26
  %i.ay = add i64 %i.ax, 1
  call void @_ZdlPvm(ptr noundef %i.av, i64 noundef %i.ay) #14
  br label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit

_ZN5vcpkg18HelpTableFormatterD2Ev.exit:           ; preds = %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  ret void

bb.n:                                             ; preds = %bb.j, %bb.h
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.j ], [ %i.af, %bb.h ] ; 2 uses
  %.not.i.i.i10 = icmp eq ptr %.val, null
  br i1 %.not.i.i.i10, label %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit11, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !36
  %i.bb = ptrtoint ptr %i.ba to i64
  %i.bc = ptrtoint ptr %.val to i64
  %i.bd = sub i64 %i.bb, %i.bc
  call void @_ZdlPvm(ptr noundef nonnull %.val, i64 noundef %i.bd) #14
  br label %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit11

_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit11: ; preds = %bb.o, %bb.n, %bb.g
  %.pn.pn = phi { ptr, i32 } [ %i.ae, %bb.g ], [ %.pn, %bb.n ], [ %.pn, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #15
  %i.be = load ptr, ptr %0, align 8, !tbaa !28    ; 2 uses
  %i.bf = icmp eq ptr %i.be, %i.a
  br i1 %i.bf, label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit14, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12: ; preds = %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit11
  %i.bg = load i64, ptr %i.a, align 8, !tbaa !26
  %i.bh = add i64 %i.bg, 1
  call void @_ZdlPvm(ptr noundef %i.be, i64 noundef %i.bh) #14
  br label %_ZN5vcpkg18HelpTableFormatterD2Ev.exit14

_ZN5vcpkg18HelpTableFormatterD2Ev.exit14:         ; preds = %_ZNSt6vectorIPKN5vcpkg15CommandMetadataESaIS3_EED2Ev.exit11, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i12
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #15
  resume { ptr, i32 } %.pn.pn
}

declare void @_ZN5vcpkg3msg32write_unlocalized_text_to_stderrENS_5ColorENS_10StringViewE(i8 noundef signext, ptr, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZN5vcpkg10StringViewC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #3

declare void @_ZN5vcpkg37command_bootstrap_standalone_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg24command_contact_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg25command_download_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg40command_format_feature_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg21command_hash_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg32command_check_tools_sha_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg30command_init_registry_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg24command_version_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg33command_z_upload_metrics_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg27command_z_applocal_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg47command_z_generate_default_message_map_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg40command_z_preregister_telemetry_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10FilesystemE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(8)) #2

declare void @_ZN5vcpkg24command_acquire_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg32command_acquire_project_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg25command_activate_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg20command_add_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg28command_add_version_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg29command_autocomplete_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg25command_ci_clean_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg35command_ci_verify_versions_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg23command_create_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg27command_deactivate_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg21command_edit_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg22command_fetch_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg39command_generate_msbuild_props_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg21command_find_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg32command_format_manifest_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg21command_help_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg26command_integrate_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg31command_license_report_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg21command_list_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg20command_new_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg21command_owns_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg29command_package_info_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg26command_portsdiff_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg27command_regenerate_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg23command_search_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg23command_update_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg32command_update_baseline_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg32command_update_registry_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg20command_use_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg29command_vs_instances_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg21command_z_ce_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg26command_z_extract_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg28command_z_changelog_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsE(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400)) #2

declare void @_ZN5vcpkg22command_build_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg31command_build_external_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg30command_check_support_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg19command_ci_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg28command_depend_info_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg20command_env_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg23command_export_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg24command_install_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg23command_remove_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg30command_test_features_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg28command_print_usage_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg30command_set_installed_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg24command_upgrade_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

declare void @_ZN5vcpkg31command_z_print_config_and_exitERKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES6_(ptr noundef nonnull align 8 dereferenceable(1752), ptr noundef nonnull align 8 dereferenceable(400), ptr, ptr) #2

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZNK5vcpkg15MetadataMessagecvbEv(ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #3

declare void @_ZNK5vcpkg15MetadataMessage9to_stringEv(ptr dead_on_unwind writable sret(%"struct.vcpkg::LocalizedString") align 8, ptr noundef nonnull align 8 dereferenceable(16)) local_unnamed_addr #2

end_hunk_1
begin_hunk_2_@"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_T0_T1_":bb.a
._crit_edge:                                      ; preds = %bb.b, %.lr.ph
  %.lcssa36 = phi i64 [ %i.d, %.lr.ph ], [ %i.bw, %bb.b ] ; 2 uses
  %storemerge23.lcssa = phi ptr [ %1, %.lr.ph ], [ %.sroa.014.1.i.i, %bb.b ]
  %i.i = add nsw i64 %.lcssa36, -2
  %i.j = lshr i64 %i.i, 1
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %._crit_edge
  %.09.i.i.i = phi i64 [ %i.j, %._crit_edge ], [ %i.m, %bb.c ] ; 4 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %0, i64 %.09.i.i.i
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !15
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr %0, i64 noundef %.09.i.i.i, i64 noundef %.lcssa36, ptr noundef %i.l)
  %.not.i.i.i = icmp eq i64 %.09.i.i.i, 0
  %i.m = add nsw i64 %.09.i.i.i, -1
  br i1 %.not.i.i.i, label %.lr.ph.i9.i, label %bb.c, !llvm.loop !39

.lr.ph.i9.i:                                      ; preds = %bb.c, %.lr.ph.i9.i
  %.sroa.0.03.i.i = phi ptr [ %i.n, %.lr.ph.i9.i ], [ %storemerge23.lcssa, %bb.c ]
  %i.n = getelementptr inbounds i8, ptr %.sroa.0.03.i.i, i64 -8 ; 4 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !15
  %i.p = load ptr, ptr %0, align 8, !tbaa !15
  store ptr %i.p, ptr %i.n, align 8, !tbaa !15
  %i.q = ptrtoint ptr %i.n to i64
  %i.r = sub i64 %i.q, %i.a                       ; 2 uses
  %i.s = ashr exact i64 %i.r, 3
  tail call fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr nonnull %0, i64 noundef 0, i64 noundef %i.s, ptr noundef %i.o)
  %i.t = icmp sgt i64 %i.r, 8
  br i1 %i.t, label %.lr.ph.i9.i, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !40

.lr.ph40:                                         ; preds = %.lr.ph, %bb.b
  %storemerge2339 = phi ptr [ %.sroa.014.1.i.i, %bb.b ], [ %1, %.lr.ph ] ; 3 uses
  %.02438 = phi i64 [ %i.v, %bb.b ], [ %2, %.lr.ph ]
  %i.u = phi i64 [ %i.bw, %bb.b ], [ %i.d, %.lr.ph ]
  %i.v = add nsw i64 %.02438, -1                  ; 3 uses
  %i.w = lshr i64 %i.u, 1
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %i.w ; 7 uses
  %i.y = getelementptr inbounds i8, ptr %storemerge2339, i64 -8 ; 7 uses
  %i.z = load ptr, ptr %i.f, align 8, !tbaa !15   ; 2 uses
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %.val.i.i.i = load ptr, ptr %i.z, align 8, !tbaa !29
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val1.i.i.i = load i64, ptr %i.ab, align 8, !tbaa !27
  %.val2.i.i.i = load ptr, ptr %i.aa, align 8, !tbaa !29
  %i.ac = getelementptr i8, ptr %i.aa, i64 8
  %.val3.i.i.i = load i64, ptr %i.ac, align 8, !tbaa !27
  %i.ad = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i.i.i, i64 %.val1.i.i.i, ptr %.val2.i.i.i, i64 %.val3.i.i.i) #15
  %i.ae = load ptr, ptr %i.y, align 8, !tbaa !15  ; 2 uses
  %.val2.i28.i.i = load ptr, ptr %i.ae, align 8, !tbaa !29 ; 2 uses
  %i.af = getelementptr i8, ptr %i.ae, i64 8
  %.val3.i29.i.i = load i64, ptr %i.af, align 8, !tbaa !27 ; 2 uses
  br i1 %i.ad, label %bb.d, label %bb.i

bb.d:                                             ; preds = %.lr.ph40
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %.val.i26.i.i = load ptr, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr i8, ptr %i.ag, i64 8
  %.val1.i27.i.i = load i64, ptr %i.ah, align 8, !tbaa !27
  %i.ai = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i26.i.i, i64 %.val1.i27.i.i, ptr %.val2.i28.i.i, i64 %.val3.i29.i.i) #15
  br i1 %i.ai, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %0, align 8, !tbaa !15
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !15
  store ptr %i.ak, ptr %0, align 8, !tbaa !15
  store ptr %i.aj, ptr %i.x, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.f:                                             ; preds = %bb.d
  %i.al = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %i.am = load ptr, ptr %i.y, align 8, !tbaa !15  ; 2 uses
  %.val.i30.i.i = load ptr, ptr %i.al, align 8, !tbaa !29
  %i.an = getelementptr i8, ptr %i.al, i64 8
  %.val1.i31.i.i = load i64, ptr %i.an, align 8, !tbaa !27
  %.val2.i32.i.i = load ptr, ptr %i.am, align 8, !tbaa !29
  %i.ao = getelementptr i8, ptr %i.am, i64 8
  %.val3.i33.i.i = load i64, ptr %i.ao, align 8, !tbaa !27
  %i.ap = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i30.i.i, i64 %.val1.i31.i.i, ptr %.val2.i32.i.i, i64 %.val3.i33.i.i) #15
  %i.aq = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %i.ap, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ar = load ptr, ptr %i.y, align 8, !tbaa !15
  store ptr %i.ar, ptr %0, align 8, !tbaa !15
  store ptr %i.aq, ptr %i.y, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.h:                                             ; preds = %bb.f
  %i.as = load ptr, ptr %i.f, align 8, !tbaa !15
  store ptr %i.as, ptr %0, align 8, !tbaa !15
  store ptr %i.aq, ptr %i.f, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.i:                                             ; preds = %.lr.ph40
  %i.at = load ptr, ptr %i.f, align 8, !tbaa !15  ; 2 uses
  %.val.i34.i.i = load ptr, ptr %i.at, align 8, !tbaa !29
  %i.au = getelementptr i8, ptr %i.at, i64 8
  %.val1.i35.i.i = load i64, ptr %i.au, align 8, !tbaa !27
  %i.av = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i34.i.i, i64 %.val1.i35.i.i, ptr %.val2.i28.i.i, i64 %.val3.i29.i.i) #15
  br i1 %i.av, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.aw = load <2 x ptr>, ptr %0, align 8, !tbaa !15
  %i.ax = shufflevector <2 x ptr> %i.aw, <2 x ptr> poison, <2 x i32> <i32 1, i32 0>
  store <2 x ptr> %i.ax, ptr %0, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.k:                                             ; preds = %bb.i
  %i.ay = load ptr, ptr %i.x, align 8, !tbaa !15  ; 2 uses
  %i.az = load ptr, ptr %i.y, align 8, !tbaa !15  ; 2 uses
  %.val.i38.i.i = load ptr, ptr %i.ay, align 8, !tbaa !29
  %i.ba = getelementptr i8, ptr %i.ay, i64 8
  %.val1.i39.i.i = load i64, ptr %i.ba, align 8, !tbaa !27
  %.val2.i40.i.i = load ptr, ptr %i.az, align 8, !tbaa !29
  %i.bb = getelementptr i8, ptr %i.az, i64 8
  %.val3.i41.i.i = load i64, ptr %i.bb, align 8, !tbaa !27
  %i.bc = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i38.i.i, i64 %.val1.i39.i.i, ptr %.val2.i40.i.i, i64 %.val3.i41.i.i) #15
  %i.bd = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  br i1 %i.bc, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.be = load ptr, ptr %i.y, align 8, !tbaa !15
  store ptr %i.be, ptr %0, align 8, !tbaa !15
  store ptr %i.bd, ptr %i.y, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

bb.m:                                             ; preds = %bb.k
  %i.bf = load ptr, ptr %i.x, align 8, !tbaa !15
  store ptr %i.bf, ptr %0, align 8, !tbaa !15
  store ptr %i.bd, ptr %i.x, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader": ; preds = %bb.m, %bb.l, %bb.j, %bb.h, %bb.g, %bb.e
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"

"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i": ; preds = %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader", %bb.p
  %.sroa.014.0.i.i = phi ptr [ %i.bl, %bb.p ], [ %i.f, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  %.sroa.0.0.i.i = phi ptr [ %.sroa.0.1.i.i, %bb.p ], [ %storemerge2339, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i.preheader" ]
  br label %bb.n

bb.n:                                             ; preds = %bb.n, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i"
  %.sroa.014.1.i.i = phi ptr [ %.sroa.014.0.i.i, %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i" ], [ %i.bl, %bb.n ] ; 9 uses
  %i.bg = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !15 ; 2 uses
  %i.bh = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %.val.i.i13.i = load ptr, ptr %i.bg, align 8, !tbaa !29
  %i.bi = getelementptr i8, ptr %i.bg, i64 8
  %.val1.i.i14.i = load i64, ptr %i.bi, align 8, !tbaa !27
  %.val2.i.i15.i = load ptr, ptr %i.bh, align 8, !tbaa !29
  %i.bj = getelementptr i8, ptr %i.bh, i64 8
  %.val3.i.i16.i = load i64, ptr %i.bj, align 8, !tbaa !27
  %i.bk = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i.i13.i, i64 %.val1.i.i14.i, ptr %.val2.i.i15.i, i64 %.val3.i.i16.i) #15
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.014.1.i.i, i64 8 ; 2 uses
  br i1 %i.bk, label %bb.n, label %.preheader.i.i, !llvm.loop !41

.preheader.i.i:                                   ; preds = %bb.n, %.preheader.i.i
  %.sroa.0.0.pn.i.i = phi ptr [ %.sroa.0.1.i.i, %.preheader.i.i ], [ %.sroa.0.0.i.i, %bb.n ]
  %.sroa.0.1.i.i = getelementptr inbounds i8, ptr %.sroa.0.0.pn.i.i, i64 -8 ; 6 uses
  %i.bm = load ptr, ptr %0, align 8, !tbaa !15    ; 2 uses
  %i.bn = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !15 ; 2 uses
  %.val.i8.i.i = load ptr, ptr %i.bm, align 8, !tbaa !29
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %.val1.i9.i.i = load i64, ptr %i.bo, align 8, !tbaa !27
  %.val2.i10.i.i = load ptr, ptr %i.bn, align 8, !tbaa !29
  %i.bp = getelementptr i8, ptr %i.bn, i64 8
  %.val3.i11.i.i = load i64, ptr %i.bp, align 8, !tbaa !27
  %i.bq = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i8.i.i, i64 %.val1.i9.i.i, ptr %.val2.i10.i.i, i64 %.val3.i11.i.i) #15
  br i1 %i.bq, label %.preheader.i.i, label %bb.o, !llvm.loop !42

bb.o:                                             ; preds = %.preheader.i.i
  %i.br = icmp ult ptr %.sroa.014.1.i.i, %.sroa.0.1.i.i
  br i1 %i.br, label %bb.p, label %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEET_SF_SF_T0_.exit"

bb.p:                                             ; preds = %bb.o
  %i.bs = load ptr, ptr %.sroa.014.1.i.i, align 8, !tbaa !15
  %i.bt = load ptr, ptr %.sroa.0.1.i.i, align 8, !tbaa !15
  store ptr %i.bt, ptr %.sroa.014.1.i.i, align 8, !tbaa !15
  store ptr %i.bs, ptr %.sroa.0.1.i.i, align 8, !tbaa !15
  br label %"_ZSt22__move_median_to_firstIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_SF_T0_.exit.i", !llvm.loop !43

"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEET_SF_SF_T0_.exit": ; preds = %bb.o
  tail call fastcc void @"_ZSt16__introsort_loopIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElNS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_T0_T1_"(ptr nonnull %.sroa.014.1.i.i, ptr %storemerge2339, i64 noundef %i.v)
  %i.bu = ptrtoint ptr %.sroa.014.1.i.i to i64
  %i.bv = sub i64 %i.bu, %i.a
  %i.bw = ashr exact i64 %i.bv, 3                 ; 3 uses
  %i.bx = icmp sgt i64 %i.bw, 16
  br i1 %i.bx, label %bb.b, label %"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_T0_.exit", !llvm.loop !38

"_ZSt14__partial_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_SF_T0_.exit": ; preds = %"_ZSt27__unguarded_partition_pivotIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEET_SF_SF_T0_.exit", %.lr.ph.i9.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt13__adjust_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_T2_"(ptr nofree captures(none) %0, i64 noundef %1, i64 noundef %2, ptr noundef %3) unnamed_addr #7 {
bb.a:
  %i.a = add nsw i64 %2, -1
  %i.b = sdiv i64 %i.a, 2                         ; 2 uses
  %i.c = icmp slt i64 %1, %i.b
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.034 = phi i64 [ %spec.select, %.lr.ph ], [ %1, %bb.a ] ; 2 uses
  %i.d = shl i64 %.034, 1                         ; 3 uses
  %i.e = add i64 %i.d, 2
  %i.f = getelementptr [8 x i8], ptr %0, i64 %i.d ; 2 uses
  %4 = getelementptr i8, ptr %i.f, i64 16
  %i.g = or disjoint i64 %i.d, 1
  %5 = getelementptr i8, ptr %i.f, i64 8
  %i.h = load ptr, ptr %4, align 8, !tbaa !15     ; 2 uses
  %i.i = load ptr, ptr %5, align 8, !tbaa !15     ; 2 uses
  %.val.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %i.j = getelementptr i8, ptr %i.h, i64 8
  %.val1.i = load i64, ptr %i.j, align 8, !tbaa !27
  %.val2.i = load ptr, ptr %i.i, align 8, !tbaa !29
  %i.k = getelementptr i8, ptr %i.i, i64 8
  %.val3.i = load i64, ptr %i.k, align 8, !tbaa !27
  %i.l = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i, i64 %.val1.i, ptr %.val2.i, i64 %.val3.i) #15
  %spec.select = select i1 %i.l, i64 %i.g, i64 %i.e ; 4 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %0, i64 %spec.select
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !15
  %i.o = getelementptr inbounds [8 x i8], ptr %0, i64 %.034
  store ptr %i.n, ptr %i.o, align 8, !tbaa !15
  %i.p = icmp slt i64 %spec.select, %i.b
  br i1 %i.p, label %.lr.ph, label %._crit_edge, !llvm.loop !44

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ %1, %bb.a ], [ %spec.select, %.lr.ph ] ; 5 uses
  %i.q = and i64 %2, 1
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.b, label %bb.d

bb.b:                                             ; preds = %._crit_edge
  %i.s = add nsw i64 %2, -2
  %i.t = ashr exact i64 %i.s, 1
  %i.u = icmp eq i64 %.0.lcssa, %i.t
  br i1 %i.u, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.v = shl nsw i64 %.0.lcssa, 1                 ; 2 uses
  %i.w = or disjoint i64 %i.v, 1
  %i.x = getelementptr [8 x i8], ptr %0, i64 %i.v
  %6 = getelementptr i8, ptr %i.x, i64 8
  %i.y = load ptr, ptr %6, align 8, !tbaa !15
  %i.z = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa
  store ptr %i.y, ptr %i.z, align 8, !tbaa !15
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge
  %.1 = phi i64 [ %i.w, %bb.c ], [ %.0.lcssa, %bb.b ], [ %.0.lcssa, %._crit_edge ] ; 3 uses
  %i.aa = icmp sgt i64 %.1, %1
  br i1 %i.aa, label %.lr.ph.i, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_RT2_.exit"

.lr.ph.i:                                         ; preds = %bb.d
  %i.ab = getelementptr i8, ptr %3, i64 8
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i
  %.010.i = phi i64 [ %.1, %.lr.ph.i ], [ %.0911.i, %bb.f ] ; 3 uses
  %.0911.in.i = add nsw i64 %.010.i, -1
  %.0911.i = sdiv i64 %.0911.in.i, 2              ; 4 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %0, i64 %.0911.i ; 2 uses
  %.val.val.i = load ptr, ptr %3, align 8, !tbaa !29
  %.val.val10.i = load i64, ptr %i.ab, align 8, !tbaa !27
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !15 ; 2 uses
  %.val.i.i = load ptr, ptr %i.ad, align 8, !tbaa !29
  %i.ae = getelementptr i8, ptr %i.ad, i64 8
  %.val2.i.i = load i64, ptr %i.ae, align 8, !tbaa !27
  %i.af = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i.i, i64 %.val2.i.i, ptr %.val.val.i, i64 %.val.val10.i) #15
  br i1 %i.af, label %bb.f, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_RT2_.exit"

bb.f:                                             ; preds = %bb.e
  %i.ag = load ptr, ptr %i.ac, align 8, !tbaa !15
  %i.ah = getelementptr inbounds [8 x i8], ptr %0, i64 %.010.i
  store ptr %i.ag, ptr %i.ah, align 8, !tbaa !15
  %i.ai = icmp sgt i64 %.0911.i, %1
  br i1 %i.ai, label %bb.e, label %"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_RT2_.exit", !llvm.loop !45

"_ZSt11__push_heapIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEElS5_NS0_5__ops14_Iter_comp_valIZNS2_23print_full_command_listEvE3$_0EEEvT_T0_SG_T1_RT2_.exit": ; preds = %bb.e, %bb.f, %bb.d
  %.0.lcssa.i = phi i64 [ %.1, %bb.d ], [ %.010.i, %bb.e ], [ %.0911.i, %bb.f ]
  %i.aj = getelementptr inbounds [8 x i8], ptr %0, i64 %.0.lcssa.i
  store ptr %3, ptr %i.aj, align 8, !tbaa !15
  ret void
}

; Function Attrs: nounwind
declare noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr, i64, ptr, i64) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctlz.i64(i64, i1 immarg) #8

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @"_ZSt16__insertion_sortIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEENS0_5__ops15_Iter_comp_iterIZNS2_23print_full_command_listEvE3$_0EEEvT_SF_T0_"(ptr %0, ptr nofree readnone captures(address) %1) unnamed_addr #7 {
bb.a:
  %i.a = icmp eq ptr %0, %1
  br i1 %i.a, label %.loopexit, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.sroa.0.016 = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.not17 = icmp eq ptr %.sroa.0.016, %1
  br i1 %.not17, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.b = ptrtoint ptr %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit
  %.sroa.0.019 = phi ptr [ %.sroa.0.016, %.lr.ph ], [ %.sroa.0.0, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 7 uses
  %.pn18 = phi ptr [ %0, %.lr.ph ], [ %.sroa.0.019, %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit ] ; 4 uses
  %i.c = load ptr, ptr %.sroa.0.019, align 8, !tbaa !15 ; 2 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !15     ; 2 uses
  %.val.i = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = getelementptr i8, ptr %i.c, i64 8
  %.val1.i = load i64, ptr %i.e, align 8, !tbaa !27
  %.val2.i = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.f = getelementptr i8, ptr %i.d, i64 8
  %.val3.i = load i64, ptr %i.f, align 8, !tbaa !27
  %i.g = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.i, i64 %.val1.i, ptr %.val2.i, i64 %.val3.i) #15
  %i.h = load ptr, ptr %.sroa.0.019, align 8, !tbaa !15 ; 4 uses
  br i1 %i.g, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.i = ptrtoint ptr %.sroa.0.019 to i64
  %i.j = sub i64 %i.i, %i.b                       ; 3 uses
  %i.k = ashr exact i64 %i.j, 3                   ; 2 uses
  %i.l = icmp sgt i64 %i.k, 1
  br i1 %i.l, label %bb.d, label %bb.e, !prof !46

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %.pn18, i64 16
  %i.n = sub nsw i64 0, %i.k
  %i.o = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.n
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.o, ptr noundef nonnull align 8 dereferenceable(1) %0, i64 %i.j, i1 false)
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.e:                                             ; preds = %bb.c
  %i.p = icmp eq i64 %i.j, 8
  br i1 %i.p, label %bb.f, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %.pn18, i64 8
  %i.r = load ptr, ptr %0, align 8, !tbaa !15
  store ptr %i.r, ptr %i.q, align 8, !tbaa !15
  br label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

bb.g:                                             ; preds = %bb.b
  %i.s = getelementptr i8, ptr %i.h, i64 8        ; 2 uses
  %.val.val8.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %.val.val19.i = load i64, ptr %i.s, align 8, !tbaa !27
  %i.t = load ptr, ptr %.pn18, align 8, !tbaa !15 ; 2 uses
  %.val3.i10.i = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val4.i11.i = load i64, ptr %i.u, align 8, !tbaa !27
  %i.v = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.val8.i, i64 %.val.val19.i, ptr %.val3.i10.i, i64 %.val4.i11.i) #15
  br i1 %i.v, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit

.lr.ph.i:                                         ; preds = %bb.g, %.lr.ph.i
  %.sroa.0.013.i = phi ptr [ %.sroa.0.0.i, %.lr.ph.i ], [ %.pn18, %bb.g ] ; 4 uses
  %.sroa.04.012.i = phi ptr [ %.sroa.0.013.i, %.lr.ph.i ], [ %.sroa.0.019, %bb.g ]
  %i.w = load ptr, ptr %.sroa.0.013.i, align 8, !tbaa !15
  store ptr %i.w, ptr %.sroa.04.012.i, align 8, !tbaa !15
  %.sroa.0.0.i = getelementptr inbounds i8, ptr %.sroa.0.013.i, i64 -8 ; 2 uses
  %.val.val.i = load ptr, ptr %i.h, align 8, !tbaa !29
  %.val.val1.i = load i64, ptr %i.s, align 8, !tbaa !27
  %i.x = load ptr, ptr %.sroa.0.0.i, align 8, !tbaa !15 ; 2 uses
  %.val3.i.i = load ptr, ptr %i.x, align 8, !tbaa !29
  %i.y = getelementptr i8, ptr %i.x, i64 8
  %.val4.i.i = load i64, ptr %i.y, align 8, !tbaa !27
  %i.z = tail call noundef zeroext i1 @_ZN5vcpkgltENS_10StringViewES0_(ptr %.val.val.i, i64 %.val.val1.i, ptr %.val3.i.i, i64 %.val4.i.i) #15
  br i1 %i.z, label %.lr.ph.i, label %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, !llvm.loop !33

_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit: ; preds = %.lr.ph.i, %bb.g, %bb.f, %bb.e, %bb.d
  %.sink = phi ptr [ %0, %bb.f ], [ %0, %bb.d ], [ %0, %bb.e ], [ %.sroa.0.019, %bb.g ], [ %.sroa.0.013.i, %.lr.ph.i ]
  store ptr %i.h, ptr %.sink, align 8, !tbaa !15
  %.sroa.0.0 = getelementptr inbounds nuw i8, ptr %.sroa.0.019, i64 8 ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0, %1
  br i1 %.not, label %.loopexit, label %bb.b, !llvm.loop !47

.loopexit:                                        ; preds = %_ZSt13move_backwardIN9__gnu_cxx17__normal_iteratorIPPKN5vcpkg15CommandMetadataESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit, %.preheader, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { noreturn }
attributes #13 = { builtin allocsize(0) }
attributes #14 = { builtin nounwind }
attributes #15 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSN5vcpkg19CommandRegistrationIPFvRKNS_17VcpkgCmdArgumentsERKNS_10FilesystemEEEE", !11, i64 0, !12, i64 8}
!11 = !{!"p1 _ZTSN5vcpkg15CommandMetadataE", !12, i64 0}
!12 = !{!"any pointer", !7, i64 0}
!13 = !{}
!14 = !{i64 8}
!15 = !{!11, !11, i64 0}
!16 = !{!17, !11, i64 0}
!17 = !{!"_ZTSN5vcpkg19CommandRegistrationIPFvRKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsEEEE", !11, i64 0, !12, i64 8}
!18 = !{!19, !11, i64 0}
!19 = !{!"_ZTSN5vcpkg19CommandRegistrationIPFvRKNS_17VcpkgCmdArgumentsERKNS_10VcpkgPathsENS_7TripletES7_EEE", !11, i64 0, !12, i64 8}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !22, i64 0}
!22 = !{!"p1 omnipotent char", !12, i64 0}
!23 = !{!24, !25, i64 8}
!24 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !21, i64 0, !25, i64 8, !7, i64 16}
!25 = !{!"long", !7, i64 0}
!26 = !{!7, !7, i64 0}
!27 = !{!25, !25, i64 0}
!28 = !{!24, !22, i64 0}
end_hunk_2
