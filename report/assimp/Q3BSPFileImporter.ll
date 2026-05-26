inline.NumInlined: 886
inline.NumDeleted: 384
begin_hunk_0_@_ZN6Assimp17Q3BSPFileImporter17createMaterialMapEPKNS_5Q3BSP10Q3BSPModelE:bb.a
  br i1 %.not.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.av, ptr %3, align 8
  store i64 %i.bg, ptr %i.g, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

bb.l:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.g, ptr %3, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i: ; preds = %bb.l, %bb.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
  %i.bi = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.av, %bb.k ], [ %i.g, %bb.l ]
  store i64 0, ptr %i.h, align 8
  store i8 0, ptr %i.bi, align 1
  %i.bj = load ptr, ptr %3, align 8               ; 2 uses
  %i.bk = icmp eq ptr %i.bj, %i.g
  br i1 %i.bk, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i
  %i.bl = load i64, ptr %i.g, align 8
  %i.bm = add i64 %i.bl, 1
  call void @_ZdlPvm(ptr noundef %i.bj, i64 noundef %i.bm) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  store ptr %i.m, ptr %2, align 8
  %i.bn = load i64, ptr %i.o, align 8
  %i.bo = getelementptr inbounds i8, ptr %2, i64 %i.bn
  store ptr %i.n, ptr %i.bo, align 8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.p, align 8
  %i.bp = load ptr, ptr %i.l, align 8             ; 2 uses
  %i.bq = icmp eq ptr %i.bp, %i.q
  br i1 %i.bq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  %i.br = load i64, ptr %i.q, align 8
  %i.bs = add i64 %i.br, 1
  call void @_ZdlPvm(ptr noundef %i.bp, i64 noundef %i.bs) #23
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc.exit.i, %bb.c, %.noexc
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

.body.i:                                          ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %bb.n

bb.n:                                             ; preds = %.body.i, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.aq, %.body.i ], [ %i.bt, %bb.m ]
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %2) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %.body

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.p, align 8
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.r) #22
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.s) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  %i.bu = load ptr, ptr %i.u, align 8             ; 2 uses
  %.not10.i.i.i = icmp eq ptr %i.bu, null
  br i1 %.not10.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.thread, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i
  %i.bv = load i64, ptr %i.b, align 8             ; 4 uses
  %i.bw = load ptr, ptr %4, align 8               ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.v, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.by = load i64, ptr %i.bx, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.bv, i64 %i.by) ; 2 uses
  %i.bz = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.bz, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.o
  %i.ca = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.cb = load ptr, ptr %i.ca, align 8
  %i.cc = call i32 @memcmp(ptr noundef %i.cb, ptr noundef %i.bw, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.cc, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.o
  %i.cd = sub i64 %i.by, %i.bv
  %spec.select7.i.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cd, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.cc, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.ce = icmp slt i32 %.0.i.i.i.i.i.i, 0         ; 2 uses
  %.19.i.i.i = select i1 %i.ce, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 5 uses
  %.1.in.v.i.i.i = select i1 %i.ce, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i18 = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i18, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !21

_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.cf = icmp eq ptr %.19.i.i.i, %i.v
  br i1 %i.cf, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.thread, label %bb.p

bb.p:                                             ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.ch = load i64, ptr %i.cg, align 8            ; 2 uses
  %.sroa.speculated.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %i.ch, i64 %i.bv) ; 2 uses
  %i.ci = icmp eq i64 %.sroa.speculated.i.i.i.i.i, 0
  br i1 %i.ci, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i: ; preds = %bb.p
  %i.cj = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = call i32 @memcmp(ptr noundef %i.bw, ptr noundef %i.ck, i64 noundef %.sroa.speculated.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.cl, 0
  br i1 %.not.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %bb.p
  %i.cm = sub i64 %i.bv, %i.ch
  %spec.select7.i.i.i.i.i.i = call i64 @llvm.smax.i64(i64 %i.cm, i64 -2147483648)
  %.08.i.i.i.i.i.i = call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i to i32
  br label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %i.cl, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i ]
  %i.cn = icmp slt i32 %.0.i.i.i.i.i, 0
  br i1 %i.cn, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.thread, label %bb.s

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.thread: ; preds = %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit
  %i.co = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #27
          to label %bb.q unwind label %.loopexit  ; 3 uses

bb.q:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.co, i8 0, i64 24, i1 false)
  %i.cp = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %i.t, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %.thread unwind label %.loopexit

.thread:                                          ; preds = %bb.q
  store ptr %i.co, ptr %i.cp, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.b
  %i.cq = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit:                                        ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit.thread, %bb.q, %_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.w
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE4findERSH_.exit
  %i.cr = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 64
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not = icmp eq ptr %i.cs, null
  br i1 %.not, label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE9push_backERKS3_.exit, label %bb.t

bb.t:                                             ; preds = %.thread, %bb.s
  %.01331 = phi ptr [ %i.co, %.thread ], [ %i.cs, %bb.s ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01331, i64 8 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01331, i64 16 ; 2 uses
  %i.cw = load ptr, ptr %i.cv, align 8
  %.not.i = icmp eq ptr %i.cu, %i.cw
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  store ptr %i.ab, ptr %i.cu, align 8
  %i.cx = load ptr, ptr %i.ct, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8
  store ptr %i.cy, ptr %i.ct, align 8
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE9push_backERKS3_.exit

bb.v:                                             ; preds = %bb.t
  %i.cz = load ptr, ptr %.01331, align 8          ; 4 uses
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = ptrtoint ptr %i.cz to i64
  %i.dc = sub i64 %i.da, %i.db                    ; 6 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %bb.w, label %_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.de = ashr exact i64 %i.dc, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i, %i.de ; 2 uses
  %i.dg = call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i19 = icmp ne i64 %i.df, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.dh = shl nuw nsw i64 %i.dg, 3
  %i.di = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dh) #27
          to label %.noexc21 unwind label %.loopexit ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dj = getelementptr inbounds i8, ptr %i.di, i64 %i.dc ; 2 uses
  store ptr %i.ab, ptr %i.dj, align 8
  %i.dk = icmp sgt i64 %i.dc, 0
  br i1 %i.dk, label %bb.x, label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.x:                                             ; preds = %.noexc21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.di, ptr align 8 %i.cz, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.x, %.noexc21
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dc) #23
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.di, ptr %.01331, align 8
  store ptr %i.dl, ptr %i.ct, align 8
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %i.dg
  store ptr %i.dm, ptr %i.cv, align 8
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.u, %bb.s
  %i.dn = add nuw i64 %.01437, 1                  ; 2 uses
  %i.do = load ptr, ptr %i.d, align 8
  %i.dp = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.dq = ptrtoint ptr %i.do to i64
  %i.dr = ptrtoint ptr %i.dp to i64
  %i.ds = sub i64 %i.dq, %i.dr
  %i.dt = ashr exact i64 %i.ds, 3
  %i.du = icmp ult i64 %i.dn, %i.dt
  br i1 %i.du, label %bb.b, label %._crit_edge, !llvm.loop !22

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.cq, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.dv = load ptr, ptr %4, align 8               ; 2 uses
  %i.dw = icmp eq ptr %i.dv, %i.a
  br i1 %i.dw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.body
  %i.dx = load i64, ptr %i.a, align 8
  %i.dy = add i64 %i.dx, 1
  call void @_ZdlPvm(ptr noundef %i.dv, i64 noundef %i.dy) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp17Q3BSPFileImporter11CreateNodesEPKNS_5Q3BSP10Q3BSPModelEP7aiSceneP6aiNode(ptr noundef nonnull align 8 captures(address) dereferenceable(160) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not87116 = icmp eq ptr %i.d, %i.e
  br i1 %.not87116, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread, %bb.b
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.19.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ] ; 2 uses
  %.sroa.063.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.063.3, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ] ; 8 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.10.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ] ; 2 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.15.3, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ] ; 2 uses
  %.sroa.12.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.12.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ] ; 2 uses
  %.sroa.072.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.072.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ] ; 8 uses
  %i.f = ptrtoint ptr %.sroa.12.0.lcssa to i64
  %i.g = ptrtoint ptr %.sroa.072.0.lcssa to i64   ; 2 uses
  %i.h = sub i64 %i.f, %i.g                       ; 4 uses
  %i.i = ashr exact i64 %i.h, 3                   ; 3 uses
  %i.j = trunc i64 %i.i to i32                    ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.j, ptr %i.k, align 8
  %.not = icmp eq i32 %i.j, 0
  br i1 %.not, label %.loopexit, label %bb.s

.lr.ph:                                           ; preds = %bb.b, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread
  %.0124 = phi i32 [ %i.bb, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ 0, %bb.b ] ; 2 uses
  %.sroa.072.0123 = phi ptr [ %.sroa.072.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 9 uses
  %.sroa.12.0122 = phi ptr [ %.sroa.12.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 9 uses
  %.sroa.060.0121 = phi ptr [ %i.bc, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.15.0120 = phi ptr [ %.sroa.15.3, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 9 uses
  %.sroa.10.0119 = phi ptr [ %.sroa.10.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 6 uses
  %.sroa.063.0118 = phi ptr [ %.sroa.063.3, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 11 uses
  %.sroa.19.0117 = phi ptr [ %.sroa.19.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.060.0121, i64 64
  %i.m = load ptr, ptr %i.l, align 8              ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.n, %i.p
  br i1 %.not13.i, label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.015.i = phi i64 [ %.2.i, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.09.014.i = phi ptr [ %i.x, %bb.d ], [ %i.n, %.lr.ph ] ; 2 uses
  %i.q = load ptr, ptr %.sroa.09.014.i, align 8   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load i32, ptr %i.r, align 4
  switch i32 %i.s, label %bb.d [
    i32 1, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.u = load i32, ptr %i.t, align 4
  %i.v = sext i32 %i.u to i64
  %i.w = add i64 %.015.i, %i.v
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.2.i = phi i64 [ %.015.i, %.lr.ph.i ], [ %i.w, %bb.c ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.x, %i.p
  br i1 %.not.i, label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit, label %.lr.ph.i, !llvm.loop !23

_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit: ; preds = %bb.d
  %.not42 = icmp eq i64 %.2.i, 0
  br i1 %.not42, label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8
  %i.y = invoke noundef ptr @_ZN6Assimp17Q3BSPFileImporter14CreateTopologyEPKNS_5Q3BSP10Q3BSPModelEjRSt6vectorIPNS1_10sQ3BSPFaceESaIS7_EEPP6aiMesh(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1, i32 noundef %.0124, ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %.loopexit89 ; 3 uses

bb.f:                                             ; preds = %bb.e
  %.not43 = icmp eq ptr %i.y, null
  br i1 %.not43, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i45 = icmp eq ptr %.sroa.10.0119, %.sroa.15.0120
  br i1 %.not.i45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.y, ptr %.sroa.10.0119, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.z = ptrtoint ptr %.sroa.15.0120 to i64
  %i.aa = ptrtoint ptr %.sroa.063.0118 to i64
  %i.ab = sub i64 %i.z, %i.aa                     ; 6 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %bb.j, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ad = ashr exact i64 %i.ab, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i, %i.ad ; 2 uses
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ae, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ag = shl nuw nsw i64 %i.af, 3
  %i.ah = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ag) #27
          to label %.noexc46 unwind label %.loopexit89 ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.ai = getelementptr inbounds i8, ptr %i.ah, i64 %i.ab ; 2 uses
  store ptr %i.y, ptr %i.ai, align 8
  %i.aj = icmp sgt i64 %i.ab, 0
  br i1 %i.aj, label %bb.k, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ah, ptr align 8 %.sroa.063.0118, i64 %i.ab, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc46
  %.not.i17.i.i = icmp eq ptr %.sroa.063.0118, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0118, i64 noundef %i.ab) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.af
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %.sroa.063.5 = phi ptr [ %i.ah, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.063.0118, %bb.h ] ; 4 uses
  %.pn88 = phi ptr [ %i.ai, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.0119, %bb.h ]
  %.sroa.15.5 = phi ptr [ %i.ak, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.15.0120, %bb.h ] ; 4 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn88, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %.sroa.12.0122, %.sroa.19.0117
  br i1 %.not.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.al = load ptr, ptr %i.a, align 8
  store ptr %i.al, ptr %.sroa.12.0122, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.12.0122, i64 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.an = ptrtoint ptr %.sroa.12.0122 to i64
  %i.ao = ptrtoint ptr %.sroa.072.0123 to i64
  %i.ap = sub i64 %i.an, %i.ao                    ; 6 uses
  %i.aq = icmp eq i64 %i.ap, 9223372036854775800
  br i1 %i.aq, label %bb.o, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.ar = ashr exact i64 %i.ap, 3                 ; 2 uses
  %.sroa.speculated.i.i.i48 = tail call i64 @llvm.umax.i64(i64 %i.ar, i64 1)
  %i.as = add nsw i64 %.sroa.speculated.i.i.i48, %i.ar ; 2 uses
  %i.at = tail call i64 @llvm.umin.i64(i64 %i.as, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i49 = icmp ne i64 %i.as, 0
  tail call void @llvm.assume(i1 %.not.i.i.i49)
  %i.au = shl nuw nsw i64 %i.at, 3
  %i.av = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.au) #27
          to label %.noexc52 unwind label %.loopexit89 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aw = getelementptr inbounds i8, ptr %i.av, i64 %i.ap ; 2 uses
  %i.ax = load ptr, ptr %i.a, align 8
  store ptr %i.ax, ptr %i.aw, align 8
  %i.ay = icmp sgt i64 %i.ap, 0
  br i1 %i.ay, label %bb.p, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.p:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.av, ptr align 8 %.sroa.072.0123, i64 %i.ap, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.p, %.noexc52
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.not.i17.i.i50 = icmp eq ptr %.sroa.072.0123, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0123, i64 noundef %i.ap) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.at
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

.loopexit89:                                      ; preds = %bb.e, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.19.0117.lcssa = phi ptr [ %.sroa.19.0117, %bb.e ], [ %.sroa.19.0117, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.12.0122, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.063.1.ph = phi ptr [ %.sroa.063.0118, %bb.e ], [ %.sroa.063.0118, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.063.5, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.15.1.ph = phi ptr [ %.sroa.15.0120, %bb.e ], [ %.sroa.15.0120, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.15.5, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.j, %bb.o
  %.sroa.19.0117144 = phi ptr [ %.sroa.12.0122, %bb.o ], [ %.sroa.19.0117, %bb.j ]
  %.sroa.063.1.ph90 = phi ptr [ %.sroa.063.5, %bb.o ], [ %.sroa.063.0118, %bb.j ]
  %.sroa.15.1.ph91 = phi ptr [ %.sroa.15.5, %bb.o ], [ %.sroa.15.0120, %bb.j ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit89
  %.sroa.19.0117143 = phi ptr [ %.sroa.19.0117.lcssa, %.loopexit89 ], [ %.sroa.19.0117144, %.loopexit.split-lp ]
  %.sroa.063.1 = phi ptr [ %.sroa.063.1.ph, %.loopexit89 ], [ %.sroa.063.1.ph90, %.loopexit.split-lp ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.1.ph, %.loopexit89 ], [ %.sroa.15.1.ph91, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit89 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ab

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.m, %bb.f
  %.sroa.19.1 = phi ptr [ %.sroa.19.0117, %bb.f ], [ %i.ba, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0117, %bb.m ]
  %.sroa.063.2 = phi ptr [ %.sroa.063.0118, %bb.f ], [ %.sroa.063.5, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.063.5, %bb.m ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0119, %bb.f ], [ %.sroa.10.3, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.3, %bb.m ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.0120, %bb.f ], [ %.sroa.15.5, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.15.5, %bb.m ]
  %.sroa.12.1 = phi ptr [ %.sroa.12.0122, %bb.f ], [ %i.az, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.am, %bb.m ]
  %.sroa.072.1 = phi ptr [ %.sroa.072.0123, %bb.f ], [ %i.av, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.072.0123, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread

_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread: ; preds = %.lr.ph, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit
  %.sroa.19.2 = phi ptr [ %.sroa.19.0117, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.19.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.19.0117, %.lr.ph ] ; 2 uses
  %.sroa.063.3 = phi ptr [ %.sroa.063.0118, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.063.2, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.063.0118, %.lr.ph ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0119, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.10.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.10.0119, %.lr.ph ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.0120, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.15.2, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.15.0120, %.lr.ph ] ; 2 uses
  %.sroa.12.2 = phi ptr [ %.sroa.12.0122, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.12.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.12.0122, %.lr.ph ] ; 2 uses
  %.sroa.072.2 = phi ptr [ %.sroa.072.0123, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.072.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.072.0123, %.lr.ph ] ; 2 uses
  %i.bb = add i32 %.0124, 1
  %i.bc = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.060.0121) #24 ; 2 uses
  %.not87 = icmp eq ptr %i.bc, %i.e
  br i1 %.not87, label %._crit_edge, label %.lr.ph, !llvm.loop !24

bb.s:                                             ; preds = %._crit_edge
  %i.bd = and i64 %i.h, 34359738360
  %i.be = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bd) #27
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.be, ptr %i.bf, align 8
  %.not138 = icmp eq ptr %.sroa.12.0.lcssa, %.sroa.072.0.lcssa
  br i1 %.not138, label %.loopexit, label %.lr.ph132.preheader

.lr.ph132.preheader:                              ; preds = %bb.t
  %i.bg = icmp eq i64 %i.h, 8
  br i1 %i.bg, label %.lr.ph132.epil.preheader, label %.lr.ph132.preheader.new

.lr.ph132.preheader.new:                          ; preds = %.lr.ph132.preheader
  %unroll_iter = and i64 %i.i, -2
  br label %.lr.ph132

bb.u:                                             ; preds = %.loopexit, %bb.s
  %i.bh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph132:                                        ; preds = %bb.x, %.lr.ph132.preheader.new
  %.036130 = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %i.br, %bb.x ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph132.preheader.new ], [ %niter.next.1, %bb.x ]
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0.lcssa, i64 %.036130
  %i.bj = load ptr, ptr %i.bi, align 8            ; 2 uses
  %.not41 = icmp eq ptr %i.bj, null
  br i1 %.not41, label %.lr.ph132.1, label %bb.v

bb.v:                                             ; preds = %.lr.ph132
  %i.bk = load ptr, ptr %i.bf, align 8
  %i.bl = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %.036130
  store ptr %i.bj, ptr %i.bl, align 8
  br label %.lr.ph132.1

.lr.ph132.1:                                      ; preds = %bb.v, %.lr.ph132
  %i.bm = or disjoint i64 %.036130, 1             ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0.lcssa, i64 %i.bm
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not41.1 = icmp eq ptr %i.bo, null
  br i1 %.not41.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph132.1
  %i.bp = load ptr, ptr %i.bf, align 8
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bp, i64 %i.bm
  store ptr %i.bo, ptr %i.bq, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph132.1
  %i.br = add nuw i64 %.036130, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph132, !llvm.loop !25

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.x
  %i.bs = and i64 %i.h, 8
  %lcmp.mod.not = icmp eq i64 %i.bs, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph132.epil.preheader

.lr.ph132.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph132.preheader
  %.036130.epil.init = phi i64 [ 0, %.lr.ph132.preheader ], [ %i.br, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod224 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod224)
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.072.0.lcssa, i64 %.036130.epil.init
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %.not41.epil = icmp eq ptr %i.bu, null
  br i1 %.not41.epil, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph132.epil.preheader
  %i.bv = load ptr, ptr %i.bf, align 8
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.bv, i64 %.036130.epil.init
  store ptr %i.bu, ptr %i.bw, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.y, %.lr.ph132.epil.preheader, %bb.t, %._crit_edge
  %i.bx = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i32 %i.j, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.bz = load ptr, ptr %i.by, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 1104
  %i.cb = load i32, ptr %i.ca, align 8
  %i.cc = zext i32 %i.cb to i64
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.cd) #27
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %.loopexit
  %i.cf = getelementptr inbounds nuw i8, ptr %3, i64 1112 ; 7 uses
  store ptr %i.ce, ptr %i.cf, align 8
  %i.cg = ptrtoint ptr %.sroa.063.0.lcssa to i64  ; 2 uses
  %.not139 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.063.0.lcssa
  br i1 %.not139, label %._crit_edge136, label %.lr.ph135.preheader

.lr.ph135.preheader:                              ; preds = %bb.z
  %i.ch = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.ci = sub i64 %i.ch, %i.cg                    ; 3 uses
  %i.cj = ashr exact i64 %i.ci, 3                 ; 2 uses
  %i.ck = icmp eq i64 %i.ci, 8
  br i1 %i.ck, label %.lr.ph135.epil.preheader, label %.lr.ph135.preheader.new

.lr.ph135.preheader.new:                          ; preds = %.lr.ph135.preheader
  %unroll_iter228 = and i64 %i.cj, -2
  br label %.lr.ph135

._crit_edge136:                                   ; preds = %bb.z
  %.not.i.i.i53 = icmp eq ptr %.sroa.063.0.lcssa, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %._crit_edge136.thread

._crit_edge136.thread.loopexit.unr-lcssa:         ; preds = %.lr.ph135
  %i.cl = and i64 %i.ci, 8
  %lcmp.mod226.not = icmp eq i64 %i.cl, 0
  br i1 %lcmp.mod226.not, label %._crit_edge136.thread, label %.lr.ph135.epil.preheader

.lr.ph135.epil.preheader:                         ; preds = %._crit_edge136.thread.loopexit.unr-lcssa, %.lr.ph135.preheader
  %.034133.epil.init = phi i64 [ 0, %.lr.ph135.preheader ], [ %i.dy, %._crit_edge136.thread.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod227 = trunc i64 %i.cj to i1
  tail call void @llvm.assume(i1 %lcmp.mod227)
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %.034133.epil.init
  %i.cn = load ptr, ptr %i.cm, align 8            ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 1096
  store ptr %3, ptr %i.co, align 8
  %i.cp = load ptr, ptr %i.cf, align 8
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %.034133.epil.init
  store ptr %i.cn, ptr %i.cq, align 8
  %i.cr = trunc i64 %.034133.epil.init to i32
  %i.cs = load ptr, ptr %i.cf, align 8
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cs, i64 %.034133.epil.init
  %i.cu = load ptr, ptr %i.ct, align 8
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 1128
  %i.cw = load ptr, ptr %i.cv, align 8
  store i32 %i.cr, ptr %i.cw, align 4
  br label %._crit_edge136.thread

._crit_edge136.thread:                            ; preds = %.lr.ph135.epil.preheader, %._crit_edge136.thread.loopexit.unr-lcssa, %._crit_edge136
  %i.cx = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.cy = sub i64 %i.cx, %i.cg
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0.lcssa, i64 noundef %i.cy) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %._crit_edge136, %._crit_edge136.thread
  %.not.i.i.i54 = icmp eq ptr %.sroa.072.0.lcssa, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %i.cz = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.da = sub i64 %i.cz, %i.g
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.072.0.lcssa, i64 noundef %i.da) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

end_hunk_0
begin_hunk_1_@_ZN6Assimp17Q3BSPFileImporter24importTextureFromArchiveEPKNS_5Q3BSP10Q3BSPModelEPNS_18ZipArchiveIOSystemEP7aiSceneP10aiMateriali:bb.a
  ]

bb.g:                                             ; preds = %._crit_edge.i.i
  %i.aq = load i8, ptr %i.p, align 1
  store i8 %i.aq, ptr %i.ap, align 1
  br label %bb.i

bb.h:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ap, ptr nonnull align 1 %i.p, i64 %i.al, i1 false)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %._crit_edge.i.i
  %i.ar = load i64, ptr %i.a, align 8             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  %i.at = load ptr, ptr %9, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 %i.ar
  store i8 0, ptr %i.au, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.av = invoke noundef zeroext i1 @_ZN6Assimp17Q3BSPFileImporter10expandFileEPNS_18ZipArchiveIOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERS8_SG_(ptr nonnull align 8 poison, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(32) %7, ptr noundef nonnull align 8 dereferenceable(32) %8)
          to label %bb.j unwind label %bb.ad

bb.j:                                             ; preds = %bb.i
  %i.aw = load ptr, ptr %9, align 8               ; 2 uses
  %i.ax = icmp eq ptr %i.aw, %i.ak
  br i1 %i.ax, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.j
  %i.ay = load i64, ptr %i.ak, align 8
  %i.az = add i64 %i.ay, 1
  call void @_ZdlPvm(ptr noundef %i.aw, i64 noundef %i.az) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.j, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br i1 %i.av, label %bb.k, label %bb.an

bb.k:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ba = load ptr, ptr %7, align 8
  %i.bb = load ptr, ptr %2, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8
  %i.be = invoke noundef ptr %i.bd(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef %i.ba, ptr noundef nonnull @.str.13)
          to label %bb.l unwind label %bb.ae      ; 6 uses

bb.l:                                             ; preds = %bb.k
  %.not46 = icmp eq ptr %i.be, null
  br i1 %.not46, label %bb.ak, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 48
  %i.bh = load ptr, ptr %i.bg, align 8
  %i.bi = invoke noundef i64 %i.bh(ptr noundef nonnull align 8 dereferenceable(8) %i.be)
          to label %bb.n unwind label %bb.af      ; 2 uses

bb.n:                                             ; preds = %bb.m
  %i.bj = invoke noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #27
          to label %bb.o unwind label %bb.ag      ; 9 uses

bb.o:                                             ; preds = %bb.n
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.bk, i8 0, i64 1036, i1 false)
  %i.bl = trunc i64 %i.bi to i32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.bj, i8 0, i64 17, i1 false)
  store i32 %i.bl, ptr %i.bj, align 8
  %i.bm = and i64 %i.bi, 4294967295               ; 2 uses
  %i.bn = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bm) #27
          to label %bb.p unwind label %bb.ah      ; 2 uses

bb.p:                                             ; preds = %bb.o
  %i.bo = load ptr, ptr %i.be, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = invoke noundef i64 %i.bq(ptr noundef nonnull align 8 dereferenceable(8) %i.be, ptr noundef nonnull %i.bn, i64 noundef 1, i64 noundef %i.bm)
          to label %bb.q unwind label %bb.ai      ; 0 uses

bb.q:                                             ; preds = %bb.p
  store ptr %i.bn, ptr %i.bk, align 8
  %i.bs = load ptr, ptr %8, align 8               ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store i8 %i.bu, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.bj, i64 9
  store i8 %i.bx, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bs, i64 3
  %i.ca = load i8, ptr %i.bz, align 1
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bj, i64 10
  store i8 %i.ca, ptr %i.cb, align 2
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bj, i64 11
  store i8 0, ptr %i.cc, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #22
  %i.cd = getelementptr inbounds nuw i8, ptr %10, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.cd, i8 0, i64 1024, i1 false)
  %i.ce = getelementptr inbounds nuw i8, ptr %10, i64 4
  store i8 42, ptr %i.ce, align 4
  %i.cf = getelementptr inbounds nuw i8, ptr %10, i64 5 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = load ptr, ptr %i.cg, align 8
  %i.ck = ptrtoint ptr %i.ci to i64
  %i.cl = ptrtoint ptr %i.cj to i64
  %i.cm = sub i64 %i.ck, %i.cl
  %i.cn = lshr exact i64 %i.cm, 3
  %i.co = trunc i64 %i.cn to i32                  ; 3 uses
  %i.cp = icmp slt i32 %i.co, 0
  br i1 %i.cp, label %bb.r, label %.lr.ph.i.preheader

bb.r:                                             ; preds = %bb.q
  %i.cq = getelementptr inbounds nuw i8, ptr %10, i64 6
  store i8 45, ptr %i.cf, align 1
  %i.cr = sub nsw i32 0, %i.co
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.r, %bb.q
  %.153.i.ph = phi ptr [ %i.cf, %bb.q ], [ %i.cq, %bb.r ]
  %.13350.i.ph = phi i32 [ 1, %bb.q ], [ 2, %bb.r ]
  %.13849.i.ph = phi i32 [ %i.co, %bb.q ], [ %i.cr, %bb.r ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.t
  %.153.i = phi ptr [ %.2.i, %bb.t ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.t ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.db, %bb.t ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.t ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.t ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.cs = sdiv i32 %.13849.i, %.03051.i           ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.ct = icmp ne i32 %i.cs, 0
  %i.cu = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.cv = or i1 %i.cu, %i.ct
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.cv ; 2 uses
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %.lr.ph.i
  %i.cw = trunc i32 %i.cs to i8
  %i.cx = add i8 %i.cw, 48
  %i.cy = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.cx, ptr %.153.i, align 1
  %i.cz = add nuw nsw i32 %.13350.i, 1            ; 2 uses
  %i.da = mul i32 %i.cs, %.03051.i                ; 0 uses
  br i1 %i.cu, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.t

bb.t:                                             ; preds = %bb.s, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.s ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.cz, %bb.s ], [ %.13350.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi ptr [ %i.cy, %bb.s ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.db = sdiv i32 %.03051.i, 10
  %i.dc = icmp ult i32 %.234.i, 1023
  br i1 %i.dc, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.s, %bb.t
  %.436.i = phi i32 [ %.234.i, %bb.t ], [ %i.cz, %bb.s ]
  %.4.i = phi ptr [ %.2.i, %bb.t ], [ %i.cy, %bb.s ]
  store i8 0, ptr %.4.i, align 1
  store i32 %.436.i, ptr %10, align 4
  %i.dd = load ptr, ptr %2, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 40
  %i.df = load ptr, ptr %i.de, align 8
  invoke void %i.df(ptr noundef nonnull align 8 dereferenceable(40) %2, ptr noundef nonnull %i.be)
          to label %bb.u unwind label %bb.aj

bb.u:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  %i.dg = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %10, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 0)
          to label %bb.v unwind label %bb.aj      ; 0 uses

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.ch, align 8            ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.dj = load ptr, ptr %i.di, align 8
  %.not.i75 = icmp eq ptr %i.dh, %i.dj
  br i1 %.not.i75, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  store ptr %i.bj, ptr %i.dh, align 8
  %i.dk = load ptr, ptr %i.ch, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store ptr %i.dl, ptr %i.ch, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit

bb.x:                                             ; preds = %bb.v
  %i.dm = load ptr, ptr %i.cg, align 8            ; 4 uses
  %i.dn = ptrtoint ptr %i.dh to i64
  %i.do = ptrtoint ptr %i.dm to i64
  %i.dp = sub i64 %i.dn, %i.do                    ; 6 uses
  %i.dq = icmp eq i64 %i.dp, 9223372036854775800
  br i1 %i.dq, label %bb.y, label %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.y:                                             ; preds = %bb.x
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc76 unwind label %bb.aj

.noexc76:                                         ; preds = %bb.y
  unreachable

_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.x
  %i.dr = ashr exact i64 %i.dp, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.dr, i64 1)
  %i.ds = add nsw i64 %.sroa.speculated.i.i.i, %i.dr ; 2 uses
  %i.dt = call i64 @llvm.umin.i64(i64 %i.ds, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.ds, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.du = shl nuw nsw i64 %i.dt, 3
  %i.dv = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.du) #27
          to label %.noexc77 unwind label %bb.aj  ; 4 uses

.noexc77:                                         ; preds = %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.dw = getelementptr inbounds i8, ptr %i.dv, i64 %i.dp ; 2 uses
  store ptr %i.bj, ptr %i.dw, align 8
  %i.dx = icmp sgt i64 %i.dp, 0
  br i1 %i.dx, label %bb.z, label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.z:                                             ; preds = %.noexc77
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dv, ptr align 8 %i.dm, i64 %i.dp, i1 false)
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.z, %.noexc77
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %.not.i17.i.i = icmp eq ptr %i.dm, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.dm, i64 noundef %i.dp) #23
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.aa, %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.dv, ptr %i.cg, align 8
  store ptr %i.dy, ptr %i.ch, align 8
  %i.dz = getelementptr inbounds nuw [8 x i8], ptr %i.dv, i64 %i.dt
  store ptr %i.dz, ptr %i.di, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.an

bb.ab:                                            ; preds = %bb.f, %bb.e, %bb.d
  %i.ea = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %.noexc.i
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

bb.ad:                                            ; preds = %bb.i
  %i.ec = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ed = load ptr, ptr %9, align 8               ; 2 uses
  %i.ee = icmp eq ptr %i.ed, %i.ak
  br i1 %i.ee, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78: ; preds = %bb.ad
  %i.ef = load i64, ptr %i.ak, align 8
  %i.eg = add i64 %i.ef, 1
  call void @_ZdlPvm(ptr noundef %i.ed, i64 noundef %i.eg) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80: ; preds = %bb.ad, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78, %bb.ac
  %.pn = phi { ptr, i32 } [ %i.eb, %bb.ac ], [ %i.ec, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i78 ], [ %i.ec, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  br label %bb.ap

bb.ae:                                            ; preds = %bb.k
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.af:                                            ; preds = %bb.m
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ag:                                            ; preds = %bb.n
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ah:                                            ; preds = %bb.o
  %i.ek = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.ai:                                            ; preds = %bb.p
  %i.el = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

bb.aj:                                            ; preds = %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %bb.y, %bb.u, %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  %i.em = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #22
  br label %bb.ap

bb.ak:                                            ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #22
  store i32 0, ptr %11, align 4
  %i.en = getelementptr inbounds nuw i8, ptr %11, i64 4 ; 2 uses
  %i.eo = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.en, ptr noundef nonnull dereferenceable(1) %i.p, i64 noundef 1024) #22 ; 0 uses
  %i.ep = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.en) #24
  %i.eq = trunc i64 %i.ep to i32
  store i32 %i.eq, ptr %11, align 4
  %i.er = invoke noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef nonnull %11, ptr noundef nonnull @.str.14, i32 noundef 1, i32 noundef 0)
          to label %bb.al unwind label %bb.am     ; 0 uses

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.es = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #22
  br label %bb.ap

bb.an:                                            ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit, %bb.al, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.et = load ptr, ptr %8, align 8               ; 2 uses
  %i.eu = icmp eq ptr %i.et, %i.ai
  br i1 %i.eu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81: ; preds = %bb.an
  %i.ev = load i64, ptr %i.ai, align 8
  %i.ew = add i64 %i.ev, 1
  call void @_ZdlPvm(ptr noundef %i.et, i64 noundef %i.ew) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83: ; preds = %bb.an, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i81
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.ex = load ptr, ptr %7, align 8               ; 2 uses
  %i.ey = icmp eq ptr %i.ex, %i.ag
  br i1 %i.ey, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83
  %i.ez = load i64, ptr %i.ag, align 8
  %i.fa = add i64 %i.ez, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fa) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit83, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i84
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  %i.fb = load ptr, ptr %6, align 8               ; 3 uses
  %i.fc = load ptr, ptr %i.q, align 8             ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.fb, %i.fc
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.fi, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 3 uses
  %i.fd = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.fg = load i64, ptr %i.fe, align 8
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #23
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.fi = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i87 = icmp eq ptr %i.fi, %i.fc
  br i1 %.not.i.i.i87, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !13

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %6, align 8
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86
  %i.fj = phi ptr [ %.pr.i, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.fb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit86 ] ; 3 uses
  %.not.i.i1.i = icmp eq ptr %i.fj, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  %i.fk = load ptr, ptr %i.r, align 8
  %i.fl = ptrtoint ptr %i.fk to i64
  %i.fm = ptrtoint ptr %i.fj to i64
  %i.fn = sub i64 %i.fl, %i.fm
  call void @_ZdlPvm(ptr noundef nonnull %i.fj, i64 noundef %i.fn) #23
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %bb.ar

bb.ap:                                            ; preds = %bb.ag, %bb.ai, %bb.aj, %bb.ah, %bb.ae, %bb.am, %bb.af, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80
  %.pn47.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit80 ], [ %i.eh, %bb.ae ], [ %i.es, %bb.am ], [ %i.ei, %bb.af ], [ %i.ej, %bb.ag ], [ %i.ek, %bb.ah ], [ %i.em, %bb.aj ], [ %i.el, %bb.ai ]
  %i.fo = load ptr, ptr %8, align 8               ; 2 uses
  %i.fp = icmp eq ptr %i.fo, %i.ai
  br i1 %i.fp, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88: ; preds = %bb.ap
  %i.fq = load i64, ptr %i.ai, align 8
  %i.fr = add i64 %i.fq, 1
  call void @_ZdlPvm(ptr noundef %i.fo, i64 noundef %i.fr) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90: ; preds = %bb.ap, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i88
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  %i.fs = load ptr, ptr %7, align 8               ; 2 uses
  %i.ft = icmp eq ptr %i.fs, %i.ag
  br i1 %i.ft, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90
  %i.fu = load i64, ptr %i.ag, align 8
  %i.fv = add i64 %i.fu, 1
  call void @_ZdlPvm(ptr noundef %i.fs, i64 noundef %i.fv) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit90, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i91
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #22
  br label %bb.aq

bb.aq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93, %bb.ab
  %.pn47.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn47.pn.pn.pn.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit93 ], [ %i.ea, %bb.ab ]
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  resume { ptr, i32 } %.pn47.pn.pn.pn.pn.pn.pn

bb.ar:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

declare noundef ptr @_ZN6Assimp13DefaultLogger3getEv() local_unnamed_addr #7

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6Assimp6Logger5errorIJRA36_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull align 1 dereferenceable(36) %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
end_hunk_1
begin_hunk_2_@_ZN6Assimp6Logger5errorIJRA36_KcRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvDpOT_:bb.a
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.j = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.j, ptr %4, align 8
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.l = getelementptr i8, ptr %i.j, i64 -24
  %i.m = load i64, ptr %i.l, align 8
  %i.n = getelementptr inbounds i8, ptr %4, i64 %i.m
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.q = load ptr, ptr %i.p, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.t = load i64, ptr %i.r, align 8
  %i.u = add i64 %i.t, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.u) #23
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.o, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.v) #22
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.w) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  ret void

bb.e:                                             ; preds = %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2IA36_cEERKT_.exit
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

bb.f:                                             ; preds = %bb.c
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %3, align 8                ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ab = icmp eq ptr %i.z, %i.aa
  br i1 %i.ab, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6: ; preds = %bb.f
  %i.ac = load i64, ptr %i.aa, align 8
  %i.ad = add i64 %i.ac, 1
  call void @_ZdlPvm(ptr noundef %i.z, i64 noundef %i.ad) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit8: ; preds = %bb.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6, %bb.e
  %.pn = phi { ptr, i32 } [ %i.x, %bb.e ], [ %i.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i6 ], [ %i.y, %bb.f ]
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp17Q3BSPFileImporter14importLightmapEPKNS_5Q3BSP10Q3BSPModelEP7aiSceneP10aiMateriali(ptr noundef nonnull align 8 captures(none) dereferenceable(160) %0, ptr noundef readonly captures(address_is_null) %1, ptr noundef readnone captures(address_is_null) %2, ptr noundef %3, i32 noundef %4) local_unnamed_addr #6 align 2 {
bb.a:
  %5 = alloca %struct.aiString, align 4           ; 8 uses
  %i.a = icmp eq ptr %1, null
  %i.b = icmp eq ptr %2, null
  %or.cond = or i1 %i.a, %i.b
  %i.c = icmp eq ptr %3, null
  %or.cond3 = or i1 %or.cond, %i.c
  %i.d = icmp slt i32 %4, 0
  %or.cond33 = or i1 %or.cond3, %i.d
  br i1 %or.cond33, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.i = ptrtoint ptr %i.g to i64
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = sub i64 %i.i, %i.j
  %i.l = lshr exact i64 %i.k, 3
  %i.m = trunc i64 %i.l to i32
  %.not = icmp slt i32 %4, %i.m
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  %i.n = zext nneg i32 %4 to i64
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %i.n
  %i.p = load ptr, ptr %i.o, align 8              ; 4 uses
  %.not40 = icmp eq ptr %i.p, null
  br i1 %.not40, label %bb.o, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.q = tail call noalias noundef nonnull dereferenceable(1064) ptr @_Znwm(i64 noundef 1064) #27 ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(9) %i.s, i8 0, i64 9, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1036) %i.r, i8 0, i64 1036, i1 false)
  store i32 128, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  store i32 128, ptr %i.t, align 4
  %i.u = tail call noalias noundef nonnull dereferenceable(65536) ptr @_Znam(i64 noundef 65536) #27 ; 4 uses
  store ptr %i.u, ptr %i.r, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(128) %i.u, ptr noundef nonnull align 1 dereferenceable(128) %i.p, i64 128, i1 false)
  br label %bb.n

bb.e:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #22
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1024) %i.v, i8 0, i64 1024, i1 false)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i8 42, ptr %i.w, align 4
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = load ptr, ptr %i.y, align 8
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = ptrtoint ptr %i.ab to i64
  %i.ae = sub i64 %i.ac, %i.ad
  %i.af = lshr exact i64 %i.ae, 3
  %i.ag = trunc i64 %i.af to i32                  ; 3 uses
  %i.ah = icmp slt i32 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %.lr.ph.i.preheader

bb.f:                                             ; preds = %bb.e
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 6
  store i8 45, ptr %i.x, align 1
  %i.aj = sub nsw i32 0, %i.ag
  br label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.f, %bb.e
  %.153.i.ph = phi ptr [ %i.x, %bb.e ], [ %i.ai, %bb.f ]
  %.13350.i.ph = phi i32 [ 1, %bb.e ], [ 2, %bb.f ]
  %.13849.i.ph = phi i32 [ %i.ag, %bb.e ], [ %i.aj, %bb.f ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.h
  %.153.i = phi ptr [ %.2.i, %bb.h ], [ %.153.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %.02752.i = phi i1 [ %or.cond3.i, %bb.h ], [ false, %.lr.ph.i.preheader ]
  %.03051.i = phi i32 [ %i.at, %bb.h ], [ 1000000000, %.lr.ph.i.preheader ] ; 5 uses
  %.13350.i = phi i32 [ %.234.i, %bb.h ], [ %.13350.i.ph, %.lr.ph.i.preheader ] ; 2 uses
  %.13849.i = phi i32 [ %.239.i, %bb.h ], [ %.13849.i.ph, %.lr.ph.i.preheader ] ; 3 uses
  %i.ak = sdiv i32 %.13849.i, %.03051.i           ; 3 uses
  %.recomposed = srem i32 %.13849.i, %.03051.i
  %i.al = icmp ne i32 %i.ak, 0
  %i.am = icmp eq i32 %.03051.i, 1                ; 2 uses
  %i.an = or i1 %i.am, %i.al
  %or.cond3.i = select i1 %.02752.i, i1 true, i1 %i.an ; 2 uses
  br i1 %or.cond3.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ao = trunc i32 %i.ak to i8
  %i.ap = add i8 %i.ao, 48
  %i.aq = getelementptr inbounds nuw i8, ptr %.153.i, i64 1 ; 2 uses
  store i8 %i.ap, ptr %.153.i, align 1
  %i.ar = add nuw nsw i32 %.13350.i, 1            ; 2 uses
  %i.as = mul i32 %i.ak, %.03051.i                ; 0 uses
  br i1 %i.am, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit, label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.i
  %.239.i = phi i32 [ %.recomposed, %bb.g ], [ %.13849.i, %.lr.ph.i ]
  %.234.i = phi i32 [ %i.ar, %bb.g ], [ %.13350.i, %.lr.ph.i ] ; 3 uses
  %.2.i = phi ptr [ %i.aq, %bb.g ], [ %.153.i, %.lr.ph.i ] ; 2 uses
  %i.at = sdiv i32 %.03051.i, 10
  %i.au = icmp ult i32 %.234.i, 1023
  br i1 %i.au, label %.lr.ph.i, label %_ZN6Assimp13ASSIMP_itoa10EPcji.exit

_ZN6Assimp13ASSIMP_itoa10EPcji.exit:              ; preds = %bb.g, %bb.h
  %.436.i = phi i32 [ %.234.i, %bb.h ], [ %i.ar, %bb.g ]
  %.4.i = phi ptr [ %.2.i, %bb.h ], [ %i.aq, %bb.g ]
  store i8 0, ptr %.4.i, align 1
  store i32 %.436.i, ptr %5, align 4
  %i.av = call noundef i32 @_ZN10aiMaterial11AddPropertyEPK8aiStringPKcjj(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull %5, ptr noundef nonnull @.str.14, i32 noundef 10, i32 noundef 1) ; 0 uses
  %i.aw = load ptr, ptr %i.z, align 8             ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8
  %.not.i = icmp eq ptr %i.aw, %i.ay
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  store ptr %i.q, ptr %i.aw, align 8
  %i.az = load ptr, ptr %i.z, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  store ptr %i.ba, ptr %i.z, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit

bb.j:                                             ; preds = %_ZN6Assimp13ASSIMP_itoa10EPcji.exit
  %i.bb = load ptr, ptr %i.y, align 8             ; 4 uses
  %i.bc = ptrtoint ptr %i.aw to i64
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bc, %i.bd                    ; 6 uses
  %i.bf = icmp eq i64 %i.be, 9223372036854775800
  br i1 %i.bf, label %bb.k, label %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.k:                                             ; preds = %bb.j
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
  unreachable

_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.j
  %i.bg = ashr exact i64 %i.be, 3                 ; 2 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bg, i64 1)
  %i.bh = add nsw i64 %.sroa.speculated.i.i.i, %i.bg ; 2 uses
  %i.bi = call i64 @llvm.umin.i64(i64 %i.bh, i64 1152921504606846975) ; 2 uses
  %.not.i.i.i = icmp ne i64 %i.bh, 0
  call void @llvm.assume(i1 %.not.i.i.i)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #27 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.be ; 2 uses
  store ptr %i.q, ptr %i.bl, align 8
  %i.bm = icmp sgt i64 %i.be, 0
  br i1 %i.bm, label %bb.l, label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.l:                                             ; preds = %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.bb, i64 %i.be, i1 false)
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.l, %_ZNKSt6vectorIP9aiTextureSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.bb, i64 noundef %i.be) #23
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.m, %_ZNSt6vectorIP9aiTextureSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  store ptr %i.bk, ptr %i.y, align 8
  store ptr %i.bn, ptr %i.z, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bo, ptr %i.ax, align 8
  br label %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit: ; preds = %bb.i, %_ZNSt6vectorIP9aiTextureSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #22
  br label %bb.o

bb.n:                                             ; preds = %bb.n, %bb.d
  %.042 = phi i64 [ 0, %bb.d ], [ %i.cm, %bb.n ]  ; 3 uses
  %.02741 = phi i64 [ 0, %bb.d ], [ %i.ci, %bb.n ] ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.p, i64 %.02741 ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %i.br = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.042 ; 4 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 2
  store i8 %i.bq, ptr %i.bs, align 1
  %i.bt = getelementptr i8, ptr %i.bp, i64 1
  %i.bu = load i8, ptr %i.bt, align 1
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 1
  store i8 %i.bu, ptr %i.bv, align 1
  %i.bw = getelementptr i8, ptr %i.bp, i64 2
  %i.bx = load i8, ptr %i.bw, align 1
  store i8 %i.bx, ptr %i.br, align 1
  %i.by = getelementptr inbounds nuw i8, ptr %i.br, i64 3
  store i8 -1, ptr %i.by, align 1
  %i.bz = getelementptr inbounds nuw i8, ptr %i.p, i64 %.02741 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 3
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %.042 ; 4 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 4
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cc, i64 6
  store i8 %i.cb, ptr %i.ce, align 1
  %i.cf = getelementptr i8, ptr %i.bz, i64 4
  %i.cg = load i8, ptr %i.cf, align 1
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cc, i64 5
  store i8 %i.cg, ptr %i.ch, align 1
  %i.ci = add nuw nsw i64 %.02741, 6
  %i.cj = getelementptr i8, ptr %i.bz, i64 5
  %i.ck = load i8, ptr %i.cj, align 1
  store i8 %i.ck, ptr %i.cd, align 1
  %i.cl = getelementptr inbounds nuw i8, ptr %i.cc, i64 7
  store i8 -1, ptr %i.cl, align 1
  %i.cm = add nuw nsw i64 %.042, 2                ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.cm, 16384
  br i1 %exitcond.not.1, label %bb.e, label %bb.n, !llvm.loop !43

bb.o:                                             ; preds = %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit, %bb.c, %bb.b, %bb.a
  %.1 = phi i1 [ true, %_ZNSt6vectorIP9aiTextureSaIS1_EE9push_backERKS1_.exit ], [ false, %bb.a ], [ false, %bb.b ], [ false, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEEixERSH_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::tuple", align 8        ; 4 uses
  %3 = alloca %"class.std::tuple.68", align 1     ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.not10.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not10.i.i.i, label %.critedge, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = load ptr, ptr %1, align 8                ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.b, %.lr.ph.i.i.i ], [ %.1.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ] ; 4 uses
  %.0811.i.i.i = phi ptr [ %i.c, %.lr.ph.i.i.i ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i ]
  %i.g = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 40
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.sroa.speculated.i.i.i.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.e, i64 %i.h) ; 2 uses
  %i.i = icmp eq i64 %.sroa.speculated.i.i.i.i.i.i, 0
  br i1 %i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 @memcmp(ptr noundef %i.k, ptr noundef %i.f, i64 noundef %.sroa.speculated.i.i.i.i.i.i) #22 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i, %bb.b
  %i.m = sub i64 %i.h, %i.e
  %spec.select7.i.i.i.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.m, i64 -2147483648)
  %.08.i.i.i.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i.i.i.i = trunc nsw i64 %.08.i.i.i.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i.i.i.i ], [ %.0.i6.i.i.i.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i.i.i.i ]
  %i.n = icmp slt i32 %.0.i.i.i.i.i.i, 0          ; 2 uses
  %.19.i.i.i = select i1 %i.n, ptr %.0811.i.i.i, ptr %.012.i.i.i ; 7 uses
  %.1.in.v.i.i.i = select i1 %i.n, i64 24, i64 16
  %.1.in.i.i.i = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 %.1.in.v.i.i.i
  %.1.i.i.i = load ptr, ptr %.1.in.i.i.i, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.1.i.i.i, null
  br i1 %.not.i.i.i, label %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit, label %bb.b, !llvm.loop !21

_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit: ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit.i.i.i
  %i.o = icmp eq ptr %.19.i.i.i, %i.c
  br i1 %i.o, label %.critedge, label %bb.c

bb.c:                                             ; preds = %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit
  %i.p = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 40
  %i.q = load i64, ptr %i.p, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.q, i64 %i.e) ; 2 uses
  %i.r = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.r, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %.19.i.i.i, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = tail call i32 @memcmp(ptr noundef %i.f, ptr noundef %i.t, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i4 = icmp eq i32 %i.u, 0
  br i1 %.not.i.i.i4, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.c
  %i.v = sub i64 %i.e, %i.q
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.v, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.u, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.w = icmp slt i32 %.0.i.i.i, 0
  br i1 %i.w, label %.critedge, label %bb.d

.critedge:                                        ; preds = %bb.a, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.08.lcssa.i.i.i12 = phi ptr [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ], [ %.19.i.i.i, %_ZNSt3mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISA_EESt4lessIS5_ESaISt4pairIKS5_SD_EEE11lower_boundERSH_.exit ], [ %i.c, %bb.a ]
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #22
  store ptr %1, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #22
  %i.x = call ptr @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE22_M_emplace_hint_uniqueIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESR_IJEEEEESt17_Rb_tree_iteratorISG_ESt23_Rb_tree_const_iteratorISG_EDpOT_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr %.08.lcssa.i.i.i12, ptr noundef nonnull align 1 dereferenceable(1) @_ZSt19piecewise_construct, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 1 dereferenceable(1) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #22
  br label %bb.d

bb.d:                                             ; preds = %.critedge, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.sroa.07.0 = phi ptr [ %i.x, %.critedge ], [ %.19.i.i.i, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.07.0, i64 64
  ret ptr %i.y
}

; Function Attrs: mustprogress uwtable
define hidden noundef zeroext i1 @_ZN6Assimp17Q3BSPFileImporter10expandFileEPNS_18ZipArchiveIOSystemERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKSt6vectorIS8_SaIS8_EERS8_SG_(ptr nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %5) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.a = load ptr, ptr %3, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  br label %bb.b

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i: ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull align 8 dereferenceable(32) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #22
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 5 uses
  store ptr %i.h, ptr %6, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i8 0, ptr %i.h, align 8
  %.not21.i = icmp eq ptr %6, %5
  br i1 %.not21.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i, !prof !5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i
  %i.j = load ptr, ptr %5, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 0, ptr %i.k, align 8
  store i8 0, ptr %i.j, align 1
  %.pre.i = load ptr, ptr %6, align 8
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i
  %i.l = phi ptr [ %.pre.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i ], [ %i.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i ]
  store i64 0, ptr %i.i, align 8
  store i8 0, ptr %i.l, align 1
  %i.m = load ptr, ptr %6, align 8                ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.h
  br i1 %i.n, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit
  %i.o = load i64, ptr %i.h, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.m, i64 noundef %i.p) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #22
  br label %.loopexit

bb.b:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit22, %.lr.ph
end_hunk_2
begin_hunk_3_@_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE17_M_construct_nodeIJRKSt21piecewise_construct_tSt5tupleIJRS7_EESR_IJEEEEEvPSt13_Rb_tree_nodeISG_EDpOT_:bb.a
  store i64 %i.h, ptr %i.a, align 8
  %i.i = icmp ugt i64 %i.h, 15
  br i1 %i.i, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.a
  %i.j = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.d     ; 2 uses

.noexc:                                           ; preds = %.noexc.i.i.i
  store ptr %i.j, ptr %i.b, align 8
  %i.k = load i64, ptr %i.a, align 8
  store i64 %i.k, ptr %i.e, align 8
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc, %bb.a
  %i.l = phi ptr [ %i.j, %.noexc ], [ %i.e, %bb.a ] ; 2 uses
  switch i64 %i.h, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.f
  ]

bb.b:                                             ; preds = %._crit_edge.i.i.i.i
  %i.m = load i8, ptr %i.f, align 1
  store i8 %i.m, ptr %i.l, align 1
  br label %bb.f

bb.c:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.l, ptr align 1 %i.f, i64 %i.h, i1 false)
  br label %bb.f

bb.d:                                             ; preds = %.noexc.i.i.i
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  %i.p = call ptr @__cxa_begin_catch(ptr %i.o) #22 ; 0 uses
  call void @_ZdlPvm(ptr noundef nonnull %1, i64 noundef 72) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.i unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.g unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i.i.i
  %i.r = load i64, ptr %i.a, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 40
  store i64 %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.b, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 %i.r
  store i8 0, ptr %i.u, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 64
  store ptr null, ptr %i.v, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.q

bb.h:                                             ; preds = %bb.e
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  call void @__clang_call_terminate(ptr %i.x) #25
  unreachable

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @__cxa_rethrow() local_unnamed_addr

declare void @__cxa_end_catch() local_unnamed_addr

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden { ptr, ptr } @_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE24_M_get_insert_unique_posERS7_(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.02931 = load ptr, ptr %i.a, align 8           ; 2 uses
  %.not32 = icmp eq ptr %.02931, null
  br i1 %.not32, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = load ptr, ptr %1, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  %.02933 = phi ptr [ %.02931, %.lr.ph ], [ %.029, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit ] ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.02933, i64 40
  %i.g = load i64, ptr %i.f, align 8              ; 2 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umin.i64(i64 %i.g, i64 %i.d) ; 2 uses
  %i.h = icmp eq i64 %.sroa.speculated.i.i.i, 0
  br i1 %i.h, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %.02933, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 @memcmp(ptr noundef %i.e, ptr noundef %i.j, i64 noundef %.sroa.speculated.i.i.i) #22 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.k, 0
  br i1 %.not.i.i.i, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %bb.b
  %i.l = sub i64 %i.d, %i.g
  %spec.select7.i.i.i.i = tail call i64 @llvm.smax.i64(i64 %i.l, i64 -2147483648)
  %.08.i.i.i.i = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i, i64 2147483647)
  %.0.i6.i.i.i = trunc nsw i64 %.08.i.i.i.i to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i
  %.0.i.i.i = phi i32 [ %i.k, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ %.0.i6.i.i.i, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i ]
  %i.m = icmp slt i32 %.0.i.i.i, 0                ; 2 uses
  %.in.v = select i1 %i.m, i64 16, i64 24
  %.in = getelementptr inbounds nuw i8, ptr %.02933, i64 %.in.v
  %.029 = load ptr, ptr %.in, align 8             ; 2 uses
  %.not = icmp eq ptr %.029, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !75

._crit_edge:                                      ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit
  br i1 %i.m, label %._crit_edge.thread, label %bb.d

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge
  %.028.lcssa39 = phi ptr [ %.02933, %._crit_edge ], [ %i.b, %bb.a ] ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = icmp eq ptr %.028.lcssa39, %i.o
  br i1 %i.p, label %bb.e, label %bb.c

bb.c:                                             ; preds = %._crit_edge.thread
  %i.q = tail call noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef nonnull %.028.lcssa39) #24
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %.028.lcssa38 = phi ptr [ %.028.lcssa39, %bb.c ], [ %.02933, %._crit_edge ]
  %.sroa.014.0 = phi ptr [ %i.q, %bb.c ], [ %.02933, %._crit_edge ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 40
  %i.s = load i64, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.u = load i64, ptr %i.t, align 8              ; 2 uses
  %.sroa.speculated.i.i.i5 = tail call i64 @llvm.umin.i64(i64 %i.u, i64 %i.s) ; 2 uses
  %i.v = icmp eq i64 %.sroa.speculated.i.i.i5, 0
  br i1 %i.v, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6: ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.014.0, i64 32
  %i.x = load ptr, ptr %1, align 8
  %i.y = load ptr, ptr %i.w, align 8
  %i.z = tail call i32 @memcmp(ptr noundef %i.y, ptr noundef %i.x, i64 noundef %.sroa.speculated.i.i.i5) #22 ; 2 uses
  %.not.i.i.i7 = icmp eq i32 %i.z, 0
  br i1 %.not.i.i.i7, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9, label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %bb.d
  %i.aa = sub i64 %i.s, %i.u
  %spec.select7.i.i.i.i10 = tail call i64 @llvm.smax.i64(i64 %i.aa, i64 -2147483648)
  %.08.i.i.i.i11 = tail call i64 @llvm.smin.i64(i64 %spec.select7.i.i.i.i10, i64 2147483647)
  %.0.i6.i.i.i12 = trunc nsw i64 %.08.i.i.i.i11 to i32
  br label %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13

_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9
  %.0.i.i.i8 = phi i32 [ %i.z, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i6 ], [ %.0.i6.i.i.i12, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.thread.i.i.i9 ]
  %i.ab = icmp slt i32 %.0.i.i.i8, 0              ; 2 uses
  %spec.select = select i1 %i.ab, ptr null, ptr %.sroa.014.0
  %spec.select30 = select i1 %i.ab, ptr %.028.lcssa38, ptr null
  br label %bb.e

bb.e:                                             ; preds = %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13, %._crit_edge.thread
  %.sroa.027.0 = phi ptr [ %spec.select, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ null, %._crit_edge.thread ]
  %.sroa.4.0 = phi ptr [ %spec.select30, %_ZNKSt4lessINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEclERKS5_S8_.exit13 ], [ %.028.lcssa39, %._crit_edge.thread ]
  %.fca.0.insert = insertvalue { ptr, ptr } poison, ptr %.sroa.027.0, 0
  %.fca.1.insert = insertvalue { ptr, ptr } %.fca.0.insert, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %.fca.1.insert
}

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare noundef ptr @_ZSt18_Rb_tree_decrementPSt18_Rb_tree_node_base(ptr noundef) local_unnamed_addr #18

; Function Attrs: nounwind
declare void @_ZSt29_Rb_tree_insert_and_rebalancebPSt18_Rb_tree_node_baseS0_RS_(i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJRA5_KcEEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 1 dereferenceable(5) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 3 uses
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64                 ; 3 uses
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = icmp eq i64 %i.g, 9223372036854775776
  br i1 %i.h, label %bb.b, label %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
  unreachable

_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit: ; preds = %bb.a
  %i.i = ashr exact i64 %i.g, 5                   ; 2 uses
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 1)
  %i.j = add nsw i64 %.sroa.speculated.i, %i.i    ; 2 uses
  %i.k = tail call i64 @llvm.umin.i64(i64 %i.j, i64 288230376151711743) ; 3 uses
  %i.l = ptrtoint ptr %1 to i64
  %i.m = sub i64 %i.l, %i.f
  %.not.i = icmp eq i64 %i.j, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit, label %bb.c

bb.c:                                             ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit
  %i.n = shl nuw nsw i64 %i.k, 5
  %i.o = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.n) #27
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit: ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit, %bb.c
  %i.p = phi ptr [ %i.o, %bb.c ], [ null, %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit ] ; 6 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.m ; 6 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 3 uses
  store ptr %i.r, ptr %i.q, align 8
  %i.s = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(5) %2) #22 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store i64 %i.s, ptr %i.a, align 8
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.u = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.u, ptr %i.q, align 8
  %i.v = load i64, ptr %i.a, align 8
  store i64 %i.v, ptr %i.r, align 8
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit
  %i.w = phi ptr [ %i.u, %.noexc ], [ %i.r, %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm.exit ] ; 2 uses
  switch i64 %i.s, label %bb.e [
    i64 1, label %bb.d
    i64 0, label %bb.f
  ]

bb.d:                                             ; preds = %._crit_edge.i.i
  %i.x = load i8, ptr %2, align 1
  store i8 %i.x, ptr %i.w, align 1
  br label %bb.f

bb.e:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.w, ptr nonnull align 1 dereferenceable(5) %2, i64 %i.s, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %._crit_edge.i.i
  %i.y = load i64, ptr %i.a, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.q, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 %i.y
  store i8 0, ptr %i.ab, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %.not10.i.i.i = icmp eq ptr %i.d, %1
  br i1 %.not10.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i
  %.012.i.i.i = phi ptr [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.p, %bb.f ] ; 5 uses
  %.0911.i.i.i = phi ptr [ %i.ao, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ], [ %i.d, %bb.f ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !76)
  call void @llvm.experimental.noalias.scope.decl(metadata !79)
  %i.ac = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 16 ; 3 uses
  store ptr %i.ac, ptr %.012.i.i.i, align 8, !alias.scope !76, !noalias !79
  %i.ad = load ptr, ptr %.0911.i.i.i, align 8, !alias.scope !79, !noalias !76 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 16 ; 5 uses
  %i.af = icmp eq ptr %i.ad, %i.ae
  br i1 %i.af, label %bb.g, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

bb.g:                                             ; preds = %.lr.ph.i.i.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !79, !noalias !76 ; 3 uses
  %i.ai = icmp ult i64 %i.ah, 16
  call void @llvm.assume(i1 %i.ai)
  %i.aj = add nuw nsw i64 %i.ah, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ac, ptr noundef nonnull align 8 dereferenceable(1) %i.ae, i64 %i.aj, i1 false), !alias.scope !81
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr %i.ad, ptr %.012.i.i.i, align 8, !alias.scope !76, !noalias !79
  %i.ak = load i64, ptr %i.ae, align 8, !alias.scope !79, !noalias !76
  store i64 %i.ak, ptr %i.ac, align 8, !alias.scope !76, !noalias !79
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %.pre.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !79, !noalias !76
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.g
  %i.al = phi i64 [ %i.ah, %bb.g ], [ %.pre.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 8
  %i.an = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 8
  store i64 %i.al, ptr %i.an, align 8, !alias.scope !76, !noalias !79
  store ptr %i.ae, ptr %.0911.i.i.i, align 8, !alias.scope !79, !noalias !76
  store i64 0, ptr %i.am, align 8, !alias.scope !79, !noalias !76
  store i8 0, ptr %i.ae, align 8, !alias.scope !79, !noalias !76
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 32 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ao, %1
  br i1 %.not.i.i.i, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, label %.lr.ph.i.i.i, !llvm.loop !82

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i, %bb.f
  %.0.lcssa.i.i.i = phi ptr [ %i.p, %bb.f ], [ %i.ap, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i, i64 32 ; 2 uses
  %.not10.i.i.i26 = icmp eq ptr %1, %i.c
  br i1 %.not10.i.i.i26, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27

.lr.ph.i.i.i27:                                   ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33
  %.012.i.i.i28 = phi ptr [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 5 uses
  %.0911.i.i.i29 = phi ptr [ %i.bd, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ], [ %1, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  call void @llvm.experimental.noalias.scope.decl(metadata !86)
  %i.ar = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 16 ; 3 uses
  store ptr %i.ar, ptr %.012.i.i.i28, align 8, !alias.scope !83, !noalias !86
  %i.as = load ptr, ptr %.0911.i.i.i29, align 8, !alias.scope !86, !noalias !83 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 16 ; 5 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %bb.h, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30

bb.h:                                             ; preds = %.lr.ph.i.i.i27
  %i.av = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !alias.scope !86, !noalias !83 ; 3 uses
  %i.ax = icmp ult i64 %i.aw, 16
  call void @llvm.assume(i1 %i.ax)
  %i.ay = add nuw nsw i64 %i.aw, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ar, ptr noundef nonnull align 8 dereferenceable(1) %i.at, i64 %i.ay, i1 false), !alias.scope !88
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30: ; preds = %.lr.ph.i.i.i27
  store ptr %i.as, ptr %.012.i.i.i28, align 8, !alias.scope !83, !noalias !86
  %i.az = load i64, ptr %i.at, align 8, !alias.scope !86, !noalias !83
  store i64 %i.az, ptr %i.ar, align 8, !alias.scope !83, !noalias !86
  %.phi.trans.insert.i.i.i.i31 = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %.pre.i.i.i.i32 = load i64, ptr %.phi.trans.insert.i.i.i.i31, align 8, !alias.scope !86, !noalias !83
  br label %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33

_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30, %bb.h
  %i.ba = phi i64 [ %i.aw, %bb.h ], [ %.pre.i.i.i.i32, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i30 ]
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 8
  store i64 %i.ba, ptr %i.bc, align 8, !alias.scope !83, !noalias !86
  store ptr %i.at, ptr %.0911.i.i.i29, align 8, !alias.scope !86, !noalias !83
  store i64 0, ptr %i.bb, align 8, !alias.scope !86, !noalias !83
  store i8 0, ptr %i.at, align 8, !alias.scope !86, !noalias !83
  %i.bd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i29, i64 32 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.012.i.i.i28, i64 32 ; 2 uses
  %.not.i.i.i34 = icmp eq ptr %i.bd, %i.c
  br i1 %.not.i.i.i34, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, label %.lr.ph.i.i.i27, !llvm.loop !82

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36: ; preds = %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit
  %.0.lcssa.i.i.i35 = phi ptr [ %i.aq, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit ], [ %i.be, %_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_.exit.i.i.i33 ]
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.not.i37 = icmp eq ptr %i.d, null
  br i1 %.not.i37, label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit, label %bb.i

bb.i:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36
  %i.bg = load ptr, ptr %i.bf, align 8
  %i.bh = ptrtoint ptr %i.bg to i64
  %i.bi = sub i64 %i.bh, %i.f
  call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef %i.bi) #23
  br label %_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit

_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE13_M_deallocateEPS5_m.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit36, %bb.i
  store ptr %i.p, ptr %0, align 8
  store ptr %.0.lcssa.i.i.i35, ptr %i.b, align 8
  %i.bj = getelementptr inbounds nuw [32 x i8], ptr %i.p, i64 %i.k
  store ptr %i.bj, ptr %i.bf, align 8
  ret void

bb.j:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.k unwind label %bb.l

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %.noexc.i
  %i.bl = landingpad { ptr, i32 }
          catch ptr null
  %i.bm = extractvalue { ptr, i32 } %i.bl, 0
  %i.bn = call ptr @__cxa_begin_catch(ptr %i.bm) #22 ; 0 uses
  %i.bo = shl nuw nsw i64 %i.k, 5
  call void @_ZdlPvm(ptr noundef nonnull %i.p, i64 noundef %i.bo) #23
  invoke void @__cxa_rethrow() #26
          to label %bb.m unwind label %bb.j

bb.k:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.bk

bb.l:                                             ; preds = %bb.j
  %i.bp = landingpad { ptr, i32 }
          catch ptr null
  %i.bq = extractvalue { ptr, i32 } %i.bp, 0
  call void @__clang_call_terminate(ptr %i.bq) #25
  unreachable

bb.m:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  unreachable
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #12

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #17 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #22 = { nounwind }
attributes #23 = { builtin nounwind }
attributes #24 = { nounwind willreturn memory(read) }
attributes #25 = { noreturn nounwind }
attributes #26 = { noreturn }
attributes #27 = { builtin allocsize(0) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = distinct !{!3, !4}
!4 = !{!"llvm.loop.mustprogress"}
!5 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!6 = !{!7}
!7 = distinct !{!7, !8, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!8 = distinct !{!8, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!9 = !{!10}
!10 = distinct !{!10, !11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!11 = distinct !{!11, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!12 = distinct !{!12, !4}
!13 = distinct !{!13, !4}
!14 = !{!15}
!15 = distinct !{!15, !16, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!16 = distinct !{!16, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!17 = !{!18}
!18 = distinct !{!18, !19, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!19 = distinct !{!19, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!20 = !{!18, !15}
!21 = distinct !{!21, !4}
!22 = distinct !{!22, !4}
!23 = distinct !{!23, !4}
!24 = distinct !{!24, !4}
!25 = distinct !{!25, !4}
!26 = distinct !{!26, !4}
!27 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!28 = !{!29}
!29 = distinct !{!29, !30, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!30 = distinct !{!30, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!31 = !{!32}
!32 = distinct !{!32, !33, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm: argument 0"}
!33 = distinct !{!33, !"_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm"}
!34 = distinct !{null}
!35 = distinct !{!35, !4}
!36 = distinct !{!36, !4}
!37 = distinct !{!37, !4}
!38 = distinct !{!38, !4}
!39 = distinct !{!39, !40}
!40 = !{!"llvm.loop.unroll.disable"}
!41 = distinct !{!41, !4}
!42 = distinct !{!42, !4}
!43 = distinct !{!43, !4}
!44 = !{!45}
!45 = distinct !{!45, !46, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_: argument 0"}
!46 = distinct !{!46, !"_ZStplIcSt11char_traitsIcESaIcEENSt7__cxx1112basic_stringIT_T0_T1_EERKS8_SA_"}
!47 = !{!48, !45}
!48 = distinct !{!48, !49, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE: argument 0"}
!49 = distinct !{!49, !"_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE"}
!50 = distinct !{!50, !4}
!51 = distinct !{!51, !4}
!52 = !{!53}
!53 = distinct !{!53, !54, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!54 = distinct !{!54, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!57 = distinct !{!57, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!60 = distinct !{!60, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!61 = !{!59, !56, !53}
!62 = !{!63}
!63 = distinct !{!63, !64, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE: argument 0"}
!64 = distinct !{!64, !"_ZN6Assimp6Logger13formatMessageB5cxx11ENS_9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE"}
!65 = !{!66}
!66 = distinct !{!66, !67, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv: argument 0"}
!67 = distinct !{!67, !"_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv"}
!68 = !{!69}
!69 = distinct !{!69, !70, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!70 = distinct !{!70, !"_ZNKSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEE3strEv"}
!71 = !{!72}
!72 = distinct !{!72, !73, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv: argument 0"}
!73 = distinct !{!73, !"_ZNKSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEE3strEv"}
!74 = !{!72, !69, !66, !63}
!75 = distinct !{!75, !4}
!76 = !{!77}
!77 = distinct !{!77, !78, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!78 = distinct !{!78, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!79 = !{!80}
!80 = distinct !{!80, !78, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!81 = !{!77, !80}
!82 = distinct !{!82, !4}
!83 = !{!84}
!84 = distinct !{!84, !85, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 0"}
!85 = distinct !{!85, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_"}
!86 = !{!87}
!87 = distinct !{!87, !85, !"_ZSt19__relocate_object_aINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_SaIS5_EEvPT_PT0_RT1_: argument 1"}
!88 = !{!84, !87}
end_hunk_3
