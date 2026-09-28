Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/Q3BSPFileImporter?download=true
inline.NumInlined: 886
inline.NumDeleted: 384
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_ZN6Assimp17Q3BSPFileImporter17createMaterialMapEPKNS_5Q3BSP10Q3BSPModelE:bb.a
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
  br i1 %.not.i.i.i18, label %_ZNSt8_Rb_treeINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS5_PSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaISC_EEESt10_Select1stISG_ESt4lessIS5_ESaISG_EE14_M_lower_boundEPSt13_Rb_tree_nodeISG_EPSt18_Rb_tree_node_baseRS7_.exit.i.i, label %bb.o, !llvm.loop !2

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
  %.01431 = phi ptr [ %i.co, %.thread ], [ %i.cs, %bb.s ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %.01431, i64 8 ; 4 uses
  %i.cu = load ptr, ptr %i.ct, align 8            ; 3 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %.01431, i64 16 ; 3 uses
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
  %i.cz = load ptr, ptr %.01431, align 8          ; 4 uses
  %i.da = ptrtoint ptr %i.cu to i64
  %i.db = ptrtoint ptr %i.cz to i64               ; 2 uses
  %i.dc = sub i64 %i.da, %i.db                    ; 5 uses
  %i.dd = icmp eq i64 %i.dc, 9223372036854775800
  br i1 %i.dd, label %bb.w, label %_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.w:                                             ; preds = %bb.v
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc20 unwind label %.loopexit.split-lp

.noexc20:                                         ; preds = %bb.w
  unreachable

_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.v
  %i.de = ashr exact i64 %i.dc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.de, i64 1)
  %i.df = add nsw i64 %.sroa.speculated.i.i.i, %i.de ; 2 uses
  %i.dg = icmp ult i64 %i.df, %i.de
  %i.dh = call i64 @llvm.umin.i64(i64 %i.df, i64 1152921504606846975)
  %i.di = select i1 %i.dg, i64 1152921504606846975, i64 %i.dh ; 3 uses
  %.not.i.i.i19 = icmp ne i64 %i.di, 0
  call void @llvm.assume(i1 %.not.i.i.i19)
  %i.dj = shl nuw nsw i64 %i.di, 3
  %i.dk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dj) #27
          to label %.noexc21 unwind label %.loopexit ; 4 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %i.dc ; 2 uses
  store ptr %i.ab, ptr %i.dl, align 8
  %i.dm = icmp sgt i64 %i.dc, 0
  br i1 %i.dm, label %bb.x, label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

bb.x:                                             ; preds = %.noexc21
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dk, ptr align 8 %i.cz, i64 %i.dc, i1 false)
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i

_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i: ; preds = %bb.x, %.noexc21
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %.not.i17.i.i = icmp eq ptr %i.cz, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.y

bb.y:                                             ; preds = %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  %i.do = load ptr, ptr %i.cv, align 8
  %i.dp = ptrtoint ptr %i.do to i64
  %i.dq = sub i64 %i.dp, %i.db
  call void @_ZdlPvm(ptr noundef nonnull %i.cz, i64 noundef %i.dq) #23
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.y, %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit16.i.i
  store ptr %i.dk, ptr %.01431, align 8
  store ptr %i.dn, ptr %i.ct, align 8
  %i.dr = getelementptr inbounds nuw [8 x i8], ptr %i.dk, i64 %i.di
  store ptr %i.dr, ptr %i.cv, align 8
  br label %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorIPN6Assimp5Q3BSP10sQ3BSPFaceESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.u, %bb.s
  %i.ds = add nuw i64 %.01337, 1                  ; 2 uses
  %i.dt = load ptr, ptr %i.d, align 8
  %i.du = load ptr, ptr %i.c, align 8             ; 2 uses
  %i.dv = ptrtoint ptr %i.dt to i64
  %i.dw = ptrtoint ptr %i.du to i64
  %i.dx = sub i64 %i.dv, %i.dw
  %i.dy = ashr exact i64 %i.dx, 3
  %i.dz = icmp ult i64 %i.ds, %i.dy
  br i1 %i.dz, label %bb.b, label %._crit_edge, !llvm.loop !21

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.r, %bb.n
  %.pn = phi { ptr, i32 } [ %.pn.i, %bb.n ], [ %i.cq, %bb.r ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.ea = load ptr, ptr %4, align 8               ; 2 uses
  %i.eb = icmp eq ptr %i.ea, %i.a
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22: ; preds = %.body
  %i.ec = load i64, ptr %i.a, align 8
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.ea, i64 noundef %i.ed) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit24: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i22
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #22
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp17Q3BSPFileImporter11CreateNodesEPKNS_5Q3BSP10Q3BSPModelEP7aiSceneP6aiNode(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(160) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(none) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 7 uses
  %i.b = icmp eq ptr %1, null
  br i1 %i.b, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not89118 = icmp eq ptr %i.d, %i.e
  br i1 %.not89118, label %._crit_edge, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread
  %4 = ptrtoint ptr %.sroa.12.2 to i64
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.12.0.lcssa = phi i64 [ 0, %bb.b ], [ %4, %._crit_edge.loopexit ]
  %.sroa.19.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.19.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.063.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.063.3, %._crit_edge.loopexit ] ; 8 uses
  %.sroa.10.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.10.2, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.15.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.15.3, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.073.0.lcssa = phi ptr [ null, %bb.b ], [ %.sroa.073.2, %._crit_edge.loopexit ] ; 7 uses
  %i.f = ptrtoint ptr %.sroa.073.0.lcssa to i64   ; 2 uses
  %i.g = sub i64 %.sroa.12.0.lcssa, %i.f          ; 2 uses
  %i.h = ashr exact i64 %i.g, 3                   ; 3 uses
  %i.i = trunc i64 %i.h to i32                    ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i32 %i.i, ptr %i.j, align 8
  %.not = icmp eq i32 %i.i, 0
  br i1 %.not, label %.loopexit, label %bb.s

.lr.ph:                                           ; preds = %bb.b, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread
  %.0126 = phi i32 [ %i.be, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ 0, %bb.b ] ; 2 uses
  %.sroa.073.0125 = phi ptr [ %.sroa.073.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 9 uses
  %.sroa.060.0124 = phi ptr [ %i.bf, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ %i.d, %bb.b ] ; 2 uses
  %.sroa.15.0123 = phi ptr [ %.sroa.15.3, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 9 uses
  %.sroa.10.0122 = phi ptr [ %.sroa.10.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 6 uses
  %.sroa.063.0121 = phi ptr [ %.sroa.063.3, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 11 uses
  %.sroa.19.0120 = phi ptr [ %.sroa.19.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 7 uses
  %.sroa.12.0119 = phi ptr [ %.sroa.12.2, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread ], [ null, %bb.b ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.060.0124, i64 64
  %i.l = load ptr, ptr %i.k, align 8              ; 3 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not13.i = icmp eq ptr %i.m, %i.o
  br i1 %.not13.i, label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %bb.d
  %.015.i = phi i64 [ %.2.i, %bb.d ], [ 0, %.lr.ph ] ; 2 uses
  %.sroa.09.014.i = phi ptr [ %i.w, %bb.d ], [ %i.m, %.lr.ph ] ; 2 uses
  %i.p = load ptr, ptr %.sroa.09.014.i, align 8   ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load i32, ptr %i.q, align 4
  switch i32 %i.r, label %bb.d [
    i32 1, label %bb.c
    i32 3, label %bb.c
  ]

bb.c:                                             ; preds = %.lr.ph.i, %.lr.ph.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.t = load i32, ptr %i.s, align 4
  %i.u = sext i32 %i.t to i64
  %i.v = add i64 %.015.i, %i.u
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.lr.ph.i
  %.2.i = phi i64 [ %.015.i, %.lr.ph.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.09.014.i, i64 8 ; 2 uses
  %.not.i = icmp eq ptr %i.w, %i.o
  br i1 %.not.i, label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit, label %.lr.ph.i, !llvm.loop !3

_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit: ; preds = %bb.d
  %.not42 = icmp eq i64 %.2.i, 0
  br i1 %.not42, label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread, label %bb.e

bb.e:                                             ; preds = %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  store ptr null, ptr %i.a, align 8
  %i.x = invoke noundef ptr @_ZN6Assimp17Q3BSPFileImporter14CreateTopologyEPKNS_5Q3BSP10Q3BSPModelEjRSt6vectorIPNS1_10sQ3BSPFaceESaIS7_EEPP6aiMesh(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull %1, i32 noundef %.0126, ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %.loopexit91 ; 3 uses

bb.f:                                             ; preds = %bb.e
  %.not43 = icmp eq ptr %i.x, null
  br i1 %.not43, label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i45 = icmp eq ptr %.sroa.10.0122, %.sroa.15.0123
  br i1 %.not.i45, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store ptr %i.x, ptr %.sroa.10.0122, align 8
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

bb.i:                                             ; preds = %bb.g
  %i.y = ptrtoint ptr %.sroa.15.0123 to i64
  %i.z = ptrtoint ptr %.sroa.063.0121 to i64
  %i.aa = sub i64 %i.y, %i.z                      ; 6 uses
  %i.ab = icmp eq i64 %i.aa, 9223372036854775800
  br i1 %i.ab, label %bb.j, label %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.j:                                             ; preds = %bb.i
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.j
  unreachable

_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.i
  %i.ac = ashr exact i64 %i.aa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ac, i64 1)
  %i.ad = add nsw i64 %.sroa.speculated.i.i.i, %i.ac ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %i.ac
  %i.af = tail call i64 @llvm.umin.i64(i64 %i.ad, i64 1152921504606846975)
  %i.ag = select i1 %i.ae, i64 1152921504606846975, i64 %i.af ; 3 uses
  %.not.i.i.i = icmp ne i64 %i.ag, 0
  tail call void @llvm.assume(i1 %.not.i.i.i)
  %i.ah = shl nuw nsw i64 %i.ag, 3
  %i.ai = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ah) #27
          to label %.noexc46 unwind label %.loopexit91 ; 4 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 %i.aa ; 2 uses
  store ptr %i.x, ptr %i.aj, align 8
  %i.ak = icmp sgt i64 %i.aa, 0
  br i1 %i.ak, label %bb.k, label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.k:                                             ; preds = %.noexc46
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ai, ptr align 8 %.sroa.063.0121, i64 %i.aa, i1 false)
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.k, %.noexc46
  %.not.i17.i.i = icmp eq ptr %.sroa.063.0121, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0121, i64 noundef %i.aa) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.l, %_ZNSt6vectorIP6aiNodeSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %i.ai, i64 %i.ag
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit

_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.h
  %.sroa.063.5 = phi ptr [ %i.ai, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.063.0121, %bb.h ] ; 4 uses
  %.pn90 = phi ptr [ %i.aj, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.0122, %bb.h ]
  %.sroa.15.5 = phi ptr [ %i.al, %_ZNSt6vectorIP6aiNodeSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.15.0123, %bb.h ] ; 4 uses
  %.sroa.10.3 = getelementptr inbounds nuw i8, ptr %.pn90, i64 8 ; 2 uses
  %.not.i47 = icmp eq ptr %.sroa.12.0119, %.sroa.19.0120
  br i1 %.not.i47, label %bb.n, label %bb.m

bb.m:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.am = load ptr, ptr %i.a, align 8
  store ptr %i.am, ptr %.sroa.12.0119, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.12.0119, i64 8
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

bb.n:                                             ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EE9push_backERKS1_.exit
  %i.ao = ptrtoint ptr %.sroa.19.0120 to i64
  %i.ap = ptrtoint ptr %.sroa.073.0125 to i64
  %i.aq = sub i64 %i.ao, %i.ap                    ; 6 uses
  %i.ar = icmp eq i64 %i.aq, 9223372036854775800
  br i1 %i.ar, label %bb.o, label %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.24) #26
          to label %.noexc51 unwind label %.loopexit.split-lp

.noexc51:                                         ; preds = %bb.o
  unreachable

_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.n
  %i.as = ashr exact i64 %i.aq, 3                 ; 3 uses
  %.sroa.speculated.i.i.i48 = tail call i64 @llvm.umax.i64(i64 %i.as, i64 1)
  %i.at = add nsw i64 %.sroa.speculated.i.i.i48, %i.as ; 2 uses
  %i.au = icmp ult i64 %i.at, %i.as
  %i.av = tail call i64 @llvm.umin.i64(i64 %i.at, i64 1152921504606846975)
  %i.aw = select i1 %i.au, i64 1152921504606846975, i64 %i.av ; 3 uses
  %.not.i.i.i49 = icmp ne i64 %i.aw, 0
  tail call void @llvm.assume(i1 %.not.i.i.i49)
  %i.ax = shl nuw nsw i64 %i.aw, 3
  %i.ay = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ax) #27
          to label %.noexc52 unwind label %.loopexit91 ; 4 uses

.noexc52:                                         ; preds = %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %i.az = getelementptr inbounds i8, ptr %i.ay, i64 %i.aq ; 2 uses
  %i.ba = load ptr, ptr %i.a, align 8
  store ptr %i.ba, ptr %i.az, align 8
  %i.bb = icmp sgt i64 %i.aq, 0
  br i1 %i.bb, label %bb.p, label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

bb.p:                                             ; preds = %.noexc52
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ay, ptr align 8 %.sroa.073.0125, i64 %i.aq, i1 false)
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i

_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i: ; preds = %bb.p, %.noexc52
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.not.i17.i.i50 = icmp eq ptr %.sroa.073.0125, null
  br i1 %.not.i17.i.i50, label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, label %bb.q

bb.q:                                             ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.0125, i64 noundef %i.aq) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i

_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i: ; preds = %bb.q, %_ZNSt6vectorIP6aiMeshSaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit16.i.i
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.aw
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit

.loopexit91:                                      ; preds = %bb.e, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i
  %.sroa.063.1.ph = phi ptr [ %.sroa.063.0121, %bb.e ], [ %.sroa.063.0121, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.063.5, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %.sroa.15.1.ph = phi ptr [ %.sroa.15.0123, %bb.e ], [ %.sroa.15.0123, %_ZNKSt6vectorIP6aiNodeSaIS1_EE12_M_check_lenEmPKc.exit.i.i ], [ %.sroa.15.5, %_ZNKSt6vectorIP6aiMeshSaIS1_EE12_M_check_lenEmPKc.exit.i.i ]
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

.loopexit.split-lp:                               ; preds = %bb.j, %bb.o
  %.sroa.063.1.ph92 = phi ptr [ %.sroa.063.5, %bb.o ], [ %.sroa.063.0121, %bb.j ]
  %.sroa.15.1.ph93 = phi ptr [ %.sroa.15.5, %bb.o ], [ %.sroa.15.0123, %bb.j ]
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.r

bb.r:                                             ; preds = %.loopexit.split-lp, %.loopexit91
  %.sroa.063.1 = phi ptr [ %.sroa.063.1.ph, %.loopexit91 ], [ %.sroa.063.1.ph92, %.loopexit.split-lp ]
  %.sroa.15.1 = phi ptr [ %.sroa.15.1.ph, %.loopexit91 ], [ %.sroa.15.1.ph93, %.loopexit.split-lp ]
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit91 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %bb.ab

_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit: ; preds = %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i, %bb.m, %bb.f
  %.sroa.12.1 = phi ptr [ %.sroa.12.0119, %bb.f ], [ %i.bc, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %i.an, %bb.m ]
  %.sroa.19.1 = phi ptr [ %.sroa.19.0120, %bb.f ], [ %i.bd, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.19.0120, %bb.m ]
  %.sroa.063.2 = phi ptr [ %.sroa.063.0121, %bb.f ], [ %.sroa.063.5, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.063.5, %bb.m ]
  %.sroa.10.1 = phi ptr [ %.sroa.10.0122, %bb.f ], [ %.sroa.10.3, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.10.3, %bb.m ]
  %.sroa.15.2 = phi ptr [ %.sroa.15.0123, %bb.f ], [ %.sroa.15.5, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.15.5, %bb.m ]
  %.sroa.073.1 = phi ptr [ %.sroa.073.0125, %bb.f ], [ %i.ay, %_ZNSt6vectorIP6aiMeshSaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_.exit.i ], [ %.sroa.073.0125, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  br label %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread

_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit.thread: ; preds = %.lr.ph, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit
  %.sroa.12.2 = phi ptr [ %.sroa.12.0119, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.12.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.12.0119, %.lr.ph ] ; 2 uses
  %.sroa.19.2 = phi ptr [ %.sroa.19.0120, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.19.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.19.0120, %.lr.ph ] ; 2 uses
  %.sroa.063.3 = phi ptr [ %.sroa.063.0121, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.063.2, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.063.0121, %.lr.ph ] ; 2 uses
  %.sroa.10.2 = phi ptr [ %.sroa.10.0122, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.10.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.10.0122, %.lr.ph ] ; 2 uses
  %.sroa.15.3 = phi ptr [ %.sroa.15.0123, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.15.2, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.15.0123, %.lr.ph ] ; 2 uses
  %.sroa.073.2 = phi ptr [ %.sroa.073.0125, %_ZNK6Assimp17Q3BSPFileImporter9countDataERKSt6vectorIPNS_5Q3BSP10sQ3BSPFaceESaIS4_EE.exit ], [ %.sroa.073.1, %_ZNSt6vectorIP6aiMeshSaIS1_EE9push_backERKS1_.exit ], [ %.sroa.073.0125, %.lr.ph ] ; 2 uses
  %i.be = add i32 %.0126, 1
  %i.bf = tail call noundef ptr @_ZSt18_Rb_tree_incrementPSt18_Rb_tree_node_base(ptr noundef %.sroa.060.0124) #24 ; 2 uses
  %.not89 = icmp eq ptr %i.bf, %i.e
  br i1 %.not89, label %._crit_edge.loopexit, label %.lr.ph, !llvm.loop !25

bb.s:                                             ; preds = %._crit_edge
  %i.bg = and i64 %i.g, 34359738360
  %i.bh = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.bg) #27
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  store ptr %i.bh, ptr %i.bi, align 8
  %umax = tail call i64 @llvm.umax.i64(i64 %i.h, i64 1) ; 3 uses
  %xtraiter = and i64 %umax, 1
  %5 = icmp ult i64 %i.h, 2
  br i1 %5, label %.lr.ph134.epil.preheader, label %.lr.ph134.preheader.new

.lr.ph134.preheader.new:                          ; preds = %bb.t
  %unroll_iter = and i64 %umax, -2
  br label %.lr.ph134

bb.u:                                             ; preds = %.loopexit, %bb.s
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.lr.ph134:                                        ; preds = %bb.x, %.lr.ph134.preheader.new
  %.035132 = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %i.bt, %bb.x ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph134.preheader.new ], [ %niter.next.1, %bb.x ]
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %.sroa.073.0.lcssa, i64 %.035132
  %i.bl = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not41 = icmp eq ptr %i.bl, null
  br i1 %.not41, label %.lr.ph134.1, label %bb.v

bb.v:                                             ; preds = %.lr.ph134
  %i.bm = load ptr, ptr %i.bi, align 8
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.bm, i64 %.035132
  store ptr %i.bl, ptr %i.bn, align 8
  br label %.lr.ph134.1

.lr.ph134.1:                                      ; preds = %bb.v, %.lr.ph134
  %i.bo = or disjoint i64 %.035132, 1             ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %.sroa.073.0.lcssa, i64 %i.bo
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not41.1 = icmp eq ptr %i.bq, null
  br i1 %.not41.1, label %bb.x, label %bb.w

bb.w:                                             ; preds = %.lr.ph134.1
  %i.br = load ptr, ptr %i.bi, align 8
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.br, i64 %i.bo
  store ptr %i.bq, ptr %i.bs, align 8
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.lr.ph134.1
  %i.bt = add nuw i64 %.035132, 2                 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph134, !llvm.loop !26

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.x
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph134.epil.preheader

.lr.ph134.epil.preheader:                         ; preds = %.loopexit.loopexit.unr-lcssa, %bb.t
  %.035132.epil.init = phi i64 [ 0, %bb.t ], [ %i.bt, %.loopexit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod220 = trunc i64 %umax to i1
  tail call void @llvm.assume(i1 %lcmp.mod220)
  %i.bu = getelementptr inbounds nuw [8 x i8], ptr %.sroa.073.0.lcssa, i64 %.035132.epil.init
  %i.bv = load ptr, ptr %i.bu, align 8            ; 2 uses
  %.not41.epil = icmp eq ptr %i.bv, null
  br i1 %.not41.epil, label %.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph134.epil.preheader
  %i.bw = load ptr, ptr %i.bi, align 8
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %.035132.epil.init
  store ptr %i.bv, ptr %i.bx, align 8
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.y, %.lr.ph134.epil.preheader, %._crit_edge
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 1104
  store i32 %i.i, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 1104
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = zext i32 %i.cc to i64
  %i.ce = shl nuw nsw i64 %i.cd, 3
  %i.cf = invoke noalias noundef nonnull ptr @_Znam(i64 noundef %i.ce) #27
          to label %bb.z unwind label %bb.u

bb.z:                                             ; preds = %.loopexit
  %i.cg = getelementptr inbounds nuw i8, ptr %3, i64 1112 ; 7 uses
  store ptr %i.cf, ptr %i.cg, align 8
  %i.ch = ptrtoint ptr %.sroa.063.0.lcssa to i64  ; 2 uses
  %.not141 = icmp eq ptr %.sroa.10.0.lcssa, %.sroa.063.0.lcssa
  br i1 %.not141, label %._crit_edge138, label %.lr.ph137.preheader

.lr.ph137.preheader:                              ; preds = %bb.z
  %i.ci = ptrtoint ptr %.sroa.10.0.lcssa to i64
  %i.cj = sub i64 %i.ci, %i.ch                    ; 3 uses
  %i.ck = ashr exact i64 %i.cj, 3                 ; 2 uses
  %i.cl = icmp eq i64 %i.cj, 8
  br i1 %i.cl, label %.lr.ph137.epil.preheader, label %.lr.ph137.preheader.new

.lr.ph137.preheader.new:                          ; preds = %.lr.ph137.preheader
  %unroll_iter224 = and i64 %i.ck, -2
  br label %.lr.ph137

._crit_edge138:                                   ; preds = %bb.z
  %.not.i.i.i53 = icmp eq ptr %.sroa.063.0.lcssa, null
  br i1 %.not.i.i.i53, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, label %._crit_edge138.thread

._crit_edge138.thread.loopexit.unr-lcssa:         ; preds = %.lr.ph137
  %i.cm = and i64 %i.cj, 8
  %lcmp.mod222.not = icmp eq i64 %i.cm, 0
  br i1 %lcmp.mod222.not, label %._crit_edge138.thread, label %.lr.ph137.epil.preheader

.lr.ph137.epil.preheader:                         ; preds = %._crit_edge138.thread.loopexit.unr-lcssa, %.lr.ph137.preheader
  %.034135.epil.init = phi i64 [ 0, %.lr.ph137.preheader ], [ %i.dz, %._crit_edge138.thread.loopexit.unr-lcssa ] ; 4 uses
  %lcmp.mod223 = trunc i64 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod223)
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %.034135.epil.init
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 1096
  store ptr %3, ptr %i.cp, align 8
  %i.cq = load ptr, ptr %i.cg, align 8
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.034135.epil.init
  store ptr %i.co, ptr %i.cr, align 8
  %i.cs = trunc i64 %.034135.epil.init to i32
  %i.ct = load ptr, ptr %i.cg, align 8
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.034135.epil.init
  %i.cv = load ptr, ptr %i.cu, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 1128
  %i.cx = load ptr, ptr %i.cw, align 8
  store i32 %i.cs, ptr %i.cx, align 4
  br label %._crit_edge138.thread

._crit_edge138.thread:                            ; preds = %.lr.ph137.epil.preheader, %._crit_edge138.thread.loopexit.unr-lcssa, %._crit_edge138
  %i.cy = ptrtoint ptr %.sroa.15.0.lcssa to i64
  %i.cz = sub i64 %i.cy, %i.ch
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.0.lcssa, i64 noundef %i.cz) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit:           ; preds = %._crit_edge138, %._crit_edge138.thread
  %.not.i.i.i54 = icmp eq ptr %.sroa.073.0.lcssa, null
  br i1 %.not.i.i.i54, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit
  %i.da = ptrtoint ptr %.sroa.19.0.lcssa to i64
  %i.db = sub i64 %i.da, %i.f
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.0.lcssa, i64 noundef %i.db) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit

.lr.ph137:                                        ; preds = %.lr.ph137, %.lr.ph137.preheader.new
  %.034135 = phi i64 [ 0, %.lr.ph137.preheader.new ], [ %i.dz, %.lr.ph137 ] ; 6 uses
  %niter225 = phi i64 [ 0, %.lr.ph137.preheader.new ], [ %niter225.next.1, %.lr.ph137 ]
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %.034135
  %i.dd = load ptr, ptr %i.dc, align 8            ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 1096
  store ptr %3, ptr %i.de, align 8
  %i.df = load ptr, ptr %i.cg, align 8
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.df, i64 %.034135
  store ptr %i.dd, ptr %i.dg, align 8
  %i.dh = trunc i64 %.034135 to i32
  %i.di = load ptr, ptr %i.cg, align 8
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.di, i64 %.034135
  %i.dk = load ptr, ptr %i.dj, align 8
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 1128
  %i.dm = load ptr, ptr %i.dl, align 8
  store i32 %i.dh, ptr %i.dm, align 4
  %i.dn = or disjoint i64 %.034135, 1             ; 4 uses
  %i.do = getelementptr inbounds nuw [8 x i8], ptr %.sroa.063.0.lcssa, i64 %i.dn
  %i.dp = load ptr, ptr %i.do, align 8            ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 1096
  store ptr %3, ptr %i.dq, align 8
  %i.dr = load ptr, ptr %i.cg, align 8
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.dr, i64 %i.dn
  store ptr %i.dp, ptr %i.ds, align 8
  %i.dt = trunc i64 %i.dn to i32
  %i.du = load ptr, ptr %i.cg, align 8
  %i.dv = getelementptr inbounds nuw [8 x i8], ptr %i.du, i64 %i.dn
  %i.dw = load ptr, ptr %i.dv, align 8
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 1128
  %i.dy = load ptr, ptr %i.dx, align 8
  store i32 %i.dt, ptr %i.dy, align 4
  %i.dz = add nuw i64 %.034135, 2                 ; 2 uses
  %niter225.next.1 = add i64 %niter225, 2         ; 2 uses
  %niter225.ncmp.1 = icmp eq i64 %niter225.next.1, %unroll_iter224
  br i1 %niter225.ncmp.1, label %._crit_edge138.thread.loopexit.unr-lcssa, label %.lr.ph137, !llvm.loop !27

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit:           ; preds = %bb.aa, %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit, %bb.a
  ret void

bb.ab:                                            ; preds = %bb.u, %bb.r
  %.sroa.19.0112 = phi ptr [ %.sroa.19.0120, %bb.r ], [ %.sroa.19.0.lcssa, %bb.u ]
  %.sroa.073.097 = phi ptr [ %.sroa.073.0125, %bb.r ], [ %.sroa.073.0.lcssa, %bb.u ] ; 3 uses
  %.sroa.063.4 = phi ptr [ %.sroa.063.1, %bb.r ], [ %.sroa.063.0.lcssa, %bb.u ] ; 3 uses
  %.sroa.15.4 = phi ptr [ %.sroa.15.1, %bb.r ], [ %.sroa.15.0.lcssa, %bb.u ]
  %.pn = phi { ptr, i32 } [ %lpad.phi, %bb.r ], [ %i.bj, %bb.u ]
  %.not.i.i.i55 = icmp eq ptr %.sroa.063.4, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ea = ptrtoint ptr %.sroa.15.4 to i64
  %i.eb = ptrtoint ptr %.sroa.063.4 to i64
  %i.ec = sub i64 %i.ea, %i.eb
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.063.4, i64 noundef %i.ec) #23
  br label %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56

_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56:         ; preds = %bb.ab, %bb.ac
  %.not.i.i.i57 = icmp eq ptr %.sroa.073.097, null
  br i1 %.not.i.i.i57, label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit58, label %bb.ad

bb.ad:                                            ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56
  %i.ed = ptrtoint ptr %.sroa.19.0112 to i64
  %i.ee = ptrtoint ptr %.sroa.073.097 to i64
  %i.ef = sub i64 %i.ed, %i.ee
  tail call void @_ZdlPvm(ptr noundef nonnull %.sroa.073.097, i64 noundef %i.ef) #23
  br label %_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit58

_ZNSt6vectorIP6aiMeshSaIS1_EED2Ev.exit58:         ; preds = %_ZNSt6vectorIP6aiNodeSaIS1_EED2Ev.exit56, %bb.ad
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6Assimp17Q3BSPFileImporter15createMaterialsEPKNS_5Q3BSP10Q3BSPModelEP7aiScenePNS_18ZipArchiveIOSystemE(ptr nofree noundef nonnull align 8 captures(address) dereferenceable(160) %0, ptr nofree noundef readonly captures(address_is_null) %1, ptr nofree noundef captures(address_is_null) %2, ptr noundef %3) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %6 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %7 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %i.c = alloca i64, align 8                      ; 6 uses
  %8 = alloca %struct.aiString, align 4           ; 7 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 14 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = load i64, ptr %i.d, align 8              ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.al, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  %i.h = shl i64 %i.e, 3
  %i.i = select i1 %i.g, i64 -1, i64 %i.h
  %i.j = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.i) #27
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 2 uses
  store ptr %i.j, ptr %i.k, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1028) %8, i8 0, i64 1028, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %.not77148 = icmp eq ptr %i.m, %i.n
  br i1 %.not77148, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.w = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  %i.x = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 6 uses
  %i.z = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16 ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 17
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %10, i64 17
  br label %bb.f
end_hunk_0
