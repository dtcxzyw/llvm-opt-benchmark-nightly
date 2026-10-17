Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/assimp/original/glTF2Exporter?download=true
inline.NumInlined: 7264
inline.NumDeleted: 2661
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EEaSERKS5_:bb.a
  br i1 %.not24, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = icmp sgt i64 %i.f, 0
  br i1 %i.ax, label %.lr.ph.preheader.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.i
  %i.ay = udiv exact i64 %i.f, 72
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.012.i.i.i.i.i = phi i64 [ %i.bi, %.lr.ph.i.i.i.i.i ], [ %i.ay, %.lr.ph.preheader.i.i.i.i.i ] ; 2 uses
  %.0811.i.i.i.i.i = phi ptr [ %i.bh, %.lr.ph.i.i.i.i.i ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %.0910.i.i.i.i.i = phi ptr [ %i.bg, %.lr.ph.i.i.i.i.i ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i ] ; 4 uses
  %i.az = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i) ; 0 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 24
  %i.bc = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %i.bb) ; 0 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 48
  %i.bf = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, ptr noundef nonnull align 8 dereferenceable(24) %i.be) ; 0 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i, i64 72 ; 3 uses
  %i.bi = add nsw i64 %.012.i.i.i.i.i, -1
  %i.bj = icmp samesign ugt i64 %.012.i.i.i.i.i, 1
  br i1 %i.bj, label %.lr.ph.i.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, !llvm.loop !675

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i
  %.pre = load ptr, ptr %i.at, align 8
  %.pre53 = ptrtoint ptr %i.bh to i64
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit: ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit, %bb.i
  %.pre-phi54 = phi i64 [ %.pre53, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.k, %bb.i ]
  %i.bk = phi ptr [ %.pre, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.au, %bb.i ] ; 2 uses
  %.08.lcssa.i.i.i.i.i = phi ptr [ %i.bh, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit.loopexit ], [ %i.i, %bb.i ]
  %.not4.i.i25 = icmp eq ptr %.08.lcssa.i.i.i.i.i, %i.bk
  br i1 %.not4.i.i25, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i26.preheader

.lr.ph.i.i26.preheader:                           ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit
  %i.bl = sub i64 %.pre-phi54, %i.k
  %i.bm = getelementptr inbounds i8, ptr %i.i, i64 %i.bl
  br label %.lr.ph.i.i26

.lr.ph.i.i26:                                     ; preds = %.lr.ph.i.i26.preheader, %_ZSt8_DestroyIN5glTF24Mesh9Primitive6TargetEEvPT_.exit.i.i32
  %.sroa.01.05.i.i = phi ptr [ %i.ch, %_ZSt8_DestroyIN5glTF24Mesh9Primitive6TargetEEvPT_.exit.i.i32 ], [ %i.bm, %.lr.ph.i.i26.preheader ] ; 7 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 48
  %i.bo = load ptr, ptr %i.bn, align 8            ; 3 uses
  %.not.i.i.i.i.i.i.i27 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i.i.i.i27, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit.i.i.i.i28, label %bb.j

bb.j:                                             ; preds = %.lr.ph.i.i26
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 64
  %i.bq = load ptr, ptr %i.bp, align 8
  %i.br = ptrtoint ptr %i.bq to i64
  %i.bs = ptrtoint ptr %i.bo to i64
  %i.bt = sub i64 %i.br, %i.bs
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef %i.bt) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit.i.i.i.i28

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit.i.i.i.i28: ; preds = %bb.j, %.lr.ph.i.i26
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 24
  %i.bv = load ptr, ptr %i.bu, align 8            ; 3 uses
  %.not.i.i.i1.i.i.i.i29 = icmp eq ptr %i.bv, null
  br i1 %.not.i.i.i1.i.i.i.i29, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit2.i.i.i.i30, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit.i.i.i.i28
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = ptrtoint ptr %i.bx to i64
  %i.bz = ptrtoint ptr %i.bv to i64
  %i.ca = sub i64 %i.by, %i.bz
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bv, i64 noundef %i.ca) #32
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit2.i.i.i.i30

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit2.i.i.i.i30: ; preds = %bb.k, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit.i.i.i.i28
  %i.cb = load ptr, ptr %.sroa.01.05.i.i, align 8 ; 3 uses
  %.not.i.i.i3.i.i.i.i31 = icmp eq ptr %i.cb, null
  br i1 %.not.i.i.i3.i.i.i.i31, label %_ZSt8_DestroyIN5glTF24Mesh9Primitive6TargetEEvPT_.exit.i.i32, label %bb.l

bb.l:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit2.i.i.i.i30
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8
  %i.ce = ptrtoint ptr %i.cd to i64
  %i.cf = ptrtoint ptr %i.cb to i64
  %i.cg = sub i64 %i.ce, %i.cf
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef %i.cg) #32
  br label %_ZSt8_DestroyIN5glTF24Mesh9Primitive6TargetEEvPT_.exit.i.i32

_ZSt8_DestroyIN5glTF24Mesh9Primitive6TargetEEvPT_.exit.i.i32: ; preds = %bb.l, %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EED2Ev.exit2.i.i.i.i30
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.05.i.i, i64 72 ; 2 uses
  %.not.i.i33 = icmp eq ptr %i.ch, %i.bk
  br i1 %.not.i.i33, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i26, !llvm.loop !676

bb.m:                                             ; preds = %bb.h
  %i.ci = icmp sgt i64 %i.aw, 0
  br i1 %i.ci, label %.lr.ph.preheader.i.i.i.i.i35, label %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit

.lr.ph.preheader.i.i.i.i.i35:                     ; preds = %bb.m
  %i.cj = udiv exact i64 %i.aw, 72
  br label %.lr.ph.i.i.i.i.i36

.lr.ph.i.i.i.i.i36:                               ; preds = %.lr.ph.i.i.i.i.i36, %.lr.ph.preheader.i.i.i.i.i35
  %.012.i.i.i.i.i37 = phi i64 [ %i.ct, %.lr.ph.i.i.i.i.i36 ], [ %i.cj, %.lr.ph.preheader.i.i.i.i.i35 ] ; 2 uses
  %.0811.i.i.i.i.i38 = phi ptr [ %i.cs, %.lr.ph.i.i.i.i.i36 ], [ %i.i, %.lr.ph.preheader.i.i.i.i.i35 ] ; 4 uses
  %.0910.i.i.i.i.i39 = phi ptr [ %i.cr, %.lr.ph.i.i.i.i.i36 ], [ %i.c, %.lr.ph.preheader.i.i.i.i.i35 ] ; 4 uses
  %i.ck = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(72) %.0811.i.i.i.i.i38, ptr noundef nonnull align 8 dereferenceable(72) %.0910.i.i.i.i.i39) ; 0 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i38, i64 24
  %i.cm = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i39, i64 24
  %i.cn = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.cm) ; 0 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i38, i64 48
  %i.cp = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i39, i64 48
  %i.cq = tail call noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %i.co, ptr noundef nonnull align 8 dereferenceable(24) %i.cp) ; 0 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.0910.i.i.i.i.i39, i64 72
  %i.cs = getelementptr inbounds nuw i8, ptr %.0811.i.i.i.i.i38, i64 72
  %i.ct = add nsw i64 %.012.i.i.i.i.i37, -1
  %i.cu = icmp samesign ugt i64 %.012.i.i.i.i.i37, 1
  br i1 %i.cu, label %.lr.ph.i.i.i.i.i36, label %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit, !llvm.loop !677

_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i36
  %.pre44 = load ptr, ptr %1, align 8
  %.pre45 = load ptr, ptr %i.at, align 8          ; 2 uses
  %.pre46 = load ptr, ptr %0, align 8
  %.pre47 = load ptr, ptr %i.a, align 8
  %.pre48 = ptrtoint ptr %.pre45 to i64
  %.pre49 = ptrtoint ptr %.pre46 to i64
  %.pre51 = sub i64 %.pre48, %.pre49
  br label %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit

_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit: ; preds = %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit, %bb.m
  %.pre-phi52 = phi i64 [ %.pre51, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.aw, %bb.m ]
  %i.cv = phi ptr [ %.pre47, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.b, %bb.m ] ; 2 uses
  %i.cw = phi ptr [ %.pre45, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.au, %bb.m ] ; 2 uses
  %i.cx = phi ptr [ %.pre44, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit.loopexit ], [ %i.c, %bb.m ]
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 %.pre-phi52 ; 2 uses
  %.not14.i.i.i.i = icmp eq ptr %i.cy, %i.cv
  br i1 %.not14.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.016.i.i.i.i = phi ptr [ %i.da, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cw, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit ] ; 3 uses
  %.01215.i.i.i.i = phi ptr [ %i.cz, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.cy, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit ] ; 2 uses
  invoke void @_ZN5glTF24Mesh9Primitive6TargetC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %.016.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.01215.i.i.i.i)
          to label %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.n

_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.cz = getelementptr inbounds nuw i8, ptr %.01215.i.i.i.i, i64 72 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.016.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.cz, %i.cv
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !678

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.db = landingpad { ptr, i32 }
          catch ptr null
  %i.dc = extractvalue { ptr, i32 } %i.db, 0
  %i.dd = tail call ptr @__cxa_begin_catch(ptr %i.dc) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5glTF24Mesh9Primitive6TargetEEvT_S5_(ptr noundef %i.cw, ptr noundef nonnull %.016.i.i.i.i)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_rethrow() #34
          to label %bb.s unwind label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.de = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %i.de

bb.r:                                             ; preds = %bb.p
  %i.df = landingpad { ptr, i32 }
          catch ptr null
  %i.dg = extractvalue { ptr, i32 } %i.df, 0
  tail call void @__clang_call_terminate(ptr %i.dg) #35
  unreachable

bb.s:                                             ; preds = %bb.o
  unreachable

_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit: ; preds = %_ZSt8_DestroyIN5glTF24Mesh9Primitive6TargetEEvPT_.exit.i.i32, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZSt4copyIPN5glTF24Mesh9Primitive6TargetES4_ET0_T_S6_S5_.exit, %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEENS1_IPS5_SA_EEET0_T_SF_SE_.exit, %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.dh = load ptr, ptr %0, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 %i.f
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.di, ptr %i.dj, align 8
  br label %bb.t

bb.t:                                             ; preds = %_ZSt8_DestroyIN9__gnu_cxx17__normal_iteratorIPN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEEvT_SB_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EEaSERKS6_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq ptr %1, %0
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 7 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 9 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = load ptr, ptr %0, align 8                ; 5 uses
  %i.j = ptrtoint ptr %i.h to i64
  %i.k = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.l = sub i64 %i.j, %i.k
  %i.m = icmp ugt i64 %i.f, %i.l
  br i1 %i.m, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.n = icmp ugt i64 %i.f, 9223372036854775792
  br i1 %i.n, label %bb.d, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_M_allocateEm.exit.i, !prof !30

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_M_allocateEm.exit.i: ; preds = %bb.c
  %2 = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.f) #33 ; 3 uses
  %.not7.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not7.i.i.i.i.i, label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, label %.lr.ph.i.i.i.i.preheader.i

.lr.ph.i.i.i.i.preheader.i:                       ; preds = %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_M_allocateEm.exit.i
  %i.o = add i64 %i.d, -16
  %i.p = sub i64 %i.o, %i.e
  %i.q = and i64 %i.p, -16
  %i.r = add i64 %i.q, 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %2, ptr align 8 %i.c, i64 %i.r, i1 false)
  br label %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit

_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit: ; preds = %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE11_M_allocateEm.exit.i, %.lr.ph.i.i.i.i.preheader.i
  %3 = load ptr, ptr %0, align 8                  ; 3 uses
  %.not.i = icmp eq ptr %3, null
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit
  %i.s = load ptr, ptr %i.g, align 8
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %3 to i64
  %i.v = sub i64 %i.t, %i.u
  tail call void @_ZdlPvm(ptr noundef nonnull %3, i64 noundef %i.v) #32
  br label %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit

_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit: ; preds = %_ZNSt6vectorIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS4_S6_EEEEPS4_mT_SE_.exit, %bb.e
  store ptr %2, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 %i.f
  store ptr %i.w, ptr %i.g, align 8
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.f:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = ptrtoint ptr %i.y to i64
  %i.aa = sub i64 %i.z, %i.k                      ; 4 uses
  %.not24 = icmp ult i64 %i.aa, %i.f
  br i1 %.not24, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = icmp sgt i64 %i.f, 16
  br i1 %i.ab, label %bb.h, label %bb.i, !prof !33

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.f, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.i:                                             ; preds = %bb.g
  %i.ac = icmp eq i64 %i.f, 16
  br i1 %i.ac, label %bb.j, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.j:                                             ; preds = %bb.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit

bb.k:                                             ; preds = %bb.f
  %i.ad = icmp sgt i64 %i.aa, 16
  br i1 %i.ad, label %bb.l, label %bb.m, !prof !33

bb.l:                                             ; preds = %bb.k
  tail call void @llvm.memmove.p0.p0.i64(ptr align 8 %i.i, ptr align 8 %i.c, i64 %i.aa, i1 false)
  br label %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit

bb.m:                                             ; preds = %bb.k
  %i.ae = icmp eq i64 %i.aa, 16
  br i1 %i.ae, label %bb.n, label %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.i, ptr noundef nonnull align 8 dereferenceable(12) %i.c, i64 12, i1 false)
  br label %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit

_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit: ; preds = %bb.l, %bb.m, %bb.n
  %i.af = load ptr, ptr %1, align 8
  %i.ag = load ptr, ptr %i.x, align 8             ; 2 uses
  %i.ah = load ptr, ptr %0, align 8
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = ptrtoint ptr %i.ah to i64
  %i.ak = sub i64 %i.ai, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 %i.ak ; 2 uses
  %i.am = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not9.i.i.i.i = icmp eq ptr %i.al, %i.am
  br i1 %.not9.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit, %.lr.ph.i.i.i.i
  %.011.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %i.ag, %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  %.0810.i.i.i.i = phi ptr [ %i.an, %.lr.ph.i.i.i.i ], [ %i.al, %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.011.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.0810.i.i.i.i, i64 16, i1 false)
  %i.an = getelementptr inbounds nuw i8, ptr %.0810.i.i.i.i, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.011.i.i.i.i, i64 16
  %.not.i.i.i.i = icmp eq ptr %i.an, %i.am
  br i1 %.not.i.i.i.i, label %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !679

_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZSt4copyIPN10glTFCommon3RefIN5glTF28AccessorEEES5_ET0_T_S7_S6_.exit, %bb.j, %bb.i, %bb.h, %_ZNSt12_Vector_baseIN10glTFCommon3RefIN5glTF28AccessorEEESaIS4_EE13_M_deallocateEPS4_m.exit
  %i.ap = load ptr, ptr %0, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 %i.f
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.o

bb.o:                                             ; preds = %_ZSt4copyIN9__gnu_cxx17__normal_iteratorIPKN10glTFCommon3RefIN5glTF28AccessorEEESt6vectorIS6_SaIS6_EEEENS1_IPS6_SB_EEET0_T_SG_SF_.exit, %bb.a
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden noundef ptr @_ZNSt6vectorIN5glTF24Mesh9Primitive6TargetESaIS3_EE20_M_allocate_and_copyIN9__gnu_cxx17__normal_iteratorIPKS3_S5_EEEEPS3_mT_SD_(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, ptr %2, ptr %3) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %1, 0
  br i1 %.not.i, label %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = icmp ugt i64 %1, 128102389400760775
  br i1 %i.a, label %bb.c, label %_ZNSt15__new_allocatorIN5glTF24Mesh9Primitive6TargetEE8allocateEmPKv.exit.i, !prof !30

bb.c:                                             ; preds = %bb.b
  %i.b = icmp ugt i64 %1, 256204778801521550
  br i1 %i.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt28__throw_bad_array_new_lengthv() #34
  unreachable

bb.e:                                             ; preds = %bb.c
  tail call void @_ZSt17__throw_bad_allocv() #34
  unreachable

_ZNSt15__new_allocatorIN5glTF24Mesh9Primitive6TargetEE8allocateEmPKv.exit.i: ; preds = %bb.b
  %i.c = mul nuw nsw i64 %1, 72
  %i.d = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #33
  br label %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit

_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit: ; preds = %bb.a, %_ZNSt15__new_allocatorIN5glTF24Mesh9Primitive6TargetEE8allocateEmPKv.exit.i
  %i.e = phi ptr [ %i.d, %_ZNSt15__new_allocatorIN5glTF24Mesh9Primitive6TargetEE8allocateEmPKv.exit.i ], [ null, %bb.a ] ; 5 uses
  %.not12.i.i.i.i = icmp eq ptr %2, %3
  br i1 %.not12.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i
  %.014.i.i.i.i = phi ptr [ %i.g, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %i.e, %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit ] ; 3 uses
  %.sroa.08.013.i.i.i.i = phi ptr [ %i.f, %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i ], [ %2, %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit ] ; 2 uses
  invoke void @_ZN5glTF24Mesh9Primitive6TargetC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %.014.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08.013.i.i.i.i)
          to label %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i unwind label %bb.f

_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.013.i.i.i.i, i64 72 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.014.i.i.i.i, i64 72
  %.not.i.i.i.i = icmp eq ptr %i.f, %3
  br i1 %.not.i.i.i.i, label %_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit, label %.lr.ph.i.i.i.i, !llvm.loop !24

bb.f:                                             ; preds = %.lr.ph.i.i.i.i
  %i.h = landingpad { ptr, i32 }
          catch ptr null
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = tail call ptr @__cxa_begin_catch(ptr %i.i) #31 ; 0 uses
  invoke void @_ZSt8_DestroyIPN5glTF24Mesh9Primitive6TargetEEvT_S5_(ptr noundef %i.e, ptr noundef nonnull %.014.i.i.i.i)
          to label %bb.g unwind label %bb.h

bb.g:                                             ; preds = %bb.f
  invoke void @__cxa_rethrow() #34
          to label %bb.j unwind label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  invoke void @__cxa_end_catch()
          to label %.body unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #35
  unreachable

bb.j:                                             ; preds = %bb.g
  unreachable

_ZSt22__uninitialized_copy_aIN9__gnu_cxx17__normal_iteratorIPKN5glTF24Mesh9Primitive6TargetESt6vectorIS5_SaIS5_EEEEPS5_S5_ET0_T_SE_SD_RSaIT1_E.exit: ; preds = %_ZSt10_ConstructIN5glTF24Mesh9Primitive6TargetEJRKS3_EEvPT_DpOT0_.exit.i.i.i.i, %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE11_M_allocateEm.exit
  ret ptr %i.e

.body:                                            ; preds = %bb.h
  %i.n = extractvalue { ptr, i32 } %i.k, 0
  %i.o = tail call ptr @__cxa_begin_catch(ptr %i.n) #31 ; 0 uses
  %.not.i11 = icmp eq ptr %i.e, null
  br i1 %.not.i11, label %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit, label %bb.k

bb.k:                                             ; preds = %.body
  %i.p = mul i64 %1, 72
  tail call void @_ZdlPvm(ptr noundef nonnull %i.e, i64 noundef %i.p) #32
  br label %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit

_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit: ; preds = %bb.k, %.body
  invoke void @__cxa_rethrow() #34
          to label %bb.o unwind label %bb.l

bb.l:                                             ; preds = %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  resume { ptr, i32 } %i.q

bb.n:                                             ; preds = %bb.l
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #35
  unreachable

bb.o:                                             ; preds = %_ZNSt12_Vector_baseIN5glTF24Mesh9Primitive6TargetESaIS3_EE13_M_deallocateEPS3_m.exit
  unreachable
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN5glTF24Mesh9Primitive6TargetC2ERKS2_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = ptrtoint ptr %i.b to i64
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = sub i64 %i.d, %i.e                       ; 3 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %.not.i.i.i.i = icmp eq ptr %i.b, %i.c
  br i1 %.not.i.i.i.i, label %bb.c, label %bb.b

end_hunk_0
