inline.NumInlined: 7150
inline.NumDeleted: 3639
begin_hunk_0_@_ZN6duckdb6Binder16PrepareModifiersERNS_11OrderBinderERNS_9QueryNodeERNS_14BoundQueryNodeE:bb.a
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %14 = alloca %"class.duckdb::unique_ptr", align 8 ; 5 uses
  %15 = alloca %"class.duckdb::unique_ptr.2", align 8 ; 6 uses
  %i.i = alloca i64, align 8                      ; 4 uses
  %i.j = alloca i64, align 8                      ; 4 uses
  %16 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %17 = alloca %"class.duckdb::Value", align 8    ; 6 uses
  %18 = alloca %"class.duckdb::unique_ptr.263", align 8 ; 9 uses
  %19 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %20 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %21 = alloca %"class.duckdb::vector.257", align 8 ; 11 uses
  %22 = alloca %"class.duckdb::unique_ptr.2", align 8 ; 4 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %24 = alloca %"class.duckdb::unique_ptr.313", align 8 ; 12 uses
  %i.k = alloca i8, align 1                       ; 6 uses
  %i.l = alloca i8, align 1                       ; 6 uses
  %25 = alloca %"class.duckdb::unique_ptr.566", align 8 ; 9 uses
  %26 = alloca %"class.duckdb::Value", align 8    ; 7 uses
  %27 = alloca %"class.duckdb::vector.257", align 8 ; 10 uses
  %28 = alloca %"class.duckdb::unique_ptr.2", align 8 ; 4 uses
  %i.m = alloca i8, align 1                       ; 7 uses
  %i.n = alloca i8, align 1                       ; 7 uses
  %29 = alloca %"class.duckdb::unique_ptr", align 8 ; 8 uses
  %30 = alloca %"class.duckdb::unique_ptr.204", align 8 ; 4 uses
  %31 = alloca %"class.duckdb::unique_ptr.204", align 8 ; 4 uses
  %32 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %33 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !150  ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !150  ; 2 uses
  %.not607 = icmp eq ptr %i.p, %i.r
  br i1 %.not607, label %._crit_edge611, label %.lr.ph610

.lr.ph610:                                        ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %27, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %20, i64 16 ; 4 uses
  %i.y = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %21, i64 8 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %23, i64 16 ; 4 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %23, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %20, i64 27
  br label %bb.b

._crit_edge611:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph610, %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370
  %.sroa.0453.0608 = phi ptr [ %i.p, %.lr.ph610 ], [ %i.so, %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370 ] ; 6 uses
  %i.ag = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0453.0608)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.ai = load i8, ptr %i.ah, align 8, !tbaa !152
  switch i8 %i.ai, label %bb.do [
    i8 3, label %bb.c
    i8 2, label %bb.bc
    i8 1, label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit346
    i8 4, label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit352
  ]

bb.c:                                             ; preds = %bb.b
  %i.aj = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0453.0608)
  %i.ak = call noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb14ResultModifier4CastINS_16DistinctModifierEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.aj) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.al = invoke noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26
          to label %.noexc unwind label %bb.g     ; 3 uses

.noexc:                                           ; preds = %bb.c
  invoke void @_ZN6duckdb21BoundDistinctModifierC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.al)
          to label %bb.e unwind label %bb.d, !noalias !155

bb.d:                                             ; preds = %.noexc
  %i.am = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %i.al) #25, !noalias !155
  br label %.body

bb.e:                                             ; preds = %.noexc
  store ptr %i.al, ptr %18, align 8, !tbaa !158, !alias.scope !155
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 16 ; 5 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !160
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 6 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !160
  %i.ar = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %18)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.as = icmp ne ptr %i.ao, %i.aq
  %i.at = zext i1 %i.as to i8
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 9
  store i8 %i.at, ptr %i.au, align 1, !tbaa !162
  %i.av = load ptr, ptr %i.an, align 8, !tbaa !160
  %i.aw = load ptr, ptr %i.ap, align 8, !tbaa !160
  %i.ax = icmp eq ptr %i.av, %i.aw
  br i1 %i.ax, label %.preheader, label %._crit_edge.i.i

.preheader:                                       ; preds = %bb.f
  %i.ay = load ptr, ptr %i.w, align 8, !tbaa !172
  %i.az = load ptr, ptr %i.v, align 8, !tbaa !175
  %.not612 = icmp eq ptr %i.ay, %i.az
  br i1 %.not612, label %._crit_edge.i.i, label %.lr.ph595

.lr.ph595:                                        ; preds = %.preheader
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ak, i64 32 ; 2 uses
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.bb = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.i:                                             ; preds = %.lr.ph595, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.0101594 = phi i64 [ 0, %.lr.ph595 ], [ %i.bd, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.bd = add nuw i64 %.0101594, 1                ; 3 uses
  %i.be = trunc i64 %i.bd to i32
  invoke void @_ZN6duckdb5Value7INTEGEREi(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %19, i32 noundef %i.be)
          to label %bb.j unwind label %bb.q

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %17)
  %i.bf = invoke noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #26
          to label %.noexc138 unwind label %bb.r  ; 6 uses

.noexc138:                                        ; preds = %bb.j
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %17, ptr noundef nonnull align 8 dereferenceable(64) %19) #23, !noalias !176
  invoke void @_ZN6duckdb18ConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(120) %i.bf, ptr noundef nonnull %17)
          to label %bb.l unwind label %bb.k, !noalias !176

bb.k:                                             ; preds = %.noexc138
  %i.bg = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #23, !noalias !176
  call void @_ZdlPv(ptr noundef nonnull %i.bf) #25, !noalias !176
  br label %.body139

bb.l:                                             ; preds = %.noexc138
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %17) #23, !noalias !176
  call void @llvm.lifetime.end.p0(ptr nonnull %17)
  %i.bh = load ptr, ptr %i.ap, align 8, !tbaa !179 ; 6 uses
  %i.bi = load ptr, ptr %i.ba, align 8, !tbaa !181
  %.not.i.i = icmp eq ptr %i.bh, %i.bi
  br i1 %.not.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bj = ptrtoint ptr %i.bf to i64
  store i64 %i.bj, ptr %i.bh, align 8, !tbaa !7
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %i.bk, ptr %i.ap, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

bb.n:                                             ; preds = %bb.l
  %i.bl = load ptr, ptr %i.an, align 8, !tbaa !182 ; 10 uses
  %i.bm = ptrtoint ptr %i.bh to i64               ; 3 uses
  %i.bn = ptrtoint ptr %i.bl to i64               ; 3 uses
  %i.bo = sub i64 %i.bm, %i.bn                    ; 3 uses
  %i.bp = icmp eq i64 %i.bo, 9223372036854775800
  br i1 %i.bp, label %bb.o, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.o:                                             ; preds = %bb.n
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc141 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit.split-lp

.noexc141:                                        ; preds = %bb.o
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.n
  %i.bq = ashr exact i64 %i.bo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.bq, i64 1)
  %i.br = add nsw i64 %.sroa.speculated.i.i.i.i, %i.bq ; 2 uses
  %i.bs = icmp ult i64 %i.br, %i.bq
  %i.bt = call i64 @llvm.umin.i64(i64 %i.br, i64 1152921504606846975)
  %i.bu = select i1 %i.bs, i64 1152921504606846975, i64 %i.bt ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.bu, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.bv = shl nuw nsw i64 %i.bu, 3
  %i.bw = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bv) #26
          to label %.noexc142 unwind label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit ; 10 uses

.noexc142:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 %i.bo
  %i.by = ptrtoint ptr %i.bf to i64
  store i64 %i.by, ptr %i.bx, align 8, !tbaa !7
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.bl, %i.bh
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc142
  %34 = sub i64 %i.bm, %i.bn
  %35 = add i64 %34, -8                           ; 2 uses
  %i.bz = lshr i64 %35, 3
  %i.ca = add nuw nsw i64 %i.bz, 1                ; 2 uses
  %min.iters.check921 = icmp ult i64 %35, 56
  br i1 %min.iters.check921, label %.lr.ph.i.i.i.i.i.i.i.preheader937, label %vector.memcheck912

vector.memcheck912:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep913 = getelementptr i8, ptr %i.bw, i64 8
  %i.cb = add i64 %i.bm, -8
  %i.cc = sub i64 %i.cb, %i.bn
  %i.cd = and i64 %i.cc, -8                       ; 2 uses
  %scevgep914 = getelementptr i8, ptr %scevgep913, i64 %i.cd
  %scevgep915 = getelementptr i8, ptr %i.bl, i64 8
  %scevgep916 = getelementptr i8, ptr %scevgep915, i64 %i.cd
  %bound0917 = icmp ult ptr %i.bw, %scevgep916
  %bound1918 = icmp ult ptr %i.bl, %scevgep914
  %found.conflict919 = and i1 %bound0917, %bound1918
  br i1 %found.conflict919, label %.lr.ph.i.i.i.i.i.i.i.preheader937, label %vector.ph922

vector.ph922:                                     ; preds = %vector.memcheck912
  %n.vec924 = and i64 %i.ca, 4611686018427387900  ; 3 uses
  %i.ce = shl i64 %n.vec924, 3                    ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bw, i64 %i.ce  ; 2 uses
  %i.cg = getelementptr i8, ptr %i.bl, i64 %i.ce
  br label %vector.body925

vector.body925:                                   ; preds = %vector.body925, %vector.ph922
  %index926 = phi i64 [ 0, %vector.ph922 ], [ %index.next931, %vector.body925 ] ; 2 uses
  %i.ch = shl i64 %index926, 3                    ; 2 uses
  %next.gep927 = getelementptr i8, ptr %i.bw, i64 %i.ch ; 2 uses
  %next.gep928 = getelementptr i8, ptr %i.bl, i64 %i.ch ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.ci = getelementptr i8, ptr %next.gep928, i64 16
  %wide.load929 = load <2 x i64>, ptr %next.gep928, align 8, !tbaa !7, !alias.scope !188, !noalias !183
  %wide.load930 = load <2 x i64>, ptr %i.ci, align 8, !tbaa !7, !alias.scope !188, !noalias !183
  %i.cj = getelementptr i8, ptr %next.gep927, i64 16
  store <2 x i64> %wide.load929, ptr %next.gep927, align 8, !tbaa !7, !alias.scope !191, !noalias !188
  store <2 x i64> %wide.load930, ptr %i.cj, align 8, !tbaa !7, !alias.scope !191, !noalias !188
  %i.ck = getelementptr i8, ptr %next.gep928, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep928, align 8, !tbaa !7, !alias.scope !188, !noalias !183
  store <2 x ptr> splat (ptr null), ptr %i.ck, align 8, !tbaa !7, !alias.scope !188, !noalias !183
  %index.next931 = add nuw i64 %index926, 4       ; 2 uses
  %i.cl = icmp eq i64 %index.next931, %n.vec924
  br i1 %i.cl, label %middle.block932, label %vector.body925, !llvm.loop !193

middle.block932:                                  ; preds = %vector.body925
  %cmp.n933 = icmp eq i64 %i.ca, %n.vec924
  br i1 %cmp.n933, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader937

.lr.ph.i.i.i.i.i.i.i.preheader937:                ; preds = %vector.memcheck912, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block932
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bw, %vector.memcheck912 ], [ %i.bw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cf, %middle.block932 ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.bl, %vector.memcheck912 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cg, %middle.block932 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader937, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.co, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader937 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader937 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !183)
  call void @llvm.experimental.noalias.scope.decl(metadata !186)
  %i.cm = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !186, !noalias !183
  store i64 %i.cm, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !183, !noalias !186
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !186, !noalias !183
  %i.cn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cn, %i.bh
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !196

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block932, %.noexc142
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bw, %.noexc142 ], [ %i.cf, %middle.block932 ], [ %i.co, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cp = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.bl, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.bl) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.p, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bw, ptr %i.an, align 8, !tbaa !182
  store ptr %i.cp, ptr %i.ap, align 8, !tbaa !179
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.bw, i64 %i.bu
  store ptr %i.cq, ptr %i.ba, align 8, !tbaa !181
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.m
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.cr = load ptr, ptr %i.w, align 8, !tbaa !172
  %i.cs = load ptr, ptr %i.v, align 8, !tbaa !175
  %i.ct = ptrtoint ptr %i.cr to i64
  %i.cu = ptrtoint ptr %i.cs to i64
  %i.cv = sub i64 %i.ct, %i.cu
  %i.cw = ashr exact i64 %i.cv, 5
  %i.cx = icmp ult i64 %i.bd, %i.cw
  br i1 %i.cx, label %bb.i, label %._crit_edge.i.i, !llvm.loop !197

bb.q:                                             ; preds = %bb.i
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %bb.s

bb.r:                                             ; preds = %bb.j
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.body139

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit501 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit.split-lp: ; preds = %bb.o
  %lpad.loopexit.split-lp502 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149

_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149: ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit
  %lpad.phi503 = phi { ptr, i32 } [ %lpad.loopexit501, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit ], [ %lpad.loopexit.split-lp502, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149.loopexit.split-lp ]
  %i.da = load ptr, ptr %i.bf, align 8, !tbaa !10
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 8
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(56) %i.bf) #23, !inline_history !12
  br label %.body139

.body139:                                         ; preds = %bb.r, %bb.k, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149
  %.pn129 = phi { ptr, i32 } [ %lpad.phi503, %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit149 ], [ %i.cz, %bb.r ], [ %i.bg, %bb.k ]
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %19) #23
  br label %bb.s

bb.s:                                             ; preds = %.body139, %bb.q
  %.pn129.pn = phi { ptr, i32 } [ %.pn129, %.body139 ], [ %i.cy, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

._crit_edge.i.i:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb18ConstantExpressionESt14default_deleteIS1_EED2Ev.exit, %.preheader, %bb.f
  store ptr %i.x, ptr %20, align 8, !tbaa !126
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(11) %i.x, ptr noundef nonnull align 1 dereferenceable(11) @.str.4, i64 11, i1 false)
  store i64 11, ptr %i.y, align 8, !tbaa !127
  store i8 0, ptr %i.af, align 1, !tbaa !119
  invoke void @_ZN6duckdb11OrderBinder17SetQueryComponentENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %20)
          to label %bb.t unwind label %bb.u

bb.t:                                             ; preds = %._crit_edge.i.i
  %i.dd = load ptr, ptr %20, align 8, !tbaa !103  ; 2 uses
  %i.de = icmp eq ptr %i.dd, %i.x
  br i1 %i.de, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.t
  call void @_ZdlPv(ptr noundef %i.dd) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.df = load ptr, ptr %i.an, align 8, !tbaa !160 ; 2 uses
  %i.dg = load ptr, ptr %i.ap, align 8, !tbaa !160 ; 2 uses
  %.not496603 = icmp eq ptr %i.df, %i.dg
  br i1 %.not496603, label %._crit_edge606, label %.lr.ph605

._crit_edge606:                                   ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  store ptr %i.aa, ptr %23, align 8, !tbaa !126
  store i64 0, ptr %i.ab, align 8, !tbaa !127
  store i8 0, ptr %i.aa, align 8, !tbaa !119
  invoke void @_ZN6duckdb11OrderBinder17SetQueryComponentENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %23)
          to label %bb.ba unwind label %bb.bb

bb.u:                                             ; preds = %._crit_edge.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.di = load ptr, ptr %20, align 8, !tbaa !103  ; 2 uses
  %i.dj = icmp eq ptr %i.di, %i.x
  br i1 %i.dj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151: ; preds = %bb.u
  call void @_ZdlPv(ptr noundef %i.di) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

.lr.ph605:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  %.sroa.0433.0604 = phi ptr [ %i.eo, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit ], [ %i.df, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  %i.dk = load ptr, ptr %i.t, align 8, !tbaa !198 ; 2 uses
  %i.dl = load ptr, ptr %1, align 8, !tbaa !201   ; 3 uses
  %i.dm = ptrtoint ptr %i.dk to i64
  %i.dn = ptrtoint ptr %i.dl to i64
  %i.do = sub i64 %i.dm, %i.dn
  %i.dp = ashr exact i64 %i.do, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.i, align 8, !tbaa !112
  store i64 %i.dp, ptr %i.j, align 8, !tbaa !112
  %.not.i.i.i.not = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i.i.not, label %.noexc.i375, label %bb.z, !prof !120

.noexc.i375:                                      ; preds = %.lr.ph605
  %i.dq = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  %i.dr = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store ptr %i.dr, ptr %16, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #23
  store i64 55, ptr %i.f, align 8, !tbaa !112
  %i.ds = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %16, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 0)
end_hunk_0
begin_hunk_1_@_ZN6duckdb6Binder16PrepareModifiersERNS_11OrderBinderERNS_9QueryNodeERNS_14BoundQueryNodeE:bb.a
  %.not500.not596 = icmp eq ptr %i.fs, %i.fu
  br i1 %.not500.not596, label %.critedge, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit

bb.ak:                                            ; preds = %bb.ap
  %i.fv = getelementptr inbounds nuw i8, ptr %.sroa.0418.0597, i64 8 ; 2 uses
  %.not500.not = icmp eq ptr %i.fv, %i.fu
  br i1 %.not500.not, label %.critedge, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit, %bb.ak
  %.sroa.0418.0597 = phi ptr [ %i.fv, %bb.ak ], [ %i.fs, %_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit ] ; 2 uses
  %i.fw = load ptr, ptr %.sroa.0418.0597, align 8, !tbaa !13 ; 2 uses
  %.not.i184 = icmp eq ptr %i.fw, null
  br i1 %.not.i184, label %.noexc.i387, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit, !prof !120

.noexc.i387:                                      ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.fx = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  %i.fy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 3 uses
  store ptr %i.fy, ptr %12, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 49, ptr %i.d, align 8, !tbaa !112
  %i.fz = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc388 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i185 ; 3 uses

.noexc388:                                        ; preds = %.noexc.i387
  store ptr %i.fz, ptr %12, align 8, !tbaa !103
  %i.ga = load i64, ptr %i.d, align 8, !tbaa !112 ; 3 uses
  store i64 %i.ga, ptr %i.fy, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.fz, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 8
  store i64 %i.ga, ptr %i.gb, align 8, !tbaa !127
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.ga
  store i8 0, ptr %i.gc, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.fx, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.al unwind label %bb.am

bb.al:                                            ; preds = %.noexc388
  invoke void @__cxa_throw(ptr nonnull %i.fx, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ao unwind label %bb.am

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i185: ; preds = %.noexc.i387
  %i.gd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.an

bb.am:                                            ; preds = %bb.al, %.noexc388
  %.0.i.i188 = phi i1 [ false, %bb.al ], [ true, %.noexc388 ] ; 2 uses
  %i.ge = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gf = load ptr, ptr %12, align 8, !tbaa !103  ; 2 uses
  %i.gg = icmp eq ptr %i.gf, %i.fy
  br i1 %i.gg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i190, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189: ; preds = %bb.am
  call void @_ZdlPv(ptr noundef %i.gf) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.0.i.i188, label %bb.an, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i190: ; preds = %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br i1 %.0.i.i188, label %bb.an, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

bb.an:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i190, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i185
  %.pn9.i.i186 = phi { ptr, i32 } [ %i.gd, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i185 ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i190 ], [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189 ]
  call void @__cxa_free_exception(ptr %i.fx) #23
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

bb.ao:                                            ; preds = %bb.al
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit: ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.gh = load ptr, ptr %i.fe, align 8, !tbaa !10
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 80
  %i.gj = load ptr, ptr %i.gi, align 8
  %i.gk = invoke noundef zeroext i1 %i.gj(ptr noundef nonnull align 8 dereferenceable(88) %i.fe, ptr noundef nonnull align 8 dereferenceable(56) %i.fw)
          to label %bb.ap unwind label %bb.aq

bb.ap:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit
  br i1 %i.gk, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i, label %bb.ak

bb.aq:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEdeEv.exit
  %i.gl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

.critedge:                                        ; preds = %bb.ak, %_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit
  %i.gm = load ptr, ptr %18, align 8, !tbaa !158  ; 4 uses
  %.not.i193 = icmp eq ptr %i.gm, null
  br i1 %.not.i193, label %.noexc.i391, label %_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit202, !prof !120

.noexc.i391:                                      ; preds = %.critedge
  %i.gn = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.go = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 3 uses
  store ptr %i.go, ptr %11, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i64 49, ptr %i.c, align 8, !tbaa !112
  %i.gp = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 0)
          to label %.noexc392 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i194 ; 3 uses

.noexc392:                                        ; preds = %.noexc.i391
  store ptr %i.gp, ptr %11, align 8, !tbaa !103
  %i.gq = load i64, ptr %i.c, align 8, !tbaa !112 ; 3 uses
  store i64 %i.gq, ptr %i.go, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.gp, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.gr = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %i.gq, ptr %i.gr, align 8, !tbaa !127
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.gq
  store i8 0, ptr %i.gs, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.gn, ptr noundef nonnull align 8 dereferenceable(32) %11)
          to label %bb.ar unwind label %bb.as

bb.ar:                                            ; preds = %.noexc392
  invoke void @__cxa_throw(ptr nonnull %i.gn, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.au unwind label %bb.as

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i194: ; preds = %.noexc.i391
  %i.gt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.at

bb.as:                                            ; preds = %bb.ar, %.noexc392
  %.0.i.i197 = phi i1 [ false, %bb.ar ], [ true, %.noexc392 ] ; 2 uses
  %i.gu = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.gv = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.gw = icmp eq ptr %i.gv, %i.go
  br i1 %i.gw, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198: ; preds = %bb.as
  call void @_ZdlPv(ptr noundef %i.gv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.0.i.i197, label %bb.at, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199: ; preds = %bb.as
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br i1 %.0.i.i197, label %bb.at, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

bb.at:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i194
  %.pn9.i.i195 = phi { ptr, i32 } [ %i.gt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i194 ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199 ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198 ]
  call void @__cxa_free_exception(ptr %i.gn) #23
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

bb.au:                                            ; preds = %bb.ar
  unreachable

_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit202: ; preds = %.critedge
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gm, i64 16 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gm, i64 24 ; 3 uses
  %i.gz = load ptr, ptr %i.gy, align 8, !tbaa !211 ; 6 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gm, i64 32 ; 2 uses
  %i.hb = load ptr, ptr %i.ha, align 8, !tbaa !212
  %.not.i.i203 = icmp eq ptr %i.gz, %i.hb
  br i1 %.not.i.i203, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit202
  store i64 %i.ff, ptr %i.gz, align 8, !tbaa !13
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gz, i64 8
  store ptr %i.hc, ptr %i.gy, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.aw:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_21BoundDistinctModifierESt14default_deleteIS1_ELb1EEptEv.exit202
  %i.hd = load ptr, ptr %i.gx, align 8, !tbaa !213 ; 10 uses
  %i.he = ptrtoint ptr %i.gz to i64               ; 3 uses
  %i.hf = ptrtoint ptr %i.hd to i64               ; 3 uses
  %i.hg = sub i64 %i.he, %i.hf                    ; 3 uses
  %i.hh = icmp eq i64 %i.hg, 9223372036854775800
  br i1 %i.hh, label %bb.ax, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ax:                                            ; preds = %bb.aw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc213 unwind label %.loopexit.split-lp

.noexc213:                                        ; preds = %bb.ax
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.aw
  %i.hi = ashr exact i64 %i.hg, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i204 = call i64 @llvm.umax.i64(i64 %i.hi, i64 1)
  %i.hj = add nsw i64 %.sroa.speculated.i.i.i.i204, %i.hi ; 2 uses
  %i.hk = icmp ult i64 %i.hj, %i.hi
  %i.hl = call i64 @llvm.umin.i64(i64 %i.hj, i64 1152921504606846975)
  %i.hm = select i1 %i.hk, i64 1152921504606846975, i64 %i.hl ; 3 uses
  %.not.i.i.i.i205 = icmp ne i64 %i.hm, 0
  call void @llvm.assume(i1 %.not.i.i.i.i205)
  %i.hn = shl nuw nsw i64 %i.hm, 3
  %i.ho = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.hn) #26
          to label %.noexc214 unwind label %.loopexit ; 10 uses

.noexc214:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 %i.hg
  store i64 %i.ff, ptr %i.hp, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i206 = icmp eq ptr %i.hd, %i.gz
  br i1 %.not10.i.i.i.i.i.i.i206, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i207.preheader

.lr.ph.i.i.i.i.i.i.i207.preheader:                ; preds = %.noexc214
  %36 = sub i64 %i.he, %i.hf
  %37 = add i64 %36, -8                           ; 2 uses
  %i.hq = lshr i64 %37, 3
  %i.hr = add nuw nsw i64 %i.hq, 1                ; 2 uses
  %min.iters.check897 = icmp ult i64 %37, 56
  br i1 %min.iters.check897, label %.lr.ph.i.i.i.i.i.i.i207.preheader936, label %vector.memcheck888

vector.memcheck888:                               ; preds = %.lr.ph.i.i.i.i.i.i.i207.preheader
  %scevgep889 = getelementptr i8, ptr %i.ho, i64 8
  %i.hs = add i64 %i.he, -8
  %i.ht = sub i64 %i.hs, %i.hf
  %i.hu = and i64 %i.ht, -8                       ; 2 uses
  %scevgep890 = getelementptr i8, ptr %scevgep889, i64 %i.hu
  %scevgep891 = getelementptr i8, ptr %i.hd, i64 8
  %scevgep892 = getelementptr i8, ptr %scevgep891, i64 %i.hu
  %bound0893 = icmp ult ptr %i.ho, %scevgep892
  %bound1894 = icmp ult ptr %i.hd, %scevgep890
  %found.conflict895 = and i1 %bound0893, %bound1894
  br i1 %found.conflict895, label %.lr.ph.i.i.i.i.i.i.i207.preheader936, label %vector.ph898

vector.ph898:                                     ; preds = %vector.memcheck888
  %n.vec900 = and i64 %i.hr, 4611686018427387900  ; 3 uses
  %i.hv = shl i64 %n.vec900, 3                    ; 2 uses
  %i.hw = getelementptr i8, ptr %i.ho, i64 %i.hv  ; 2 uses
  %i.hx = getelementptr i8, ptr %i.hd, i64 %i.hv
  br label %vector.body901

vector.body901:                                   ; preds = %vector.body901, %vector.ph898
  %index902 = phi i64 [ 0, %vector.ph898 ], [ %index.next907, %vector.body901 ] ; 2 uses
  %i.hy = shl i64 %index902, 3                    ; 2 uses
  %next.gep903 = getelementptr i8, ptr %i.ho, i64 %i.hy ; 2 uses
  %next.gep904 = getelementptr i8, ptr %i.hd, i64 %i.hy ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.hz = getelementptr i8, ptr %next.gep904, i64 16
  %wide.load905 = load <2 x i64>, ptr %next.gep904, align 8, !tbaa !13, !alias.scope !219, !noalias !214
  %wide.load906 = load <2 x i64>, ptr %i.hz, align 8, !tbaa !13, !alias.scope !219, !noalias !214
  %i.ia = getelementptr i8, ptr %next.gep903, i64 16
  store <2 x i64> %wide.load905, ptr %next.gep903, align 8, !tbaa !13, !alias.scope !222, !noalias !219
  store <2 x i64> %wide.load906, ptr %i.ia, align 8, !tbaa !13, !alias.scope !222, !noalias !219
  %i.ib = getelementptr i8, ptr %next.gep904, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep904, align 8, !tbaa !13, !alias.scope !219, !noalias !214
  store <2 x ptr> splat (ptr null), ptr %i.ib, align 8, !tbaa !13, !alias.scope !219, !noalias !214
  %index.next907 = add nuw i64 %index902, 4       ; 2 uses
  %i.ic = icmp eq i64 %index.next907, %n.vec900
  br i1 %i.ic, label %middle.block908, label %vector.body901, !llvm.loop !224

middle.block908:                                  ; preds = %vector.body901
  %cmp.n909 = icmp eq i64 %i.hr, %n.vec900
  br i1 %cmp.n909, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i207.preheader936

.lr.ph.i.i.i.i.i.i.i207.preheader936:             ; preds = %vector.memcheck888, %.lr.ph.i.i.i.i.i.i.i207.preheader, %middle.block908
  %.012.i.i.i.i.i.i.i208.ph = phi ptr [ %i.ho, %vector.memcheck888 ], [ %i.ho, %.lr.ph.i.i.i.i.i.i.i207.preheader ], [ %i.hw, %middle.block908 ]
  %.0911.i.i.i.i.i.i.i209.ph = phi ptr [ %i.hd, %vector.memcheck888 ], [ %i.hd, %.lr.ph.i.i.i.i.i.i.i207.preheader ], [ %i.hx, %middle.block908 ]
  br label %.lr.ph.i.i.i.i.i.i.i207

.lr.ph.i.i.i.i.i.i.i207:                          ; preds = %.lr.ph.i.i.i.i.i.i.i207.preheader936, %.lr.ph.i.i.i.i.i.i.i207
  %.012.i.i.i.i.i.i.i208 = phi ptr [ %i.if, %.lr.ph.i.i.i.i.i.i.i207 ], [ %.012.i.i.i.i.i.i.i208.ph, %.lr.ph.i.i.i.i.i.i.i207.preheader936 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i209 = phi ptr [ %i.ie, %.lr.ph.i.i.i.i.i.i.i207 ], [ %.0911.i.i.i.i.i.i.i209.ph, %.lr.ph.i.i.i.i.i.i.i207.preheader936 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !214)
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.id = load i64, ptr %.0911.i.i.i.i.i.i.i209, align 8, !tbaa !13, !alias.scope !217, !noalias !214
  store i64 %i.id, ptr %.012.i.i.i.i.i.i.i208, align 8, !tbaa !13, !alias.scope !214, !noalias !217
  store ptr null, ptr %.0911.i.i.i.i.i.i.i209, align 8, !tbaa !13, !alias.scope !217, !noalias !214
  %i.ie = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i209, i64 8 ; 2 uses
  %i.if = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i208, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i210 = icmp eq ptr %i.ie, %i.gz
  br i1 %.not.i.i.i.i.i.i.i210, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i207, !llvm.loop !225

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i207, %middle.block908, %.noexc214
  %.0.lcssa.i.i.i.i.i.i.i211 = phi ptr [ %i.ho, %.noexc214 ], [ %i.hw, %middle.block908 ], [ %i.if, %.lr.ph.i.i.i.i.i.i.i207 ]
  %i.ig = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i211, i64 8
  %.not.i23.i.i.i212 = icmp eq ptr %i.hd, null
  br i1 %.not.i23.i.i.i212, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ay

bb.ay:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.hd) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ay, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ho, ptr %i.gx, align 8, !tbaa !213
  store ptr %i.ig, ptr %i.gy, align 8, !tbaa !211
  %i.ih = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hm
  store ptr %i.ih, ptr %i.ha, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

.loopexit.split-lp:                               ; preds = %bb.ax
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %bb.ap
  %i.ii = load ptr, ptr %i.fe, align 8, !tbaa !10
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ii, i64 8
  %i.ik = load ptr, ptr %i.ij, align 8
  call void %i.ik(ptr noundef nonnull align 8 dereferenceable(88) %i.fe) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.av, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit168, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  %i.il = getelementptr inbounds nuw i8, ptr %.sroa.0429.0600, i64 8 ; 2 uses
  %.not498 = icmp eq ptr %i.il, %i.eh
  br i1 %.not498, label %._crit_edge602, label %.lr.ph601

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218: ; preds = %.loopexit, %.loopexit.split-lp, %bb.at, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i190, %bb.an, %bb.aq, %bb.ai, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn124 = phi { ptr, i32 } [ %i.ge, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i189 ], [ %i.fo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.gu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i198 ], [ %i.fo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.ai ], [ %i.gl, %bb.aq ], [ %i.ge, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i190 ], [ %.pn9.i.i186, %bb.an ], [ %.pn9.i.i195, %bb.at ], [ %i.gu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i199 ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %i.im = load ptr, ptr %i.fe, align 8, !tbaa !10
  %i.in = getelementptr inbounds nuw i8, ptr %i.im, i64 8
  %i.io = load ptr, ptr %i.in, align 8
  call void %i.io(ptr noundef nonnull align 8 dereferenceable(88) %i.fe) #23, !inline_history !104
  br label %.body154

.body154:                                         ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit4.i, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i161, %bb.ac, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  %.pn124.pn.pn = phi { ptr, i32 } [ %i.ep, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i161 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.ez, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit4.i ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.x ], [ %i.ep, %bb.ac ], [ %.pn124, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit218 ]
  %i.ip = load ptr, ptr %21, align 8, !tbaa !182  ; 3 uses
  %i.iq = load ptr, ptr %i.z, align 8, !tbaa !179 ; 2 uses
  %.not4.i.i.i219 = icmp eq ptr %i.ip, %i.iq
  br i1 %.not4.i.i.i219, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i228, label %.lr.ph.i.i.i220

.lr.ph.i.i.i220:                                  ; preds = %.body154, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i224
  %.05.i.i.i221 = phi ptr [ %i.iv, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i224 ], [ %i.ip, %.body154 ] ; 2 uses
  %i.ir = load ptr, ptr %.05.i.i.i221, align 8, !tbaa !7 ; 3 uses
  %.not.i.i.i.i.i222 = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i.i222, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i224, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i223

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i223: ; preds = %.lr.ph.i.i.i220
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !10
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 8
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(56) %i.ir) #23, !inline_history !204
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i224

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i224: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i223, %.lr.ph.i.i.i220
  %i.iv = getelementptr inbounds nuw i8, ptr %.05.i.i.i221, i64 8 ; 2 uses
  %.not.i.i.i225 = icmp eq ptr %i.iv, %i.iq
  br i1 %.not.i.i.i225, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i226, label %.lr.ph.i.i.i220, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i226: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i224
  %.pr.i227 = load ptr, ptr %21, align 8, !tbaa !182
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i228

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i228: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i226, %.body154
  %i.iw = phi ptr [ %.pr.i227, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i226 ], [ %i.ip, %.body154 ] ; 2 uses
  %.not.i.i1.i229 = icmp eq ptr %i.iw, null
  br i1 %.not.i.i1.i229, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit230, label %bb.az

bb.az:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i228
  call void @_ZdlPv(ptr noundef nonnull %i.iw) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit230

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit230: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i228, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

bb.ba:                                            ; preds = %._crit_edge606
  %i.ix = load ptr, ptr %23, align 8, !tbaa !103  ; 2 uses
  %i.iy = icmp eq ptr %i.ix, %i.aa
  br i1 %i.iy, label %_ZNSt10unique_ptrIN6duckdb21BoundDistinctModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231: ; preds = %bb.ba
  call void @_ZdlPv(ptr noundef %i.ix) #25
  br label %_ZNSt10unique_ptrIN6duckdb21BoundDistinctModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb21BoundDistinctModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ba, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i231
  %i.iz = load ptr, ptr %18, align 8, !tbaa !158
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %bb.dt

bb.bb:                                            ; preds = %._crit_edge606
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = load ptr, ptr %23, align 8, !tbaa !103  ; 2 uses
  %i.jc = icmp eq ptr %i.jb, %i.aa
  br i1 %i.jc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237: ; preds = %bb.bb
  call void @_ZdlPv(ptr noundef %i.jb) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153: ; preds = %bb.bb, %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit230, %bb.s, %bb.h
  %.pn129.pn.pn = phi { ptr, i32 } [ %.pn129.pn, %bb.s ], [ %i.bc, %bb.h ], [ %i.dh, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i151 ], [ %.pn124.pn.pn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit230 ], [ %i.ja, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i237 ], [ %i.dh, %bb.u ], [ %i.ja, %bb.bb ] ; 2 uses
  %i.jd = load ptr, ptr %18, align 8, !tbaa !158  ; 3 uses
  %.not.i240 = icmp eq ptr %i.jd, null
  br i1 %.not.i240, label %.body, label %_ZNKSt14default_deleteIN6duckdb21BoundDistinctModifierEEclEPS1_.exit.i241

_ZNKSt14default_deleteIN6duckdb21BoundDistinctModifierEEclEPS1_.exit.i241: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !10
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jg = load ptr, ptr %i.jf, align 8
  call void %i.jg(ptr noundef nonnull align 8 dereferenceable(40) %i.jd) #23, !inline_history !226
  br label %.body

.body:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb21BoundDistinctModifierEEclEPS1_.exit.i241, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153, %bb.g, %bb.d
  %.pn129.pn.pn.pn = phi { ptr, i32 } [ %i.am, %bb.d ], [ %i.bb, %bb.g ], [ %.pn129.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit153 ], [ %.pn129.pn.pn, %_ZNKSt14default_deleteIN6duckdb21BoundDistinctModifierEEclEPS1_.exit.i241 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #23
  br label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373

bb.bc:                                            ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN6duckdb6Binder16PrepareModifiersERNS_11OrderBinderERNS_9QueryNodeERNS_14BoundQueryNodeE:bb.a
  br label %.body313

.body313:                                         ; preds = %bb.di, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i317, %bb.dg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i311, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i312, %bb.dd
  %eh.lpad-body314 = phi { ptr, i32 } [ %i.pc, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i311 ], [ %i.pc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i312 ], [ %.pn9.i.i308, %bb.dd ], [ %i.qb, %bb.di ], [ %i.pl, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i317 ], [ %i.pl, %bb.dg ] ; 2 uses
  %i.qc = load ptr, ptr %29, align 8, !tbaa !13   ; 3 uses
  %.not.i328 = icmp eq ptr %i.qc, null
  br i1 %.not.i328, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit305, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i329

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i329: ; preds = %.body313
  %i.qd = load ptr, ptr %i.qc, align 8, !tbaa !10
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qd, i64 8
  %i.qf = load ptr, ptr %i.qe, align 8
  call void %i.qf(ptr noundef nonnull align 8 dereferenceable(88) %i.qc) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit305

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit305: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i329, %.body313, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit4.i294
  %.pn111 = phi { ptr, i32 } [ %i.on, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit4.i294 ], [ %eh.lpad-body314, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i329 ], [ %eh.lpad-body314, %.body313 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  br label %bb.dj

bb.dj:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit305, %bb.cx
  %.pn111.pn = phi { ptr, i32 } [ %.pn111, %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit305 ], [ %i.oh, %bb.cx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #23
  br label %bb.dk

bb.dk:                                            ; preds = %bb.dj, %bb.cw
  %.pn111.pn.pn = phi { ptr, i32 } [ %.pn111.pn, %bb.dj ], [ %i.og, %bb.cw ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #23
  br label %.body271

.body271:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i290, %bb.cv, %bb.co, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i270, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269, %bb.dk
  %.pn111.pn.pn.pn = phi { ptr, i32 } [ %.pn111.pn.pn, %bb.dk ], [ %i.nb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i269 ], [ %i.ob, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i290 ], [ %i.nb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i270 ], [ %.pn8.i.i.i266, %bb.co ], [ %i.ob, %bb.cv ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %27) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  br label %bb.dn

bb.dl:                                            ; preds = %._crit_edge593
  %i.qg = getelementptr inbounds nuw i8, ptr %i.mn, i64 16
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !275
  %i.qi = getelementptr inbounds nuw i8, ptr %i.mn, i64 24
  %i.qj = load ptr, ptr %i.qi, align 8, !tbaa !275
  %i.qk = icmp eq ptr %i.qh, %i.qj
  %.pr465.pre670 = load ptr, ptr %24, align 8, !tbaa !230 ; 2 uses
  br i1 %i.qk, label %bb.dm, label %_ZNSt10unique_ptrIN6duckdb18BoundOrderModifierESt14default_deleteIS1_EED2Ev.exit

bb.dm:                                            ; preds = %bb.dl, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.pr465 = phi ptr [ %.pr465.pre, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %.pr465.pre670, %bb.dl ] ; 3 uses
  %.sroa.0443.1.ph = phi ptr [ %i.lt, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ null, %bb.dl ] ; 2 uses
  %.not.i337 = icmp eq ptr %.pr465, null
  br i1 %.not.i337, label %_ZNSt10unique_ptrIN6duckdb18BoundOrderModifierESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i: ; preds = %bb.dm
  %i.ql = load ptr, ptr %.pr465, align 8, !tbaa !10
  %i.qm = getelementptr inbounds nuw i8, ptr %i.ql, i64 8
  %i.qn = load ptr, ptr %i.qm, align 8
  call void %i.qn(ptr noundef nonnull align 8 dereferenceable(40) %.pr465) #23, !inline_history !276
  br label %_ZNSt10unique_ptrIN6duckdb18BoundOrderModifierESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18BoundOrderModifierESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.dl, %bb.dm, %_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i
  %.sroa.0443.1468 = phi ptr [ %.sroa.0443.1.ph, %_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i ], [ %.sroa.0443.1.ph, %bb.dm ], [ %.pr465.pre670, %bb.dl ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.dt

bb.dn:                                            ; preds = %bb.cb, %.body271, %bb.ck, %bb.cc, %bb.ca
  %.pn111.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.lz, %bb.ca ], [ %.pn111.pn.pn.pn, %.body271 ], [ %i.ma, %bb.cb ], [ %.pn106.pn.pn, %bb.ck ], [ %i.mb, %bb.cc ] ; 2 uses
  %i.qo = load ptr, ptr %24, align 8, !tbaa !230  ; 3 uses
  %.not.i338 = icmp eq ptr %i.qo, null
  br i1 %.not.i338, label %.body244, label %_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i339

_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i339: ; preds = %bb.dn
  %i.qp = load ptr, ptr %i.qo, align 8, !tbaa !10
  %i.qq = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.qr = load ptr, ptr %i.qq, align 8
  call void %i.qr(ptr noundef nonnull align 8 dereferenceable(40) %i.qo) #23, !inline_history !276
  br label %.body244

.body244:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i339, %bb.dn, %bb.bz, %bb.bd
  %.pn111.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.jk, %bb.bd ], [ %i.ly, %bb.bz ], [ %.pn111.pn.pn.pn.pn.pn, %bb.dn ], [ %.pn111.pn.pn.pn.pn.pn, %_ZNKSt14default_deleteIN6duckdb18BoundOrderModifierEEclEPS1_.exit.i339 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373

_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit346: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %30) #23
  %i.qs = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0453.0608)
  %i.qt = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb14ResultModifier4CastINS_13LimitModifierEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.qs)
  call void @_ZN6duckdb6Binder9BindLimitERNS_11OrderBinderERNS_13LimitModifierE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.204") align 8 %30, ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.qt)
  %i.qu = load ptr, ptr %30, align 8, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.dt

_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit352: ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %31) #23
  %i.qv = call noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0453.0608)
  %i.qw = call noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb14ResultModifier4CastINS_20LimitPercentModifierEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %i.qv)
  call void @_ZN6duckdb6Binder16BindLimitPercentERNS_11OrderBinderERNS_20LimitPercentModifierE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.204") align 8 %31, ptr noundef nonnull align 8 dereferenceable(472) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(32) %i.qw)
  %i.qx = load ptr, ptr %31, align 8, !tbaa !277
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.dt

bb.do:                                            ; preds = %bb.b
  %i.qy = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull @.str.6, ptr noundef nonnull align 1 dereferenceable(1) %33)
          to label %bb.dp unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread

bb.dp:                                            ; preds = %bb.do
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.qy, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.dq unwind label %bb.dr

bb.dq:                                            ; preds = %bb.dp
  invoke void @__cxa_throw(ptr nonnull %i.qy, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.dz unwind label %bb.dr

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread: ; preds = %bb.do
  %i.qz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.ds

bb.dr:                                            ; preds = %bb.dq, %bb.dp
  %.0 = phi i1 [ false, %bb.dq ], [ true, %bb.dp ] ; 2 uses
  %i.ra = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.rb = load ptr, ptr %32, align 8, !tbaa !103  ; 2 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %32, i64 16
  %i.rd = icmp eq ptr %i.rb, %i.rc
  br i1 %i.rd, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353: ; preds = %bb.dr
  call void @_ZdlPv(ptr noundef %i.rb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br i1 %.0, label %bb.ds, label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355: ; preds = %bb.dr
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br i1 %.0, label %bb.ds, label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373

bb.ds:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355
  %.pn135471 = phi { ptr, i32 } [ %i.qz, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355.thread ], [ %i.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ]
  call void @__cxa_free_exception(ptr %i.qy) #23
  br label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373

bb.dt:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit352, %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit346, %_ZNSt10unique_ptrIN6duckdb18BoundOrderModifierESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb21BoundDistinctModifierESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0443.2 = phi ptr [ %i.iz, %_ZNSt10unique_ptrIN6duckdb21BoundDistinctModifierESt14default_deleteIS1_EED2Ev.exit ], [ %.sroa.0443.1468, %_ZNSt10unique_ptrIN6duckdb18BoundOrderModifierESt14default_deleteIS1_EED2Ev.exit ], [ %i.qu, %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit346 ], [ %i.qx, %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit352 ] ; 5 uses
  %.not497 = icmp eq ptr %.sroa.0443.2, null
  br i1 %.not497, label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370, label %bb.du

bb.du:                                            ; preds = %bb.dt
  %i.re = load ptr, ptr %i.ad, align 8, !tbaa !278 ; 6 uses
  %i.rf = load ptr, ptr %i.ae, align 8, !tbaa !281
  %.not.i.i356 = icmp eq ptr %i.re, %i.rf
  br i1 %.not.i.i356, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %bb.du
  %i.rg = ptrtoint ptr %.sroa.0443.2 to i64
  store i64 %i.rg, ptr %i.re, align 8, !tbaa !277
  %i.rh = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  store ptr %i.rh, ptr %i.ad, align 8, !tbaa !278
  br label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370

bb.dw:                                            ; preds = %bb.du
  %i.ri = load ptr, ptr %i.ac, align 8, !tbaa !282 ; 10 uses
  %i.rj = ptrtoint ptr %i.re to i64               ; 3 uses
  %i.rk = ptrtoint ptr %i.ri to i64               ; 3 uses
  %i.rl = sub i64 %i.rj, %i.rk                    ; 3 uses
  %i.rm = icmp eq i64 %i.rl, 9223372036854775800
  br i1 %i.rm, label %bb.dx, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.dx:                                            ; preds = %bb.dw
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc366 unwind label %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit.split-lp

.noexc366:                                        ; preds = %bb.dx
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.dw
  %i.rn = ashr exact i64 %i.rl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i357 = call i64 @llvm.umax.i64(i64 %i.rn, i64 1)
  %i.ro = add nsw i64 %.sroa.speculated.i.i.i.i357, %i.rn ; 2 uses
  %i.rp = icmp ult i64 %i.ro, %i.rn
  %i.rq = call i64 @llvm.umin.i64(i64 %i.ro, i64 1152921504606846975)
  %i.rr = select i1 %i.rp, i64 1152921504606846975, i64 %i.rq ; 3 uses
  %.not.i.i.i.i358 = icmp ne i64 %i.rr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i358)
  %i.rs = shl nuw nsw i64 %i.rr, 3
  %i.rt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.rs) #26
          to label %.noexc367 unwind label %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit ; 10 uses

.noexc367:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ru = getelementptr inbounds nuw i8, ptr %i.rt, i64 %i.rl
  %i.rv = ptrtoint ptr %.sroa.0443.2 to i64
  store i64 %i.rv, ptr %i.ru, align 8, !tbaa !277
  %.not10.i.i.i.i.i.i.i359 = icmp eq ptr %i.ri, %i.re
  br i1 %.not10.i.i.i.i.i.i.i359, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i360.preheader

.lr.ph.i.i.i.i.i.i.i360.preheader:                ; preds = %.noexc367
  %38 = sub i64 %i.rj, %i.rk
  %39 = add i64 %38, -8                           ; 2 uses
  %i.rw = lshr i64 %39, 3
  %i.rx = add nuw nsw i64 %i.rw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %39, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i360.preheader938, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i360.preheader
  %scevgep = getelementptr i8, ptr %i.rt, i64 8
  %i.ry = add i64 %i.rj, -8
  %i.rz = sub i64 %i.ry, %i.rk
  %i.sa = and i64 %i.rz, -8                       ; 2 uses
  %scevgep882 = getelementptr i8, ptr %scevgep, i64 %i.sa
  %scevgep883 = getelementptr i8, ptr %i.ri, i64 8
  %scevgep884 = getelementptr i8, ptr %scevgep883, i64 %i.sa
  %bound0 = icmp ult ptr %i.rt, %scevgep884
  %bound1 = icmp ult ptr %i.ri, %scevgep882
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i360.preheader938, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.rx, 4611686018427387900     ; 3 uses
  %i.sb = shl i64 %n.vec, 3                       ; 2 uses
  %i.sc = getelementptr i8, ptr %i.rt, i64 %i.sb  ; 2 uses
  %i.sd = getelementptr i8, ptr %i.ri, i64 %i.sb
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.se = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.rt, i64 %i.se ; 2 uses
  %next.gep885 = getelementptr i8, ptr %i.ri, i64 %i.se ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.sf = getelementptr i8, ptr %next.gep885, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep885, align 8, !tbaa !277, !alias.scope !288, !noalias !283
  %wide.load886 = load <2 x i64>, ptr %i.sf, align 8, !tbaa !277, !alias.scope !288, !noalias !283
  %i.sg = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !277, !alias.scope !291, !noalias !288
  store <2 x i64> %wide.load886, ptr %i.sg, align 8, !tbaa !277, !alias.scope !291, !noalias !288
  %i.sh = getelementptr i8, ptr %next.gep885, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep885, align 8, !tbaa !277, !alias.scope !288, !noalias !283
  store <2 x ptr> splat (ptr null), ptr %i.sh, align 8, !tbaa !277, !alias.scope !288, !noalias !283
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.si = icmp eq i64 %index.next, %n.vec
  br i1 %i.si, label %middle.block, label %vector.body, !llvm.loop !293

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.rx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i360.preheader938

.lr.ph.i.i.i.i.i.i.i360.preheader938:             ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i360.preheader, %middle.block
  %.012.i.i.i.i.i.i.i361.ph = phi ptr [ %i.rt, %vector.memcheck ], [ %i.rt, %.lr.ph.i.i.i.i.i.i.i360.preheader ], [ %i.sc, %middle.block ]
  %.0911.i.i.i.i.i.i.i362.ph = phi ptr [ %i.ri, %vector.memcheck ], [ %i.ri, %.lr.ph.i.i.i.i.i.i.i360.preheader ], [ %i.sd, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i360

.lr.ph.i.i.i.i.i.i.i360:                          ; preds = %.lr.ph.i.i.i.i.i.i.i360.preheader938, %.lr.ph.i.i.i.i.i.i.i360
  %.012.i.i.i.i.i.i.i361 = phi ptr [ %i.sl, %.lr.ph.i.i.i.i.i.i.i360 ], [ %.012.i.i.i.i.i.i.i361.ph, %.lr.ph.i.i.i.i.i.i.i360.preheader938 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i362 = phi ptr [ %i.sk, %.lr.ph.i.i.i.i.i.i.i360 ], [ %.0911.i.i.i.i.i.i.i362.ph, %.lr.ph.i.i.i.i.i.i.i360.preheader938 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !283)
  call void @llvm.experimental.noalias.scope.decl(metadata !286)
  %i.sj = load i64, ptr %.0911.i.i.i.i.i.i.i362, align 8, !tbaa !277, !alias.scope !286, !noalias !283
  store i64 %i.sj, ptr %.012.i.i.i.i.i.i.i361, align 8, !tbaa !277, !alias.scope !283, !noalias !286
  store ptr null, ptr %.0911.i.i.i.i.i.i.i362, align 8, !tbaa !277, !alias.scope !286, !noalias !283
  %i.sk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i362, i64 8 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i361, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i363 = icmp eq ptr %i.sk, %i.re
  br i1 %.not.i.i.i.i.i.i.i363, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i360, !llvm.loop !294

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i360, %middle.block, %.noexc367
  %.0.lcssa.i.i.i.i.i.i.i364 = phi ptr [ %i.rt, %.noexc367 ], [ %i.sc, %middle.block ], [ %i.sl, %.lr.ph.i.i.i.i.i.i.i360 ]
  %i.sm = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i364, i64 8
  %.not.i23.i.i.i365 = icmp eq ptr %i.ri, null
  br i1 %.not.i23.i.i.i365, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.dy

bb.dy:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ri) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.dy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.rt, ptr %i.ac, align 8, !tbaa !282
  store ptr %i.sm, ptr %i.ad, align 8, !tbaa !278
  %i.sn = getelementptr inbounds nuw [8 x i8], ptr %i.rt, i64 %i.rr
  store ptr %i.sn, ptr %i.ae, align 8, !tbaa !281
  br label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370

_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit370: ; preds = %bb.dt, %bb.dv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.so = getelementptr inbounds nuw i8, ptr %.sroa.0453.0608, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.so, %i.r
  br i1 %.not, label %._crit_edge611, label %bb.b

_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_19BoundResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit504 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372

_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit.split-lp: ; preds = %bb.dx
  %lpad.loopexit.split-lp505 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372

_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372: ; preds = %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit.split-lp, %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit
  %lpad.phi506 = phi { ptr, i32 } [ %lpad.loopexit504, %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit ], [ %lpad.loopexit.split-lp505, %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372.loopexit.split-lp ]
  %i.sp = load ptr, ptr %.sroa.0443.2, align 8, !tbaa !10
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sp, i64 8
  %i.sr = load ptr, ptr %i.sq, align 8
  call void %i.sr(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %.sroa.0443.2) #23, !inline_history !295
  br label %_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373

_ZNSt10unique_ptrIN6duckdb19BoundResultModifierESt14default_deleteIS1_EED2Ev.exit373: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353, %.body244, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355, %bb.ds, %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372
  %.pn135.pn476 = phi { ptr, i32 } [ %lpad.phi506, %_ZNKSt14default_deleteIN6duckdb19BoundResultModifierEEclEPS1_.exit.i372 ], [ %.pn135471, %bb.ds ], [ %i.ra, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i353 ], [ %i.ra, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit355 ], [ %.pn111.pn.pn.pn.pn.pn.pn, %.body244 ], [ %.pn129.pn.pn.pn, %.body ]
  resume { ptr, i32 } %.pn135.pn476

bb.dz:                                            ; preds = %bb.dq
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !296    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(40) ptr @_ZN6duckdb14ResultModifier4CastINS_16DistinctModifierEEERT_v(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i8, ptr %i.a, align 8, !tbaa !152
  %.not = icmp eq i8 %i.b, 3
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.57, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_ZN6duckdb6Binder14BindSelectNodeERNS_10SelectNodeENS_14BoundStatementE:bb.a
  %i.dg = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.v unwind label %bb.ah      ; 2 uses

bb.v:                                             ; preds = %bb.u
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 56
  %i.dj = load ptr, ptr %i.di, align 8
  invoke void %i.dj(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %13, ptr noundef nonnull align 8 dereferenceable(56) %i.dg)
          to label %bb.w unwind label %bb.ah

bb.w:                                             ; preds = %bb.v
  %i.dk = load ptr, ptr %i.cu, align 8, !tbaa !172 ; 6 uses
  %i.dl = load ptr, ptr %i.cv, align 8, !tbaa !365
  %.not.i.i = icmp eq ptr %i.dk, %i.dl
  br i1 %.not.i.i, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 16 ; 3 uses
  store ptr %i.dm, ptr %i.dk, align 8, !tbaa !126
  %i.dn = load ptr, ptr %13, align 8, !tbaa !103  ; 2 uses
  %i.do = icmp eq ptr %i.dn, %i.cw
  br i1 %i.do, label %bb.y, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

bb.y:                                             ; preds = %bb.x
  %i.dp = load i64, ptr %i.cx, align 8, !tbaa !127 ; 3 uses
  %i.dq = icmp ult i64 %i.dp, 16
  call void @llvm.assume(i1 %i.dq)
  %i.dr = add nuw nsw i64 %i.dp, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dm, ptr noundef nonnull align 8 dereferenceable(1) %i.cw, i64 %i.dr, i1 false)
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.x
  store ptr %i.dn, ptr %i.dk, align 8, !tbaa !103
  %i.ds = load i64, ptr %i.cw, align 8, !tbaa !119
  store i64 %i.ds, ptr %i.dm, align 8, !tbaa !119
  %.pre = load i64, ptr %i.cx, align 8, !tbaa !127
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.y, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dt = phi i64 [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ], [ %i.dp, %bb.y ]
  %i.du = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  store i64 %i.dt, ptr %i.du, align 8, !tbaa !127
  store ptr %i.cw, ptr %13, align 8, !tbaa !103
  store i64 0, ptr %i.cx, align 8, !tbaa !127
  %i.dv = load ptr, ptr %i.cu, align 8, !tbaa !172
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 32
  store ptr %i.dw, ptr %i.cu, align 8, !tbaa !172
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

bb.z:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, ptr %i.dk, ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit unwind label %bb.ai

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit: ; preds = %bb.z
  %.pre1073 = load ptr, ptr %13, align 8, !tbaa !103 ; 2 uses
  %i.dx = icmp eq ptr %.pre1073, %i.cw
  br i1 %i.dx, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit
  call void @_ZdlPv(ptr noundef %.pre1073) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i326
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  invoke void @_ZN6duckdb16ExpressionBinder18QualifyColumnNamesERNS_6BinderERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.aa unwind label %bb.ag

bb.aa:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328
  %i.dy = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.ab unwind label %bb.ag

bb.ab:                                            ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 24
  %i.ea = load i64, ptr %i.dz, align 8, !tbaa !127
  %i.eb = icmp eq i64 %i.ea, 0
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ec = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.ad unwind label %bb.ag

bb.ad:                                            ; preds = %bb.ac
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ee = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt4pairIKS6_mESaIS9_ENS_10_Select1stEN6duckdb29CaseInsensitiveStringEqualityENSC_33CaseInsensitiveStringHashFunctionENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixERS8_(ptr noundef nonnull align 8 dereferenceable(56) %i.cq, ptr noundef nonnull align 8 dereferenceable(32) %i.ed)
          to label %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEixERSA_.exit unwind label %bb.ag

_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEixERSA_.exit: ; preds = %bb.ad
  store i64 %.0226994, ptr %i.ee, align 8, !tbaa !112
  %i.ef = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.ae unwind label %bb.ag

bb.ae:                                            ; preds = %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEixERSA_.exit
  %i.eg = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 noundef %.0226994)
          to label %bb.af unwind label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 16
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.eg, ptr noundef nonnull align 8 dereferenceable(32) %i.eh)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ad, %bb.ae, %_ZNSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmN6duckdb33CaseInsensitiveStringHashFunctionENS6_29CaseInsensitiveStringEqualityESaISt4pairIKS5_mEEEixERSA_.exit, %bb.ac, %bb.aa, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit328, %bb.t
  %i.ei = landingpad { ptr, i32 }
          cleanup
  br label %bb.ns

bb.ah:                                            ; preds = %bb.v, %bb.u
  %i.ej = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

bb.ai:                                            ; preds = %bb.z
  %i.ek = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.el = load ptr, ptr %13, align 8, !tbaa !103  ; 2 uses
  %i.em = icmp eq ptr %i.el, %i.cw
  br i1 %i.em, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331: ; preds = %bb.ai
  call void @_ZdlPv(ptr noundef %i.el) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit333: ; preds = %bb.ai, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331, %bb.ah
  %.pn316 = phi { ptr, i32 } [ %i.ej, %bb.ah ], [ %i.ek, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i331 ], [ %i.ek, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.ns

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.af, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #23
  %i.en = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.aj unwind label %bb.ap

bb.aj:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  store ptr %i.en, ptr %14, align 8, !tbaa !475
  %i.eo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseISt17reference_wrapperIN6duckdb16ParsedExpressionEESt4pairIKS4_mESaIS7_ENS_10_Select1stENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %i.cy, ptr noundef nonnull align 8 dereferenceable(8) %14)
          to label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit unwind label %bb.ap

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit: ; preds = %bb.aj
  store i64 %.0226994, ptr %i.eo, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ep = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.df)
          to label %bb.ak unwind label %bb.aq     ; 2 uses

bb.ak:                                            ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !10
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 96
  %i.es = load ptr, ptr %i.er, align 8
  invoke void %i.es(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.2") align 8 %15, ptr noundef nonnull align 8 dereferenceable(56) %i.ep)
          to label %bb.al unwind label %bb.aq

bb.al:                                            ; preds = %bb.ak
  %i.et = load ptr, ptr %i.da, align 8, !tbaa !179 ; 6 uses
  %i.eu = load ptr, ptr %i.db, align 8, !tbaa !181
  %.not.i.i335 = icmp eq ptr %i.et, %i.eu
  br i1 %.not.i.i335, label %bb.am, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.al
  %i.ev = load i64, ptr %15, align 8, !tbaa !7
  store i64 %i.ev, ptr %i.et, align 8, !tbaa !7
  %i.ew = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  store ptr %i.ew, ptr %i.da, align 8, !tbaa !179
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

bb.am:                                            ; preds = %bb.al
  %i.ex = load ptr, ptr %i.cz, align 8, !tbaa !182 ; 10 uses
  %i.ey = ptrtoint ptr %i.et to i64               ; 3 uses
  %i.ez = ptrtoint ptr %i.ex to i64               ; 3 uses
  %i.fa = sub i64 %i.ey, %i.ez                    ; 3 uses
  %i.fb = icmp eq i64 %i.fa, 9223372036854775800
  br i1 %i.fb, label %bb.an, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.an:                                            ; preds = %bb.am
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc336 unwind label %.loopexit.split-lp918

.noexc336:                                        ; preds = %bb.an
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.am
  %i.fc = ashr exact i64 %i.fa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.fc, i64 1)
  %i.fd = add nsw i64 %.sroa.speculated.i.i.i.i, %i.fc ; 2 uses
  %i.fe = icmp ult i64 %i.fd, %i.fc
  %i.ff = call i64 @llvm.umin.i64(i64 %i.fd, i64 1152921504606846975)
  %i.fg = select i1 %i.fe, i64 1152921504606846975, i64 %i.ff ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.fg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.fh = shl nuw nsw i64 %i.fg, 3
  %i.fi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fh) #26
          to label %.noexc337 unwind label %.loopexit917 ; 10 uses

.noexc337:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.fj = getelementptr inbounds nuw i8, ptr %i.fi, i64 %i.fa
  %i.fk = load i64, ptr %15, align 8, !tbaa !7
  store i64 %i.fk, ptr %i.fj, align 8, !tbaa !7
  store ptr null, ptr %15, align 8, !tbaa !7
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ex, %i.et
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc337
  %71 = sub i64 %i.ey, %i.ez
  %72 = add i64 %71, -8                           ; 2 uses
  %i.fl = lshr i64 %72, 3
  %i.fm = add nuw nsw i64 %i.fl, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %72, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1576, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.fi, i64 8
  %i.fn = add i64 %i.ey, -8
  %i.fo = sub i64 %i.fn, %i.ez
  %i.fp = and i64 %i.fo, -8                       ; 2 uses
  %scevgep1404 = getelementptr i8, ptr %scevgep, i64 %i.fp
  %scevgep1405 = getelementptr i8, ptr %i.ex, i64 8
  %scevgep1406 = getelementptr i8, ptr %scevgep1405, i64 %i.fp
  %bound0 = icmp ult ptr %i.fi, %scevgep1406
  %bound1 = icmp ult ptr %i.ex, %scevgep1404
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1576, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.fm, 4611686018427387900     ; 3 uses
  %i.fq = shl i64 %n.vec, 3                       ; 2 uses
  %i.fr = getelementptr i8, ptr %i.fi, i64 %i.fq  ; 2 uses
  %i.fs = getelementptr i8, ptr %i.ex, i64 %i.fq
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ft = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fi, i64 %i.ft ; 2 uses
  %next.gep1407 = getelementptr i8, ptr %i.ex, i64 %i.ft ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.fu = getelementptr i8, ptr %next.gep1407, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1407, align 8, !tbaa !7, !alias.scope !482, !noalias !477
  %wide.load1408 = load <2 x i64>, ptr %i.fu, align 8, !tbaa !7, !alias.scope !482, !noalias !477
  %i.fv = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !7, !alias.scope !485, !noalias !482
  store <2 x i64> %wide.load1408, ptr %i.fv, align 8, !tbaa !7, !alias.scope !485, !noalias !482
  %i.fw = getelementptr i8, ptr %next.gep1407, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1407, align 8, !tbaa !7, !alias.scope !482, !noalias !477
  store <2 x ptr> splat (ptr null), ptr %i.fw, align 8, !tbaa !7, !alias.scope !482, !noalias !477
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fx = icmp eq i64 %index.next, %n.vec
  br i1 %i.fx, label %middle.block, label %vector.body, !llvm.loop !487

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fm, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1576

.lr.ph.i.i.i.i.i.i.i.preheader1576:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.fi, %vector.memcheck ], [ %i.fi, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fr, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ex, %vector.memcheck ], [ %i.ex, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.fs, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1576, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ga, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1576 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.fz, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1576 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !477)
  call void @llvm.experimental.noalias.scope.decl(metadata !480)
  %i.fy = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !480, !noalias !477
  store i64 %i.fy, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !477, !noalias !480
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !480, !noalias !477
  %i.fz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ga = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.fz, %i.et
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !488

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc337
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.fi, %.noexc337 ], [ %i.fr, %middle.block ], [ %i.ga, %.lr.ph.i.i.i.i.i.i.i ]
  %i.gb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.ex, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.ao

bb.ao:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ex) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.ao
  store ptr %i.fi, ptr %i.cz, align 8, !tbaa !182
  store ptr %i.gb, ptr %i.da, align 8, !tbaa !179
  %i.gc = getelementptr inbounds nuw [8 x i8], ptr %i.fi, i64 %i.fg
  store ptr %i.gc, ptr %i.db, align 8, !tbaa !181
  %.pr = load ptr, ptr %15, align 8, !tbaa !7     ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.gd = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8
  call void %i.gf(ptr noundef nonnull align 8 dereferenceable(56) %.pr) #23, !inline_history !12
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %i.gg = add nuw i64 %.0226994, 1                ; 2 uses
  %i.gh = load ptr, ptr %i.cg, align 8, !tbaa !179
  %i.gi = load ptr, ptr %i.bt, align 8, !tbaa !182
  %i.gj = ptrtoint ptr %i.gh to i64
  %i.gk = ptrtoint ptr %i.gi to i64
  %i.gl = sub i64 %i.gj, %i.gk
  %i.gm = ashr exact i64 %i.gl, 3                 ; 2 uses
  %i.gn = icmp ult i64 %i.gg, %i.gm
  br i1 %i.gn, label %bb.t, label %._crit_edge, !llvm.loop !489

bb.ap:                                            ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.go = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #23
  br label %bb.ns

bb.aq:                                            ; preds = %bb.ak, %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit340

.loopexit917:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit919 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

.loopexit.split-lp918:                            ; preds = %bb.an
  %lpad.loopexit.split-lp920 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.ar:                                            ; preds = %.loopexit.split-lp918, %.loopexit917
  %lpad.phi921 = phi { ptr, i32 } [ %lpad.loopexit919, %.loopexit917 ], [ %lpad.loopexit.split-lp920, %.loopexit.split-lp918 ] ; 2 uses
  %i.gq = load ptr, ptr %15, align 8, !tbaa !7    ; 3 uses
  %.not.i338 = icmp eq ptr %i.gq, null
  br i1 %.not.i338, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit340, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i339

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i339: ; preds = %bb.ar
  %i.gr = load ptr, ptr %i.gq, align 8, !tbaa !10
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void %i.gt(ptr noundef nonnull align 8 dereferenceable(56) %i.gq) #23, !inline_history !12
  br label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit340

_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit340: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i339, %bb.ar, %bb.aq
  %.pn318 = phi { ptr, i32 } [ %i.gp, %bb.aq ], [ %lpad.phi921, %bb.ar ], [ %lpad.phi921, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i339 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %bb.ns

bb.as:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Binder23BindWhereStarExpressionERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.dd)
          to label %bb.at unwind label %bb.ay

bb.at:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #23
  invoke void @_ZN6duckdb17ColumnAliasBinderC1ERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(328) %i.cq)
          to label %bb.au unwind label %bb.az

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #23
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !15, !nonnull !88, !align !89
  invoke void @_ZN6duckdb11WhereBinderC1ERNS_6BinderERNS_13ClientContextENS_12optional_ptrINS_17ColumnAliasBinderELb1EEE(ptr noundef nonnull align 8 dereferenceable(112) %17, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(512) %i.gv, ptr nonnull %16)
          to label %bb.av unwind label %bb.ba

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  %i.gw = load i64, ptr %i.dd, align 8, !tbaa !7
  store i64 %i.gw, ptr %18, align 8, !tbaa !7
  store ptr null, ptr %i.dd, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %19, ptr noundef nonnull align 8 dereferenceable(104) %17, ptr noundef nonnull align 8 dereferenceable(8) %18, ptr null, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.bb

bb.aw:                                            ; preds = %bb.av
  %i.gx = getelementptr inbounds nuw i8, ptr %i.az, i64 568 ; 2 uses
  %i.gy = load ptr, ptr %19, align 8, !tbaa !13
  store ptr null, ptr %19, align 8, !tbaa !13
  %i.gz = load ptr, ptr %i.gx, align 8, !tbaa !13 ; 3 uses
  store ptr %i.gy, ptr %i.gx, align 8, !tbaa !13
  %.not.i.i.i.i.i341 = icmp eq ptr %i.gz, null
  br i1 %.not.i.i.i.i.i341, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit: ; preds = %bb.aw
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !10
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 8
  %i.hc = load ptr, ptr %i.hb, align 8
  call void %i.hc(ptr noundef nonnull align 8 dereferenceable(88) %i.gz) #23, !inline_history !327
  %.pr833 = load ptr, ptr %19, align 8, !tbaa !13 ; 3 uses
  %.not.i342 = icmp eq ptr %.pr833, null
  br i1 %.not.i342, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit
  %i.hd = load ptr, ptr %.pr833, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 8
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(88) %.pr833) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.aw, %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #23
  %i.hg = load ptr, ptr %18, align 8, !tbaa !7    ; 3 uses
  %.not.i343 = icmp eq ptr %i.hg, null
  br i1 %.not.i343, label %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit345, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i344

end_hunk_3
begin_hunk_4_@_ZN6duckdb6Binder14BindSelectNodeERNS_10SelectNodeENS_14BoundStatementE:bb.a
  %i.oe = load atomic i64, ptr %i.od acquire, align 8 ; 2 uses
  %i.of = icmp eq i64 %i.oe, 4294967297
  %i.og = trunc i64 %i.oe to i32                  ; 2 uses
  br i1 %i.of, label %bb.cp, label %bb.cq

bb.cp:                                            ; preds = %bb.co
  store i32 0, ptr %i.od, align 8, !tbaa !115
  %i.oh = getelementptr inbounds nuw i8, ptr %i.oc, i64 12
  store i32 0, ptr %i.oh, align 4, !tbaa !117
  %i.oi = load ptr, ptr %i.oc, align 8, !tbaa !10
  %i.oj = getelementptr inbounds nuw i8, ptr %i.oi, i64 16
  %i.ok = load ptr, ptr %i.oj, align 8
  call void %i.ok(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #23, !inline_history !520
  %i.ol = load ptr, ptr %i.oc, align 8, !tbaa !10
  %i.om = getelementptr inbounds nuw i8, ptr %i.ol, i64 24
  %i.on = load ptr, ptr %i.om, align 8
  call void %i.on(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #23, !inline_history !520
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

bb.cq:                                            ; preds = %bb.co
  %i.oo = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i391 = icmp eq i8 %i.oo, 0
  br i1 %.not.i.i.i.i.i391, label %bb.cs, label %bb.cr

bb.cr:                                            ; preds = %bb.cq
  %i.op = add nsw i32 %i.og, -1
  store i32 %i.op, ptr %i.od, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.cs:                                            ; preds = %bb.cq
  %i.oq = atomicrmw volatile add ptr %i.od, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.cs, %bb.cr
  %.0.i.i.i.i.i.i = phi i32 [ %i.og, %bb.cr ], [ %i.oq, %bb.cs ]
  %i.or = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.or, label %bb.ct, label %_ZN6duckdb17AggregateFunctionD2Ev.exit, !prof !120

bb.ct:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.oc) #23, !inline_history !521
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit

_ZN6duckdb17AggregateFunctionD2Ev.exit:           ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.cp, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.ct
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %33) #23, !inline_history !521
  %i.os = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %32)
          to label %.noexc.i unwind label %bb.du  ; 5 uses

.noexc.i:                                         ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #23
  store ptr %i.kd, ptr %36, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #23
  store i64 16, ptr %i.e, align 8, !tbaa !112
  %i.ot = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %36, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 0)
          to label %.noexc392 unwind label %bb.dv ; 2 uses

.noexc392:                                        ; preds = %.noexc.i
  store ptr %i.ot, ptr %36, align 8, !tbaa !103
  %i.ou = load i64, ptr %i.e, align 8, !tbaa !112 ; 3 uses
  store i64 %i.ou, ptr %i.kd, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %i.ot, ptr noundef nonnull align 1 dereferenceable(16) @.str.15, i64 16, i1 false)
  store i64 %i.ou, ptr %i.ke, align 8, !tbaa !127
  %i.ov = load ptr, ptr %36, align 8, !tbaa !103
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 %i.ou
  store i8 0, ptr %i.ow, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #23
  %i.ox = getelementptr inbounds nuw i8, ptr %i.os, i64 16 ; 5 uses
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !103 ; 6 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %i.os, i64 32 ; 2 uses
  %i.pa = icmp eq ptr %i.oy, %i.oz
  %i.pb = load ptr, ptr %36, align 8, !tbaa !103  ; 6 uses
  %i.pc = icmp eq ptr %i.pb, %i.kd                ; 2 uses
  br i1 %i.pa, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i393

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395: ; preds = %.noexc392
  br i1 %i.pc, label %bb.cu, label %.thread.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i393: ; preds = %.noexc392
  br i1 %i.pc, label %bb.cu, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i

bb.cu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i393, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  %i.pd = load i64, ptr %i.ke, align 8, !tbaa !127 ; 3 uses
  %i.pe = icmp ult i64 %i.pd, 16
  call void @llvm.assume(i1 %i.pe)
  %.not21.i.i = icmp eq ptr %36, %i.ox
  br i1 %.not21.i.i, label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, label %bb.cv, !prof !120

bb.cv:                                            ; preds = %bb.cu
  switch i64 %i.pd, label %bb.cx [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i
    i64 1, label %bb.cw
  ]

bb.cw:                                            ; preds = %bb.cv
  %i.pf = load i8, ptr %i.pb, align 1, !tbaa !119
  store i8 %i.pf, ptr %i.oy, align 1, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

bb.cx:                                            ; preds = %bb.cv
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.oy, ptr align 1 %i.pb, i64 %i.pd, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i: ; preds = %bb.cx, %bb.cw, %bb.cv
  %i.pg = load i64, ptr %i.ke, align 8, !tbaa !127 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  store i64 %i.pg, ptr %i.ph, align 8, !tbaa !127
  %i.pi = load ptr, ptr %i.ox, align 8, !tbaa !103
  %i.pj = getelementptr inbounds nuw i8, ptr %i.pi, i64 %i.pg
  store i8 0, ptr %i.pj, align 1, !tbaa !119
  %.pre.i.i = load ptr, ptr %36, align 8, !tbaa !103
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

.thread.i.i:                                      ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i395
  %i.pk = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  store ptr %i.pb, ptr %i.ox, align 8, !tbaa !103
  %i.pl = load <2 x i64>, ptr %i.ke, align 8, !tbaa !119
  store <2 x i64> %i.pl, ptr %i.pk, align 8, !tbaa !119
  br label %bb.cz

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i393
  %i.pm = load i64, ptr %i.oz, align 8, !tbaa !119
  store ptr %i.pb, ptr %i.ox, align 8, !tbaa !103
  %i.pn = getelementptr inbounds nuw i8, ptr %i.os, i64 24
  %i.po = load <2 x i64>, ptr %i.ke, align 8, !tbaa !119
  store <2 x i64> %i.po, ptr %i.pn, align 8, !tbaa !119
  %.not.i.i394 = icmp eq ptr %i.oy, null
  br i1 %.not.i.i394, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i
  store ptr %i.oy, ptr %36, align 8, !tbaa !103
  store i64 %i.pm, ptr %i.kd, align 8, !tbaa !119
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

bb.cz:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i, %.thread.i.i
  store ptr %i.kd, ptr %36, align 8, !tbaa !103
  br label %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit

_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.cu, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i, %bb.cy, %bb.cz
  %i.pp = phi ptr [ %.pre.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i ], [ %i.oy, %bb.cy ], [ %i.kd, %bb.cz ], [ %i.pb, %bb.cu ]
  store i64 0, ptr %i.ke, align 8, !tbaa !127
  store i8 0, ptr %i.pp, align 1, !tbaa !119
  %i.pq = load ptr, ptr %36, align 8, !tbaa !103  ; 2 uses
  %i.pr = icmp eq ptr %i.pq, %i.kd
  br i1 %i.pr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396: ; preds = %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit
  call void @_ZdlPv(ptr noundef %i.pq) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398: ; preds = %_ZN6duckdb14BaseExpression8SetAliasEONSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i396
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  %i.ps = load ptr, ptr %32, align 8, !tbaa !522  ; 5 uses
  store ptr null, ptr %32, align 8, !tbaa !522
  %i.pt = load ptr, ptr %i.js, align 8, !tbaa !211 ; 6 uses
  %i.pu = load ptr, ptr %i.kf, align 8, !tbaa !212
  %.not.i.i399 = icmp eq ptr %i.pt, %i.pu
  br i1 %.not.i.i399, label %bb.da, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417.thread: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %i.pv = ptrtoint ptr %i.ps to i64
  store i64 %i.pv, ptr %i.pt, align 8, !tbaa !13
  %i.pw = getelementptr inbounds nuw i8, ptr %i.pt, i64 8
  store ptr %i.pw, ptr %i.js, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit

bb.da:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit398
  %i.px = load ptr, ptr %i.jr, align 8, !tbaa !213 ; 10 uses
  %i.py = ptrtoint ptr %i.pt to i64               ; 3 uses
  %i.pz = ptrtoint ptr %i.px to i64               ; 3 uses
  %i.qa = sub i64 %i.py, %i.pz                    ; 3 uses
  %i.qb = icmp eq i64 %i.qa, 9223372036854775800
  br i1 %i.qb, label %bb.db, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i400

bb.db:                                            ; preds = %bb.da
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc412 unwind label %.loopexit.split-lp913

.noexc412:                                        ; preds = %bb.db
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i400: ; preds = %bb.da
  %i.qc = ashr exact i64 %i.qa, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i401 = call i64 @llvm.umax.i64(i64 %i.qc, i64 1)
  %i.qd = add nsw i64 %.sroa.speculated.i.i.i.i401, %i.qc ; 2 uses
  %i.qe = icmp ult i64 %i.qd, %i.qc
  %i.qf = call i64 @llvm.umin.i64(i64 %i.qd, i64 1152921504606846975)
  %i.qg = select i1 %i.qe, i64 1152921504606846975, i64 %i.qf ; 4 uses
  %.not.i.i.i.i402 = icmp ne i64 %i.qg, 0
  call void @llvm.assume(i1 %.not.i.i.i.i402)
  %i.qh = shl nuw nsw i64 %i.qg, 3
  %i.qi = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qh) #26
          to label %.noexc413 unwind label %.loopexit912 ; 12 uses

.noexc413:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i400
  %i.qj = getelementptr inbounds nuw i8, ptr %i.qi, i64 %i.qa
  %i.qk = ptrtoint ptr %i.ps to i64
  store i64 %i.qk, ptr %i.qj, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i403 = icmp eq ptr %i.px, %i.pt
  br i1 %.not10.i.i.i.i.i.i.i403, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i408, label %.lr.ph.i.i.i.i.i.i.i404.preheader

.lr.ph.i.i.i.i.i.i.i404.preheader:                ; preds = %.noexc413
  %73 = sub i64 %i.py, %i.pz
  %74 = add i64 %73, -8                           ; 2 uses
  %i.ql = lshr i64 %74, 3
  %i.qm = add nuw nsw i64 %i.ql, 1                ; 2 uses
  %min.iters.check1443 = icmp ult i64 %74, 56
  br i1 %min.iters.check1443, label %.lr.ph.i.i.i.i.i.i.i404.preheader1567, label %vector.memcheck1434

vector.memcheck1434:                              ; preds = %.lr.ph.i.i.i.i.i.i.i404.preheader
  %scevgep1435 = getelementptr i8, ptr %i.qi, i64 8
  %i.qn = add i64 %i.py, -8
  %i.qo = sub i64 %i.qn, %i.pz
  %i.qp = and i64 %i.qo, -8                       ; 2 uses
  %scevgep1436 = getelementptr i8, ptr %scevgep1435, i64 %i.qp
  %scevgep1437 = getelementptr i8, ptr %i.px, i64 8
  %scevgep1438 = getelementptr i8, ptr %scevgep1437, i64 %i.qp
  %bound01439 = icmp ult ptr %i.qi, %scevgep1438
  %bound11440 = icmp ult ptr %i.px, %scevgep1436
  %found.conflict1441 = and i1 %bound01439, %bound11440
  br i1 %found.conflict1441, label %.lr.ph.i.i.i.i.i.i.i404.preheader1567, label %vector.ph1444

vector.ph1444:                                    ; preds = %vector.memcheck1434
  %n.vec1446 = and i64 %i.qm, 4611686018427387900 ; 3 uses
  %i.qq = shl i64 %n.vec1446, 3                   ; 2 uses
  %i.qr = getelementptr i8, ptr %i.qi, i64 %i.qq  ; 2 uses
  %i.qs = getelementptr i8, ptr %i.px, i64 %i.qq
  br label %vector.body1447

vector.body1447:                                  ; preds = %vector.body1447, %vector.ph1444
  %index1448 = phi i64 [ 0, %vector.ph1444 ], [ %index.next1453, %vector.body1447 ] ; 2 uses
  %i.qt = shl i64 %index1448, 3                   ; 2 uses
  %next.gep1449 = getelementptr i8, ptr %i.qi, i64 %i.qt ; 2 uses
  %next.gep1450 = getelementptr i8, ptr %i.px, i64 %i.qt ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.qu = getelementptr i8, ptr %next.gep1450, i64 16
  %wide.load1451 = load <2 x i64>, ptr %next.gep1450, align 8, !tbaa !13, !alias.scope !529, !noalias !524
  %wide.load1452 = load <2 x i64>, ptr %i.qu, align 8, !tbaa !13, !alias.scope !529, !noalias !524
  %i.qv = getelementptr i8, ptr %next.gep1449, i64 16
  store <2 x i64> %wide.load1451, ptr %next.gep1449, align 8, !tbaa !13, !alias.scope !532, !noalias !529
  store <2 x i64> %wide.load1452, ptr %i.qv, align 8, !tbaa !13, !alias.scope !532, !noalias !529
  %i.qw = getelementptr i8, ptr %next.gep1450, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1450, align 8, !tbaa !13, !alias.scope !529, !noalias !524
  store <2 x ptr> splat (ptr null), ptr %i.qw, align 8, !tbaa !13, !alias.scope !529, !noalias !524
  %index.next1453 = add nuw i64 %index1448, 4     ; 2 uses
  %i.qx = icmp eq i64 %index.next1453, %n.vec1446
  br i1 %i.qx, label %middle.block1454, label %vector.body1447, !llvm.loop !534

middle.block1454:                                 ; preds = %vector.body1447
  %cmp.n1455 = icmp eq i64 %i.qm, %n.vec1446
  br i1 %cmp.n1455, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i408, label %.lr.ph.i.i.i.i.i.i.i404.preheader1567

.lr.ph.i.i.i.i.i.i.i404.preheader1567:            ; preds = %vector.memcheck1434, %.lr.ph.i.i.i.i.i.i.i404.preheader, %middle.block1454
  %.012.i.i.i.i.i.i.i405.ph = phi ptr [ %i.qi, %vector.memcheck1434 ], [ %i.qi, %.lr.ph.i.i.i.i.i.i.i404.preheader ], [ %i.qr, %middle.block1454 ]
  %.0911.i.i.i.i.i.i.i406.ph = phi ptr [ %i.px, %vector.memcheck1434 ], [ %i.px, %.lr.ph.i.i.i.i.i.i.i404.preheader ], [ %i.qs, %middle.block1454 ]
  br label %.lr.ph.i.i.i.i.i.i.i404

.lr.ph.i.i.i.i.i.i.i404:                          ; preds = %.lr.ph.i.i.i.i.i.i.i404.preheader1567, %.lr.ph.i.i.i.i.i.i.i404
  %.012.i.i.i.i.i.i.i405 = phi ptr [ %i.ra, %.lr.ph.i.i.i.i.i.i.i404 ], [ %.012.i.i.i.i.i.i.i405.ph, %.lr.ph.i.i.i.i.i.i.i404.preheader1567 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i406 = phi ptr [ %i.qz, %.lr.ph.i.i.i.i.i.i.i404 ], [ %.0911.i.i.i.i.i.i.i406.ph, %.lr.ph.i.i.i.i.i.i.i404.preheader1567 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !524)
  call void @llvm.experimental.noalias.scope.decl(metadata !527)
  %i.qy = load i64, ptr %.0911.i.i.i.i.i.i.i406, align 8, !tbaa !13, !alias.scope !527, !noalias !524
  store i64 %i.qy, ptr %.012.i.i.i.i.i.i.i405, align 8, !tbaa !13, !alias.scope !524, !noalias !527
  store ptr null, ptr %.0911.i.i.i.i.i.i.i406, align 8, !tbaa !13, !alias.scope !527, !noalias !524
  %i.qz = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i406, i64 8 ; 2 uses
  %i.ra = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i405, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i407 = icmp eq ptr %i.qz, %i.pt
  br i1 %.not.i.i.i.i.i.i.i407, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i408, label %.lr.ph.i.i.i.i.i.i.i404, !llvm.loop !535

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i408: ; preds = %.lr.ph.i.i.i.i.i.i.i404, %middle.block1454, %.noexc413
  %.0.lcssa.i.i.i.i.i.i.i409 = phi ptr [ %i.qi, %.noexc413 ], [ %i.qr, %middle.block1454 ], [ %i.ra, %.lr.ph.i.i.i.i.i.i.i404 ]
  %i.rb = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i409, i64 8 ; 2 uses
  %.not.i23.i.i.i410 = icmp eq ptr %i.px, null
  br i1 %.not.i23.i.i.i410, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417.thread1306, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417.thread1306: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i408
  store ptr %i.qi, ptr %i.jr, align 8, !tbaa !213
  store ptr %i.rb, ptr %i.js, align 8, !tbaa !211
  %i.rc = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qg
  store ptr %i.rc, ptr %i.kf, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i408
  call void @_ZdlPv(ptr noundef nonnull %i.px) #25
  %.pre1077.pre = load ptr, ptr %32, align 8, !tbaa !522 ; 3 uses
  store ptr %i.qi, ptr %i.jr, align 8, !tbaa !213
  store ptr %i.rb, ptr %i.js, align 8, !tbaa !211
  %i.rd = getelementptr inbounds nuw [8 x i8], ptr %i.qi, i64 %i.qg
  store ptr %i.rd, ptr %i.kf, align 8, !tbaa !212
  %.not.i418 = icmp eq ptr %.pre1077.pre, null
  br i1 %.not.i418, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417
  %i.re = load ptr, ptr %.pre1077.pre, align 8, !tbaa !10
  %i.rf = getelementptr inbounds nuw i8, ptr %i.re, i64 8
  %i.rg = load ptr, ptr %i.rf, align 8
  call void %i.rg(ptr noundef nonnull align 8 dereferenceable(512) %.pre1077.pre) #23, !inline_history !536
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417.thread1306, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit417, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  %i.rh = load ptr, ptr %29, align 8, !tbaa !213  ; 4 uses
  %i.ri = load ptr, ptr %i.jt, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i419 = icmp eq ptr %i.rh, %i.ri
  br i1 %.not4.i.i.i419, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i428, label %.lr.ph.i.i.i420

.lr.ph.i.i.i420:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i424
  %.05.i.i.i421 = phi ptr [ %i.rn, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i424 ], [ %i.rh, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.rj = load ptr, ptr %.05.i.i.i421, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i422 = icmp eq ptr %i.rj, null
  br i1 %.not.i.i.i.i.i422, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i424, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i423

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i423: ; preds = %.lr.ph.i.i.i420
  %i.rk = load ptr, ptr %i.rj, align 8, !tbaa !10
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rk, i64 8
  %i.rm = load ptr, ptr %i.rl, align 8
  call void %i.rm(ptr noundef nonnull align 8 dereferenceable(88) %i.rj) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i424

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i424: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i423, %.lr.ph.i.i.i420
  %i.rn = getelementptr inbounds nuw i8, ptr %.05.i.i.i421, i64 8 ; 2 uses
  %.not.i.i.i425 = icmp eq ptr %i.rn, %i.ri
  br i1 %.not.i.i.i425, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i428, label %.lr.ph.i.i.i420, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i428: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i424, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i429 = icmp eq ptr %i.rh, null
  br i1 %.not.i.i1.i429, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit430, label %bb.dc

bb.dc:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i428
  call void @_ZdlPv(ptr noundef nonnull %i.rh) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit430

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit430: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i428, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %28, align 8, !tbaa !10
  %i.ro = load ptr, ptr %i.ka, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i431 = icmp eq ptr %i.ro, null
  br i1 %.not.i.i.i.i431, label %_ZN6duckdb17AggregateFunctionD2Ev.exit435, label %bb.dd

bb.dd:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit430
  %i.rp = getelementptr inbounds nuw i8, ptr %i.ro, i64 8 ; 4 uses
  %i.rq = load atomic i64, ptr %i.rp acquire, align 8 ; 2 uses
  %i.rr = icmp eq i64 %i.rq, 4294967297
  %i.rs = trunc i64 %i.rq to i32                  ; 2 uses
  br i1 %i.rr, label %bb.de, label %bb.df

bb.de:                                            ; preds = %bb.dd
  store i32 0, ptr %i.rp, align 8, !tbaa !115
  %i.rt = getelementptr inbounds nuw i8, ptr %i.ro, i64 12
  store i32 0, ptr %i.rt, align 4, !tbaa !117
  %i.ru = load ptr, ptr %i.ro, align 8, !tbaa !10
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ru, i64 16
  %i.rw = load ptr, ptr %i.rv, align 8
  call void %i.rw(ptr noundef nonnull align 8 dereferenceable(16) %i.ro) #23, !inline_history !520
  %i.rx = load ptr, ptr %i.ro, align 8, !tbaa !10
  %i.ry = getelementptr inbounds nuw i8, ptr %i.rx, i64 24
  %i.rz = load ptr, ptr %i.ry, align 8
  call void %i.rz(ptr noundef nonnull align 8 dereferenceable(16) %i.ro) #23, !inline_history !520
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit435

bb.df:                                            ; preds = %bb.dd
  %i.sa = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i432 = icmp eq i8 %i.sa, 0
  br i1 %.not.i.i.i.i.i432, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %bb.df
  %i.sb = add nsw i32 %i.rs, -1
  store i32 %i.sb, ptr %i.rp, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i433

bb.dh:                                            ; preds = %bb.df
  %i.sc = atomicrmw volatile add ptr %i.rp, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i433

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i433: ; preds = %bb.dh, %bb.dg
  %.0.i.i.i.i.i.i434 = phi i32 [ %i.rs, %bb.dg ], [ %i.sc, %bb.dh ]
  %i.sd = icmp eq i32 %.0.i.i.i.i.i.i434, 1
  br i1 %i.sd, label %bb.di, label %_ZN6duckdb17AggregateFunctionD2Ev.exit435, !prof !120

bb.di:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i433
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ro) #23, !inline_history !521
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit435

_ZN6duckdb17AggregateFunctionD2Ev.exit435:        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit430, %bb.de, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i433, %bb.di
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %28) #23, !inline_history !521
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %bb.ea

bb.dj:                                            ; preds = %bb.bv, %bb.bu, %bb.bt
  %i.se = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %25) #23
  br label %bb.em

bb.dk:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb16ParsedExpressionESt14default_deleteIS1_EED2Ev.exit363
  %i.sf = landingpad { ptr, i32 }
          cleanup
  br label %bb.el

bb.dl:                                            ; preds = %bb.by, %bb.bx
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474

bb.dm:                                            ; preds = %bb.bz
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.dn:                                            ; preds = %bb.ca
  %i.si = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit902:                                     ; preds = %bb.cb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit463, %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit466, %bb.eg, %.loopexit.i.i, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i449
  %lpad.loopexit904 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp903:                            ; preds = %bb.ed
  %lpad.loopexit.split-lp905 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.do:                                            ; preds = %.loopexit901
  %i.sj = landingpad { ptr, i32 }
          cleanup
  br label %bb.dz

bb.dp:                                            ; preds = %bb.ch
  %i.sk = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit438

bb.dq:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit909 = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.pre1078 = load ptr, ptr %30, align 8, !tbaa !13 ; 3 uses
  %.not.i436 = icmp eq ptr %.pre1078, null
  br i1 %.not.i436, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit438, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i437

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i437: ; preds = %bb.dq
  %i.sl = load ptr, ptr %.pre1078, align 8, !tbaa !10
  %i.sm = getelementptr inbounds nuw i8, ptr %i.sl, i64 8
  %i.sn = load ptr, ptr %i.sm, align 8
  call void %i.sn(ptr noundef nonnull align 8 dereferenceable(88) %.pre1078) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit438

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit438: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i437, %bb.dq, %bb.dp
  %.pn247 = phi { ptr, i32 } [ %i.sk, %bb.dp ], [ %lpad.loopexit909, %bb.dq ], [ %lpad.loopexit909, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i437 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %bb.dy

bb.dr:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit380
  %i.so = landingpad { ptr, i32 }
          cleanup
  br label %bb.dx

bb.ds:                                            ; preds = %bb.ci
  %i.sp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447

bb.dt:                                            ; preds = %_ZN6duckdb17AggregateFunctionC2ERKS0_.exit
  %i.sq = landingpad { ptr, i32 }
          cleanup
  %i.sr = load ptr, ptr %35, align 8, !tbaa !13   ; 3 uses
  %.not.i439 = icmp eq ptr %i.sr, null
  br i1 %.not.i439, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit441, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i440

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i440: ; preds = %bb.dt
  %i.ss = load ptr, ptr %i.sr, align 8, !tbaa !10
  %i.st = getelementptr inbounds nuw i8, ptr %i.ss, i64 8
  %i.su = load ptr, ptr %i.st, align 8
  call void %i.su(ptr noundef nonnull align 8 dereferenceable(88) %i.sr) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit441

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit441: ; preds = %bb.dt, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i440
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %34) #23
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %33) #23
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447

bb.du:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444

bb.dv:                                            ; preds = %.noexc.i
  %i.sw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #23
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444

.loopexit912:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i400
  %lpad.loopexit914 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

.loopexit.split-lp913:                            ; preds = %bb.db
  %lpad.loopexit.split-lp915 = landingpad { ptr, i32 }
          cleanup
  br label %bb.dw

bb.dw:                                            ; preds = %.loopexit.split-lp913, %.loopexit912
  %lpad.phi916 = phi { ptr, i32 } [ %lpad.loopexit914, %.loopexit912 ], [ %lpad.loopexit.split-lp915, %.loopexit.split-lp913 ] ; 2 uses
  %.not.i442 = icmp eq ptr %i.ps, null
  br i1 %.not.i442, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i443

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i443: ; preds = %bb.dw
  %i.sx = load ptr, ptr %i.ps, align 8, !tbaa !10
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sx, i64 8
  %i.sz = load ptr, ptr %i.sy, align 8
  call void %i.sz(ptr noundef nonnull align 8 dereferenceable(88) %i.ps) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i443, %bb.dw, %bb.dv, %bb.du
  %.pn249 = phi { ptr, i32 } [ %i.sv, %bb.du ], [ %i.sw, %bb.dv ], [ %lpad.phi916, %bb.dw ], [ %lpad.phi916, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i443 ] ; 2 uses
  %i.ta = load ptr, ptr %32, align 8, !tbaa !522  ; 3 uses
  %.not.i445 = icmp eq ptr %i.ta, null
  br i1 %.not.i445, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i446

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i446: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444
  %i.tb = load ptr, ptr %i.ta, align 8, !tbaa !10
  %i.tc = getelementptr inbounds nuw i8, ptr %i.tb, i64 8
  %i.td = load ptr, ptr %i.tc, align 8
  call void %i.td(ptr noundef nonnull align 8 dereferenceable(512) %i.ta) #23, !inline_history !536
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447: ; preds = %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i446, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit441, %bb.ds
  %.pn249.pn = phi { ptr, i32 } [ %i.sp, %bb.ds ], [ %i.sq, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit441 ], [ %.pn249, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit444 ], [ %.pn249, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i446 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.dx

bb.dx:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447, %bb.dr
  %.pn249.pn.pn = phi { ptr, i32 } [ %.pn249.pn, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit447 ], [ %i.so, %bb.dr ]
  call void @llvm.lifetime.end.p0(ptr nonnull %31) #23
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit438
  %.pn249.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn, %bb.dx ], [ %.pn247, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit438 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %29) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %29) #23
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %28) #23
  br label %bb.dz

bb.dz:                                            ; preds = %bb.dy, %bb.do
  %.pn249.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn249.pn.pn.pn, %bb.dy ], [ %i.sj, %bb.do ]
  call void @llvm.lifetime.end.p0(ptr nonnull %28) #23
  br label %.body

bb.ea:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit435, %bb.cc
  %i.te = load ptr, ptr %i.kh, align 8, !tbaa !211 ; 6 uses
  %i.tf = load ptr, ptr %i.ki, align 8, !tbaa !212
  %.not.i.i448 = icmp eq ptr %i.te, %i.tf
  br i1 %.not.i.i448, label %bb.ec, label %bb.eb

bb.eb:                                            ; preds = %bb.ea
  %i.tg = load i64, ptr %27, align 8, !tbaa !13
  store i64 %i.tg, ptr %i.te, align 8, !tbaa !13
  store ptr null, ptr %27, align 8, !tbaa !13
  %i.th = getelementptr inbounds nuw i8, ptr %i.te, i64 8
  store ptr %i.th, ptr %i.kh, align 8, !tbaa !211
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit463

bb.ec:                                            ; preds = %bb.ea
  %i.ti = load ptr, ptr %i.kg, align 8, !tbaa !213 ; 10 uses
  %i.tj = ptrtoint ptr %i.te to i64               ; 3 uses
  %i.tk = ptrtoint ptr %i.ti to i64               ; 3 uses
  %i.tl = sub i64 %i.tj, %i.tk                    ; 3 uses
  %i.tm = icmp eq i64 %i.tl, 9223372036854775800
  br i1 %i.tm, label %bb.ed, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i449

bb.ed:                                            ; preds = %bb.ec
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc461 unwind label %.loopexit.split-lp903

.noexc461:                                        ; preds = %bb.ed
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i449: ; preds = %bb.ec
  %i.tn = ashr exact i64 %i.tl, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i450 = call i64 @llvm.umax.i64(i64 %i.tn, i64 1)
  %i.to = add nsw i64 %.sroa.speculated.i.i.i.i450, %i.tn ; 2 uses
  %i.tp = icmp ult i64 %i.to, %i.tn
  %i.tq = call i64 @llvm.umin.i64(i64 %i.to, i64 1152921504606846975)
  %i.tr = select i1 %i.tp, i64 1152921504606846975, i64 %i.tq ; 3 uses
  %.not.i.i.i.i451 = icmp ne i64 %i.tr, 0
  call void @llvm.assume(i1 %.not.i.i.i.i451)
  %i.ts = shl nuw nsw i64 %i.tr, 3
  %i.tt = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ts) #26
          to label %.noexc462 unwind label %.loopexit902 ; 10 uses

.noexc462:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i449
  %i.tu = getelementptr inbounds nuw i8, ptr %i.tt, i64 %i.tl
  %i.tv = load i64, ptr %27, align 8, !tbaa !13
  store i64 %i.tv, ptr %i.tu, align 8, !tbaa !13
  store ptr null, ptr %27, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i452 = icmp eq ptr %i.ti, %i.te
  br i1 %.not10.i.i.i.i.i.i.i452, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i.i453.preheader

.lr.ph.i.i.i.i.i.i.i453.preheader:                ; preds = %.noexc462
  %75 = sub i64 %i.tj, %i.tk
  %76 = add i64 %75, -8                           ; 2 uses
  %i.tw = lshr i64 %76, 3
  %i.tx = add nuw nsw i64 %i.tw, 1                ; 2 uses
  %min.iters.check1419 = icmp ult i64 %76, 56
  br i1 %min.iters.check1419, label %.lr.ph.i.i.i.i.i.i.i453.preheader1566, label %vector.memcheck1410

vector.memcheck1410:                              ; preds = %.lr.ph.i.i.i.i.i.i.i453.preheader
  %scevgep1411 = getelementptr i8, ptr %i.tt, i64 8
  %i.ty = add i64 %i.tj, -8
  %i.tz = sub i64 %i.ty, %i.tk
  %i.ua = and i64 %i.tz, -8                       ; 2 uses
  %scevgep1412 = getelementptr i8, ptr %scevgep1411, i64 %i.ua
  %scevgep1413 = getelementptr i8, ptr %i.ti, i64 8
  %scevgep1414 = getelementptr i8, ptr %scevgep1413, i64 %i.ua
  %bound01415 = icmp ult ptr %i.tt, %scevgep1414
  %bound11416 = icmp ult ptr %i.ti, %scevgep1412
  %found.conflict1417 = and i1 %bound01415, %bound11416
  br i1 %found.conflict1417, label %.lr.ph.i.i.i.i.i.i.i453.preheader1566, label %vector.ph1420

vector.ph1420:                                    ; preds = %vector.memcheck1410
  %n.vec1422 = and i64 %i.tx, 4611686018427387900 ; 3 uses
  %i.ub = shl i64 %n.vec1422, 3                   ; 2 uses
  %i.uc = getelementptr i8, ptr %i.tt, i64 %i.ub  ; 2 uses
  %i.ud = getelementptr i8, ptr %i.ti, i64 %i.ub
  br label %vector.body1423

vector.body1423:                                  ; preds = %vector.body1423, %vector.ph1420
  %index1424 = phi i64 [ 0, %vector.ph1420 ], [ %index.next1429, %vector.body1423 ] ; 2 uses
  %i.ue = shl i64 %index1424, 3                   ; 2 uses
  %next.gep1425 = getelementptr i8, ptr %i.tt, i64 %i.ue ; 2 uses
  %next.gep1426 = getelementptr i8, ptr %i.ti, i64 %i.ue ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.uf = getelementptr i8, ptr %next.gep1426, i64 16
  %wide.load1427 = load <2 x i64>, ptr %next.gep1426, align 8, !tbaa !13, !alias.scope !542, !noalias !537
  %wide.load1428 = load <2 x i64>, ptr %i.uf, align 8, !tbaa !13, !alias.scope !542, !noalias !537
  %i.ug = getelementptr i8, ptr %next.gep1425, i64 16
  store <2 x i64> %wide.load1427, ptr %next.gep1425, align 8, !tbaa !13, !alias.scope !545, !noalias !542
  store <2 x i64> %wide.load1428, ptr %i.ug, align 8, !tbaa !13, !alias.scope !545, !noalias !542
  %i.uh = getelementptr i8, ptr %next.gep1426, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1426, align 8, !tbaa !13, !alias.scope !542, !noalias !537
  store <2 x ptr> splat (ptr null), ptr %i.uh, align 8, !tbaa !13, !alias.scope !542, !noalias !537
  %index.next1429 = add nuw i64 %index1424, 4     ; 2 uses
  %i.ui = icmp eq i64 %index.next1429, %n.vec1422
  br i1 %i.ui, label %middle.block1430, label %vector.body1423, !llvm.loop !547

middle.block1430:                                 ; preds = %vector.body1423
  %cmp.n1431 = icmp eq i64 %i.tx, %n.vec1422
  br i1 %cmp.n1431, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i.i453.preheader1566

.lr.ph.i.i.i.i.i.i.i453.preheader1566:            ; preds = %vector.memcheck1410, %.lr.ph.i.i.i.i.i.i.i453.preheader, %middle.block1430
  %.012.i.i.i.i.i.i.i454.ph = phi ptr [ %i.tt, %vector.memcheck1410 ], [ %i.tt, %.lr.ph.i.i.i.i.i.i.i453.preheader ], [ %i.uc, %middle.block1430 ]
  %.0911.i.i.i.i.i.i.i455.ph = phi ptr [ %i.ti, %vector.memcheck1410 ], [ %i.ti, %.lr.ph.i.i.i.i.i.i.i453.preheader ], [ %i.ud, %middle.block1430 ]
  br label %.lr.ph.i.i.i.i.i.i.i453

.lr.ph.i.i.i.i.i.i.i453:                          ; preds = %.lr.ph.i.i.i.i.i.i.i453.preheader1566, %.lr.ph.i.i.i.i.i.i.i453
  %.012.i.i.i.i.i.i.i454 = phi ptr [ %i.ul, %.lr.ph.i.i.i.i.i.i.i453 ], [ %.012.i.i.i.i.i.i.i454.ph, %.lr.ph.i.i.i.i.i.i.i453.preheader1566 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i455 = phi ptr [ %i.uk, %.lr.ph.i.i.i.i.i.i.i453 ], [ %.0911.i.i.i.i.i.i.i455.ph, %.lr.ph.i.i.i.i.i.i.i453.preheader1566 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !537)
  call void @llvm.experimental.noalias.scope.decl(metadata !540)
  %i.uj = load i64, ptr %.0911.i.i.i.i.i.i.i455, align 8, !tbaa !13, !alias.scope !540, !noalias !537
  store i64 %i.uj, ptr %.012.i.i.i.i.i.i.i454, align 8, !tbaa !13, !alias.scope !537, !noalias !540
  store ptr null, ptr %.0911.i.i.i.i.i.i.i455, align 8, !tbaa !13, !alias.scope !540, !noalias !537
  %i.uk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i455, i64 8 ; 2 uses
  %i.ul = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i454, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i456 = icmp eq ptr %i.uk, %i.te
  br i1 %.not.i.i.i.i.i.i.i456, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i457, label %.lr.ph.i.i.i.i.i.i.i453, !llvm.loop !548

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i457: ; preds = %.lr.ph.i.i.i.i.i.i.i453, %middle.block1430, %.noexc462
  %.0.lcssa.i.i.i.i.i.i.i458 = phi ptr [ %i.tt, %.noexc462 ], [ %i.uc, %middle.block1430 ], [ %i.ul, %.lr.ph.i.i.i.i.i.i.i453 ]
  %i.um = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i458, i64 8
  %.not.i23.i.i.i459 = icmp eq ptr %i.ti, null
  br i1 %.not.i23.i.i.i459, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i460, label %bb.ee

bb.ee:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i457
  call void @_ZdlPv(ptr noundef nonnull %i.ti) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i460

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i460: ; preds = %bb.ee, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i457
  store ptr %i.tt, ptr %i.kg, align 8, !tbaa !213
  store ptr %i.um, ptr %i.kh, align 8, !tbaa !211
  %i.un = getelementptr inbounds nuw [8 x i8], ptr %i.tt, i64 %i.tr
  store ptr %i.un, ptr %i.ki, align 8, !tbaa !212
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit463

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit463: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i460, %bb.eb
  %i.uo = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %storemerge995)
          to label %bb.ef unwind label %.loopexit902 ; 2 uses

bb.ef:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit463
  %i.up = load ptr, ptr %i.jp, align 8, !tbaa !7
  store ptr null, ptr %i.jp, align 8, !tbaa !7
  %i.uq = load ptr, ptr %i.uo, align 8, !tbaa !7  ; 3 uses
  store ptr %i.up, ptr %i.uo, align 8, !tbaa !7
  %.not.i.i.i.i.i464 = icmp eq ptr %i.uq, null
  br i1 %.not.i.i.i.i.i464, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit466, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i465

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i465: ; preds = %bb.ef
  %i.ur = load ptr, ptr %i.uq, align 8, !tbaa !10
  %i.us = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.ut = load ptr, ptr %i.us, align 8
  call void %i.ut(ptr noundef nonnull align 8 dereferenceable(56) %i.uq) #23, !inline_history !498
  br label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit466

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit466: ; preds = %bb.ef, %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i465
  %i.uu = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %storemerge995)
          to label %bb.eg unwind label %.loopexit902

bb.eg:                                            ; preds = %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit466
  invoke void @_ZN6duckdb16ExpressionBinder18QualifyColumnNamesERNS_6BinderERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS4_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(8) %i.uu)
          to label %bb.eh unwind label %.loopexit902

bb.eh:                                            ; preds = %bb.eg
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #23
  %i.uv = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %22, i64 noundef %storemerge995)
          to label %bb.ei unwind label %bb.ek

bb.ei:                                            ; preds = %bb.eh
  %i.uw = invoke noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %i.uv)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %bb.ei
  store ptr %i.uw, ptr %37, align 8, !tbaa !475
  %i.ux = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZNSt8__detail9_Map_baseISt17reference_wrapperIN6duckdb16ParsedExpressionEESt4pairIKS4_mESaIS7_ENS_10_Select1stENS2_18ExpressionEqualityIS3_EENS2_22ExpressionHashFunctionIS3_EENS_18_Mod_range_hashingENS_20_Default_ranged_hashENS_20_Prime_rehash_policyENS_17_Hashtable_traitsILb1ELb0ELb1EEELb1EEixEOS4_(ptr noundef nonnull align 8 dereferenceable(56) %23, ptr noundef nonnull align 8 dereferenceable(8) %37)
          to label %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit468 unwind label %bb.ek

_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit468: ; preds = %bb.ej
  store i64 %storemerge995, ptr %i.ux, align 8, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  %i.uy = load ptr, ptr %27, align 8, !tbaa !13   ; 3 uses
  %.not.i469 = icmp eq ptr %i.uy, null
  br i1 %.not.i469, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit471, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i470

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i470: ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit468
  %i.uz = load ptr, ptr %i.uy, align 8, !tbaa !10
  %i.va = getelementptr inbounds nuw i8, ptr %i.uz, i64 8
  %i.vb = load ptr, ptr %i.va, align 8
  call void %i.vb(ptr noundef nonnull align 8 dereferenceable(88) %i.uy) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit471

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit471: ; preds = %_ZNSt13unordered_mapISt17reference_wrapperIN6duckdb16ParsedExpressionEEmNS1_22ExpressionHashFunctionIS2_EENS1_18ExpressionEqualityIS2_EESaISt4pairIKS3_mEEEixEOS3_.exit468, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i470
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.vc = add nuw i64 %storemerge995, 1           ; 2 uses
  %i.vd = load ptr, ptr %i.jb, align 8, !tbaa !179
  %i.ve = load ptr, ptr %i.iz, align 8, !tbaa !182
  %i.vf = ptrtoint ptr %i.vd to i64
  %i.vg = ptrtoint ptr %i.ve to i64
  %i.vh = sub i64 %i.vf, %i.vg
  %i.vi = ashr exact i64 %i.vh, 3
  %i.vj = icmp ult i64 %i.vc, %i.vi
  br i1 %i.vj, label %bb.bt, label %._crit_edge998, !llvm.loop !549

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.eh
  %i.vk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #23
  br label %.body

.body:                                            ; preds = %.loopexit902, %.loopexit.split-lp903, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i, %bb.dn, %bb.ek, %bb.dz, %bb.dm
  %.pn255.pn.pn = phi { ptr, i32 } [ %i.sh, %bb.dm ], [ %i.si, %bb.dn ], [ %i.vk, %bb.ek ], [ %.pn249.pn.pn.pn.pn, %bb.dz ], [ %i.my, %_ZNSt10_HashtableImSt4pairIKmmESaIS2_ENSt8__detail10_Select1stESt8equal_toImESt4hashImENS4_18_Mod_range_hashingENS4_20_Default_ranged_hashENS4_20_Prime_rehash_policyENS4_17_Hashtable_traitsILb0ELb0ELb1EEEE12_Scoped_nodeD2Ev.exit22.i.i ], [ %lpad.loopexit904, %.loopexit902 ], [ %lpad.loopexit.split-lp905, %.loopexit.split-lp903 ] ; 2 uses
  %i.vl = load ptr, ptr %27, align 8, !tbaa !13   ; 3 uses
  %.not.i472 = icmp eq ptr %i.vl, null
  br i1 %.not.i472, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473: ; preds = %.body
  %i.vm = load ptr, ptr %i.vl, align 8, !tbaa !10
  %i.vn = getelementptr inbounds nuw i8, ptr %i.vm, i64 8
  %i.vo = load ptr, ptr %i.vn, align 8
  call void %i.vo(ptr noundef nonnull align 8 dereferenceable(88) %i.vl) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473, %.body, %bb.dl
  %.pn255.pn.pn.pn = phi { ptr, i32 } [ %i.sg, %bb.dl ], [ %.pn255.pn.pn, %.body ], [ %.pn255.pn.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i473 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %26) #23
  br label %bb.el

bb.el:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474, %bb.dk
  %.pn255.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit474 ], [ %i.sf, %bb.dk ]
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  br label %bb.em

bb.em:                                            ; preds = %bb.el, %bb.dj
  %.pn255.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn.pn, %bb.el ], [ %i.se, %bb.dj ]
  call void @_ZN6duckdb11GroupBinderD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %24) #23
  br label %bb.en

bb.en:                                            ; preds = %bb.em, %bb.bs
  %.pn255.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn255.pn.pn.pn.pn.pn, %bb.em ], [ %i.le, %bb.bs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %24) #23
  br label %bb.nq

bb.eo:                                            ; preds = %_ZN6duckdb11GroupBinderD2Ev.exit, %bb.bi
  %i.vp = getelementptr inbounds nuw i8, ptr %2, i64 184 ; 2 uses
  %i.vq = getelementptr inbounds nuw i8, ptr %i.az, i64 576 ; 5 uses
  %i.vr = getelementptr inbounds nuw i8, ptr %i.az, i64 600 ; 4 uses
  %i.vs = load ptr, ptr %i.vr, align 8, !tbaa !550 ; 4 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.az, i64 608 ; 5 uses
  %i.vu = load ptr, ptr %i.vt, align 8, !tbaa !551 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6duckdb6Binder14BindSelectNodeERNS_10SelectNodeENS_14BoundStatementE:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.aet, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.aev = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %i.aeu, ptr %i.aev, align 8, !tbaa !127
  %i.aew = getelementptr inbounds nuw i8, ptr %i.aet, i64 %i.aeu
  store i8 0, ptr %i.aew, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aer, ptr noundef nonnull align 8 dereferenceable(32) %7)
          to label %bb.hp unwind label %bb.hq

bb.hp:                                            ; preds = %.noexc766
  invoke void @__cxa_throw(ptr nonnull %i.aer, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.hs unwind label %bb.hq

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i524: ; preds = %.noexc.i765
  %i.aex = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %bb.hr

bb.hq:                                            ; preds = %bb.hp, %.noexc766
  %.0.i.i527 = phi i1 [ false, %bb.hp ], [ true, %.noexc766 ] ; 2 uses
  %i.aey = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aez = load ptr, ptr %7, align 8, !tbaa !103  ; 2 uses
  %i.afa = icmp eq ptr %i.aez, %i.aes
  br i1 %i.afa, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528: ; preds = %bb.hq
  call void @_ZdlPv(ptr noundef %i.aez) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0.i.i527, label %bb.hr, label %.body530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529: ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br i1 %.0.i.i527, label %bb.hr, label %.body530

bb.hr:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i524
  %.pn9.i.i525 = phi { ptr, i32 } [ %i.aex, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i524 ], [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529 ], [ %i.aey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528 ]
  call void @__cxa_free_exception(ptr %i.aer) #23
  br label %.body530

bb.hs:                                            ; preds = %bb.hp
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit532: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit522
  %i.afb = getelementptr inbounds nuw i8, ptr %i.aeq, i64 56 ; 2 uses
  %i.afc = load ptr, ptr %i.zv, align 8, !tbaa !300 ; 3 uses
  %i.afd = load ptr, ptr %i.zw, align 8, !tbaa !363
  %.not.i533 = icmp eq ptr %i.afc, %i.afd
  br i1 %.not.i533, label %bb.hu, label %bb.ht

bb.ht:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit532
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.afc, ptr noundef nonnull align 8 dereferenceable(24) %i.afb)
          to label %.noexc534 unwind label %.loopexit890

.noexc534:                                        ; preds = %bb.ht
  %i.afe = load ptr, ptr %i.zv, align 8, !tbaa !300
  %i.aff = getelementptr inbounds nuw i8, ptr %i.afe, i64 24
  store ptr %i.aff, ptr %i.zv, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.hu:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit532
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.zx, ptr %i.afc, ptr noundef nonnull align 8 dereferenceable(24) %i.afb)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %.loopexit890

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc534, %bb.hu
  %i.afg = load ptr, ptr %.sroa.0787.01000, align 8, !tbaa !13 ; 2 uses
  %.not.i536 = icmp eq ptr %i.afg, null
  br i1 %.not.i536, label %.noexc.i769, label %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit545, !prof !120

.noexc.i769:                                      ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.afh = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.afi = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.afi, ptr %6, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 49, ptr %i.a, align 8, !tbaa !112
  %i.afj = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc770 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i537 ; 3 uses

.noexc770:                                        ; preds = %.noexc.i769
  store ptr %i.afj, ptr %6, align 8, !tbaa !103
  %i.afk = load i64, ptr %i.a, align 8, !tbaa !112 ; 3 uses
  store i64 %i.afk, ptr %i.afi, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.afj, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.afl = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.afk, ptr %i.afl, align 8, !tbaa !127
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afj, i64 %i.afk
  store i8 0, ptr %i.afm, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.afh, ptr noundef nonnull align 8 dereferenceable(32) %6)
          to label %bb.hv unwind label %bb.hw

bb.hv:                                            ; preds = %.noexc770
  invoke void @__cxa_throw(ptr nonnull %i.afh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.hy unwind label %bb.hw

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i537: ; preds = %.noexc.i769
  %i.afn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.hx

bb.hw:                                            ; preds = %bb.hv, %.noexc770
  %.0.i.i540 = phi i1 [ false, %bb.hv ], [ true, %.noexc770 ] ; 2 uses
  %i.afo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.afp = load ptr, ptr %6, align 8, !tbaa !103  ; 2 uses
  %i.afq = icmp eq ptr %i.afp, %i.afi
  br i1 %i.afq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541: ; preds = %bb.hw
  call void @_ZdlPv(ptr noundef %i.afp) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0.i.i540, label %bb.hx, label %.body530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542: ; preds = %bb.hw
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0.i.i540, label %bb.hx, label %.body530

bb.hx:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i537
  %.pn9.i.i538 = phi { ptr, i32 } [ %i.afn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i537 ], [ %i.afo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542 ], [ %i.afo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541 ]
  call void @__cxa_free_exception(ptr %i.afh) #23
  br label %.body530

bb.hy:                                            ; preds = %bb.hv
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit545: ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.afr = getelementptr inbounds nuw i8, ptr %i.afg, i64 56 ; 2 uses
  %i.afs = load ptr, ptr %i.zy, align 8, !tbaa !300 ; 3 uses
  %i.aft = load ptr, ptr %i.zz, align 8, !tbaa !363
  %.not.i546 = icmp eq ptr %i.afs, %i.aft
  br i1 %.not.i546, label %bb.ia, label %bb.hz

bb.hz:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit545
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.afs, ptr noundef nonnull align 8 dereferenceable(24) %i.afr)
          to label %.noexc547 unwind label %.loopexit890

.noexc547:                                        ; preds = %bb.hz
  %i.afu = load ptr, ptr %i.zy, align 8, !tbaa !300
  %i.afv = getelementptr inbounds nuw i8, ptr %i.afu, i64 24
  store ptr %i.afv, ptr %i.zy, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit549

bb.ia:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit545
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr %i.afs, ptr noundef nonnull align 8 dereferenceable(24) %i.afr)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit549 unwind label %.loopexit890

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit549: ; preds = %.noexc547, %bb.ia
  %i.afw = load ptr, ptr %i.zq, align 8, !tbaa !211 ; 6 uses
  %i.afx = load ptr, ptr %i.zr, align 8, !tbaa !212
  %.not.i.i550 = icmp eq ptr %i.afw, %i.afx
  br i1 %.not.i.i550, label %bb.ic, label %bb.ib

bb.ib:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit549
  %i.afy = load i64, ptr %.sroa.0787.01000, align 8, !tbaa !13
  store i64 %i.afy, ptr %i.afw, align 8, !tbaa !13
  store ptr null, ptr %.sroa.0787.01000, align 8, !tbaa !13
  %i.afz = getelementptr inbounds nuw i8, ptr %i.afw, i64 8
  store ptr %i.afz, ptr %i.zq, align 8, !tbaa !211
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit565

bb.ic:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit549
  %i.aga = load ptr, ptr %i.zp, align 8, !tbaa !213 ; 10 uses
  %i.agb = ptrtoint ptr %i.afw to i64             ; 3 uses
  %i.agc = ptrtoint ptr %i.aga to i64             ; 3 uses
  %i.agd = sub i64 %i.agb, %i.agc                 ; 3 uses
  %i.age = icmp eq i64 %i.agd, 9223372036854775800
  br i1 %i.age, label %bb.id, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i551

bb.id:                                            ; preds = %bb.ic
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc563 unwind label %.loopexit.split-lp891

.noexc563:                                        ; preds = %bb.id
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i551: ; preds = %bb.ic
  %i.agf = ashr exact i64 %i.agd, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i552 = call i64 @llvm.umax.i64(i64 %i.agf, i64 1)
  %i.agg = add nsw i64 %.sroa.speculated.i.i.i.i552, %i.agf ; 2 uses
  %i.agh = icmp ult i64 %i.agg, %i.agf
  %i.agi = call i64 @llvm.umin.i64(i64 %i.agg, i64 1152921504606846975)
  %i.agj = select i1 %i.agh, i64 1152921504606846975, i64 %i.agi ; 3 uses
  %.not.i.i.i.i553 = icmp ne i64 %i.agj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i553)
  %i.agk = shl nuw nsw i64 %i.agj, 3
  %i.agl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.agk) #26
          to label %.noexc564 unwind label %.loopexit890 ; 10 uses

.noexc564:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i551
  %i.agm = getelementptr inbounds nuw i8, ptr %i.agl, i64 %i.agd
  %i.agn = load i64, ptr %.sroa.0787.01000, align 8, !tbaa !13
  store i64 %i.agn, ptr %i.agm, align 8, !tbaa !13
  store ptr null, ptr %.sroa.0787.01000, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i554 = icmp eq ptr %i.aga, %i.afw
  br i1 %.not10.i.i.i.i.i.i.i554, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i555.preheader

.lr.ph.i.i.i.i.i.i.i555.preheader:                ; preds = %.noexc564
  %77 = sub i64 %i.agb, %i.agc
  %78 = add i64 %77, -8                           ; 2 uses
  %i.ago = lshr i64 %78, 3
  %i.agp = add nuw nsw i64 %i.ago, 1              ; 2 uses
  %min.iters.check1467 = icmp ult i64 %78, 56
  br i1 %min.iters.check1467, label %.lr.ph.i.i.i.i.i.i.i555.preheader1538, label %vector.memcheck1458

vector.memcheck1458:                              ; preds = %.lr.ph.i.i.i.i.i.i.i555.preheader
  %scevgep1459 = getelementptr i8, ptr %i.agl, i64 8
  %i.agq = add i64 %i.agb, -8
  %i.agr = sub i64 %i.agq, %i.agc
  %i.ags = and i64 %i.agr, -8                     ; 2 uses
  %scevgep1460 = getelementptr i8, ptr %scevgep1459, i64 %i.ags
  %scevgep1461 = getelementptr i8, ptr %i.aga, i64 8
  %scevgep1462 = getelementptr i8, ptr %scevgep1461, i64 %i.ags
  %bound01463 = icmp ult ptr %i.agl, %scevgep1462
  %bound11464 = icmp ult ptr %i.aga, %scevgep1460
  %found.conflict1465 = and i1 %bound01463, %bound11464
  br i1 %found.conflict1465, label %.lr.ph.i.i.i.i.i.i.i555.preheader1538, label %vector.ph1468

vector.ph1468:                                    ; preds = %vector.memcheck1458
  %n.vec1470 = and i64 %i.agp, 4611686018427387900 ; 3 uses
  %i.agt = shl i64 %n.vec1470, 3                  ; 2 uses
  %i.agu = getelementptr i8, ptr %i.agl, i64 %i.agt ; 2 uses
  %i.agv = getelementptr i8, ptr %i.aga, i64 %i.agt
  br label %vector.body1471

vector.body1471:                                  ; preds = %vector.body1471, %vector.ph1468
  %index1472 = phi i64 [ 0, %vector.ph1468 ], [ %index.next1477, %vector.body1471 ] ; 2 uses
  %i.agw = shl i64 %index1472, 3                  ; 2 uses
  %next.gep1473 = getelementptr i8, ptr %i.agl, i64 %i.agw ; 2 uses
  %next.gep1474 = getelementptr i8, ptr %i.aga, i64 %i.agw ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.agx = getelementptr i8, ptr %next.gep1474, i64 16
  %wide.load1475 = load <2 x i64>, ptr %next.gep1474, align 8, !tbaa !13, !alias.scope !604, !noalias !599
  %wide.load1476 = load <2 x i64>, ptr %i.agx, align 8, !tbaa !13, !alias.scope !604, !noalias !599
  %i.agy = getelementptr i8, ptr %next.gep1473, i64 16
  store <2 x i64> %wide.load1475, ptr %next.gep1473, align 8, !tbaa !13, !alias.scope !607, !noalias !604
  store <2 x i64> %wide.load1476, ptr %i.agy, align 8, !tbaa !13, !alias.scope !607, !noalias !604
  %i.agz = getelementptr i8, ptr %next.gep1474, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1474, align 8, !tbaa !13, !alias.scope !604, !noalias !599
  store <2 x ptr> splat (ptr null), ptr %i.agz, align 8, !tbaa !13, !alias.scope !604, !noalias !599
  %index.next1477 = add nuw i64 %index1472, 4     ; 2 uses
  %i.aha = icmp eq i64 %index.next1477, %n.vec1470
  br i1 %i.aha, label %middle.block1478, label %vector.body1471, !llvm.loop !609

middle.block1478:                                 ; preds = %vector.body1471
  %cmp.n1479 = icmp eq i64 %i.agp, %n.vec1470
  br i1 %cmp.n1479, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i555.preheader1538

.lr.ph.i.i.i.i.i.i.i555.preheader1538:            ; preds = %vector.memcheck1458, %.lr.ph.i.i.i.i.i.i.i555.preheader, %middle.block1478
  %.012.i.i.i.i.i.i.i556.ph = phi ptr [ %i.agl, %vector.memcheck1458 ], [ %i.agl, %.lr.ph.i.i.i.i.i.i.i555.preheader ], [ %i.agu, %middle.block1478 ]
  %.0911.i.i.i.i.i.i.i557.ph = phi ptr [ %i.aga, %vector.memcheck1458 ], [ %i.aga, %.lr.ph.i.i.i.i.i.i.i555.preheader ], [ %i.agv, %middle.block1478 ]
  br label %.lr.ph.i.i.i.i.i.i.i555

.lr.ph.i.i.i.i.i.i.i555:                          ; preds = %.lr.ph.i.i.i.i.i.i.i555.preheader1538, %.lr.ph.i.i.i.i.i.i.i555
  %.012.i.i.i.i.i.i.i556 = phi ptr [ %i.ahd, %.lr.ph.i.i.i.i.i.i.i555 ], [ %.012.i.i.i.i.i.i.i556.ph, %.lr.ph.i.i.i.i.i.i.i555.preheader1538 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i557 = phi ptr [ %i.ahc, %.lr.ph.i.i.i.i.i.i.i555 ], [ %.0911.i.i.i.i.i.i.i557.ph, %.lr.ph.i.i.i.i.i.i.i555.preheader1538 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !599)
  call void @llvm.experimental.noalias.scope.decl(metadata !602)
  %i.ahb = load i64, ptr %.0911.i.i.i.i.i.i.i557, align 8, !tbaa !13, !alias.scope !602, !noalias !599
  store i64 %i.ahb, ptr %.012.i.i.i.i.i.i.i556, align 8, !tbaa !13, !alias.scope !599, !noalias !602
  store ptr null, ptr %.0911.i.i.i.i.i.i.i557, align 8, !tbaa !13, !alias.scope !602, !noalias !599
  %i.ahc = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i557, i64 8 ; 2 uses
  %i.ahd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i556, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i558 = icmp eq ptr %i.ahc, %i.afw
  br i1 %.not.i.i.i.i.i.i.i558, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i559, label %.lr.ph.i.i.i.i.i.i.i555, !llvm.loop !610

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i559: ; preds = %.lr.ph.i.i.i.i.i.i.i555, %middle.block1478, %.noexc564
  %.0.lcssa.i.i.i.i.i.i.i560 = phi ptr [ %i.agl, %.noexc564 ], [ %i.agu, %middle.block1478 ], [ %i.ahd, %.lr.ph.i.i.i.i.i.i.i555 ]
  %i.ahe = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i560, i64 8
  %.not.i23.i.i.i561 = icmp eq ptr %i.aga, null
  br i1 %.not.i23.i.i.i561, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i562, label %bb.ie

bb.ie:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i559
  call void @_ZdlPv(ptr noundef nonnull %i.aga) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i562

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i562: ; preds = %bb.ie, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i559
  store ptr %i.agl, ptr %i.zp, align 8, !tbaa !213
  store ptr %i.ahe, ptr %i.zq, align 8, !tbaa !211
  %i.ahf = getelementptr inbounds nuw [8 x i8], ptr %i.agl, i64 %i.agj
  store ptr %i.ahf, ptr %i.zr, align 8, !tbaa !212
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit565

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit565: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i562, %bb.ib
  %i.ahg = getelementptr inbounds nuw i8, ptr %.sroa.0787.01000, i64 8 ; 2 uses
  %.not886 = icmp eq ptr %i.ahg, %i.abv
  br i1 %.not886, label %._crit_edge1003.loopexit, label %.lr.ph1002

bb.if:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  %i.ahh = landingpad { ptr, i32 }
          cleanup
  br label %.body513

.loopexit:                                        ; preds = %_ZNKSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %lpad.loopexit887 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

.loopexit.split-lp:                               ; preds = %bb.hl
  %lpad.loopexit.split-lp888 = landingpad { ptr, i32 }
          cleanup
  br label %bb.ig

bb.ig:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi889 = phi { ptr, i32 } [ %lpad.loopexit887, %.loopexit ], [ %lpad.loopexit.split-lp888, %.loopexit.split-lp ] ; 2 uses
  %i.ahi = load ptr, ptr %56, align 8, !tbaa !103 ; 2 uses
  %i.ahj = icmp eq ptr %i.ahi, %i.aaa
  br i1 %i.ahj, label %.body513, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566: ; preds = %bb.ig
  call void @_ZdlPv(ptr noundef %i.ahi) #25
  br label %.body513

.body513:                                         ; preds = %bb.ig, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566, %bb.if, %bb.hf, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn292 = phi { ptr, i32 } [ %i.acl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ahh, %bb.if ], [ %i.acl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn9.i.i, %bb.hf ], [ %lpad.phi889, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i566 ], [ %lpad.phi889, %bb.ig ]
  call void @llvm.lifetime.end.p0(ptr nonnull %56) #23
  br label %.body530

.loopexit890:                                     ; preds = %bb.ht, %bb.hu, %bb.hz, %bb.ia, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i551
  %lpad.loopexit892 = landingpad { ptr, i32 }
          cleanup
  br label %.body530

.loopexit.split-lp891:                            ; preds = %bb.id
  %lpad.loopexit.split-lp893 = landingpad { ptr, i32 }
          cleanup
  br label %.body530

bb.ih:                                            ; preds = %._crit_edge1003
  %i.ahk = landingpad { ptr, i32 }
          cleanup
  br label %.body530

bb.ii:                                            ; preds = %bb.gj
  %i.ahl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.ij unwind label %.loopexit895 ; 2 uses

bb.ij:                                            ; preds = %bb.ii
  %i.ahm = load ptr, ptr %i.ahl, align 8, !tbaa !10
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.ahm, i64 96
  %i.aho = load ptr, ptr %i.ahn, align 8
  %i.ahp = invoke noundef zeroext i1 %i.aho(ptr noundef nonnull align 8 dereferenceable(88) %i.ahl)
          to label %bb.ik unwind label %.loopexit895

bb.ik:                                            ; preds = %bb.ij
  br i1 %i.ahp, label %bb.il, label %bb.im

bb.il:                                            ; preds = %bb.ik
  invoke void @_ZN6duckdb15SelectBindState23SetExpressionIsVolatileEm(ptr noundef nonnull align 8 dereferenceable(328) %i.cq, i64 noundef %storemerge2661007)
          to label %bb.im unwind label %.loopexit895

bb.im:                                            ; preds = %bb.il, %bb.ik
  %i.ahq = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %51)
          to label %bb.in unwind label %.loopexit895 ; 2 uses

bb.in:                                            ; preds = %bb.im
  %i.ahr = load ptr, ptr %i.ahq, align 8, !tbaa !10
  %i.ahs = getelementptr inbounds nuw i8, ptr %i.ahr, i64 32
  %i.aht = load ptr, ptr %i.ahs, align 8
  %i.ahu = invoke noundef zeroext i1 %i.aht(ptr noundef nonnull align 8 dereferenceable(88) %i.ahq)
          to label %bb.io unwind label %.loopexit895

bb.io:                                            ; preds = %bb.in
  br i1 %i.ahu, label %bb.ip, label %bb.iq

bb.ip:                                            ; preds = %bb.io
  invoke void @_ZN6duckdb15SelectBindState24SetExpressionHasSubqueryEm(ptr noundef nonnull align 8 dereferenceable(328) %i.cq, i64 noundef %storemerge2661007)
          to label %bb.iq unwind label %.loopexit895

bb.iq:                                            ; preds = %bb.ip, %bb.io
  invoke void @_ZN6duckdb15SelectBindState16AddRegularColumnEv(ptr noundef nonnull align 8 dereferenceable(328) %i.cq)
          to label %bb.ir unwind label %.loopexit895

bb.ir:                                            ; preds = %bb.iq
  br i1 %i.aas, label %bb.is, label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.is:                                            ; preds = %bb.ir
  %i.ahv = load ptr, ptr %i.zm, align 8, !tbaa !586
  %i.ahw = load ptr, ptr %i.zn, align 8, !tbaa !586
  %.not885 = icmp eq ptr %i.ahv, %i.ahw
  br i1 %.not885, label %_ZNSt6vectorImSaImEE9push_backERKm.exit, label %bb.it

bb.it:                                            ; preds = %bb.is
  %i.ahx = load i8, ptr %i.zo, align 1, !tbaa !587, !range !111, !noundef !88
  %i.ahy = trunc nuw i8 %i.ahx to i1
  br i1 %i.ahy, label %bb.iu, label %bb.iz

bb.iu:                                            ; preds = %bb.it
  %i.ahz = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %57) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %58) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %57, ptr noundef nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(1) %58)
          to label %bb.iv unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571.thread

bb.iv:                                            ; preds = %bb.iu
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ahz, ptr noundef nonnull align 8 dereferenceable(32) %57)
          to label %bb.iw unwind label %bb.ix

bb.iw:                                            ; preds = %bb.iv
end_hunk_5
begin_hunk_6_@_ZN6duckdb6Binder14BindSelectNodeERNS_10SelectNodeENS_14BoundStatementE:bb.a
  invoke void @__cxa_throw(ptr nonnull %i.aif, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.nu unwind label %bb.jd

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574.thread: ; preds = %bb.ja
  %i.aig = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %bb.je

bb.jd:                                            ; preds = %bb.jc, %bb.jb
  %.0241 = phi i1 [ false, %bb.jc ], [ true, %bb.jb ] ; 2 uses
  %i.aih = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aii = load ptr, ptr %59, align 8, !tbaa !103 ; 2 uses
  %i.aij = getelementptr inbounds nuw i8, ptr %59, i64 16
  %i.aik = icmp eq ptr %i.aii, %i.aij
  br i1 %i.aik, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572: ; preds = %bb.jd
  call void @_ZdlPv(ptr noundef %i.aii) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br i1 %.0241, label %bb.je, label %.body530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574: ; preds = %bb.jd
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br i1 %.0241, label %bb.je, label %.body530

bb.je:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574
  %.pn286860 = phi { ptr, i32 } [ %i.aig, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574.thread ], [ %i.aih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ], [ %i.aih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572 ]
  call void @__cxa_free_exception(ptr %i.aif) #23
  br label %.body530

bb.jf:                                            ; preds = %bb.iz
  %i.ail = load i64, ptr %i.zj, align 8, !tbaa !590
  %i.aim = icmp ugt i64 %i.ail, %i.aam
  br i1 %i.aim, label %bb.jg, label %bb.jl

bb.jg:                                            ; preds = %bb.jf
  %i.ain = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %61) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %62) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %61, ptr noundef nonnull @.str.21, ptr noundef nonnull align 1 dereferenceable(1) %62)
          to label %bb.jh unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread

bb.jh:                                            ; preds = %bb.jg
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ain, ptr noundef nonnull align 8 dereferenceable(32) %61)
          to label %bb.ji unwind label %bb.jj

bb.ji:                                            ; preds = %bb.jh
  invoke void @__cxa_throw(ptr nonnull %i.ain, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.nu unwind label %bb.jj

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread: ; preds = %bb.jg
  %i.aio = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  br label %bb.jk

bb.jj:                                            ; preds = %bb.ji, %bb.jh
  %.0239 = phi i1 [ false, %bb.ji ], [ true, %bb.jh ] ; 2 uses
  %i.aip = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.aiq = load ptr, ptr %61, align 8, !tbaa !103 ; 2 uses
  %i.air = getelementptr inbounds nuw i8, ptr %61, i64 16
  %i.ais = icmp eq ptr %i.aiq, %i.air
  br i1 %i.ais, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575: ; preds = %bb.jj
  call void @_ZdlPv(ptr noundef %i.aiq) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  br i1 %.0239, label %bb.jk, label %.body530

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577: ; preds = %bb.jj
  call void @llvm.lifetime.end.p0(ptr nonnull %62) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %61) #23
  br i1 %.0239, label %bb.jk, label %.body530

bb.jk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577
  %.pn284863 = phi { ptr, i32 } [ %i.aio, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577.thread ], [ %i.aip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577 ], [ %i.aip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575 ]
  call void @__cxa_free_exception(ptr %i.ain) #23
  br label %.body530

bb.jl:                                            ; preds = %bb.jf
  %.not.i578 = icmp eq ptr %.sroa.10.01005, %.sroa.15.01004
  br i1 %.not.i578, label %bb.jn, label %bb.jm

bb.jm:                                            ; preds = %bb.jl
  store i64 %storemerge2661007, ptr %.sroa.10.01005, align 8, !tbaa !112
  %i.ait = getelementptr inbounds nuw i8, ptr %.sroa.10.01005, i64 8
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

bb.jn:                                            ; preds = %bb.jl
  %i.aiu = ptrtoint ptr %.sroa.10.01005 to i64
  %i.aiv = ptrtoint ptr %.sroa.0800.01006 to i64
  %i.aiw = sub i64 %i.aiu, %i.aiv                 ; 5 uses
  %i.aix = icmp eq i64 %i.aiw, 9223372036854775800
  br i1 %i.aix, label %bb.jo, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i

bb.jo:                                            ; preds = %bb.jn
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc580 unwind label %.loopexit.split-lp896

.noexc580:                                        ; preds = %bb.jo
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.jn
  %i.aiy = ashr exact i64 %i.aiw, 3               ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.aiy, i64 1)
  %i.aiz = add nsw i64 %.sroa.speculated.i.i.i, %i.aiy ; 2 uses
  %i.aja = icmp ult i64 %i.aiz, %i.aiy
  %i.ajb = call i64 @llvm.umin.i64(i64 %i.aiz, i64 1152921504606846975)
  %i.ajc = select i1 %i.aja, i64 1152921504606846975, i64 %i.ajb ; 3 uses
  %.not.i.i.i579 = icmp ne i64 %i.ajc, 0
  call void @llvm.assume(i1 %.not.i.i.i579)
  %i.ajd = shl nuw nsw i64 %i.ajc, 3
  %i.aje = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajd) #26
          to label %.noexc581 unwind label %.loopexit895 ; 4 uses

.noexc581:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i
  %i.ajf = getelementptr inbounds i8, ptr %i.aje, i64 %i.aiw ; 2 uses
  store i64 %storemerge2661007, ptr %i.ajf, align 8, !tbaa !112
  %i.ajg = icmp sgt i64 %i.aiw, 0
  br i1 %i.ajg, label %bb.jp, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

bb.jp:                                            ; preds = %.noexc581
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.aje, ptr align 8 %.sroa.0800.01006, i64 %i.aiw, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i: ; preds = %bb.jp, %.noexc581
  %i.ajh = getelementptr inbounds nuw i8, ptr %i.ajf, i64 8
  %.not.i17.i.i = icmp eq ptr %.sroa.0800.01006, null
  br i1 %.not.i17.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, label %bb.jq

bb.jq:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.0800.01006) #25
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i: ; preds = %bb.jq, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i
  %i.aji = getelementptr inbounds nuw [8 x i8], ptr %i.aje, i64 %i.ajc
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit

_ZNSt6vectorImSaImEE9push_backERKm.exit:          ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i, %bb.jm, %bb.is, %bb.ir
  %.sroa.15.1 = phi ptr [ %.sroa.15.01004, %bb.ir ], [ %.sroa.15.01004, %bb.is ], [ %i.aji, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.15.01004, %bb.jm ] ; 3 uses
  %.sroa.10.1 = phi ptr [ %.sroa.10.01005, %bb.ir ], [ %.sroa.10.01005, %bb.is ], [ %i.ajh, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %i.ait, %bb.jm ] ; 3 uses
  %.sroa.0800.2 = phi ptr [ %.sroa.0800.01006, %bb.ir ], [ %.sroa.0800.01006, %bb.is ], [ %i.aje, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i ], [ %.sroa.0800.01006, %bb.jm ] ; 11 uses
  %i.ajj = load ptr, ptr %i.zq, align 8, !tbaa !211 ; 6 uses
  %i.ajk = load ptr, ptr %i.zr, align 8, !tbaa !212
  %.not.i.i582 = icmp eq ptr %i.ajj, %i.ajk
  br i1 %.not.i.i582, label %bb.js, label %bb.jr

bb.jr:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ajl = load i64, ptr %51, align 8, !tbaa !13
  store i64 %i.ajl, ptr %i.ajj, align 8, !tbaa !13
  store ptr null, ptr %51, align 8, !tbaa !13
  %i.ajm = getelementptr inbounds nuw i8, ptr %i.ajj, i64 8
  store ptr %i.ajm, ptr %i.zq, align 8, !tbaa !211
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit597

bb.js:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit
  %i.ajn = load ptr, ptr %i.zp, align 8, !tbaa !213 ; 10 uses
  %i.ajo = ptrtoint ptr %i.ajj to i64             ; 3 uses
  %i.ajp = ptrtoint ptr %i.ajn to i64             ; 3 uses
  %i.ajq = sub i64 %i.ajo, %i.ajp                 ; 3 uses
  %i.ajr = icmp eq i64 %i.ajq, 9223372036854775800
  br i1 %i.ajr, label %bb.jt, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i583

bb.jt:                                            ; preds = %bb.js
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc595 unwind label %.loopexit.split-lp896

.noexc595:                                        ; preds = %bb.jt
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i583: ; preds = %bb.js
  %i.ajs = ashr exact i64 %i.ajq, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i584 = call i64 @llvm.umax.i64(i64 %i.ajs, i64 1)
  %i.ajt = add nsw i64 %.sroa.speculated.i.i.i.i584, %i.ajs ; 2 uses
  %i.aju = icmp ult i64 %i.ajt, %i.ajs
  %i.ajv = call i64 @llvm.umin.i64(i64 %i.ajt, i64 1152921504606846975)
  %i.ajw = select i1 %i.aju, i64 1152921504606846975, i64 %i.ajv ; 3 uses
  %.not.i.i.i.i585 = icmp ne i64 %i.ajw, 0
  call void @llvm.assume(i1 %.not.i.i.i.i585)
  %i.ajx = shl nuw nsw i64 %i.ajw, 3
  %i.ajy = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajx) #26
          to label %.noexc596 unwind label %.loopexit895 ; 10 uses

.noexc596:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i583
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 %i.ajq
  %i.aka = load i64, ptr %51, align 8, !tbaa !13
  store i64 %i.aka, ptr %i.ajz, align 8, !tbaa !13
  store ptr null, ptr %51, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i586 = icmp eq ptr %i.ajn, %i.ajj
  br i1 %.not10.i.i.i.i.i.i.i586, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i591, label %.lr.ph.i.i.i.i.i.i.i587.preheader

.lr.ph.i.i.i.i.i.i.i587.preheader:                ; preds = %.noexc596
  %79 = sub i64 %i.ajo, %i.ajp
  %80 = add i64 %79, -8                           ; 2 uses
  %i.akb = lshr i64 %80, 3
  %i.akc = add nuw nsw i64 %i.akb, 1              ; 2 uses
  %min.iters.check1491 = icmp ult i64 %80, 56
  br i1 %min.iters.check1491, label %.lr.ph.i.i.i.i.i.i.i587.preheader1539, label %vector.memcheck1482

vector.memcheck1482:                              ; preds = %.lr.ph.i.i.i.i.i.i.i587.preheader
  %scevgep1483 = getelementptr i8, ptr %i.ajy, i64 8
  %i.akd = add i64 %i.ajo, -8
  %i.ake = sub i64 %i.akd, %i.ajp
  %i.akf = and i64 %i.ake, -8                     ; 2 uses
  %scevgep1484 = getelementptr i8, ptr %scevgep1483, i64 %i.akf
  %scevgep1485 = getelementptr i8, ptr %i.ajn, i64 8
  %scevgep1486 = getelementptr i8, ptr %scevgep1485, i64 %i.akf
  %bound01487 = icmp ult ptr %i.ajy, %scevgep1486
  %bound11488 = icmp ult ptr %i.ajn, %scevgep1484
  %found.conflict1489 = and i1 %bound01487, %bound11488
  br i1 %found.conflict1489, label %.lr.ph.i.i.i.i.i.i.i587.preheader1539, label %vector.ph1492

vector.ph1492:                                    ; preds = %vector.memcheck1482
  %n.vec1494 = and i64 %i.akc, 4611686018427387900 ; 3 uses
  %i.akg = shl i64 %n.vec1494, 3                  ; 2 uses
  %i.akh = getelementptr i8, ptr %i.ajy, i64 %i.akg ; 2 uses
  %i.aki = getelementptr i8, ptr %i.ajn, i64 %i.akg
  br label %vector.body1495

vector.body1495:                                  ; preds = %vector.body1495, %vector.ph1492
  %index1496 = phi i64 [ 0, %vector.ph1492 ], [ %index.next1501, %vector.body1495 ] ; 2 uses
  %i.akj = shl i64 %index1496, 3                  ; 2 uses
  %next.gep1497 = getelementptr i8, ptr %i.ajy, i64 %i.akj ; 2 uses
  %next.gep1498 = getelementptr i8, ptr %i.ajn, i64 %i.akj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.akk = getelementptr i8, ptr %next.gep1498, i64 16
  %wide.load1499 = load <2 x i64>, ptr %next.gep1498, align 8, !tbaa !13, !alias.scope !616, !noalias !611
  %wide.load1500 = load <2 x i64>, ptr %i.akk, align 8, !tbaa !13, !alias.scope !616, !noalias !611
  %i.akl = getelementptr i8, ptr %next.gep1497, i64 16
  store <2 x i64> %wide.load1499, ptr %next.gep1497, align 8, !tbaa !13, !alias.scope !619, !noalias !616
  store <2 x i64> %wide.load1500, ptr %i.akl, align 8, !tbaa !13, !alias.scope !619, !noalias !616
  %i.akm = getelementptr i8, ptr %next.gep1498, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1498, align 8, !tbaa !13, !alias.scope !616, !noalias !611
  store <2 x ptr> splat (ptr null), ptr %i.akm, align 8, !tbaa !13, !alias.scope !616, !noalias !611
  %index.next1501 = add nuw i64 %index1496, 4     ; 2 uses
  %i.akn = icmp eq i64 %index.next1501, %n.vec1494
  br i1 %i.akn, label %middle.block1502, label %vector.body1495, !llvm.loop !621

middle.block1502:                                 ; preds = %vector.body1495
  %cmp.n1503 = icmp eq i64 %i.akc, %n.vec1494
  br i1 %cmp.n1503, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i591, label %.lr.ph.i.i.i.i.i.i.i587.preheader1539

.lr.ph.i.i.i.i.i.i.i587.preheader1539:            ; preds = %vector.memcheck1482, %.lr.ph.i.i.i.i.i.i.i587.preheader, %middle.block1502
  %.012.i.i.i.i.i.i.i588.ph = phi ptr [ %i.ajy, %vector.memcheck1482 ], [ %i.ajy, %.lr.ph.i.i.i.i.i.i.i587.preheader ], [ %i.akh, %middle.block1502 ]
  %.0911.i.i.i.i.i.i.i589.ph = phi ptr [ %i.ajn, %vector.memcheck1482 ], [ %i.ajn, %.lr.ph.i.i.i.i.i.i.i587.preheader ], [ %i.aki, %middle.block1502 ]
  br label %.lr.ph.i.i.i.i.i.i.i587

.lr.ph.i.i.i.i.i.i.i587:                          ; preds = %.lr.ph.i.i.i.i.i.i.i587.preheader1539, %.lr.ph.i.i.i.i.i.i.i587
  %.012.i.i.i.i.i.i.i588 = phi ptr [ %i.akq, %.lr.ph.i.i.i.i.i.i.i587 ], [ %.012.i.i.i.i.i.i.i588.ph, %.lr.ph.i.i.i.i.i.i.i587.preheader1539 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i589 = phi ptr [ %i.akp, %.lr.ph.i.i.i.i.i.i.i587 ], [ %.0911.i.i.i.i.i.i.i589.ph, %.lr.ph.i.i.i.i.i.i.i587.preheader1539 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !611)
  call void @llvm.experimental.noalias.scope.decl(metadata !614)
  %i.ako = load i64, ptr %.0911.i.i.i.i.i.i.i589, align 8, !tbaa !13, !alias.scope !614, !noalias !611
  store i64 %i.ako, ptr %.012.i.i.i.i.i.i.i588, align 8, !tbaa !13, !alias.scope !611, !noalias !614
  store ptr null, ptr %.0911.i.i.i.i.i.i.i589, align 8, !tbaa !13, !alias.scope !614, !noalias !611
  %i.akp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i589, i64 8 ; 2 uses
  %i.akq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i588, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i590 = icmp eq ptr %i.akp, %i.ajj
  br i1 %.not.i.i.i.i.i.i.i590, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i591, label %.lr.ph.i.i.i.i.i.i.i587, !llvm.loop !622

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i591: ; preds = %.lr.ph.i.i.i.i.i.i.i587, %middle.block1502, %.noexc596
  %.0.lcssa.i.i.i.i.i.i.i592 = phi ptr [ %i.ajy, %.noexc596 ], [ %i.akh, %middle.block1502 ], [ %i.akq, %.lr.ph.i.i.i.i.i.i.i587 ]
  %i.akr = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i592, i64 8
  %.not.i23.i.i.i593 = icmp eq ptr %i.ajn, null
  br i1 %.not.i23.i.i.i593, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i594, label %bb.ju

bb.ju:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i591
  call void @_ZdlPv(ptr noundef nonnull %i.ajn) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i594

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i594: ; preds = %bb.ju, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i591
  store ptr %i.ajy, ptr %i.zp, align 8, !tbaa !213
  store ptr %i.akr, ptr %i.zq, align 8, !tbaa !211
  %i.aks = getelementptr inbounds nuw [8 x i8], ptr %i.ajy, i64 %i.ajw
  store ptr %i.aks, ptr %i.zr, align 8, !tbaa !212
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit597

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit597: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i594, %bb.jr
  br i1 %i.aap, label %bb.jv, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit606

bb.jv:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit597
  %i.akt = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.zs, i64 noundef %storemerge2661007)
          to label %bb.jw unwind label %.loopexit895 ; 6 uses

bb.jw:                                            ; preds = %bb.jv
  %i.aku = load ptr, ptr %i.zt, align 8, !tbaa !172 ; 7 uses
  %i.akv = load ptr, ptr %i.zu, align 8, !tbaa !365
  %.not.i.i598 = icmp eq ptr %i.aku, %i.akv
  br i1 %.not.i.i598, label %bb.jz, label %bb.jx

bb.jx:                                            ; preds = %bb.jw
  %i.akw = getelementptr inbounds nuw i8, ptr %i.aku, i64 16 ; 3 uses
  store ptr %i.akw, ptr %i.aku, align 8, !tbaa !126
  %i.akx = load ptr, ptr %i.akt, align 8, !tbaa !103 ; 2 uses
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akt, i64 16 ; 5 uses
  %i.akz = icmp eq ptr %i.akx, %i.aky
  br i1 %i.akz, label %bb.jy, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i599

bb.jy:                                            ; preds = %bb.jx
  %i.ala = getelementptr inbounds nuw i8, ptr %i.akt, i64 8
  %i.alb = load i64, ptr %i.ala, align 8, !tbaa !127 ; 2 uses
  %i.alc = icmp ult i64 %i.alb, 16
  call void @llvm.assume(i1 %i.alc)
  %i.ald = add nuw nsw i64 %i.alb, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.akw, ptr noundef nonnull align 8 dereferenceable(1) %i.aky, i64 %i.ald, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i600

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i599: ; preds = %bb.jx
  store ptr %i.akx, ptr %i.aku, align 8, !tbaa !103
  %i.ale = load i64, ptr %i.aky, align 8, !tbaa !119
  store i64 %i.ale, ptr %i.akw, align 8, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i600

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i600: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i599, %bb.jy
  %i.alf = getelementptr inbounds nuw i8, ptr %i.akt, i64 8 ; 2 uses
  %i.alg = load i64, ptr %i.alf, align 8, !tbaa !127
  %i.alh = getelementptr inbounds nuw i8, ptr %i.aku, i64 8
  store i64 %i.alg, ptr %i.alh, align 8, !tbaa !127
  store ptr %i.aky, ptr %i.akt, align 8, !tbaa !103
  store i64 0, ptr %i.alf, align 8, !tbaa !127
  store i8 0, ptr %i.aky, align 8, !tbaa !119
  %i.ali = getelementptr inbounds nuw i8, ptr %i.aku, i64 32
  store ptr %i.ali, ptr %i.zt, align 8, !tbaa !172
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit602

bb.jz:                                            ; preds = %bb.jw
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %48, ptr %i.aku, ptr noundef nonnull align 8 dereferenceable(32) %i.akt)
          to label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit602 unwind label %.loopexit895

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit602: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit.i.i600, %bb.jz
  %i.alj = load ptr, ptr %i.zv, align 8, !tbaa !300 ; 3 uses
  %i.alk = load ptr, ptr %i.zw, align 8, !tbaa !363
  %.not.i603 = icmp eq ptr %i.alj, %i.alk
  br i1 %.not.i603, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit602
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.alj, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %.noexc604 unwind label %.loopexit895

.noexc604:                                        ; preds = %bb.ka
  %i.all = load ptr, ptr %i.zv, align 8, !tbaa !300
  %i.alm = getelementptr inbounds nuw i8, ptr %i.all, i64 24
  store ptr %i.alm, ptr %i.zv, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit606

bb.kb:                                            ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE9push_backEOS5_.exit602
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.zx, ptr %i.alj, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit606 unwind label %.loopexit895

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit606: ; preds = %.noexc604, %bb.kb, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit597
  %i.aln = load ptr, ptr %i.zy, align 8, !tbaa !300 ; 3 uses
  %i.alo = load ptr, ptr %i.zz, align 8, !tbaa !363
  %.not.i607 = icmp eq ptr %i.aln, %i.alo
  br i1 %.not.i607, label %bb.kd, label %bb.kc

bb.kc:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit606
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.aln, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %.noexc608 unwind label %.loopexit895

.noexc608:                                        ; preds = %bb.kc
  %i.alp = load ptr, ptr %i.zy, align 8, !tbaa !300
  %i.alq = getelementptr inbounds nuw i8, ptr %i.alp, i64 24
  store ptr %i.alq, ptr %i.zy, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610

bb.kd:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit606
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %49, ptr %i.aln, ptr noundef nonnull align 8 dereferenceable(24) %50)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610 unwind label %.loopexit895

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610: ; preds = %.noexc608, %bb.kd
  br i1 %i.aas, label %bb.ke, label %_ZN6duckdb16BaseSelectBinder13ResetBindingsEv.exit

bb.ke:                                            ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610
  store i8 0, ptr %i.zo, align 1, !tbaa !587
  %i.alr = load ptr, ptr %i.zm, align 8, !tbaa !623 ; 3 uses
  %i.als = load ptr, ptr %i.zn, align 8, !tbaa !624 ; 2 uses
  %.not.i.i.i.i611 = icmp eq ptr %i.als, %i.alr
  br i1 %.not.i.i.i.i611, label %_ZN6duckdb16BaseSelectBinder13ResetBindingsEv.exit, label %.lr.ph.i.i.i.i.i.i612

.lr.ph.i.i.i.i.i.i612:                            ; preds = %bb.ke, %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i.i.i.i.i
  %.05.i.i.i.i.i.i613 = phi ptr [ %i.alw, %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i.i.i.i.i ], [ %i.alr, %bb.ke ] ; 3 uses
  %i.alt = load ptr, ptr %.05.i.i.i.i.i.i613, align 8, !tbaa !103 ; 2 uses
  %i.alu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i613, i64 16
  %i.alv = icmp eq ptr %i.alt, %i.alu
  br i1 %i.alv, label %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i612
  call void @_ZdlPv(ptr noundef %i.alt) #25
  br label %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i612, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i.i.i
  %i.alw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i613, i64 40 ; 2 uses
  %.not.i.i.i.i.i.i614 = icmp eq ptr %i.alw, %i.als
  br i1 %.not.i.i.i.i.i.i614, label %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i612, !llvm.loop !625

_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb24BoundColumnReferenceInfoEEvPT_.exit.i.i.i.i.i.i
  store ptr %i.alr, ptr %i.zn, align 8, !tbaa !624
  br label %_ZN6duckdb16BaseSelectBinder13ResetBindingsEv.exit

_ZN6duckdb16BaseSelectBinder13ResetBindingsEv.exit: ; preds = %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.ke, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610, %._crit_edge1003
  %.sroa.15.2 = phi ptr [ %.sroa.15.01004, %._crit_edge1003 ], [ %.sroa.15.1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610 ], [ %.sroa.15.1, %bb.ke ], [ %.sroa.15.1, %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ]
  %.sroa.10.2 = phi ptr [ %.sroa.10.01005, %._crit_edge1003 ], [ %.sroa.10.1, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610 ], [ %.sroa.10.1, %bb.ke ], [ %.sroa.10.1, %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ] ; 3 uses
  %.sroa.0800.3 = phi ptr [ %.sroa.0800.01006, %._crit_edge1003 ], [ %.sroa.0800.2, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit610 ], [ %.sroa.0800.2, %bb.ke ], [ %.sroa.0800.2, %_ZSt8_DestroyIPN6duckdb24BoundColumnReferenceInfoES1_EvT_S3_RSaIT0_E.exit.i.i.i.i ] ; 13 uses
  %i.alx = load ptr, ptr %51, align 8, !tbaa !13  ; 3 uses
  %.not.i615 = icmp eq ptr %i.alx, null
  br i1 %.not.i615, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit617, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i616

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i616: ; preds = %_ZN6duckdb16BaseSelectBinder13ResetBindingsEv.exit
  %i.aly = load ptr, ptr %i.alx, align 8, !tbaa !10
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 8
  %i.ama = load ptr, ptr %i.alz, align 8
  call void %i.ama(ptr noundef nonnull align 8 dereferenceable(88) %i.alx) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit617

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit617: ; preds = %_ZN6duckdb16BaseSelectBinder13ResetBindingsEv.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i616
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %50) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  %i.amb = add nuw i64 %storemerge2661007, 1      ; 2 uses
  %i.amc = load ptr, ptr %i.cg, align 8, !tbaa !179
  %i.amd = load ptr, ptr %i.bt, align 8, !tbaa !182
  %i.ame = ptrtoint ptr %i.amc to i64
  %i.amf = ptrtoint ptr %i.amd to i64
  %i.amg = sub i64 %i.ame, %i.amf
  %i.amh = ashr exact i64 %i.amg, 3
  %i.ami = icmp ult i64 %i.amb, %i.amh
  br i1 %i.ami, label %bb.gc, label %.preheader, !llvm.loop !626

.body530:                                         ; preds = %.loopexit890, %.loopexit.split-lp891, %.loopexit895, %.loopexit.split-lp896, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569, %.body513, %bb.hx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529, %bb.hr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506, %bb.hc, %bb.ih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577, %bb.jk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574, %bb.je, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571, %bb.iy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511, %bb.gy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508, %bb.gs
  %.sroa.0800.4 = phi ptr [ %.sroa.0800.01006, %bb.gy ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ], [ %.sroa.0800.01006, %bb.ih ], [ %.sroa.0800.01006, %bb.hc ], [ %.sroa.0800.01006, %bb.gs ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508 ], [ %.sroa.0800.01006, %bb.iy ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571 ], [ %.sroa.0800.01006, %bb.je ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ], [ %.sroa.0800.01006, %bb.jk ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506 ], [ %.sroa.0800.01006, %bb.hr ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541 ], [ %.sroa.0800.01006, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542 ], [ %.sroa.0800.01006, %bb.hx ], [ %.sroa.0800.1.ph897, %.loopexit.split-lp896 ], [ %.sroa.0800.01006, %.body513 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569 ], [ %.sroa.0800.01006, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572 ], [ %.sroa.0800.1.ph, %.loopexit895 ], [ %.sroa.0800.01006, %.loopexit890 ], [ %.sroa.0800.01006, %.loopexit.split-lp891 ] ; 2 uses
  %.pn298.pn = phi { ptr, i32 } [ %.pn298854, %bb.gy ], [ %i.abm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit511 ], [ %i.abm, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i509 ], [ %i.ahk, %bb.ih ], [ %i.acc, %bb.hc ], [ %.pn290851, %bb.gs ], [ %i.abe, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit508 ], [ %.pn288857, %bb.iy ], [ %i.aib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit571 ], [ %.pn286860, %bb.je ], [ %i.aih, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit574 ], [ %.pn284863, %bb.jk ], [ %i.aip, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit577 ], [ %i.aip, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i575 ], [ %i.abe, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i506 ], [ %.pn9.i.i525, %bb.hr ], [ %i.aey, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i529 ], [ %i.aey, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i528 ], [ %i.afo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i541 ], [ %i.afo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i542 ], [ %.pn9.i.i538, %bb.hx ], [ %lpad.loopexit.split-lp899, %.loopexit.split-lp896 ], [ %.pn292, %.body513 ], [ %i.aib, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i569 ], [ %i.aih, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i572 ], [ %lpad.loopexit898, %.loopexit895 ], [ %lpad.loopexit892, %.loopexit890 ], [ %lpad.loopexit.split-lp893, %.loopexit.split-lp891 ] ; 2 uses
  %i.amj = load ptr, ptr %51, align 8, !tbaa !13  ; 3 uses
  %.not.i618 = icmp eq ptr %i.amj, null
  br i1 %.not.i618, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit620, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i619

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i619: ; preds = %.body530
  %i.amk = load ptr, ptr %i.amj, align 8, !tbaa !10
  %i.aml = getelementptr inbounds nuw i8, ptr %i.amk, i64 8
  %i.amm = load ptr, ptr %i.aml, align 8
  call void %i.amm(ptr noundef nonnull align 8 dereferenceable(88) %i.amj) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit620

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit620: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i619, %.body530, %bb.gq
  %.sroa.0800.5 = phi ptr [ %.sroa.0800.01006, %bb.gq ], [ %.sroa.0800.4, %.body530 ], [ %.sroa.0800.4, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i619 ]
  %.pn298.pn.pn = phi { ptr, i32 } [ %i.abc, %bb.gq ], [ %.pn298.pn, %.body530 ], [ %.pn298.pn, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i619 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %51) #23
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %50) #23
  br label %bb.kf

bb.kf:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit620, %bb.gp
  %.sroa.0800.6 = phi ptr [ %.sroa.0800.5, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit620 ], [ %.sroa.0800.01006, %bb.gp ]
  %.pn298.pn.pn.pn = phi { ptr, i32 } [ %.pn298.pn.pn, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit620 ], [ %i.abb, %bb.gp ]
  call void @llvm.lifetime.end.p0(ptr nonnull %50) #23
  br label %.body622

._crit_edge1016.thread:                           ; preds = %.preheader, %bb.ga
  %.sroa.0800.0.lcssa1312.ph = phi ptr [ %.sroa.0800.3, %.preheader ], [ null, %bb.ga ]
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  %i.amn = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 3 uses
  store i32 0, ptr %i.amn, align 8, !tbaa !627
  %i.amo = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 2 uses
  store ptr null, ptr %i.amo, align 8, !tbaa !554
  %i.amp = getelementptr inbounds nuw i8, ptr %63, i64 24
  store ptr %i.amn, ptr %i.amp, align 8, !tbaa !628
  %i.amq = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr %i.amn, ptr %i.amq, align 8, !tbaa !629
  %i.amr = getelementptr inbounds nuw i8, ptr %63, i64 40
  store i64 0, ptr %i.amr, align 8, !tbaa !630
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backERKS4_.exit

._crit_edge1016:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %63) #23
  %i.ams = getelementptr inbounds nuw i8, ptr %63, i64 8 ; 6 uses
  store i32 0, ptr %i.ams, align 8, !tbaa !627
  %i.amt = getelementptr inbounds nuw i8, ptr %63, i64 16 ; 5 uses
  store ptr null, ptr %i.amt, align 8, !tbaa !554
  %i.amu = getelementptr inbounds nuw i8, ptr %63, i64 24 ; 2 uses
  store ptr %i.ams, ptr %i.amu, align 8, !tbaa !628
  %i.amv = getelementptr inbounds nuw i8, ptr %63, i64 32
  store ptr %i.ams, ptr %i.amv, align 8, !tbaa !629
  %i.amw = getelementptr inbounds nuw i8, ptr %63, i64 40 ; 4 uses
  store i64 0, ptr %i.amw, align 8, !tbaa !630
  %i.amx = getelementptr inbounds nuw i8, ptr %i.az, i64 584
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !211 ; 2 uses
  %i.amz = load ptr, ptr %i.vq, align 8, !tbaa !213 ; 2 uses
  %.not1028 = icmp eq ptr %i.amy, %i.amz
  br i1 %.not1028, label %._crit_edge1020, label %.lr.ph1019.preheader

bb.kg:                                            ; preds = %.lr.ph1015, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0783.01014 = phi ptr [ %.sroa.0800.3, %.lr.ph1015 ], [ %i.apb, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.ana = load i64, ptr %.sroa.0783.01014, align 8, !tbaa !112
  %i.anb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aac, i64 noundef %i.ana)
          to label %bb.kh unwind label %bb.kr     ; 7 uses

bb.kh:                                            ; preds = %bb.kg
  %i.anc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.anb)
          to label %bb.ki unwind label %bb.ks

bb.ki:                                            ; preds = %bb.kh
  %i.and = load i64, ptr %i.bd, align 8, !tbaa !467
  %i.ane = load ptr, ptr %i.aad, align 8, !tbaa !211
  %i.anf = load ptr, ptr %i.vq, align 8, !tbaa !213
  %i.ang = ptrtoint ptr %i.ane to i64
  %i.anh = ptrtoint ptr %i.anf to i64
  %i.ani = sub i64 %i.ang, %i.anh
  %i.anj = ashr exact i64 %i.ani, 3
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ank = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc621 unwind label %bb.kt ; 6 uses

.noexc621:                                        ; preds = %bb.ki
  %i.anl = getelementptr inbounds nuw i8, ptr %i.anc, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.anl)
          to label %bb.kj unwind label %bb.kk, !noalias !631

bb.kj:                                            ; preds = %.noexc621
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ank, ptr noundef nonnull %5, i64 %i.and, i64 %i.anj, i64 noundef 0)
          to label %bb.kn unwind label %bb.kl, !noalias !631

bb.kk:                                            ; preds = %.noexc621
  %i.anm = landingpad { ptr, i32 }
          cleanup
  br label %bb.km

bb.kl:                                            ; preds = %bb.kj
  %i.ann = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23, !noalias !631
  br label %bb.km

bb.km:                                            ; preds = %bb.kl, %bb.kk
  %.pn.i = phi { ptr, i32 } [ %i.ann, %bb.kl ], [ %i.anm, %bb.kk ]
  call void @_ZdlPv(ptr noundef nonnull %i.ank) #25, !noalias !631
  br label %.body622

bb.kn:                                            ; preds = %bb.kj
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23, !noalias !631
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.ano = load ptr, ptr %i.aad, align 8, !tbaa !211 ; 6 uses
  %i.anp = load ptr, ptr %i.aae, align 8, !tbaa !212
  %.not.i.i624 = icmp eq ptr %i.ano, %i.anp
  br i1 %.not.i.i624, label %bb.ko, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639.thread: ; preds = %bb.kn
  %i.anq = load i64, ptr %i.anb, align 8, !tbaa !13
  store i64 %i.anq, ptr %i.ano, align 8, !tbaa !13
  %i.anr = getelementptr inbounds nuw i8, ptr %i.ano, i64 8
  store ptr %i.anr, ptr %i.aad, align 8, !tbaa !211
  store ptr %i.ank, ptr %i.anb, align 8, !tbaa !13
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.ko:                                            ; preds = %bb.kn
  %i.ans = load ptr, ptr %i.vq, align 8, !tbaa !213 ; 10 uses
  %i.ant = ptrtoint ptr %i.ano to i64             ; 3 uses
  %i.anu = ptrtoint ptr %i.ans to i64             ; 3 uses
  %i.anv = sub i64 %i.ant, %i.anu                 ; 3 uses
  %i.anw = icmp eq i64 %i.anv, 9223372036854775800
  br i1 %i.anw, label %bb.kp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625

bb.kp:                                            ; preds = %bb.ko
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc637 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit.split-lp

.noexc637:                                        ; preds = %bb.kp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625: ; preds = %bb.ko
  %i.anx = ashr exact i64 %i.anv, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i626 = call i64 @llvm.umax.i64(i64 %i.anx, i64 1)
  %i.any = add nsw i64 %.sroa.speculated.i.i.i.i626, %i.anx ; 2 uses
  %i.anz = icmp ult i64 %i.any, %i.anx
  %i.aoa = call i64 @llvm.umin.i64(i64 %i.any, i64 1152921504606846975)
  %i.aob = select i1 %i.anz, i64 1152921504606846975, i64 %i.aoa ; 3 uses
  %.not.i.i.i.i627 = icmp ne i64 %i.aob, 0
  call void @llvm.assume(i1 %.not.i.i.i.i627)
  %i.aoc = shl nuw nsw i64 %i.aob, 3
  %i.aod = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aoc) #26
          to label %.noexc638 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit ; 10 uses

.noexc638:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625
  %i.aoe = getelementptr inbounds nuw i8, ptr %i.aod, i64 %i.anv
  %i.aof = load i64, ptr %i.anb, align 8, !tbaa !13
  store i64 %i.aof, ptr %i.aoe, align 8, !tbaa !13
  store ptr null, ptr %i.anb, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i628 = icmp eq ptr %i.ans, %i.ano
  br i1 %.not10.i.i.i.i.i.i.i628, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, label %.lr.ph.i.i.i.i.i.i.i629.preheader

.lr.ph.i.i.i.i.i.i.i629.preheader:                ; preds = %.noexc638
  %81 = sub i64 %i.ant, %i.anu
  %82 = add i64 %81, -8                           ; 2 uses
  %i.aog = lshr i64 %82, 3
  %i.aoh = add nuw nsw i64 %i.aog, 1              ; 2 uses
  %min.iters.check1515 = icmp ult i64 %82, 56
  br i1 %min.iters.check1515, label %.lr.ph.i.i.i.i.i.i.i629.preheader1531, label %vector.memcheck1506

vector.memcheck1506:                              ; preds = %.lr.ph.i.i.i.i.i.i.i629.preheader
  %scevgep1507 = getelementptr i8, ptr %i.aod, i64 8
  %i.aoi = add i64 %i.ant, -8
  %i.aoj = sub i64 %i.aoi, %i.anu
  %i.aok = and i64 %i.aoj, -8                     ; 2 uses
  %scevgep1508 = getelementptr i8, ptr %scevgep1507, i64 %i.aok
  %scevgep1509 = getelementptr i8, ptr %i.ans, i64 8
  %scevgep1510 = getelementptr i8, ptr %scevgep1509, i64 %i.aok
  %bound01511 = icmp ult ptr %i.aod, %scevgep1510
  %bound11512 = icmp ult ptr %i.ans, %scevgep1508
  %found.conflict1513 = and i1 %bound01511, %bound11512
  br i1 %found.conflict1513, label %.lr.ph.i.i.i.i.i.i.i629.preheader1531, label %vector.ph1516

vector.ph1516:                                    ; preds = %vector.memcheck1506
  %n.vec1518 = and i64 %i.aoh, 4611686018427387900 ; 3 uses
  %i.aol = shl i64 %n.vec1518, 3                  ; 2 uses
  %i.aom = getelementptr i8, ptr %i.aod, i64 %i.aol ; 2 uses
  %i.aon = getelementptr i8, ptr %i.ans, i64 %i.aol
  br label %vector.body1519

vector.body1519:                                  ; preds = %vector.body1519, %vector.ph1516
  %index1520 = phi i64 [ 0, %vector.ph1516 ], [ %index.next1525, %vector.body1519 ] ; 2 uses
  %i.aoo = shl i64 %index1520, 3                  ; 2 uses
  %next.gep1521 = getelementptr i8, ptr %i.aod, i64 %i.aoo ; 2 uses
  %next.gep1522 = getelementptr i8, ptr %i.ans, i64 %i.aoo ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.aop = getelementptr i8, ptr %next.gep1522, i64 16
  %wide.load1523 = load <2 x i64>, ptr %next.gep1522, align 8, !tbaa !13, !alias.scope !639, !noalias !634
  %wide.load1524 = load <2 x i64>, ptr %i.aop, align 8, !tbaa !13, !alias.scope !639, !noalias !634
  %i.aoq = getelementptr i8, ptr %next.gep1521, i64 16
  store <2 x i64> %wide.load1523, ptr %next.gep1521, align 8, !tbaa !13, !alias.scope !642, !noalias !639
  store <2 x i64> %wide.load1524, ptr %i.aoq, align 8, !tbaa !13, !alias.scope !642, !noalias !639
  %i.aor = getelementptr i8, ptr %next.gep1522, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1522, align 8, !tbaa !13, !alias.scope !639, !noalias !634
  store <2 x ptr> splat (ptr null), ptr %i.aor, align 8, !tbaa !13, !alias.scope !639, !noalias !634
  %index.next1525 = add nuw i64 %index1520, 4     ; 2 uses
  %i.aos = icmp eq i64 %index.next1525, %n.vec1518
  br i1 %i.aos, label %middle.block1526, label %vector.body1519, !llvm.loop !644

middle.block1526:                                 ; preds = %vector.body1519
  %cmp.n1527 = icmp eq i64 %i.aoh, %n.vec1518
  br i1 %cmp.n1527, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, label %.lr.ph.i.i.i.i.i.i.i629.preheader1531

.lr.ph.i.i.i.i.i.i.i629.preheader1531:            ; preds = %vector.memcheck1506, %.lr.ph.i.i.i.i.i.i.i629.preheader, %middle.block1526
  %.012.i.i.i.i.i.i.i630.ph = phi ptr [ %i.aod, %vector.memcheck1506 ], [ %i.aod, %.lr.ph.i.i.i.i.i.i.i629.preheader ], [ %i.aom, %middle.block1526 ]
  %.0911.i.i.i.i.i.i.i631.ph = phi ptr [ %i.ans, %vector.memcheck1506 ], [ %i.ans, %.lr.ph.i.i.i.i.i.i.i629.preheader ], [ %i.aon, %middle.block1526 ]
  br label %.lr.ph.i.i.i.i.i.i.i629

.lr.ph.i.i.i.i.i.i.i629:                          ; preds = %.lr.ph.i.i.i.i.i.i.i629.preheader1531, %.lr.ph.i.i.i.i.i.i.i629
  %.012.i.i.i.i.i.i.i630 = phi ptr [ %i.aov, %.lr.ph.i.i.i.i.i.i.i629 ], [ %.012.i.i.i.i.i.i.i630.ph, %.lr.ph.i.i.i.i.i.i.i629.preheader1531 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i631 = phi ptr [ %i.aou, %.lr.ph.i.i.i.i.i.i.i629 ], [ %.0911.i.i.i.i.i.i.i631.ph, %.lr.ph.i.i.i.i.i.i.i629.preheader1531 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.experimental.noalias.scope.decl(metadata !637)
  %i.aot = load i64, ptr %.0911.i.i.i.i.i.i.i631, align 8, !tbaa !13, !alias.scope !637, !noalias !634
  store i64 %i.aot, ptr %.012.i.i.i.i.i.i.i630, align 8, !tbaa !13, !alias.scope !634, !noalias !637
  store ptr null, ptr %.0911.i.i.i.i.i.i.i631, align 8, !tbaa !13, !alias.scope !637, !noalias !634
  %i.aou = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i631, i64 8 ; 2 uses
  %i.aov = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i630, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i632 = icmp eq ptr %i.aou, %i.ano
  br i1 %.not.i.i.i.i.i.i.i632, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, label %.lr.ph.i.i.i.i.i.i.i629, !llvm.loop !645

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633: ; preds = %.lr.ph.i.i.i.i.i.i.i629, %middle.block1526, %.noexc638
  %.0.lcssa.i.i.i.i.i.i.i634 = phi ptr [ %i.aod, %.noexc638 ], [ %i.aom, %middle.block1526 ], [ %i.aov, %.lr.ph.i.i.i.i.i.i.i629 ]
  %i.aow = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i634, i64 8
  %.not.i23.i.i.i635 = icmp eq ptr %i.ans, null
  br i1 %.not.i23.i.i.i635, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639, label %bb.kq

bb.kq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633
  call void @_ZdlPv(ptr noundef nonnull %i.ans) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i633, %bb.kq
  store ptr %i.aod, ptr %i.vq, align 8, !tbaa !213
  store ptr %i.aow, ptr %i.aad, align 8, !tbaa !211
  %i.aox = getelementptr inbounds nuw [8 x i8], ptr %i.aod, i64 %i.aob
  store ptr %i.aox, ptr %i.aae, align 8, !tbaa !212
  %.pr864 = load ptr, ptr %i.anb, align 8, !tbaa !13 ; 3 uses
  store ptr %i.ank, ptr %i.anb, align 8, !tbaa !13
  %.not.i.i.i.i.i640 = icmp eq ptr %.pr864, null
  br i1 %.not.i.i.i.i.i640, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i641

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i641: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639
  %i.aoy = load ptr, ptr %.pr864, align 8, !tbaa !10
  %i.aoz = getelementptr inbounds nuw i8, ptr %i.aoy, i64 8
  %i.apa = load ptr, ptr %i.aoz, align 8
  call void %i.apa(ptr noundef nonnull align 8 dereferenceable(88) %.pr864) #23, !inline_history !327
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit639, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i641
  %i.apb = getelementptr inbounds nuw i8, ptr %.sroa.0783.01014, i64 8 ; 2 uses
  %.not881 = icmp eq ptr %i.apb, %.sroa.10.2
  br i1 %.not881, label %._crit_edge1016, label %bb.kg

bb.kr:                                            ; preds = %bb.kg
  %i.apc = landingpad { ptr, i32 }
          cleanup
  br label %.body622

bb.ks:                                            ; preds = %bb.kh
  %i.apd = landingpad { ptr, i32 }
          cleanup
  br label %.body622

bb.kt:                                            ; preds = %bb.ki
  %i.ape = landingpad { ptr, i32 }
          cleanup
  br label %.body622

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i625
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit.split-lp: ; preds = %bb.kp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit649.loopexit.split-lp ]
  %i.apf = load ptr, ptr %i.ank, align 8, !tbaa !10
  %i.apg = getelementptr inbounds nuw i8, ptr %i.apf, i64 8
  %i.aph = load ptr, ptr %i.apg, align 8
  call void %i.aph(ptr noundef nonnull align 8 dereferenceable(112) %i.ank) #23, !inline_history !309
  br label %.body622

.lr.ph1019.preheader:                             ; preds = %._crit_edge1016
  %i.api = ptrtoint ptr %i.amy to i64
  %i.apj = ptrtoint ptr %i.amz to i64
  %i.apk = sub i64 %i.api, %i.apj
  %i.apl = ashr exact i64 %i.apk, 3
  br label %.lr.ph1019

._crit_edge1020:                                  ; preds = %bb.lc, %._crit_edge1016
  %i.apm = load ptr, ptr %i.vt, align 8, !tbaa !551 ; 10 uses
  %i.apn = load ptr, ptr %i.vv, align 8, !tbaa !553
  %.not.i650 = icmp eq ptr %i.apm, %i.apn
  br i1 %.not.i650, label %bb.ky, label %bb.ku

bb.ku:                                            ; preds = %._crit_edge1020
  %i.apo = getelementptr inbounds nuw i8, ptr %i.apm, i64 8 ; 4 uses
  store i32 0, ptr %i.apo, align 8, !tbaa !627
  %i.app = getelementptr inbounds nuw i8, ptr %i.apm, i64 16 ; 2 uses
  store ptr null, ptr %i.app, align 8, !tbaa !554
  %i.apq = getelementptr inbounds nuw i8, ptr %i.apm, i64 24 ; 2 uses
  store ptr %i.apo, ptr %i.apq, align 8, !tbaa !628
  %i.apr = getelementptr inbounds nuw i8, ptr %i.apm, i64 32 ; 2 uses
  store ptr %i.apo, ptr %i.apr, align 8, !tbaa !629
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apm, i64 40 ; 2 uses
  store i64 0, ptr %i.aps, align 8, !tbaa !630
  %i.apt = load ptr, ptr %i.amt, align 8, !tbaa !554 ; 2 uses
  %.not.i.i.i651 = icmp eq ptr %i.apt, null
  br i1 %.not.i.i.i651, label %_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit.i, label %bb.kv

bb.kv:                                            ; preds = %bb.ku
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  store ptr %i.apm, ptr %4, align 8, !tbaa !646
  %i.apu = invoke noundef ptr @_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE7_M_copyILb0ENS5_11_Alloc_nodeEEEPSt13_Rb_tree_nodeImESA_PSt18_Rb_tree_node_baseRT0_(ptr noundef nonnull align 8 dereferenceable(48) %i.apm, ptr noundef nonnull %i.apt, ptr noundef nonnull %i.apo, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %.noexc.i.i.i unwind label %bb.le ; 3 uses

.noexc.i.i.i:                                     ; preds = %bb.kv, %.noexc.i.i.i
  %.0.i.i.i.i.i.i.i = phi ptr [ %i.apw, %.noexc.i.i.i ], [ %i.apu, %bb.kv ] ; 2 uses
  %i.apv = getelementptr inbounds nuw i8, ptr %.0.i.i.i.i.i.i.i, i64 16
  %i.apw = load ptr, ptr %i.apv, align 8, !tbaa !648 ; 2 uses
  %.not.i.i.i.i.i.i.i652 = icmp eq ptr %i.apw, null
  br i1 %.not.i.i.i.i.i.i.i652, label %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i, label %.noexc.i.i.i, !llvm.loop !649

_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i: ; preds = %.noexc.i.i.i
  store ptr %.0.i.i.i.i.i.i.i, ptr %i.apq, align 8, !tbaa !650
  br label %bb.kw

bb.kw:                                            ; preds = %bb.kw, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i
  %.0.i.i7.i.i.i.i.i = phi ptr [ %i.apu, %_ZNSt8_Rb_treeImmSt9_IdentityImESt4lessImESaImEE10_S_minimumEPSt18_Rb_tree_node_base.exit.i.i.i.i.i ], [ %i.apy, %bb.kw ] ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %.0.i.i7.i.i.i.i.i, i64 24
  %i.apy = load ptr, ptr %i.apx, align 8, !tbaa !651 ; 2 uses
  %.not.i.i8.i.i.i.i.i = icmp eq ptr %i.apy, null
  br i1 %.not.i.i8.i.i.i.i.i, label %bb.kx, label %bb.kw, !llvm.loop !652

bb.kx:                                            ; preds = %bb.kw
  store ptr %.0.i.i7.i.i.i.i.i, ptr %i.apr, align 8, !tbaa !650
  %i.apz = load i64, ptr %i.amw, align 8, !tbaa !630
  store i64 %i.apz, ptr %i.aps, align 8, !tbaa !630
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  store ptr %i.apu, ptr %i.app, align 8, !tbaa !650
  %.pre.i = load ptr, ptr %i.vt, align 8, !tbaa !551
  br label %_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit.i

_ZNSt3setImSt4lessImESaImEEC2ERKS3_.exit.i:       ; preds = %bb.kx, %bb.ku
  %i.aqa = phi ptr [ %i.apm, %bb.ku ], [ %.pre.i, %bb.kx ]
  %i.aqb = getelementptr inbounds nuw i8, ptr %i.aqa, i64 48
  store ptr %i.aqb, ptr %i.vt, align 8, !tbaa !551
  br label %_ZNSt6vectorISt3setImSt4lessImESaImEESaIS4_EE9push_backERKS4_.exit

bb.ky:                                            ; preds = %._crit_edge1020
end_hunk_6
begin_hunk_7_@_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm:bb.a
  %i.m = load ptr, ptr %2, align 8, !tbaa !103    ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.o = icmp eq ptr %i.m, %i.n
  br i1 %i.o, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br i1 %.0.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn8.i.i = phi { ptr, i32 } [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.j) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  %.pn7.i.i = phi { ptr, i32 } [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %.pn8.i.i, %bb.f ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  resume { ptr, i32 } %.pn7.i.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EE3getILb1EEERS6_m.exit: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.e, i64 %1
  ret ptr %i.p
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(56) ptr @_ZNK6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !7      ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_16ParsedExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

declare void @_ZN6duckdb17ColumnAliasBinderC1ERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #2

declare void @_ZN6duckdb11WhereBinderC1ERNS_6BinderERNS_13ClientContextENS_12optional_ptrINS_17ColumnAliasBinderELb1EEE(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(512), ptr) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17ColumnAliasBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !490  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.d, %.lr.ph.i.i.i.i ], [ %i.c, %bb.a ] ; 2 uses
  %i.d = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #25
  %.not.i.i.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !491

_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i: ; preds = %.lr.ph.i.i.i.i, %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !400
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !402
  %i.h = shl i64 %i.g, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.e, i8 0, i64 %i.h, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  %i.i = load ptr, ptr %i.a, align 8, !tbaa !400  ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.k = icmp eq ptr %i.i, %i.j
  br i1 %i.k, label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i
  tail call void @_ZdlPv(ptr noundef %i.i) #25
  br label %_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit

_ZNSt13unordered_setImSt4hashImESt8equal_toImESaImEED2Ev.exit: ; preds = %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, %bb.b
  ret void
}

declare void @_ZN6duckdb11OrderBinderC1ENS_6vectorISt17reference_wrapperINS_6BinderEELb1ESaIS4_EEERNS_10SelectNodeERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(240), ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE6resizeEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !179  ; 7 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !182    ; 11 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 4 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 3 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = ashr exact i64 %i.f, 3                   ; 7 uses
  %i.h = icmp ugt i64 %1, %i.g
  br i1 %i.h, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.i = sub nuw i64 %1, %i.g                     ; 6 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !181
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = sub i64 %i.l, %i.d
  %i.n = ashr exact i64 %i.m, 3                   ; 2 uses
  %i.o = icmp ult i64 %i.g, 1152921504606846976
  tail call void @llvm.assume(i1 %i.o)
  %i.p = xor i64 %i.g, 1152921504606846975        ; 2 uses
  %i.q = icmp ule i64 %i.n, %i.p
  tail call void @llvm.assume(i1 %i.q)
  %.not28.i = icmp ult i64 %i.n, %i.i
  br i1 %.not28.i, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i

_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i: ; preds = %bb.b
  %i.r = shl nuw nsw i64 %i.i, 3                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.b, i8 0, i64 %i.r, i1 false), !tbaa !685
  %scevgep.i.i.i.i = getelementptr i8, ptr %i.b, i64 %i.r
  store ptr %scevgep.i.i.i.i, ptr %i.a, align 8, !tbaa !179
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.c:                                             ; preds = %bb.b
  %i.s = icmp ult i64 %i.p, %i.i
  br i1 %i.s, label %bb.d, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.59) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.c
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %i.i)
  %i.t = add nuw nsw i64 %.sroa.speculated.i.i, %i.g
  %i.u = tail call i64 @llvm.umin.i64(i64 %i.t, i64 1152921504606846975) ; 2 uses
  %i.v = shl nuw nsw i64 %i.u, 3
  %i.w = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #26 ; 9 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 %i.f ; 2 uses
  %i.y = shl nuw nsw i64 %i.i, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.x, i8 0, i64 %i.y, i1 false), !tbaa !685
  %.not10.i.i.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %2 = sub i64 %i.d, %i.e
  %3 = add i64 %2, -8                             ; 2 uses
  %i.z = lshr i64 %3, 3
  %i.aa = add nuw nsw i64 %i.z, 1                 ; 2 uses
  %min.iters.check = icmp ult i64 %3, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.ab = add i64 %i.d, -8
  %i.ac = sub i64 %i.ab, %i.e
  %i.ad = and i64 %i.ac, -8
  %i.ae = add i64 %i.ad, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ae
  %scevgep16 = getelementptr i8, ptr %i.c, i64 %i.ae
  %bound0 = icmp ult ptr %i.w, %scevgep16
  %bound1 = icmp ult ptr %i.c, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader20, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aa, 4611686018427387900     ; 3 uses
  %i.af = shl i64 %n.vec, 3                       ; 2 uses
  %i.ag = getelementptr i8, ptr %i.w, i64 %i.af
  %i.ah = getelementptr i8, ptr %i.c, i64 %i.af
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ai = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.w, i64 %i.ai ; 2 uses
  %next.gep17 = getelementptr i8, ptr %i.c, i64 %i.ai ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.aj = getelementptr i8, ptr %next.gep17, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep17, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  %wide.load18 = load <2 x i64>, ptr %i.aj, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  %i.ak = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !7, !alias.scope !694, !noalias !691
  store <2 x i64> %wide.load18, ptr %i.ak, align 8, !tbaa !7, !alias.scope !694, !noalias !691
  %i.al = getelementptr i8, ptr %next.gep17, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep17, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  store <2 x ptr> splat (ptr null), ptr %i.al, align 8, !tbaa !7, !alias.scope !691, !noalias !686
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !696

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.aa, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader20

.lr.ph.i.i.i.i.i.preheader20:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.w, %vector.memcheck ], [ %i.w, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ag, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.c, %vector.memcheck ], [ %i.c, %.lr.ph.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader20, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader20 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !686)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !689)
  %i.an = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !689, !noalias !686
  store i64 %i.an, ptr %.012.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !686, !noalias !689
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !7, !alias.scope !689, !noalias !686
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8
  %.not.i.i.i.i.i = icmp eq ptr %i.ao, %i.b
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !697

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.not.i35.i = icmp eq ptr %i.c, null
  br i1 %.not.i35.i, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  store ptr %i.w, ptr %0, align 8, !tbaa !182
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %i.i
  store ptr %i.aq, ptr %i.a, align 8, !tbaa !179
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.w, i64 %i.u
  store ptr %i.ar, ptr %i.j, align 8, !tbaa !181
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.f:                                             ; preds = %bb.a
  %i.as = icmp ult i64 %1, %i.g
  br i1 %i.as, label %bb.g, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

bb.g:                                             ; preds = %bb.f
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %1 ; 3 uses
  %.not.i4 = icmp eq ptr %i.b, %i.at
  br i1 %.not.i4, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.ay, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i ], [ %i.at, %bb.g ] ; 2 uses
  %i.au = load ptr, ptr %.05.i.i.i, align 8, !tbaa !7 ; 3 uses
  %.not.i.i.i.i.i5 = icmp eq ptr %i.au, null
  br i1 %.not.i.i.i.i.i5, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i, label %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !10
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %i.ax = load ptr, ptr %i.aw, align 8
  tail call void %i.ax(ptr noundef nonnull align 8 dereferenceable(56) %i.au) #23, !inline_history !698
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb16ParsedExpressionEEclEPS1_.exit.i.i.i.i.i, %.lr.ph.i.i.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ay, %i.b
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i, !llvm.loop !205

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i
  store ptr %i.at, ptr %i.a, align 8, !tbaa !179
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_default_appendEm.exit: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i, %bb.g, %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_deallocateEPS5_m.exit36.i, %_ZSt27__uninitialized_default_n_aIPN6duckdb10unique_ptrINS0_16ParsedExpressionESt14default_deleteIS2_ELb1EEEmS5_ET_S7_T0_RSaIT1_E.exit.i, %bb.f
  ret void
}

declare void @_ZN6duckdb11GroupBinderC1ERNS_6BinderERNS_13ClientContextERNS_10SelectNodeEmRNS_15SelectBindStateERSt13unordered_mapINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmNS_33CaseInsensitiveStringHashFunctionENS_29CaseInsensitiveStringEqualityESaISt4pairIKSF_mEEE(ptr noundef nonnull align 8 dereferenceable(208), ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(512), ptr noundef nonnull align 8 dereferenceable(240), i64 noundef, ptr noundef nonnull align 8 dereferenceable(328), ptr noundef nonnull align 8 dereferenceable(56)) unnamed_addr #2

declare void @_ZN6duckdb11LogicalTypeC1Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #2

declare void @_ZN6duckdb19FirstFunctionGetter11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::AggregateFunction") align 8, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

declare void @_ZN6duckdb14FunctionBinderC1ERNS_6BinderE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(472)) unnamed_addr #2

declare void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.768") align 8, ptr noundef nonnull align 8 dereferenceable(16), ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !114  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %i.d = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.e = icmp eq i64 %i.d, 4294967297
  %i.f = trunc i64 %i.d to i32                    ; 2 uses
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.c, align 8, !tbaa !115
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.g, align 4, !tbaa !117
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !699
  %i.k = load ptr, ptr %i.b, align 8, !tbaa !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.m = load ptr, ptr %i.l, align 8
  tail call void %i.m(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23, !inline_history !699
  br label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit

bb.d:                                             ; preds = %bb.b
  %i.n = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i = icmp eq i8 %i.n, 0
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.o = add nsw i32 %i.f, -1
  store i32 %i.o, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.p = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i = phi i32 [ %i.f, %bb.e ], [ %i.p, %bb.f ]
  %i.q = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.q, label %bb.g, label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit, !prof !120

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #23
  br label %_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_21AggregateFunctionInfoELb1EED2Ev.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.g
  tail call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(236) %0) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !522    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_24BoundAggregateExpressionESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
end_hunk_7
begin_hunk_8_@_ZN6duckdb6Binder10CreatePlanERNS_15BoundSelectNodeE:bb.a
._crit_edge525:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.dk
  %i.qv = phi ptr [ null, %bb.dk ], [ %i.tq, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ]
  %i.qw = phi ptr [ null, %bb.dk ], [ %i.tr, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ]
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #23
  call void @llvm.experimental.noalias.scope.decl(metadata !786)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.qx = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc341 unwind label %bb.ej ; 3 uses

.noexc341:                                        ; preds = %._crit_edge525
  %i.qy = getelementptr inbounds nuw i8, ptr %2, i64 896
  %i.qz = load i64, ptr %i.qy, align 8, !tbaa !112, !noalias !786
  %i.ra = load ptr, ptr %32, align 8, !tbaa !213, !noalias !786
  store ptr %i.ra, ptr %4, align 8, !tbaa !213, !noalias !786
  %i.rb = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.qw, ptr %i.rb, align 8, !tbaa !211, !noalias !786
  %i.rc = getelementptr inbounds nuw i8, ptr %4, i64 16
  store ptr %i.qv, ptr %i.rc, align 8, !tbaa !212, !noalias !786
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, i8 0, i64 24, i1 false), !noalias !786
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.qx, i64 noundef %i.qz, ptr noundef nonnull %4)
          to label %bb.dl unwind label %bb.dn, !noalias !786

bb.dl:                                            ; preds = %.noexc341
  store ptr %i.qx, ptr %33, align 8, !tbaa !783, !alias.scope !786
  %i.rd = load ptr, ptr %4, align 8, !tbaa !213, !noalias !786 ; 3 uses
  %i.re = load ptr, ptr %i.rb, align 8, !tbaa !211, !noalias !786 ; 2 uses
  %.not4.i.i.i.i330 = icmp eq ptr %i.rd, %i.re
  br i1 %.not4.i.i.i.i330, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i339, label %.lr.ph.i.i.i.i331

.lr.ph.i.i.i.i331:                                ; preds = %bb.dl, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i335
  %.05.i.i.i.i332 = phi ptr [ %i.rj, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i335 ], [ %i.rd, %bb.dl ] ; 2 uses
  %i.rf = load ptr, ptr %.05.i.i.i.i332, align 8, !tbaa !13, !noalias !786 ; 3 uses
  %.not.i.i.i.i.i.i333 = icmp eq ptr %i.rf, null
  br i1 %.not.i.i.i.i.i.i333, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i335, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i334

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i334: ; preds = %.lr.ph.i.i.i.i331
  %i.rg = load ptr, ptr %i.rf, align 8, !tbaa !10, !noalias !786
  %i.rh = getelementptr inbounds nuw i8, ptr %i.rg, i64 8
  %i.ri = load ptr, ptr %i.rh, align 8, !noalias !786
  call void %i.ri(ptr noundef nonnull align 8 dereferenceable(88) %i.rf) #23, !noalias !786, !inline_history !785
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i335

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i335: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i334, %.lr.ph.i.i.i.i331
  %i.rj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i332, i64 8 ; 2 uses
  %.not.i.i.i.i336 = icmp eq ptr %i.rj, %i.re
  br i1 %.not.i.i.i.i336, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i337, label %.lr.ph.i.i.i.i331, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i337: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i335
  %.pr.i.i338 = load ptr, ptr %4, align 8, !tbaa !213, !noalias !786
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i339

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i339: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i337, %bb.dl
  %i.rk = phi ptr [ %.pr.i.i338, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i337 ], [ %i.rd, %bb.dl ] ; 2 uses
  %.not.i.i1.i.i340 = icmp eq ptr %i.rk, null
  br i1 %.not.i.i1.i.i340, label %bb.eg, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i339
  call void @_ZdlPv(ptr noundef nonnull %i.rk) #25, !noalias !786
  br label %bb.eg

bb.dn:                                            ; preds = %.noexc341
  %i.rl = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23, !noalias !786
  call void @_ZdlPv(ptr noundef nonnull %i.qx) #25, !noalias !786
  br label %.body342

bb.do:                                            ; preds = %._crit_edge521
  %i.rm = landingpad { ptr, i32 }
          cleanup
  br label %.body310

bb.dp:                                            ; preds = %bb.dg, %bb.df
  %i.rn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit347

bb.dq:                                            ; preds = %bb.dh
  %i.ro = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.rp = load ptr, ptr %29, align 8, !tbaa !360  ; 3 uses
  %.not.i345 = icmp eq ptr %i.rp, null
  br i1 %.not.i345, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit347, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i346

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i346: ; preds = %bb.dq
  %i.rq = load ptr, ptr %i.rp, align 8, !tbaa !10
  %i.rr = getelementptr inbounds nuw i8, ptr %i.rq, i64 8
  %i.rs = load ptr, ptr %i.rr, align 8
  call void %i.rs(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.rp) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit347

bb.dr:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit320
  %i.rt = landingpad { ptr, i32 }
          cleanup
  %i.ru = load ptr, ptr %31, align 8, !tbaa !360  ; 3 uses
  %.not.i348 = icmp eq ptr %i.ru, null
  br i1 %.not.i348, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit350, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i349

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i349: ; preds = %bb.dr
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !10
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ru) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit350

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit350: ; preds = %bb.dr, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i349
  call void @llvm.lifetime.end.p0(ptr nonnull %30) #23
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit347

bb.ds:                                            ; preds = %.lr.ph524, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.ry = phi ptr [ null, %.lr.ph524 ], [ %i.tp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 11 uses
  %i.rz = phi ptr [ null, %.lr.ph524 ], [ %i.tq, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 5 uses
  %i.sa = phi ptr [ null, %.lr.ph524 ], [ %i.tr, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %.0522 = phi i64 [ 0, %.lr.ph524 ], [ %i.ts, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 3 uses
  %i.sb = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.qs, i64 noundef %.0522)
          to label %bb.dt unwind label %bb.ee

bb.dt:                                            ; preds = %bb.ds
  %i.sc = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.sb)
          to label %bb.du unwind label %bb.ee

bb.du:                                            ; preds = %bb.dt
  %i.sd = load i64, ptr %i.ox, align 8, !tbaa !411
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.se = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc351 unwind label %bb.ef ; 6 uses

.noexc351:                                        ; preds = %bb.du
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %i.sf)
          to label %bb.dv unwind label %bb.dw, !noalias !789

bb.dv:                                            ; preds = %.noexc351
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.se, ptr noundef nonnull %3, i64 %i.sd, i64 %.0522, i64 noundef 0)
          to label %bb.dz unwind label %bb.dx, !noalias !789

bb.dw:                                            ; preds = %.noexc351
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %bb.dy

bb.dx:                                            ; preds = %bb.dv
  %i.sh = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23, !noalias !789
  br label %bb.dy

bb.dy:                                            ; preds = %bb.dx, %bb.dw
  %.pn.i = phi { ptr, i32 } [ %i.sh, %bb.dx ], [ %i.sg, %bb.dw ]
  call void @_ZdlPv(ptr noundef nonnull %i.se) #25, !noalias !789
  br label %.body352

bb.dz:                                            ; preds = %bb.dv
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %3) #23, !noalias !789
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not.i.i354 = icmp eq ptr %i.sa, %i.rz
  br i1 %.not.i.i354, label %bb.eb, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %i.si = ptrtoint ptr %i.se to i64
  store i64 %i.si, ptr %i.sa, align 8, !tbaa !13
  %i.sj = getelementptr inbounds nuw i8, ptr %i.sa, i64 8 ; 2 uses
  store ptr %i.sj, ptr %i.qt, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.eb:                                            ; preds = %bb.dz
  %i.sk = ptrtoint ptr %i.rz to i64               ; 3 uses
  %i.sl = ptrtoint ptr %i.ry to i64               ; 3 uses
  %i.sm = sub i64 %i.sk, %i.sl                    ; 3 uses
  %i.sn = icmp eq i64 %i.sm, 9223372036854775800
  br i1 %i.sn, label %bb.ec, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.ec:                                            ; preds = %bb.eb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc356 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit.split-lp

.noexc356:                                        ; preds = %bb.ec
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.eb
  %i.so = ashr exact i64 %i.sm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.so, i64 1)
  %i.sp = add nsw i64 %.sroa.speculated.i.i.i.i, %i.so ; 2 uses
  %i.sq = icmp ult i64 %i.sp, %i.so
  %i.sr = call i64 @llvm.umin.i64(i64 %i.sp, i64 1152921504606846975)
  %i.ss = select i1 %i.sq, i64 1152921504606846975, i64 %i.sr ; 3 uses
  %.not.i.i.i.i355 = icmp ne i64 %i.ss, 0
  call void @llvm.assume(i1 %.not.i.i.i.i355)
  %i.st = shl nuw nsw i64 %i.ss, 3
  %i.su = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.st) #26
          to label %.noexc357 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit ; 11 uses

.noexc357:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.sv = getelementptr inbounds nuw i8, ptr %i.su, i64 %i.sm
  %i.sw = ptrtoint ptr %i.se to i64
  store i64 %i.sw, ptr %i.sv, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.ry, %i.rz
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc357
  %35 = sub i64 %i.sk, %i.sl
  %36 = add i64 %35, -8                           ; 2 uses
  %i.sx = lshr i64 %36, 3
  %i.sy = add nuw nsw i64 %i.sx, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %36, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader724, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.su, i64 8
  %i.sz = add i64 %i.sk, -8
  %i.ta = sub i64 %i.sz, %i.sl
  %i.tb = and i64 %i.ta, -8                       ; 2 uses
  %scevgep718 = getelementptr i8, ptr %scevgep, i64 %i.tb
  %scevgep719 = getelementptr i8, ptr %i.ry, i64 8
  %scevgep720 = getelementptr i8, ptr %scevgep719, i64 %i.tb
  %bound0 = icmp ult ptr %i.su, %scevgep720
  %bound1 = icmp ult ptr %i.ry, %scevgep718
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader724, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.sy, 4611686018427387900     ; 3 uses
  %i.tc = shl i64 %n.vec, 3                       ; 2 uses
  %i.td = getelementptr i8, ptr %i.su, i64 %i.tc  ; 2 uses
  %i.te = getelementptr i8, ptr %i.ry, i64 %i.tc
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.tf = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.su, i64 %i.tf ; 2 uses
  %next.gep721 = getelementptr i8, ptr %i.ry, i64 %i.tf ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.tg = getelementptr i8, ptr %next.gep721, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep721, align 8, !tbaa !13, !alias.scope !797, !noalias !792
  %wide.load722 = load <2 x i64>, ptr %i.tg, align 8, !tbaa !13, !alias.scope !797, !noalias !792
  %i.th = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !800, !noalias !797
  store <2 x i64> %wide.load722, ptr %i.th, align 8, !tbaa !13, !alias.scope !800, !noalias !797
  %i.ti = getelementptr i8, ptr %next.gep721, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep721, align 8, !tbaa !13, !alias.scope !797, !noalias !792
  store <2 x ptr> splat (ptr null), ptr %i.ti, align 8, !tbaa !13, !alias.scope !797, !noalias !792
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.tj = icmp eq i64 %index.next, %n.vec
  br i1 %i.tj, label %middle.block, label %vector.body, !llvm.loop !802

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.sy, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader724

.lr.ph.i.i.i.i.i.i.i.preheader724:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.su, %vector.memcheck ], [ %i.su, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.td, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.ry, %vector.memcheck ], [ %i.ry, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.te, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader724, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.tm, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader724 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.tl, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader724 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  call void @llvm.experimental.noalias.scope.decl(metadata !795)
  %i.tk = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !795, !noalias !792
  store i64 %i.tk, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !792, !noalias !795
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !795, !noalias !792
  %i.tl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.tm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.tl, %i.rz
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !803

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc357
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.su, %.noexc357 ], [ %i.td, %middle.block ], [ %i.tm, %.lr.ph.i.i.i.i.i.i.i ]
  %i.tn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.ry, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.ed

bb.ed:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.ry) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.ed, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.su, ptr %32, align 8, !tbaa !213
  store ptr %i.tn, ptr %i.qt, align 8, !tbaa !211
  %i.to = getelementptr inbounds nuw [8 x i8], ptr %i.su, i64 %i.ss ; 2 uses
  store ptr %i.to, ptr %i.qu, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.ea
  %i.tp = phi ptr [ %i.su, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.ry, %bb.ea ]
  %i.tq = phi ptr [ %i.to, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.rz, %bb.ea ] ; 2 uses
  %i.tr = phi ptr [ %i.tn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.sj, %bb.ea ] ; 2 uses
  %i.ts = add nuw i64 %.0522, 1                   ; 2 uses
  %i.tt = load i64, ptr %i.qq, align 8, !tbaa !474
  %i.tu = icmp ult i64 %i.ts, %i.tt
  br i1 %i.tu, label %bb.ds, label %._crit_edge525, !llvm.loop !804

bb.ee:                                            ; preds = %bb.dt, %bb.ds
  %i.tv = landingpad { ptr, i32 }
          cleanup
  br label %.body352

bb.ef:                                            ; preds = %bb.du
  %i.tw = landingpad { ptr, i32 }
          cleanup
  br label %.body352

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit.split-lp: ; preds = %bb.ec
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit367.loopexit.split-lp ]
  %i.tx = load ptr, ptr %i.se, align 8, !tbaa !10
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 8
  %i.tz = load ptr, ptr %i.ty, align 8
  call void %i.tz(ptr noundef nonnull align 8 dereferenceable(88) %i.se) #23, !inline_history !104
  br label %.body352

bb.eg:                                            ; preds = %bb.dm, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i339
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.ua = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %33)
          to label %bb.eh unwind label %bb.ek

bb.eh:                                            ; preds = %bb.eg
  %i.ub = load i64, ptr %0, align 8, !tbaa !360
  store i64 %i.ub, ptr %34, align 8, !tbaa !360
  store ptr null, ptr %0, align 8, !tbaa !360
  invoke void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(97) %i.ua, ptr noundef nonnull %34)
          to label %bb.ei unwind label %bb.el

bb.ei:                                            ; preds = %bb.eh
  %i.uc = load ptr, ptr %34, align 8, !tbaa !360  ; 3 uses
  %.not.i368 = icmp eq ptr %i.uc, null
  br i1 %.not.i368, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit370, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i369

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i369: ; preds = %bb.ei
  %i.ud = load ptr, ptr %i.uc, align 8, !tbaa !10
  %i.ue = getelementptr inbounds nuw i8, ptr %i.ud, i64 8
  %i.uf = load ptr, ptr %i.ue, align 8
  call void %i.uf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.uc) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit370

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit370: ; preds = %bb.ei, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i369
  %i.ug = load ptr, ptr %33, align 8, !tbaa !783
  store ptr null, ptr %33, align 8, !tbaa !783
  %i.uh = load ptr, ptr %0, align 8, !tbaa !360   ; 3 uses
  store ptr %i.ug, ptr %0, align 8, !tbaa !360
  %.not.i.i.i.i.i371 = icmp eq ptr %i.uh, null
  br i1 %.not.i.i.i.i.i371, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit370
  %i.ui = load ptr, ptr %i.uh, align 8, !tbaa !10
  %i.uj = getelementptr inbounds nuw i8, ptr %i.ui, i64 8
  %i.uk = load ptr, ptr %i.uj, align 8
  call void %i.uk(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.uh) #23, !inline_history !658
  %.pr464 = load ptr, ptr %33, align 8, !tbaa !783 ; 3 uses
  %.not.i377 = icmp eq ptr %.pr464, null
  br i1 %.not.i377, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376
  %i.ul = load ptr, ptr %.pr464, align 8, !tbaa !10
  %i.um = getelementptr inbounds nuw i8, ptr %i.ul, i64 8
  %i.un = load ptr, ptr %i.um, align 8
  call void %i.un(ptr noundef nonnull align 8 dereferenceable(112) %.pr464) #23, !inline_history !805
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit370, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit376, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #23
  br label %bb.em

bb.ej:                                            ; preds = %._crit_edge525
  %i.uo = landingpad { ptr, i32 }
          cleanup
  br label %.body342

bb.ek:                                            ; preds = %bb.eg
  %i.up = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit381

bb.el:                                            ; preds = %bb.eh
  %i.uq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ur = load ptr, ptr %34, align 8, !tbaa !360  ; 3 uses
  %.not.i379 = icmp eq ptr %i.ur, null
  br i1 %.not.i379, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit381, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i380

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i380: ; preds = %bb.el
  %i.us = load ptr, ptr %i.ur, align 8, !tbaa !10
  %i.ut = getelementptr inbounds nuw i8, ptr %i.us, i64 8
  %i.uu = load ptr, ptr %i.ut, align 8
  call void %i.uu(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ur) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit381

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit381: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i380, %bb.el, %bb.ek
  %.pn107 = phi { ptr, i32 } [ %i.up, %bb.ek ], [ %i.uq, %bb.el ], [ %i.uq, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i380 ] ; 2 uses
end_hunk_8
begin_hunk_9_@_ZN6duckdb6Binder20BuildUnionByNameInfoERNS_21BoundSetOperationNodeE:bb.a
          cleanup                                 ; 4 uses
  %i.sm = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.sn = icmp eq ptr %i.sm, %i.sf
  br i1 %i.sn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.dy
  call void @_ZdlPv(ptr noundef %i.sm) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0.i.i, label %bb.dz, label %.body249

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i: ; preds = %bb.dy
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #23
  br i1 %.0.i.i, label %bb.dz, label %.body249

bb.dz:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i
  %.pn9.i.i = phi { ptr, i32 } [ %i.sk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i ], [ %i.sl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i ], [ %i.sl, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ]
  call void @__cxa_free_exception(ptr %i.se) #23
  br label %.body249

bb.ea:                                            ; preds = %bb.dx
  unreachable

_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %bb.dw
  %i.so = load ptr, ptr %i.sd, align 8, !tbaa !10
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 24
  %i.sq = load ptr, ptr %i.sp, align 8
  %i.sr = invoke noundef i64 %i.sq(ptr noundef nonnull align 8 dereferenceable(97) %i.sd)
          to label %bb.eb unwind label %bb.eg

bb.eb:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7)
  %i.ss = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc310 unwind label %bb.eh ; 3 uses

.noexc310:                                        ; preds = %bb.eb
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %7, ptr noundef nonnull align 8 dereferenceable(24) %i.sc)
          to label %bb.ec unwind label %bb.ed, !noalias !874

bb.ec:                                            ; preds = %.noexc310
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ss, ptr noundef nonnull %7, i64 %i.sr, i64 %i.rj, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.ee, !noalias !874

bb.ed:                                            ; preds = %.noexc310
  %i.st = landingpad { ptr, i32 }
          cleanup
  br label %bb.ef

bb.ee:                                            ; preds = %bb.ec
  %i.su = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23, !noalias !874
  br label %bb.ef

bb.ef:                                            ; preds = %bb.ee, %bb.ed
  %.pn.i = phi { ptr, i32 } [ %i.su, %bb.ee ], [ %i.st, %bb.ed ]
  call void @_ZdlPv(ptr noundef nonnull %i.ss) #25, !noalias !874
  br label %.body249

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.ec
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %7) #23, !noalias !874
  call void @llvm.lifetime.end.p0(ptr nonnull %7)
  br label %bb.ei

bb.eg:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv.exit
  %i.sv = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.eh:                                            ; preds = %bb.eb
  %i.sw = landingpad { ptr, i32 }
          cleanup
  br label %.body249

bb.ei:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0493.0 = phi ptr [ %i.rd, %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit ], [ %i.ss, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 4 uses
  %i.sx = load ptr, ptr %i.od, align 8, !tbaa !868
  %i.sy = load ptr, ptr %23, align 8, !tbaa !865  ; 2 uses
  %i.sz = ptrtoint ptr %i.sx to i64
  %i.ta = ptrtoint ptr %i.sy to i64
  %i.tb = sub i64 %i.sz, %i.ta
  %i.tc = sdiv exact i64 %i.tb, 24                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store i64 %.0118691, ptr %i.k, align 8, !tbaa !112
  store i64 %i.tc, ptr %i.l, align 8, !tbaa !112
  %.not.i.i.i320 = icmp ult i64 %.0118691, %i.tc
  br i1 %.not.i.i.i320, label %bb.en, label %.noexc.i461, !prof !298

.noexc.i461:                                      ; preds = %bb.ei
  %i.td = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.te = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 3 uses
  store ptr %i.te, ptr %6, align 8, !tbaa !126
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #23
  store i64 55, ptr %i.d, align 8, !tbaa !112
  %i.tf = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc462 unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i321 ; 3 uses

.noexc462:                                        ; preds = %.noexc.i461
  store ptr %i.tf, ptr %6, align 8, !tbaa !103
  %i.tg = load i64, ptr %i.d, align 8, !tbaa !112 ; 3 uses
  store i64 %i.tg, ptr %i.te, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(55) %i.tf, ptr noundef nonnull align 1 dereferenceable(55) @.str.51, i64 55, i1 false)
  %i.th = getelementptr inbounds nuw i8, ptr %6, i64 8
  store i64 %i.tg, ptr %i.th, align 8, !tbaa !127
  %i.ti = getelementptr inbounds nuw i8, ptr %i.tf, i64 %i.tg
  store i8 0, ptr %i.ti, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #23
  invoke void @_ZN6duckdb17InternalExceptionC2IJRmS2_EEERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.td, ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %bb.ej unwind label %bb.ek

bb.ej:                                            ; preds = %.noexc462
  invoke void @__cxa_throw(ptr nonnull %i.td, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.em unwind label %bb.ek

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i321: ; preds = %.noexc.i461
  %i.tj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.el

bb.ek:                                            ; preds = %bb.ej, %.noexc462
  %.0.i.i.i324 = phi i1 [ false, %bb.ej ], [ true, %.noexc462 ] ; 2 uses
  %i.tk = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.tl = load ptr, ptr %6, align 8, !tbaa !103   ; 2 uses
  %i.tm = icmp eq ptr %i.tl, %i.te
  br i1 %i.tm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i326, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325: ; preds = %bb.ek
  call void @_ZdlPv(ptr noundef %i.tl) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0.i.i.i324, label %bb.el, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i338

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i326: ; preds = %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br i1 %.0.i.i.i324, label %bb.el, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i338

bb.el:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i326, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i321
  %.pn8.i.i.i322 = phi { ptr, i32 } [ %i.tj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i.i321 ], [ %i.tk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i326 ], [ %i.tk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325 ]
  call void @__cxa_free_exception(ptr %i.td) #23
  br label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i338

bb.em:                                            ; preds = %bb.ej
  unreachable

bb.en:                                            ; preds = %bb.ei
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.tn = getelementptr inbounds nuw [24 x i8], ptr %i.sy, i64 %.0118691 ; 4 uses
  %i.to = getelementptr inbounds nuw i8, ptr %i.tn, i64 8 ; 3 uses
  %i.tp = load ptr, ptr %i.to, align 8, !tbaa !211 ; 6 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tn, i64 16 ; 2 uses
  %i.tr = load ptr, ptr %i.tq, align 8, !tbaa !212
  %.not.i.i329 = icmp eq ptr %i.tp, %i.tr
  br i1 %.not.i.i329, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.ts = ptrtoint ptr %.sroa.0493.0 to i64
  store i64 %i.ts, ptr %i.tp, align 8, !tbaa !13
  %i.tt = getelementptr inbounds nuw i8, ptr %i.tp, i64 8
  store ptr %i.tt, ptr %i.to, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit336

bb.ep:                                            ; preds = %bb.en
  %i.tu = load ptr, ptr %i.tn, align 8, !tbaa !213 ; 10 uses
  %i.tv = ptrtoint ptr %i.tp to i64               ; 3 uses
  %i.tw = ptrtoint ptr %i.tu to i64               ; 3 uses
  %i.tx = sub i64 %i.tv, %i.tw                    ; 3 uses
  %i.ty = icmp eq i64 %i.tx, 9223372036854775800
  br i1 %i.ty, label %bb.eq, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.eq:                                            ; preds = %bb.ep
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc332 unwind label %.loopexit.split-lp564

.noexc332:                                        ; preds = %bb.eq
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ep
  %i.tz = ashr exact i64 %i.tx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.tz, i64 1)
  %i.ua = add nsw i64 %.sroa.speculated.i.i.i.i, %i.tz ; 2 uses
  %i.ub = icmp ult i64 %i.ua, %i.tz
  %i.uc = call i64 @llvm.umin.i64(i64 %i.ua, i64 1152921504606846975)
  %i.ud = select i1 %i.ub, i64 1152921504606846975, i64 %i.uc ; 3 uses
  %.not.i.i.i.i330 = icmp ne i64 %i.ud, 0
  call void @llvm.assume(i1 %.not.i.i.i.i330)
  %i.ue = shl nuw nsw i64 %i.ud, 3
  %i.uf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ue) #26
          to label %.noexc333 unwind label %.loopexit563 ; 10 uses

.noexc333:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ug = getelementptr inbounds nuw i8, ptr %i.uf, i64 %i.tx
  %i.uh = ptrtoint ptr %.sroa.0493.0 to i64
  store i64 %i.uh, ptr %i.ug, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.tu, %i.tp
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc333
  %28 = sub i64 %i.tv, %i.tw
  %29 = add i64 %28, -8                           ; 2 uses
  %i.ui = lshr i64 %29, 3
  %i.uj = add nuw nsw i64 %i.ui, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %29, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader1048, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.uf, i64 8
  %i.uk = add i64 %i.tv, -8
  %i.ul = sub i64 %i.uk, %i.tw
  %i.um = and i64 %i.ul, -8                       ; 2 uses
  %scevgep1013 = getelementptr i8, ptr %scevgep, i64 %i.um
  %scevgep1014 = getelementptr i8, ptr %i.tu, i64 8
  %scevgep1015 = getelementptr i8, ptr %scevgep1014, i64 %i.um
  %bound0 = icmp ult ptr %i.uf, %scevgep1015
  %bound1 = icmp ult ptr %i.tu, %scevgep1013
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader1048, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uj, 4611686018427387900     ; 3 uses
  %i.un = shl i64 %n.vec, 3                       ; 2 uses
  %i.uo = getelementptr i8, ptr %i.uf, i64 %i.un  ; 2 uses
  %i.up = getelementptr i8, ptr %i.tu, i64 %i.un
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uq = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.uf, i64 %i.uq ; 2 uses
  %next.gep1016 = getelementptr i8, ptr %i.tu, i64 %i.uq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.ur = getelementptr i8, ptr %next.gep1016, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1016, align 8, !tbaa !13, !alias.scope !882, !noalias !877
  %wide.load1017 = load <2 x i64>, ptr %i.ur, align 8, !tbaa !13, !alias.scope !882, !noalias !877
  %i.us = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !885, !noalias !882
  store <2 x i64> %wide.load1017, ptr %i.us, align 8, !tbaa !13, !alias.scope !885, !noalias !882
  %i.ut = getelementptr i8, ptr %next.gep1016, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1016, align 8, !tbaa !13, !alias.scope !882, !noalias !877
  store <2 x ptr> splat (ptr null), ptr %i.ut, align 8, !tbaa !13, !alias.scope !882, !noalias !877
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.uu = icmp eq i64 %index.next, %n.vec
  br i1 %i.uu, label %middle.block, label %vector.body, !llvm.loop !887

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uj, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader1048

.lr.ph.i.i.i.i.i.i.i.preheader1048:               ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.uf, %vector.memcheck ], [ %i.uf, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.uo, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.tu, %vector.memcheck ], [ %i.tu, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.up, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader1048, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ux, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1048 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.uw, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader1048 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  call void @llvm.experimental.noalias.scope.decl(metadata !880)
  %i.uv = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !880, !noalias !877
  store i64 %i.uv, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !877, !noalias !880
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !880, !noalias !877
  %i.uw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i331 = icmp eq ptr %i.uw, %i.tp
  br i1 %.not.i.i.i.i.i.i.i331, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !888

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc333
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.uf, %.noexc333 ], [ %i.uo, %middle.block ], [ %i.ux, %.lr.ph.i.i.i.i.i.i.i ]
  %i.uy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.tu, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.er

bb.er:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.tu) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.er, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.uf, ptr %i.tn, align 8, !tbaa !213
  store ptr %i.uy, ptr %i.to, align 8, !tbaa !211
  %i.uz = getelementptr inbounds nuw [8 x i8], ptr %i.uf, i64 %i.ud
  store ptr %i.uz, ptr %i.tq, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit336

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit336: ; preds = %bb.eo, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.va = add nuw i64 %.0118691, 1                ; 2 uses
  %i.vb = load ptr, ptr %i.ae, align 8, !tbaa !664 ; 2 uses
  %i.vc = load ptr, ptr %i.ac, align 8, !tbaa !663 ; 3 uses
  %i.vd = ptrtoint ptr %i.vb to i64
  %i.ve = ptrtoint ptr %i.vc to i64
  %i.vf = sub i64 %i.vd, %i.ve
  %i.vg = sdiv exact i64 %i.vf, 136
  %i.vh = icmp ult i64 %i.va, %i.vg
  br i1 %i.vh, label %.lr.ph692, label %._crit_edge693, !llvm.loop !889

.loopexit563:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit565 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i338

.loopexit.split-lp564:                            ; preds = %bb.eq
  %lpad.loopexit.split-lp566 = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i338

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i338: ; preds = %.loopexit563, %.loopexit.split-lp564, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i326, %bb.el
  %.pn131 = phi { ptr, i32 } [ %i.tk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i326 ], [ %.pn8.i.i.i322, %bb.el ], [ %i.tk, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i325 ], [ %lpad.loopexit565, %.loopexit563 ], [ %lpad.loopexit.split-lp566, %.loopexit.split-lp564 ]
  %i.vi = load ptr, ptr %.sroa.0493.0, align 8, !tbaa !10
  %i.vj = getelementptr inbounds nuw i8, ptr %i.vi, i64 8
  %i.vk = load ptr, ptr %i.vj, align 8
  call void %i.vk(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0493.0) #23, !inline_history !104
  br label %.body249

._crit_edge703:                                   ; preds = %._crit_edge693.thread, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %.preheader
  %i.vl = load ptr, ptr %23, align 8, !tbaa !865  ; 3 uses
  %i.vm = load ptr, ptr %i.od, align 8, !tbaa !868 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.vl, %i.vm
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %._crit_edge703, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.vw, %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i ], [ %i.vl, %._crit_edge703 ] ; 4 uses
  %i.vn = load ptr, ptr %.05.i.i.i, align 8, !tbaa !213 ; 3 uses
  %i.vo = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 8
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i.i.i.i.i = icmp eq ptr %i.vn, %i.vp
  br i1 %.not4.i.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i340

.lr.ph.i.i.i.i.i.i.i340:                          ; preds = %.lr.ph.i.i.i, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi ptr [ %i.vu, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i ], [ %i.vn, %.lr.ph.i.i.i ] ; 2 uses
  %i.vq = load ptr, ptr %.05.i.i.i.i.i.i.i, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.vq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i340
  %i.vr = load ptr, ptr %i.vq, align 8, !tbaa !10
  %i.vs = getelementptr inbounds nuw i8, ptr %i.vr, i64 8
  %i.vt = load ptr, ptr %i.vs, align 8
  call void %i.vt(ptr noundef nonnull align 8 dereferenceable(88) %i.vq) #23, !inline_history !890
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i340
  %i.vu = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i341 = icmp eq ptr %i.vu, %i.vp
  br i1 %.not.i.i.i.i.i.i.i341, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i340, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i.i.i.i
  %.pr.i.i.i.i.i = load ptr, ptr %.05.i.i.i, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i, %.lr.ph.i.i.i
  %i.vv = phi ptr [ %.pr.i.i.i.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i.i.i.i ], [ %i.vn, %.lr.ph.i.i.i ] ; 2 uses
  %.not.i.i1.i.i.i.i.i = icmp eq ptr %i.vv, null
  br i1 %.not.i.i1.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i, label %bb.es

bb.es:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.vv) #25
  br label %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i: ; preds = %bb.es, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i.i.i.i
  %i.vw = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i342 = icmp eq ptr %i.vw, %i.vm
  br i1 %.not.i.i.i342, label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !891

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %23, align 8, !tbaa !865
  br label %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i, %._crit_edge703
  %i.vx = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exitthread-pre-split.i ], [ %i.vl, %._crit_edge703 ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.vx, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit, label %bb.et

bb.et:                                            ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.vx) #25
  br label %_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit

_ZNSt6vectorIN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEESaIS8_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb6vectorINS0_10unique_ptrINS0_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEES8_EvT_SA_RSaIT0_E.exit.i, %bb.et
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  br label %.critedge

bb.eu:                                            ; preds = %.lr.ph702, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %.0108701 = phi i64 [ 0, %.lr.ph702 ], [ %i.zu, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.vy = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb6vectorINS_14BoundStatementELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ac, i64 noundef %.0108701)
          to label %bb.ev unwind label %bb.ex     ; 9 uses

bb.ev:                                            ; preds = %bb.eu
  %i.vz = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS0_INS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEELb1ESaIS5_EEELb1ESaIS7_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %23, i64 noundef %.0108701)
          to label %bb.ew unwind label %bb.ey     ; 5 uses

bb.ew:                                            ; preds = %bb.ev
  call void @llvm.lifetime.start.p0(ptr nonnull %26) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  %i.wa = load ptr, ptr %i.vz, align 8, !tbaa !210 ; 2 uses
  %i.wb = getelementptr inbounds nuw i8, ptr %i.vz, i64 8
  %i.wc = load ptr, ptr %i.wb, align 8, !tbaa !210 ; 2 uses
  %.not551696 = icmp eq ptr %i.wa, %i.wc
  br i1 %.not551696, label %._crit_edge700, label %.lr.ph699

._crit_edge700:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit355, %bb.ew
  call void @llvm.lifetime.start.p0(ptr nonnull %27) #23
end_hunk_9
begin_hunk_10_@_ZN6duckdb6Binder20BuildUnionByNameInfoERNS_21BoundSetOperationNodeE:bb.a
  store ptr %i.wj, ptr %5, align 8, !tbaa !103
  %i.wk = load i64, ptr %i.c, align 8, !tbaa !112 ; 3 uses
  store i64 %i.wk, ptr %i.wi, align 8, !tbaa !119
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(49) %i.wj, ptr noundef nonnull align 1 dereferenceable(49) @.str.47, i64 49, i1 false)
  %i.wl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.wk, ptr %i.wl, align 8, !tbaa !127
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wj, i64 %i.wk
  store i8 0, ptr %i.wm, align 1, !tbaa !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.wh, ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.ez unwind label %bb.fa

bb.ez:                                            ; preds = %.noexc466
  invoke void @__cxa_throw(ptr nonnull %i.wh, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.fc unwind label %bb.fa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i344: ; preds = %.noexc.i465
  %i.wn = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.fb

bb.fa:                                            ; preds = %bb.ez, %.noexc466
  %.0.i.i347 = phi i1 [ false, %bb.ez ], [ true, %.noexc466 ] ; 2 uses
  %i.wo = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.wp = load ptr, ptr %5, align 8, !tbaa !103   ; 2 uses
  %i.wq = icmp eq ptr %i.wp, %i.wi
  br i1 %i.wq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i349, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i348

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i348: ; preds = %bb.fa
  call void @_ZdlPv(ptr noundef %i.wp) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i347, label %bb.fb, label %.body350

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i349: ; preds = %bb.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br i1 %.0.i.i347, label %bb.fb, label %.body350

bb.fb:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i349, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i348, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i344
  %.pn9.i.i345 = phi { ptr, i32 } [ %i.wn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i.i344 ], [ %i.wo, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i349 ], [ %i.wo, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i348 ]
  call void @__cxa_free_exception(ptr %i.wh) #23
  br label %.body350

bb.fc:                                            ; preds = %bb.ez
  unreachable

_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit: ; preds = %.lr.ph699
  %i.wr = getelementptr inbounds nuw i8, ptr %i.wg, i64 56 ; 2 uses
  %i.ws = load ptr, ptr %i.ok, align 8, !tbaa !300 ; 3 uses
  %i.wt = load ptr, ptr %i.ol, align 16, !tbaa !363
  %.not.i352 = icmp eq ptr %i.ws, %i.wt
  br i1 %.not.i352, label %bb.fe, label %bb.fd

bb.fd:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.ws, ptr noundef nonnull align 8 dereferenceable(24) %i.wr)
          to label %.noexc353 unwind label %bb.ff

.noexc353:                                        ; preds = %bb.fd
  %i.wu = load ptr, ptr %i.ok, align 8, !tbaa !300
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 24
  store ptr %i.wv, ptr %i.ok, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit355

bb.fe:                                            ; preds = %_ZNK6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEptEv.exit
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr %i.ws, ptr noundef nonnull align 8 dereferenceable(24) %i.wr)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit355 unwind label %bb.ff

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit355: ; preds = %.noexc353, %bb.fe
  %i.ww = getelementptr inbounds nuw i8, ptr %.sroa.0480.0697, i64 8 ; 2 uses
  %.not551 = icmp eq ptr %i.ww, %i.wc
  br i1 %.not551, label %._crit_edge700, label %.lr.ph699

bb.ff:                                            ; preds = %bb.fe, %bb.fd
  %i.wx = landingpad { ptr, i32 }
          cleanup
  br label %.body350

bb.fg:                                            ; preds = %._crit_edge700
  call void @llvm.experimental.noalias.scope.decl(metadata !892)
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  %i.wy = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc360 unwind label %bb.fr ; 3 uses

.noexc360:                                        ; preds = %bb.fg
  %i.wz = load <2 x ptr>, ptr %i.vz, align 8, !tbaa !210, !noalias !892
  store <2 x ptr> %i.wz, ptr %4, align 16, !tbaa !210, !noalias !892
  %i.xa = getelementptr inbounds nuw i8, ptr %i.vz, i64 16
  %i.xb = load ptr, ptr %i.xa, align 8, !tbaa !212, !noalias !892
  store ptr %i.xb, ptr %i.on, align 16, !tbaa !212, !noalias !892
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.vz, i8 0, i64 24, i1 false), !noalias !892
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.wy, i64 noundef %i.wd, ptr noundef nonnull %4)
          to label %bb.fh unwind label %bb.fj, !noalias !892

bb.fh:                                            ; preds = %.noexc360
  store ptr %i.wy, ptr %27, align 8, !tbaa !783, !alias.scope !892
  %i.xc = load ptr, ptr %4, align 16, !tbaa !213, !noalias !892 ; 3 uses
  %i.xd = load ptr, ptr %i.om, align 8, !tbaa !211, !noalias !892 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.xc, %i.xd
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i356

.lr.ph.i.i.i.i356:                                ; preds = %bb.fh, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i357 = phi ptr [ %i.xi, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.xc, %bb.fh ] ; 2 uses
  %i.xe = load ptr, ptr %.05.i.i.i.i357, align 8, !tbaa !13, !noalias !892 ; 3 uses
  %.not.i.i.i.i.i.i358 = icmp eq ptr %i.xe, null
  br i1 %.not.i.i.i.i.i.i358, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i356
  %i.xf = load ptr, ptr %i.xe, align 8, !tbaa !10, !noalias !892
  %i.xg = getelementptr inbounds nuw i8, ptr %i.xf, i64 8
  %i.xh = load ptr, ptr %i.xg, align 8, !noalias !892
  call void %i.xh(ptr noundef nonnull align 8 dereferenceable(88) %i.xe) #23, !noalias !892, !inline_history !895
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i356
  %i.xi = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i357, i64 8 ; 2 uses
  %.not.i.i.i.i359 = icmp eq ptr %i.xi, %i.xd
  br i1 %.not.i.i.i.i359, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i356, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %4, align 16, !tbaa !213, !noalias !892
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.fh
  %i.xj = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.xc, %bb.fh ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.xj, null
  br i1 %.not.i.i1.i.i, label %bb.fk, label %bb.fi

bb.fi:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.xj) #25, !noalias !892
  br label %bb.fk

bb.fj:                                            ; preds = %.noexc360
  %i.xk = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23, !noalias !892
  call void @_ZdlPv(ptr noundef nonnull %i.wy) #25, !noalias !892
  br label %.body361

bb.fk:                                            ; preds = %bb.fi, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.xl = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %27)
          to label %bb.fl unwind label %.loopexit ; 3 uses

bb.fl:                                            ; preds = %bb.fk
  %i.xm = getelementptr inbounds nuw i8, ptr %i.xl, i64 16 ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %i.xl, i64 24 ; 3 uses
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !896 ; 6 uses
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xl, i64 32 ; 2 uses
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !897
  %.not.i.i363 = icmp eq ptr %i.xo, %i.xq
  br i1 %.not.i.i363, label %bb.fm, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.fl
  %i.xr = load i64, ptr %i.vy, align 8, !tbaa !360
  store i64 %i.xr, ptr %i.xo, align 8, !tbaa !360
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  store ptr %i.xs, ptr %i.xn, align 8, !tbaa !896
  %i.xt = load ptr, ptr %27, align 8, !tbaa !783
  store ptr null, ptr %27, align 8, !tbaa !783
  store ptr %i.xt, ptr %i.vy, align 8, !tbaa !360
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

bb.fm:                                            ; preds = %bb.fl
  %i.xu = load ptr, ptr %i.xm, align 8, !tbaa !898 ; 10 uses
  %i.xv = ptrtoint ptr %i.xo to i64               ; 3 uses
  %i.xw = ptrtoint ptr %i.xu to i64               ; 3 uses
  %i.xx = sub i64 %i.xv, %i.xw                    ; 3 uses
  %i.xy = icmp eq i64 %i.xx, 9223372036854775800
  br i1 %i.xy, label %bb.fn, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.fn:                                            ; preds = %bb.fm
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc373 unwind label %.loopexit.split-lp

.noexc373:                                        ; preds = %bb.fn
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.fm
  %i.xz = ashr exact i64 %i.xx, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i364 = call i64 @llvm.umax.i64(i64 %i.xz, i64 1)
  %i.ya = add nsw i64 %.sroa.speculated.i.i.i.i364, %i.xz ; 2 uses
  %i.yb = icmp ult i64 %i.ya, %i.xz
  %i.yc = call i64 @llvm.umin.i64(i64 %i.ya, i64 1152921504606846975)
  %i.yd = select i1 %i.yb, i64 1152921504606846975, i64 %i.yc ; 3 uses
  %.not.i.i.i.i365 = icmp ne i64 %i.yd, 0
  call void @llvm.assume(i1 %.not.i.i.i.i365)
  %i.ye = shl nuw nsw i64 %i.yd, 3
  %i.yf = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ye) #26
          to label %.noexc374 unwind label %.loopexit ; 10 uses

.noexc374:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.yg = getelementptr inbounds nuw i8, ptr %i.yf, i64 %i.xx
  %i.yh = load i64, ptr %i.vy, align 8, !tbaa !360
  store i64 %i.yh, ptr %i.yg, align 8, !tbaa !360
  store ptr null, ptr %i.vy, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i366 = icmp eq ptr %i.xu, %i.xo
  br i1 %.not10.i.i.i.i.i.i.i366, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i367.preheader

.lr.ph.i.i.i.i.i.i.i367.preheader:                ; preds = %.noexc374
  %30 = sub i64 %i.xv, %i.xw
  %31 = add i64 %30, -8                           ; 2 uses
  %i.yi = lshr i64 %31, 3
  %i.yj = add nuw nsw i64 %i.yi, 1                ; 2 uses
  %min.iters.check1028 = icmp ult i64 %31, 56
  br i1 %min.iters.check1028, label %.lr.ph.i.i.i.i.i.i.i367.preheader1043, label %vector.memcheck1019

vector.memcheck1019:                              ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader
  %scevgep1020 = getelementptr i8, ptr %i.yf, i64 8
  %i.yk = add i64 %i.xv, -8
  %i.yl = sub i64 %i.yk, %i.xw
  %i.ym = and i64 %i.yl, -8                       ; 2 uses
  %scevgep1021 = getelementptr i8, ptr %scevgep1020, i64 %i.ym
  %scevgep1022 = getelementptr i8, ptr %i.xu, i64 8
  %scevgep1023 = getelementptr i8, ptr %scevgep1022, i64 %i.ym
  %bound01024 = icmp ult ptr %i.yf, %scevgep1023
  %bound11025 = icmp ult ptr %i.xu, %scevgep1021
  %found.conflict1026 = and i1 %bound01024, %bound11025
  br i1 %found.conflict1026, label %.lr.ph.i.i.i.i.i.i.i367.preheader1043, label %vector.ph1029

vector.ph1029:                                    ; preds = %vector.memcheck1019
  %n.vec1031 = and i64 %i.yj, 4611686018427387900 ; 3 uses
  %i.yn = shl i64 %n.vec1031, 3                   ; 2 uses
  %i.yo = getelementptr i8, ptr %i.yf, i64 %i.yn  ; 2 uses
  %i.yp = getelementptr i8, ptr %i.xu, i64 %i.yn
  br label %vector.body1032

vector.body1032:                                  ; preds = %vector.body1032, %vector.ph1029
  %index1033 = phi i64 [ 0, %vector.ph1029 ], [ %index.next1038, %vector.body1032 ] ; 2 uses
  %i.yq = shl i64 %index1033, 3                   ; 2 uses
  %next.gep1034 = getelementptr i8, ptr %i.yf, i64 %i.yq ; 2 uses
  %next.gep1035 = getelementptr i8, ptr %i.xu, i64 %i.yq ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.yr = getelementptr i8, ptr %next.gep1035, i64 16
  %wide.load1036 = load <2 x i64>, ptr %next.gep1035, align 8, !tbaa !360, !alias.scope !904, !noalias !899
  %wide.load1037 = load <2 x i64>, ptr %i.yr, align 8, !tbaa !360, !alias.scope !904, !noalias !899
  %i.ys = getelementptr i8, ptr %next.gep1034, i64 16
  store <2 x i64> %wide.load1036, ptr %next.gep1034, align 8, !tbaa !360, !alias.scope !907, !noalias !904
  store <2 x i64> %wide.load1037, ptr %i.ys, align 8, !tbaa !360, !alias.scope !907, !noalias !904
  %i.yt = getelementptr i8, ptr %next.gep1035, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1035, align 8, !tbaa !360, !alias.scope !904, !noalias !899
  store <2 x ptr> splat (ptr null), ptr %i.yt, align 8, !tbaa !360, !alias.scope !904, !noalias !899
  %index.next1038 = add nuw i64 %index1033, 4     ; 2 uses
  %i.yu = icmp eq i64 %index.next1038, %n.vec1031
  br i1 %i.yu, label %middle.block1039, label %vector.body1032, !llvm.loop !909

middle.block1039:                                 ; preds = %vector.body1032
  %cmp.n1040 = icmp eq i64 %i.yj, %n.vec1031
  br i1 %cmp.n1040, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i367.preheader1043

.lr.ph.i.i.i.i.i.i.i367.preheader1043:            ; preds = %vector.memcheck1019, %.lr.ph.i.i.i.i.i.i.i367.preheader, %middle.block1039
  %.012.i.i.i.i.i.i.i368.ph = phi ptr [ %i.yf, %vector.memcheck1019 ], [ %i.yf, %.lr.ph.i.i.i.i.i.i.i367.preheader ], [ %i.yo, %middle.block1039 ]
  %.0911.i.i.i.i.i.i.i369.ph = phi ptr [ %i.xu, %vector.memcheck1019 ], [ %i.xu, %.lr.ph.i.i.i.i.i.i.i367.preheader ], [ %i.yp, %middle.block1039 ]
  br label %.lr.ph.i.i.i.i.i.i.i367

.lr.ph.i.i.i.i.i.i.i367:                          ; preds = %.lr.ph.i.i.i.i.i.i.i367.preheader1043, %.lr.ph.i.i.i.i.i.i.i367
  %.012.i.i.i.i.i.i.i368 = phi ptr [ %i.yx, %.lr.ph.i.i.i.i.i.i.i367 ], [ %.012.i.i.i.i.i.i.i368.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader1043 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i369 = phi ptr [ %i.yw, %.lr.ph.i.i.i.i.i.i.i367 ], [ %.0911.i.i.i.i.i.i.i369.ph, %.lr.ph.i.i.i.i.i.i.i367.preheader1043 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !899)
  call void @llvm.experimental.noalias.scope.decl(metadata !902)
  %i.yv = load i64, ptr %.0911.i.i.i.i.i.i.i369, align 8, !tbaa !360, !alias.scope !902, !noalias !899
  store i64 %i.yv, ptr %.012.i.i.i.i.i.i.i368, align 8, !tbaa !360, !alias.scope !899, !noalias !902
  store ptr null, ptr %.0911.i.i.i.i.i.i.i369, align 8, !tbaa !360, !alias.scope !902, !noalias !899
  %i.yw = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i369, i64 8 ; 2 uses
  %i.yx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i368, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i370 = icmp eq ptr %i.yw, %i.xo
  br i1 %.not.i.i.i.i.i.i.i370, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i367, !llvm.loop !910

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i367, %middle.block1039, %.noexc374
  %.0.lcssa.i.i.i.i.i.i.i371 = phi ptr [ %i.yf, %.noexc374 ], [ %i.yo, %middle.block1039 ], [ %i.yx, %.lr.ph.i.i.i.i.i.i.i367 ]
  %i.yy = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i371, i64 8
  %.not.i23.i.i.i372 = icmp eq ptr %i.xu, null
  br i1 %.not.i23.i.i.i372, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.xu) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.fo
  store ptr %i.yf, ptr %i.xm, align 8, !tbaa !898
  store ptr %i.yy, ptr %i.xn, align 8, !tbaa !896
  %i.yz = getelementptr inbounds nuw [8 x i8], ptr %i.yf, i64 %i.yd
  store ptr %i.yz, ptr %i.xp, align 8, !tbaa !897
  %.pr548 = load ptr, ptr %i.vy, align 8, !tbaa !360 ; 3 uses
  %i.za = load ptr, ptr %27, align 8, !tbaa !783
  store ptr null, ptr %27, align 8, !tbaa !783
  store ptr %i.za, ptr %i.vy, align 8, !tbaa !360
  %.not.i.i.i.i.i375 = icmp eq ptr %.pr548, null
  br i1 %.not.i.i.i.i.i375, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.zb = load ptr, ptr %.pr548, align 8, !tbaa !10
  %i.zc = getelementptr inbounds nuw i8, ptr %i.zb, i64 8
  %i.zd = load ptr, ptr %i.zc, align 8
  call void %i.zd(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %.pr548) #23, !inline_history !658
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread
  %i.ze = getelementptr inbounds nuw i8, ptr %i.vy, i64 8 ; 2 uses
  %i.zf = load ptr, ptr %i.ze, align 8, !tbaa !303 ; 4 uses
  %i.zg = getelementptr inbounds nuw i8, ptr %i.vy, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8, !tbaa !300 ; 2 uses
  %i.zi = getelementptr inbounds nuw i8, ptr %i.vy, i64 24
  %i.zj = load <2 x ptr>, ptr %26, align 16, !tbaa !362
  store <2 x ptr> %i.zj, ptr %i.ze, align 8, !tbaa !362
  %i.zk = load ptr, ptr %i.ol, align 16, !tbaa !363
  store ptr %i.zk, ptr %i.zi, align 8, !tbaa !363
  %.not4.i.i.i.i.i.i = icmp eq ptr %i.zf, %i.zh
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %26, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi ptr [ %i.zl, %.lr.ph.i.i.i.i.i.i ], [ %i.zf, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i.i.i.i) #23
  %i.zl = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i377 = icmp eq ptr %i.zl, %i.zh
  br i1 %.not.i.i.i.i.i.i377, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !660

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %.not.i.i1.i.i.i.i = icmp eq ptr %i.zf, null
  br i1 %.not.i.i1.i.i.i.i, label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, label %bb.fp

bb.fp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.zf) #25
  br label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i.i.i.i, %bb.fp
  %i.zm = load ptr, ptr %27, align 8, !tbaa !783  ; 3 uses
  %.not.i378 = icmp eq ptr %i.zm, null
  br i1 %.not.i378, label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit
  %i.zn = load ptr, ptr %i.zm, align 8, !tbaa !10
  %i.zo = getelementptr inbounds nuw i8, ptr %i.zn, i64 8
  %i.zp = load ptr, ptr %i.zo, align 8
  call void %i.zp(ptr noundef nonnull align 8 dereferenceable(112) %i.zm) #23, !inline_history !805
  br label %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSEOS3_.exit, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %27) #23
  %i.zq = load ptr, ptr %26, align 16, !tbaa !303 ; 3 uses
  %i.zr = load ptr, ptr %i.ok, align 8, !tbaa !300 ; 2 uses
  %.not4.i.i.i379 = icmp eq ptr %i.zq, %i.zr
  br i1 %.not4.i.i.i379, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i380

.lr.ph.i.i.i380:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit, %.lr.ph.i.i.i380
  %.05.i.i.i381 = phi ptr [ %i.zs, %.lr.ph.i.i.i380 ], [ %i.zq, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i381) #23
  %i.zs = getelementptr inbounds nuw i8, ptr %.05.i.i.i381, i64 24 ; 2 uses
  %.not.i.i.i382 = icmp eq ptr %i.zs, %i.zr
  br i1 %.not.i.i.i382, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i380, !llvm.loop !660

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i380
  %.pr.i383 = load ptr, ptr %26, align 16, !tbaa !303
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit
  %i.zt = phi ptr [ %.pr.i383, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.zq, %_ZNSt10unique_ptrIN6duckdb17LogicalProjectionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i384 = icmp eq ptr %i.zt, null
  br i1 %.not.i.i1.i384, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.fq

bb.fq:                                            ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.zt) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.fq
  call void @llvm.lifetime.end.p0(ptr nonnull %26) #23
  %i.zu = add nuw i64 %.0108701, 1                ; 2 uses
  %i.zv = load ptr, ptr %i.ae, align 8, !tbaa !664
  %i.zw = load ptr, ptr %i.ac, align 8, !tbaa !663
  %i.zx = ptrtoint ptr %i.zv to i64
  %i.zy = ptrtoint ptr %i.zw to i64
  %i.zz = sub i64 %i.zx, %i.zy
  %i.aaa = sdiv exact i64 %i.zz, 136
  %i.aab = icmp ult i64 %i.zu, %i.aaa
  br i1 %i.aab, label %bb.eu, label %._crit_edge703, !llvm.loop !911

bb.fr:                                            ; preds = %bb.fg, %._crit_edge700
  %i.aac = landingpad { ptr, i32 }
          cleanup
  br label %.body361

.loopexit:                                        ; preds = %bb.fk, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

.loopexit.split-lp:                               ; preds = %bb.fn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.fs

bb.fs:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.aad = load ptr, ptr %27, align 8, !tbaa !783 ; 3 uses
  %.not.i385 = icmp eq ptr %i.aad, null
  br i1 %.not.i385, label %.body361, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i386

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i386: ; preds = %bb.fs
  %i.aae = load ptr, ptr %i.aad, align 8, !tbaa !10
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.aae, i64 8
end_hunk_10
begin_hunk_11_@_ZN6duckdb6Binder8BindNodeERNS_16SetOperationNodeE:bb.a
  %i.ko = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 3 uses
  %i.kp = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 2 uses
  %i.kq = load ptr, ptr %i.kp, align 8, !tbaa !172 ; 3 uses
  %i.kr = load ptr, ptr %i.ko, align 8, !tbaa !175 ; 3 uses
  %.not.i131 = icmp eq ptr %i.kq, %i.kr
  br i1 %.not.i131, label %bb.ce, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.cd
  %i.ks = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 3 uses
  br label %bb.cf

._crit_edge.i:                                    ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i
  store ptr %i.ls, ptr %i.ks, align 8
  store ptr %i.lq, ptr %i.kt, align 8
  br label %bb.ce

bb.ce:                                            ; preds = %._crit_edge.i, %bb.cd
  %.lcssa.i = phi ptr [ %i.lr, %._crit_edge.i ], [ null, %bb.cd ]
  store ptr %.lcssa.i, ptr %4, align 8
  %i.ku = load i8, ptr %i.e, align 8, !tbaa !927
  invoke void @_ZN6duckdb18SetOpAliasGatherer18GatherSetOpAliasesENS_16SetOperationTypeERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERNS2_INS_14BoundStatementELb1ESaISD_EEERKNS2_ImLb1ESaImEEE(ptr noundef nonnull align 8 dereferenceable(8) %3, i8 noundef zeroext %i.ku, ptr noundef nonnull align 8 dereferenceable(24) %i.ko, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.cl unwind label %bb.cn

bb.cf:                                            ; preds = %_ZNSt6vectorImSaImEE9push_backERKm.exit.i, %.lr.ph.i
  %.pre4045.i = phi ptr [ %i.kr, %.lr.ph.i ], [ %.pre4046.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 2 uses
  %.pre42.i = phi ptr [ %i.kq, %.lr.ph.i ], [ %.pre43.i, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 2 uses
  %i.kv = phi ptr [ %i.kr, %.lr.ph.i ], [ %i.lo, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ]
  %i.kw = phi ptr [ %i.kq, %.lr.ph.i ], [ %i.lp, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ]
  %i.kx = phi ptr [ null, %.lr.ph.i ], [ %i.lq, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 5 uses
  %i.ky = phi ptr [ null, %.lr.ph.i ], [ %i.ls, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 5 uses
  %storemerge18.i = phi i64 [ 0, %.lr.ph.i ], [ %i.lt, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 3 uses
  %i.kz = phi ptr [ null, %.lr.ph.i ], [ %i.lr, %_ZNSt6vectorImSaImEE9push_backERKm.exit.i ] ; 9 uses
  %.not.i.i132 = icmp eq ptr %i.ky, %i.kx
  br i1 %.not.i.i132, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  store i64 %storemerge18.i, ptr %i.ky, align 8, !tbaa !112
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.la = ptrtoint ptr %i.kx to i64
  %i.lb = ptrtoint ptr %i.kz to i64
  %i.lc = sub i64 %i.la, %i.lb                    ; 5 uses
  %i.ld = icmp eq i64 %i.lc, 9223372036854775800
  br i1 %i.ld, label %bb.ci, label %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i

bb.ci:                                            ; preds = %bb.ch
  store ptr %i.ky, ptr %i.ks, align 8
  store ptr %i.kx, ptr %i.kt, align 8
  store ptr %i.kz, ptr %4, align 8
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc.i unwind label %.loopexit.split-lp.i

.noexc.i:                                         ; preds = %bb.ci
  unreachable

_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.ch
  %i.le = ashr exact i64 %i.lc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.le, i64 1)
  %i.lf = add nsw i64 %.sroa.speculated.i.i.i.i, %i.le ; 2 uses
  %i.lg = icmp ult i64 %i.lf, %i.le
  %i.lh = call i64 @llvm.umin.i64(i64 %i.lf, i64 1152921504606846975)
  %i.li = select i1 %i.lg, i64 1152921504606846975, i64 %i.lh ; 3 uses
  %.not.i.i.i.i133 = icmp ne i64 %i.li, 0
  call void @llvm.assume(i1 %.not.i.i.i.i133)
  %i.lj = shl nuw nsw i64 %i.li, 3
  %i.lk = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.lj) #26
          to label %.noexc8.i unwind label %.loopexit.i ; 4 uses

.noexc8.i:                                        ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %i.ll = getelementptr inbounds i8, ptr %i.lk, i64 %i.lc ; 2 uses
  store i64 %storemerge18.i, ptr %i.ll, align 8, !tbaa !112
  %i.lm = icmp sgt i64 %i.lc, 0
  br i1 %i.lm, label %bb.cj, label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

bb.cj:                                            ; preds = %.noexc8.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.lk, ptr align 8 %i.kz, i64 %i.lc, i1 false)
  br label %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i

_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i: ; preds = %bb.cj, %.noexc8.i
  %.not.i17.i.i.i = icmp eq ptr %i.kz, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, label %bb.ck

bb.ck:                                            ; preds = %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.kz) #25
  %.pre.pre.i = load ptr, ptr %i.kp, align 8, !tbaa !172
  %.pre40.pre.i = load ptr, ptr %i.ko, align 8, !tbaa !175
  br label %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i

_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i: ; preds = %bb.ck, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i
  %.pre40.i = phi ptr [ %.pre40.pre.i, %bb.ck ], [ %.pre4045.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %.pre.i = phi ptr [ %.pre.pre.i, %bb.ck ], [ %.pre42.i, %_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_.exit16.i.i.i ] ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %i.lk, i64 %i.li
  br label %_ZNSt6vectorImSaImEE9push_backERKm.exit.i

_ZNSt6vectorImSaImEE9push_backERKm.exit.i:        ; preds = %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i, %bb.cg
  %.pre4046.i = phi ptr [ %.pre40.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre4045.i, %bb.cg ]
  %.pre43.i = phi ptr [ %.pre.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %.pre42.i, %bb.cg ]
  %i.lo = phi ptr [ %.pre40.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kv, %bb.cg ] ; 2 uses
  %i.lp = phi ptr [ %.pre.i, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kw, %bb.cg ] ; 2 uses
  %i.lq = phi ptr [ %i.ln, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kx, %bb.cg ] ; 2 uses
  %.pn27.i = phi ptr [ %i.ll, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.ky, %bb.cg ]
  %i.lr = phi ptr [ %i.lk, %_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_.exit.i.i ], [ %i.kz, %bb.cg ] ; 2 uses
  %i.ls = getelementptr inbounds nuw i8, ptr %.pn27.i, i64 8 ; 2 uses
  %i.lt = add nuw i64 %storemerge18.i, 1          ; 2 uses
  %i.lu = ptrtoint ptr %i.lp to i64
  %i.lv = ptrtoint ptr %i.lo to i64
  %i.lw = sub i64 %i.lu, %i.lv
  %i.lx = ashr exact i64 %i.lw, 5
  %i.ly = icmp ult i64 %i.lt, %i.lx
  br i1 %i.ly, label %bb.cf, label %._crit_edge.i, !llvm.loop !950

.loopexit.i:                                      ; preds = %_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ky, ptr %i.ks, align 8
  store ptr %i.kx, ptr %i.kt, align 8
  store ptr %i.kz, ptr %4, align 8
  br label %bb.co

.loopexit.split-lp.i:                             ; preds = %bb.ci
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.co

bb.cl:                                            ; preds = %bb.ce
  %i.lz = load ptr, ptr %4, align 8, !tbaa !738   ; 2 uses
  %.not.i.i.i9.i = icmp eq ptr %i.lz, null
  br i1 %.not.i.i.i9.i, label %bb.cq, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  call void @_ZdlPv(ptr noundef nonnull %i.lz) #25
  br label %bb.cq

bb.cn:                                            ; preds = %bb.ce
  %i.ma = landingpad { ptr, i32 }
          cleanup
  %.pre41.i = load ptr, ptr %4, align 8, !tbaa !738
  br label %bb.co

bb.co:                                            ; preds = %bb.cn, %.loopexit.split-lp.i, %.loopexit.i
  %i.mb = phi ptr [ %.pre41.i, %bb.cn ], [ %i.kz, %.loopexit.i ], [ %i.kz, %.loopexit.split-lp.i ] ; 2 uses
  %.pn.i = phi { ptr, i32 } [ %i.ma, %bb.cn ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %.not.i.i.i10.i = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i10.i, label %_ZNSt6vectorImSaImEED2Ev.exit11.i, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  call void @_ZdlPv(ptr noundef nonnull %i.mb) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit11.i

_ZNSt6vectorImSaImEED2Ev.exit11.i:                ; preds = %bb.cp, %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %.body134

bb.cq:                                            ; preds = %bb.cm, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  %i.mc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !198 ; 3 uses
  %i.me = load ptr, ptr %20, align 8, !tbaa !201  ; 7 uses
  %i.mf = ptrtoint ptr %i.md to i64               ; 2 uses
  %i.mg = ptrtoint ptr %i.me to i64               ; 3 uses
  %i.mh = sub i64 %i.mf, %i.mg                    ; 4 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %22, i8 0, i64 24, i1 false)
  %.not.i.i.i.i.i = icmp eq ptr %i.md, %i.me
  br i1 %.not.i.i.i.i.i, label %.noexc138.thread, label %bb.cr

.noexc138.thread:                                 ; preds = %bb.cq
  %i.mi = getelementptr inbounds nuw i8, ptr %22, i64 8
  %i.mj = getelementptr inbounds nuw i8, ptr null, i64 %i.mh
  %i.mk = getelementptr inbounds nuw i8, ptr %22, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  store ptr %i.mj, ptr %i.mk, align 8, !tbaa !492
  br label %.loopexit

bb.cr:                                            ; preds = %bb.cq
  %i.ml = icmp ugt i64 %i.mh, 9223372036854775800
  br i1 %i.ml, label %.noexc.i.i.i, label %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i, !prof !120

.noexc.i.i.i:                                     ; preds = %bb.cr
  invoke void @_ZSt28__throw_bad_array_new_lengthv() #24
          to label %.noexc137 unwind label %bb.cy

.noexc137:                                        ; preds = %.noexc.i.i.i
  unreachable

_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i: ; preds = %bb.cr
  %i.mm = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.mh) #26
          to label %.noexc138 unwind label %bb.cy ; 7 uses

.noexc138:                                        ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i
  store ptr %i.mm, ptr %22, align 8, !tbaa !201
  %i.mn = getelementptr inbounds nuw i8, ptr %22, i64 8 ; 3 uses
  store ptr %i.mm, ptr %i.mn, align 8, !tbaa !198
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mm, i64 %i.mh
  %i.mp = getelementptr inbounds nuw i8, ptr %22, i64 16
  store ptr %i.mo, ptr %i.mp, align 8, !tbaa !492
  %24 = sub i64 %i.mf, %i.mg
  %25 = add i64 %24, -8                           ; 2 uses
  %i.mq = lshr i64 %25, 3
  %i.mr = add nuw nsw i64 %i.mq, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %25, 56
  %i.ms = ptrtoaddr ptr %i.mm to i64
  %i.mt = sub i64 %i.ms, %i.mg
  %diff.check = icmp ult i64 %i.mt, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.noexc138
  %n.vec = and i64 %i.mr, 4611686018427387900     ; 3 uses
  %i.mu = shl i64 %n.vec, 3                       ; 2 uses
  %i.mv = getelementptr i8, ptr %i.mm, i64 %i.mu  ; 2 uses
  %i.mw = getelementptr i8, ptr %i.me, i64 %i.mu
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.mx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.mm, i64 %i.mx ; 2 uses
  %next.gep307 = getelementptr i8, ptr %i.me, i64 %i.mx ; 2 uses
  %i.my = getelementptr i8, ptr %next.gep307, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep307, align 8
  %wide.load308 = load <2 x i64>, ptr %i.my, align 8
  %i.mz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8
  store <2 x i64> %wide.load308, ptr %i.mz, align 8
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.na = icmp eq i64 %index.next, %n.vec
  br i1 %i.na, label %middle.block, label %vector.body, !llvm.loop !951

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.mr, %n.vec
  br i1 %cmp.n, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc138, %middle.block
  %.09.i.i.i.i.i.i.ph = phi ptr [ %i.mm, %.noexc138 ], [ %i.mv, %middle.block ]
  %.sroa.04.08.i.i.i.i.i.i.ph = phi ptr [ %i.me, %.noexc138 ], [ %i.mw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi ptr [ %i.nd, %.lr.ph.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.04.08.i.i.i.i.i.i = phi ptr [ %i.nc, %.lr.ph.i.i.i.i.i.i ], [ %.sroa.04.08.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.nb = load i64, ptr %.sroa.04.08.i.i.i.i.i.i, align 8
  store i64 %i.nb, ptr %.09.i.i.i.i.i.i, align 8
  %i.nc = getelementptr inbounds nuw i8, ptr %.sroa.04.08.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %.09.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i136 = icmp eq ptr %i.nc, %i.md
  br i1 %.not.i.i.i.i.i.i136, label %.loopexit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !952

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc138.thread
  %i.ne = phi ptr [ %i.mi, %.noexc138.thread ], [ %i.mn, %middle.block ], [ %i.mn, %.lr.ph.i.i.i.i.i.i ]
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ null, %.noexc138.thread ], [ %i.mv, %middle.block ], [ %i.nd, %.lr.ph.i.i.i.i.i.i ]
  store ptr %.0.lcssa.i.i.i.i.i.i, ptr %i.ne, align 8, !tbaa !198
  invoke void @_ZN6duckdb11OrderBinderC1ENS_6vectorISt17reference_wrapperINS_6BinderEELb1ESaIS4_EEERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull %22, ptr noundef nonnull align 8 dereferenceable(328) %19)
          to label %bb.cs unwind label %bb.cz

bb.cs:                                            ; preds = %.loopexit
  %i.nf = load ptr, ptr %22, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i139 = icmp eq ptr %i.nf, null
  br i1 %.not.i.i.i139, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  call void @_ZdlPv(ptr noundef nonnull %i.nf) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit: ; preds = %bb.cs, %bb.ct
  invoke void @_ZN6duckdb6Binder16PrepareModifiersERNS_11OrderBinderERNS_9QueryNodeERNS_14BoundQueryNodeE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(72) %21, ptr noundef nonnull align 8 dereferenceable(120) %2, ptr noundef nonnull align 8 dereferenceable(80) %6)
          to label %bb.cu unwind label %bb.db

bb.cu:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit
  %i.ng = getelementptr inbounds nuw i8, ptr %21, i64 40
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !103 ; 2 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %21, i64 56
  %i.nj = icmp eq ptr %i.nh, %i.ni
  br i1 %i.nj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.cu
  call void @_ZdlPv(ptr noundef %i.nh) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.cu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.nk = load ptr, ptr %21, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i.i140 = icmp eq ptr %i.nk, null
  br i1 %.not.i.i.i.i140, label %_ZN6duckdb11OrderBinderD2Ev.exit, label %bb.cv

bb.cv:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.nk) #25
  br label %_ZN6duckdb11OrderBinderD2Ev.exit

_ZN6duckdb11OrderBinderD2Ev.exit:                 ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %bb.cv
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  %.not.i.i.i141 = icmp eq ptr %i.me, null
  br i1 %.not.i.i.i141, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142, label %bb.cw

bb.cw:                                            ; preds = %_ZN6duckdb11OrderBinderD2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %i.me) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142: ; preds = %_ZN6duckdb11OrderBinderD2Ev.exit, %bb.cw
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.dd

bb.cx:                                            ; preds = %bb.cc
  %i.nl = landingpad { ptr, i32 }
          cleanup
  br label %.body134

bb.cy:                                            ; preds = %_ZNSt15__new_allocatorISt17reference_wrapperIN6duckdb6BinderEEE8allocateEmPKv.exit.i.i.i.i.i, %.noexc.i.i.i
  %i.nm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144

bb.cz:                                            ; preds = %.loopexit
  %i.nn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.no = load ptr, ptr %22, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i143 = icmp eq ptr %i.no, null
  br i1 %.not.i.i.i143, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144, label %bb.da

bb.da:                                            ; preds = %bb.cz
  call void @_ZdlPv(ptr noundef nonnull %i.no) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144

bb.db:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit
  %i.np = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11OrderBinderD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %21) #23
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144: ; preds = %bb.da, %bb.cz, %bb.db, %bb.cy
  %.pn75 = phi { ptr, i32 } [ %i.np, %bb.db ], [ %i.nm, %bb.cy ], [ %i.nn, %bb.cz ], [ %i.nn, %bb.da ]
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %.body134

.body134:                                         ; preds = %bb.cx, %_ZNSt6vectorImSaImEED2Ev.exit11.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144
  %.pn75.pn = phi { ptr, i32 } [ %.pn75, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit144 ], [ %i.nl, %bb.cx ], [ %.pn.i, %_ZNSt6vectorImSaImEED2Ev.exit11.i ]
  %i.nq = load ptr, ptr %20, align 8, !tbaa !201  ; 2 uses
  %.not.i.i.i145 = icmp eq ptr %i.nq, null
  br i1 %.not.i.i.i145, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit146, label %bb.dc

bb.dc:                                            ; preds = %.body134
  call void @_ZdlPv(ptr noundef nonnull %i.nq) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit146

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit146: ; preds = %.body134, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.ds

bb.dd:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EED2Ev.exit142, %bb.cb
  %i.nr = load i64, ptr %i.m, align 8, !tbaa !931
  %i.ns = getelementptr inbounds nuw i8, ptr %6, i64 32 ; 2 uses
  %i.nt = getelementptr inbounds nuw i8, ptr %6, i64 56 ; 2 uses
  invoke void @_ZN6duckdb6Binder13BindModifiersERNS_14BoundQueryNodeEmRKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS9_EEERKNS3_INS_11LogicalTypeELb1ESaISE_EEERKNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(80) %6, i64 noundef %i.nr, ptr noundef nonnull align 8 dereferenceable(24) %i.ns, ptr noundef nonnull align 8 dereferenceable(24) %i.nt, ptr noundef nonnull align 8 dereferenceable(328) %19)
          to label %bb.de unwind label %bb.do

bb.de:                                            ; preds = %bb.dd
  %i.nu = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.nu, i8 0, i64 72, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %0, i8 0, i64 57, i1 false)
  %i.nv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.nw = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.nv, ptr noundef nonnull align 8 dereferenceable(24) %i.nt)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.dp ; 0 uses

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %bb.de
  %i.nx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ny = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.nx, ptr noundef nonnull align 8 dereferenceable(24) %i.ns)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit149 unwind label %bb.dp ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit149: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  invoke void @_ZN6duckdb6Binder10CreatePlanERNS_21BoundSetOperationNodeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.635") align 8 %23, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(144) %6)
          to label %bb.df unwind label %bb.dq

bb.df:                                            ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit149
  %i.nz = load ptr, ptr %23, align 8, !tbaa !360
  %i.oa = load ptr, ptr %0, align 8, !tbaa !360   ; 3 uses
  store ptr %i.nz, ptr %0, align 8, !tbaa !360
  %.not.i.i.i.i.i150 = icmp eq ptr %i.oa, null
  br i1 %.not.i.i.i.i.i150, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i: ; preds = %bb.df
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !10
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.oa) #23, !inline_history !658
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %23) #23
  %i.oe = load i8, ptr %i.h, align 8, !tbaa !919
  %i.of = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i8 %i.oe, ptr %i.of, align 8, !tbaa !812
  %i.og = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.oh = load ptr, ptr %i.og, align 8, !tbaa !663 ; 4 uses
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.oj = load ptr, ptr %i.oi, align 8, !tbaa !664 ; 2 uses
  %i.ok = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ol = load <2 x ptr>, ptr %i.g, align 8, !tbaa !387
  store <2 x ptr> %i.ol, ptr %i.og, align 8, !tbaa !387
end_hunk_11
begin_hunk_12_@_ZN6duckdb6Binder8BindNodeERNS_9QueryNodeE:bb.a
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.av, !llvm.loop !971

bb.bq:                                            ; preds = %bb.ax, %bb.aw
  %i.hz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bu

bb.br:                                            ; preds = %bb.bd
  %i.ia = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %13) #23
  br label %.body

.body:                                            ; preds = %bb.bb, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i, %bb.br
  %.pn = phi { ptr, i32 } [ %i.ia, %bb.br ], [ %i.fg, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i ], [ %i.fg, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i.i.i ], [ %.pn8.i.i.i, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  br label %bb.bu

bb.bs:                                            ; preds = %bb.av
  %i.ib = load ptr, ptr %4, align 8, !tbaa !967   ; 3 uses
  %i.ic = load ptr, ptr %i.cv, align 8, !tbaa !958 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.ib, %i.ic
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.bs, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.id, %.lr.ph.i.i.i ], [ %i.ib, %bb.bs ] ; 2 uses
  call void @_ZN6duckdb12BoundCTEDataD2Ev(ptr noundef nonnull align 8 dead_on_return(80) dereferenceable(80) %.05.i.i.i) #23
  %i.id = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i40 = icmp eq ptr %i.id, %i.ic
  br i1 %.not.i.i.i40, label %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !972

_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %4, align 8, !tbaa !967
  br label %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.bs
  %i.ie = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.ib, %bb.bs ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.ie, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev.exit, label %bb.bt

bb.bt:                                            ; preds = %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.ie) #25
  br label %_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb12BoundCTEDataES1_EvT_S3_RSaIT0_E.exit.i, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  ret void

bb.bu:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.bq, %.body, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.at, %bb.ao, %bb.ak, %bb.ag, %bb.ac
  %.pn32.pn = phi { ptr, i32 } [ %.pn3260, %bb.at ], [ %i.cr, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.co, %bb.ao ], [ %i.cf, %bb.ac ], [ %i.ci, %bb.ag ], [ %i.cl, %bb.ak ], [ %.pn, %.body ], [ %i.hz, %bb.bq ], [ %i.cr, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %0) #23
  br label %bb.bv

bb.bv:                                            ; preds = %bb.x, %bb.y, %bb.bu
  %.pn37.pn = phi { ptr, i32 } [ %.pn32.pn, %bb.bu ], [ %i.cc, %bb.y ], [ %.pn35, %bb.x ]
  call void @_ZNSt6vectorIN6duckdb12BoundCTEDataESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %.pn37.pn

bb.bw:                                            ; preds = %bb.ar
  unreachable
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(120) ptr @_ZNK6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !973    ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i
  %.pn9.i = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %.pn8.i = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i ], [ %.pn9.i, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i ]
  resume { ptr, i32 } %.pn8.i

bb.h:                                             ; preds = %bb.d
  unreachable

_ZN6duckdb10unique_ptrINS_9QueryNodeESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit: ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL18GatherSetOpBindersERNS_6vectorINS_14BoundStatementELb1ESaIS1_EEERNS0_INS_10shared_ptrINS_6BinderELb1EEELb1ESaIS7_EEERNS0_ISt17reference_wrapperIS6_ELb1ESaISC_EEE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !385    ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !385  ; 2 uses
  %.not21 = icmp eq ptr %i.a, %i.c
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  br label %bb.b

._crit_edge:                                      ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit, %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !387    ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !387  ; 2 uses
  %.not2023 = icmp eq ptr %i.f, %i.h
  br i1 %.not2023, label %._crit_edge27, label %.lr.ph26

bb.b:                                             ; preds = %.lr.ph, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit
  %.sroa.017.022 = phi ptr [ %i.a, %.lr.ph ], [ %i.as, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit ] ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.017.022) ; 2 uses
  %i.j = load ptr, ptr %i.d, align 8, !tbaa !198  ; 5 uses
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !492
  %.not.i.i = icmp eq ptr %i.j, %i.k
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = ptrtoint ptr %i.i to i64
  store i64 %i.l, ptr %i.j, align 8
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !198
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.n, ptr %i.d, align 8, !tbaa !198
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit

bb.d:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %2, align 8, !tbaa !201    ; 7 uses
  %i.p = ptrtoint ptr %i.j to i64                 ; 2 uses
  %i.q = ptrtoint ptr %i.o to i64                 ; 3 uses
  %i.r = sub i64 %i.p, %i.q                       ; 3 uses
  %i.s = icmp eq i64 %i.r, 9223372036854775800
  br i1 %i.s, label %bb.e, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.t = ashr exact i64 %i.r, 3                   ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.t, i64 1)
  %i.u = add nsw i64 %.sroa.speculated.i.i.i.i, %i.t ; 2 uses
  %i.v = icmp ult i64 %i.u, %i.t
  %i.w = tail call i64 @llvm.umin.i64(i64 %i.u, i64 1152921504606846975)
  %i.x = select i1 %i.v, i64 1152921504606846975, i64 %i.w ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.x, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.y = shl nuw nsw i64 %i.x, 3
  %i.z = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.y) #26 ; 8 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.r
  %i.ab = ptrtoint ptr %i.i to i64
  store i64 %i.ab, ptr %i.aa, align 8
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.o, %i.j
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ac = ptrtoaddr ptr %i.z to i64
  %3 = sub i64 %i.p, %i.q
  %4 = add i64 %3, -8                             ; 2 uses
  %i.ad = lshr i64 %4, 3
  %i.ae = add nuw nsw i64 %i.ad, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 24
  %i.af = sub i64 %i.ac, %i.q
  %diff.check = icmp ult i64 %i.af, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.i.preheader38, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.ae, 4611686018427387900     ; 3 uses
  %i.ag = shl i64 %n.vec, 3                       ; 2 uses
  %i.ah = getelementptr i8, ptr %i.z, i64 %i.ag   ; 2 uses
  %i.ai = getelementptr i8, ptr %i.o, i64 %i.ag
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.aj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.z, i64 %i.aj ; 2 uses
  %next.gep35 = getelementptr i8, ptr %i.o, i64 %i.aj ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.ak = getelementptr i8, ptr %next.gep35, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep35, align 8, !alias.scope !978, !noalias !975
  %wide.load36 = load <2 x i64>, ptr %i.ak, align 8, !alias.scope !978, !noalias !975
  %i.al = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !975, !noalias !978
  store <2 x i64> %wide.load36, ptr %i.al, align 8, !alias.scope !975, !noalias !978
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.am = icmp eq i64 %index.next, %n.vec
  br i1 %i.am, label %middle.block, label %vector.body, !llvm.loop !980

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ae, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader38

.lr.ph.i.i.i.i.i.i.i.preheader38:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.z, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ah, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.ai, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader38, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader38 ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !975)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !978)
  %i.an = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !alias.scope !978, !noalias !975
  store i64 %i.an, ptr %.012.i.i.i.i.i.i.i, align 8, !alias.scope !975, !noalias !978
  %i.ao = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ao, %i.j
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !981

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.z, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i.i ], [ %i.ah, %middle.block ], [ %i.ap, %.lr.ph.i.i.i.i.i.i.i ]
  %i.aq = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.o) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i: ; preds = %bb.f, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i.i
  store ptr %i.z, ptr %2, align 8, !tbaa !201
  store ptr %i.aq, ptr %i.d, align 8, !tbaa !198
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.x
  store ptr %i.ar, ptr %i.e, align 8, !tbaa !492
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE9push_backEOS3_.exit: ; preds = %bb.c, %_ZNSt6vectorISt17reference_wrapperIN6duckdb6BinderEESaIS3_EE17_M_realloc_insertIJS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.017.022, i64 16 ; 2 uses
  %.not = icmp eq ptr %i.as, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge27:                                    ; preds = %.lr.ph26, %._crit_edge
  ret void

.lr.ph26:                                         ; preds = %._crit_edge, %.lr.ph26
  %.sroa.011.024 = phi ptr [ %i.av, %.lr.ph26 ], [ %i.f, %._crit_edge ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 64
  tail call fastcc void @_ZN6duckdbL18GatherSetOpBindersERNS_6vectorINS_14BoundStatementELb1ESaIS1_EEERNS0_INS_10shared_ptrINS_6BinderELb1EEELb1ESaIS7_EEERNS0_ISt17reference_wrapperIS6_ELb1ESaISC_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.at, ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.011.024, i64 136 ; 2 uses
  %.not20 = icmp eq ptr %i.av, %i.h
  br i1 %.not20, label %._crit_edge27, label %.lr.ph26
}

declare void @_ZN6duckdb11OrderBinderC1ENS_6vectorISt17reference_wrapperINS_6BinderEELb1ESaIS4_EEERNS_15SelectBindStateE(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef, ptr noundef nonnull align 8 dereferenceable(328)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb6Binder10CreatePlanERNS_21BoundSetOperationNodeE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.duckdb::unique_ptr.635") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(144) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.duckdb::vector.818", align 8 ; 9 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %5 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %6 = alloca %"class.duckdb::vector.818", align 8 ; 10 uses
  %7 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 5 uses
  %8 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %9 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 80
  %i.b = load i8, ptr %i.a, align 8, !tbaa !927
  %switch.tableidx = add i8 %i.b, -1              ; 2 uses
  %i.c = icmp ult i8 %switch.tableidx, 4
  br i1 %i.c, label %switch.lookup, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %4, ptr noundef nonnull @.str.39, ptr noundef nonnull align 1 dereferenceable(1) %5)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %4)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.d, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.ac unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.027 = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.f = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.g = load ptr, ptr %4, align 8, !tbaa !103    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.027, label %bb.f, label %bb.ab

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br i1 %.027, label %bb.f, label %bb.ab

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn3575 = phi { ptr, i32 } [ %i.e, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.d) #23
  br label %bb.ab

switch.lookup:                                    ; preds = %bb.a
  %i.j = shl nuw nsw i8 %switch.tableidx, 3
  %switch.shiftamt = zext nneg i8 %i.j to i32
  %switch.downshift = lshr i32 1263357003, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 88 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 96 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !664
  %i.n = load ptr, ptr %i.k, align 8, !tbaa !663
  %.not = icmp eq ptr %i.m, %i.n
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %switch.lookup
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 16
  br label %bb.j

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49, %switch.lookup
  %i.t = phi ptr [ null, %switch.lookup ], [ %i.da, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ]
  %i.u = phi ptr [ null, %switch.lookup ], [ %i.db, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ]
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !300
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !303
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.z = invoke noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #26
          to label %.noexc unwind label %bb.z     ; 3 uses

.noexc:                                           ; preds = %._crit_edge
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 81
  %i.ab = ptrtoint ptr %i.x to i64
  %i.ac = ptrtoint ptr %i.y to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = sdiv exact i64 %i.ad, 24
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 136
  %i.ag = load i64, ptr %i.af, align 8, !tbaa !112, !noalias !982
  %i.ah = load ptr, ptr %6, align 8, !tbaa !898, !noalias !982
  store ptr %i.ah, ptr %3, align 8, !tbaa !898, !noalias !982
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %i.u, ptr %i.ai, align 8, !tbaa !896, !noalias !982
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 16
  store ptr %i.t, ptr %i.aj, align 8, !tbaa !897, !noalias !982
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 24, i1 false), !noalias !982
  %i.ak = load i8, ptr %i.aa, align 1, !tbaa !985, !range !111, !noalias !982, !noundef !88
  %i.al = trunc nuw i8 %i.ak to i1
  invoke void @_ZN6duckdb19LogicalSetOperationC1EmmNS_6vectorINS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEENS_19LogicalOperatorTypeEbb(ptr noundef nonnull align 8 dereferenceable(122) %i.z, i64 noundef %i.ag, i64 noundef %i.ae, ptr noundef nonnull %3, i8 noundef zeroext %switch.masked, i1 noundef zeroext %i.al, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.i, !noalias !982

bb.g:                                             ; preds = %.noexc
  %i.am = load ptr, ptr %3, align 8, !tbaa !898, !noalias !982 ; 3 uses
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !896, !noalias !982 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.am, %i.an
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.g, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.as, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.am, %bb.g ] ; 2 uses
  %i.ao = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !360, !noalias !982 ; 3 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ao, null
  br i1 %.not.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !10, !noalias !982
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !982
  call void %i.ar(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ao) #23, !noalias !982, !inline_history !986
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.as, %i.an
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !987

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %3, align 8, !tbaa !898, !noalias !982
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.g
  %i.at = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.am, %bb.g ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.at, null
  br i1 %.not.i.i1.i.i, label %bb.x, label %bb.h

bb.h:                                             ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.at) #25, !noalias !982
  br label %bb.x

bb.i:                                             ; preds = %.noexc
  %i.au = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %3) #23, !noalias !982
  call void @_ZdlPv(ptr noundef nonnull %i.z) #25, !noalias !982
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

bb.j:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49
  %i.av = phi ptr [ null, %.lr.ph ], [ %i.cz, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ] ; 11 uses
  %i.aw = phi ptr [ null, %.lr.ph ], [ %i.da, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ] ; 5 uses
  %i.ax = phi ptr [ null, %.lr.ph ], [ %i.db, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ] ; 3 uses
  %.02682 = phi i64 [ 0, %.lr.ph ], [ %i.dc, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49 ] ; 3 uses
  %i.ay = invoke noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb6vectorINS_14BoundStatementELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 noundef %.02682)
          to label %bb.k unwind label %bb.o       ; 3 uses

bb.k:                                             ; preds = %bb.j
  %i.az = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_10shared_ptrINS_6BinderELb1EEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 noundef %.02682)
          to label %bb.l unwind label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.ba = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %i.az)
          to label %bb.m unwind label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.bb = load i64, ptr %i.ay, align 8, !tbaa !360
  store ptr null, ptr %i.ay, align 8, !tbaa !360
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #23
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store i64 %i.bb, ptr %8, align 8, !tbaa !360
  invoke void @_ZN6duckdb6Binder26CastLogicalOperatorToTypesERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES6_NS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.635") align 8 %7, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull %8)
          to label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit unwind label %bb.q

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.m
  %i.bd = load ptr, ptr %7, align 8, !tbaa !360   ; 5 uses
  %i.be = load ptr, ptr %8, align 8, !tbaa !360   ; 3 uses
  %.not.i38 = icmp eq ptr %i.be, null
  br i1 %.not.i38, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit40, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i39

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i39: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !10
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8
  call void %i.bh(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.be) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit40

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit40: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i39
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ba, i64 328
  %i.bj = load i8, ptr %i.bi, align 8, !tbaa !988, !range !111, !noundef !88
  %i.bk = trunc nuw i8 %i.bj to i1
  br i1 %i.bk, label %bb.n, label %bb.r

bb.n:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit40
  store i8 1, ptr %i.q, align 8, !tbaa !988
  br label %bb.r

bb.o:                                             ; preds = %bb.j
  %i.bl = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

bb.p:                                             ; preds = %bb.l, %bb.k
  %i.bm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

bb.q:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  %i.bo = load ptr, ptr %8, align 8, !tbaa !360   ; 3 uses
  %.not.i41 = icmp eq ptr %i.bo, null
  br i1 %.not.i41, label %.thread, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i42

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i42: ; preds = %bb.q
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !10
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 8
  %i.br = load ptr, ptr %i.bq, align 8
  call void %i.br(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bo) #23, !inline_history !659
  br label %.thread

.thread:                                          ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i42, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #23
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

bb.r:                                             ; preds = %bb.n, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit40
  %.not.i.i = icmp eq ptr %i.ax, %i.aw
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bs = ptrtoint ptr %i.bd to i64
  store i64 %i.bs, ptr %i.ax, align 8, !tbaa !360
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  store ptr %i.bt, ptr %i.r, align 8, !tbaa !896
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49

bb.t:                                             ; preds = %bb.r
  %i.bu = ptrtoint ptr %i.aw to i64               ; 3 uses
  %i.bv = ptrtoint ptr %i.av to i64               ; 3 uses
  %i.bw = sub i64 %i.bu, %i.bv                    ; 3 uses
  %i.bx = icmp eq i64 %i.bw, 9223372036854775800
  br i1 %i.bx, label %bb.u, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.u:                                             ; preds = %bb.t
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc45 unwind label %.loopexit.split-lp

.noexc45:                                         ; preds = %bb.u
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.t
  %i.by = ashr exact i64 %i.bw, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.by, i64 1)
  %i.bz = add nsw i64 %.sroa.speculated.i.i.i.i, %i.by ; 2 uses
  %i.ca = icmp ult i64 %i.bz, %i.by
  %i.cb = call i64 @llvm.umin.i64(i64 %i.bz, i64 1152921504606846975)
  %i.cc = select i1 %i.ca, i64 1152921504606846975, i64 %i.cb ; 3 uses
  %.not.i.i.i.i44 = icmp ne i64 %i.cc, 0
  call void @llvm.assume(i1 %.not.i.i.i.i44)
  %i.cd = shl nuw nsw i64 %i.cc, 3
  %i.ce = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.cd) #26
          to label %.noexc46 unwind label %.loopexit ; 11 uses

.noexc46:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 %i.bw
  %i.cg = ptrtoint ptr %i.bd to i64
  store i64 %i.cg, ptr %i.cf, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.av, %i.aw
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc46
  %10 = sub i64 %i.bu, %i.bv
  %11 = add i64 %10, -8                           ; 2 uses
  %i.ch = lshr i64 %11, 3
  %i.ci = add nuw nsw i64 %i.ch, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %11, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader121, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.ce, i64 8
  %i.cj = add i64 %i.bu, -8
  %i.ck = sub i64 %i.cj, %i.bv
  %i.cl = and i64 %i.ck, -8                       ; 2 uses
  %scevgep115 = getelementptr i8, ptr %scevgep, i64 %i.cl
  %scevgep116 = getelementptr i8, ptr %i.av, i64 8
  %scevgep117 = getelementptr i8, ptr %scevgep116, i64 %i.cl
  %bound0 = icmp ult ptr %i.ce, %scevgep117
  %bound1 = icmp ult ptr %i.av, %scevgep115
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader121, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ci, 4611686018427387900     ; 3 uses
  %i.cm = shl i64 %n.vec, 3                       ; 2 uses
  %i.cn = getelementptr i8, ptr %i.ce, i64 %i.cm  ; 2 uses
  %i.co = getelementptr i8, ptr %i.av, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cp = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ce, i64 %i.cp ; 2 uses
  %next.gep118 = getelementptr i8, ptr %i.av, i64 %i.cp ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.cq = getelementptr i8, ptr %next.gep118, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep118, align 8, !tbaa !360, !alias.scope !994, !noalias !989
  %wide.load119 = load <2 x i64>, ptr %i.cq, align 8, !tbaa !360, !alias.scope !994, !noalias !989
  %i.cr = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !360, !alias.scope !997, !noalias !994
  store <2 x i64> %wide.load119, ptr %i.cr, align 8, !tbaa !360, !alias.scope !997, !noalias !994
  %i.cs = getelementptr i8, ptr %next.gep118, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep118, align 8, !tbaa !360, !alias.scope !994, !noalias !989
  store <2 x ptr> splat (ptr null), ptr %i.cs, align 8, !tbaa !360, !alias.scope !994, !noalias !989
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ct = icmp eq i64 %index.next, %n.vec
  br i1 %i.ct, label %middle.block, label %vector.body, !llvm.loop !999

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ci, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader121

.lr.ph.i.i.i.i.i.i.i.preheader121:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.ce, %vector.memcheck ], [ %i.ce, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.cn, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.av, %vector.memcheck ], [ %i.av, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.co, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader121, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader121 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.cv, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader121 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !989)
  call void @llvm.experimental.noalias.scope.decl(metadata !992)
  %i.cu = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !992, !noalias !989
  store i64 %i.cu, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !989, !noalias !992
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !992, !noalias !989
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.cv, %i.aw
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1000

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc46
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.ce, %.noexc46 ], [ %i.cn, %middle.block ], [ %i.cw, %.lr.ph.i.i.i.i.i.i.i ]
  %i.cx = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.av, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.v

bb.v:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.av) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.v, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.ce, ptr %6, align 8, !tbaa !898
  store ptr %i.cx, ptr %i.r, align 8, !tbaa !896
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.ce, i64 %i.cc ; 2 uses
  store ptr %i.cy, ptr %i.s, align 8, !tbaa !897
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit49: ; preds = %bb.s, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.cz = phi ptr [ %i.av, %bb.s ], [ %i.ce, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.da = phi ptr [ %i.aw, %bb.s ], [ %i.cy, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.db = phi ptr [ %i.bt, %bb.s ], [ %i.cx, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.dc = add nuw i64 %.02682, 1                  ; 2 uses
  %i.dd = load ptr, ptr %i.l, align 8, !tbaa !664
  %i.de = load ptr, ptr %i.k, align 8, !tbaa !663
  %i.df = ptrtoint ptr %i.dd to i64
  %i.dg = ptrtoint ptr %i.de to i64
  %i.dh = sub i64 %i.df, %i.dg
  %i.di = sdiv exact i64 %i.dh, 136
  %i.dj = icmp ult i64 %i.dc, %i.di
  br i1 %i.dj, label %bb.j, label %._crit_edge, !llvm.loop !1001

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

.loopexit.split-lp:                               ; preds = %bb.u
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.w:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i50 = icmp eq ptr %i.bd, null
  br i1 %.not.i50, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51: ; preds = %bb.w
  %i.dk = load ptr, ptr %i.bd, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.bd) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

bb.x:                                             ; preds = %bb.h, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store ptr %i.z, ptr %9, align 8, !tbaa !1002
  invoke void @_ZN6duckdb6Binder14VisitQueryNodeERNS_14BoundQueryNodeENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS4_ELb1EEE(ptr dead_on_unwind writable sret(%"class.duckdb::unique_ptr.635") align 8 %0, ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(80) %2, ptr noundef nonnull %9)
          to label %bb.y unwind label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.dn = load ptr, ptr %9, align 8, !tbaa !360   ; 3 uses
  %.not.i53 = icmp eq ptr %i.dn, null
  br i1 %.not.i53, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i54

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i54: ; preds = %bb.y
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 8
  %i.dq = load ptr, ptr %i.dp, align 8
  call void %i.dq(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.dn) #23, !inline_history !659
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i54, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  ret void

bb.z:                                             ; preds = %._crit_edge
  %i.dr = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

bb.aa:                                            ; preds = %bb.x
  %i.ds = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dt = load ptr, ptr %9, align 8, !tbaa !360   ; 3 uses
  %.not.i59 = icmp eq ptr %i.dt, null
  br i1 %.not.i59, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i60

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i60: ; preds = %bb.aa
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !10
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.dt) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52: ; preds = %bb.i, %bb.z, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i60, %bb.aa, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51, %bb.w, %.thread, %bb.o, %bb.p
  %.pn30.pn.pn.pn = phi { ptr, i32 } [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i51 ], [ %i.bl, %bb.o ], [ %i.bm, %bb.p ], [ %i.bn, %.thread ], [ %lpad.phi, %bb.w ], [ %i.au, %bb.i ], [ %i.dr, %bb.z ], [ %i.ds, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i60 ], [ %i.ds, %bb.aa ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.ab

bb.ab:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52
  %.pn35.pn = phi { ptr, i32 } [ %.pn3575, %bb.f ], [ %i.f, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn30.pn.pn.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit52 ], [ %i.f, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn35.pn

bb.ac:                                            ; preds = %bb.d
  unreachable
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb15SelectBindStateD2Ev(ptr noundef nonnull align 8 dead_on_return(328) dereferenceable(328) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !738  ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorImSaImEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25
  br label %_ZNSt6vectorImSaImEED2Ev.exit

_ZNSt6vectorImSaImEED2Ev.exit:                    ; preds = %bb.a, %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !490  ; 2 uses
  %.not5.i.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not5.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZNSt6vectorImSaImEED2Ev.exit, %.lr.ph.i.i.i.i
  %.06.i.i.i.i = phi ptr [ %i.f, %.lr.ph.i.i.i.i ], [ %i.e, %_ZNSt6vectorImSaImEED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %.06.i.i.i.i, align 8, !tbaa !130 ; 2 uses
  tail call void @_ZdlPv(ptr noundef nonnull %.06.i.i.i.i) #25
  %.not.i.i.i.i = icmp eq ptr %i.f, null
  br i1 %.not.i.i.i.i, label %_ZNSt10_HashtableImmSaImENSt8__detail9_IdentityESt8equal_toImESt4hashImENS1_18_Mod_range_hashingENS1_20_Default_ranged_hashENS1_20_Prime_rehash_policyENS1_17_Hashtable_traitsILb0ELb1ELb1EEEE5clearEv.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !491
end_hunk_12
begin_hunk_13_@_ZN6duckdb6Binder8BindNodeERNS_16RecursiveCTENodeE:bb.a
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %11, align 8, !tbaa !103  ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.ct
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i161: ; preds = %bb.az
  call void @_ZdlPv(ptr noundef %i.ig) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit163

bb.ba:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit130
  %i.ii = landingpad { ptr, i32 }
          cleanup
  br label %bb.ff

bb.bb:                                            ; preds = %_ZN6duckdb12BindingAliasC2EOS0_.exit
  %i.ij = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %12) #23
  br label %bb.ff

bb.bc:                                            ; preds = %.noexc.i137
  %i.ik = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

bb.bd:                                            ; preds = %bb.am
  %i.il = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.im = load ptr, ptr %15, align 8, !tbaa !103  ; 2 uses
  %i.in = icmp eq ptr %i.im, %i.fh
  br i1 %i.in, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164: ; preds = %bb.bd
  call void @_ZdlPv(ptr noundef %i.im) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166: ; preds = %bb.bd, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164, %bb.bc
  %.pn76 = phi { ptr, i32 } [ %i.ik, %bb.bc ], [ %i.il, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i164 ], [ %i.il, %bb.bd ] ; 2 uses
  %i.io = load ptr, ptr %14, align 8, !tbaa !103  ; 2 uses
  %i.ip = icmp eq ptr %i.io, %i.fe
  br i1 %i.ip, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i167: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit166
  call void @_ZdlPv(ptr noundef %i.io) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit169

bb.be:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit145
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fe

bb.bf:                                            ; preds = %_ZN6duckdb12BindingAliasC2EOS0_.exit151
  %i.ir = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %16) #23
  br label %bb.fe

bb.bg:                                            ; preds = %bb.au, %bb.at, %_ZN6duckdb12BindingAliasD2Ev.exit160
  %i.is = landingpad { ptr, i32 }
          cleanup
  br label %bb.fd

bb.bh:                                            ; preds = %bb.av
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

.lr.ph352:                                        ; preds = %bb.aw, %bb.bj
  %.sroa.0327.0351 = phi ptr [ %i.iv, %bb.bj ], [ %i.hz, %bb.aw ] ; 2 uses
  %i.iu = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bi unwind label %bb.bk

bb.bi:                                            ; preds = %.lr.ph352
  invoke void @_ZN6duckdb6Binder19AddCorrelatedColumnERKNS_20CorrelatedColumnInfoE(ptr noundef nonnull align 8 dereferenceable(472) %i.iu, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.0327.0351)
          to label %bb.bj unwind label %bb.bk

bb.bj:                                            ; preds = %bb.bi
  %i.iv = getelementptr inbounds nuw i8, ptr %.sroa.0327.0351, i64 80 ; 2 uses
  %.not345 = icmp eq ptr %i.iv, %i.ib
  br i1 %.not345, label %._crit_edge, label %.lr.ph352

bb.bk:                                            ; preds = %bb.bi, %.lr.ph352
  %i.iw = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.bl:                                            ; preds = %._crit_edge
  invoke void @_ZN6duckdb6Binder25MoveCorrelatedExpressionsERS0_(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(472) %i.ic)
          to label %bb.bm unwind label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  %i.ix = invoke noundef nonnull align 8 dereferenceable(472) ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.bn unwind label %bb.bq

bb.bn:                                            ; preds = %bb.bm
  invoke void @_ZN6duckdb6Binder25MoveCorrelatedExpressionsERS0_(ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(472) %i.ix)
          to label %bb.bo unwind label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #23
  %i.iy = load ptr, ptr %i.bd, align 8, !tbaa !15, !nonnull !88, !align !89
  invoke void @_ZN6duckdb16ExpressionBinderC1ERNS_6BinderERNS_13ClientContextEb(ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull align 8 dereferenceable(472) %1, ptr noundef nonnull align 8 dereferenceable(512) %i.iy, i1 noundef zeroext false)
          to label %bb.bp unwind label %bb.br

bb.bp:                                            ; preds = %bb.bo
  %i.iz = load ptr, ptr %i.j, align 8, !tbaa !160 ; 2 uses
  %i.ja = load ptr, ptr %i.l, align 8, !tbaa !160 ; 2 uses
  %.not346353 = icmp eq ptr %i.iz, %i.ja
  br i1 %.not346353, label %._crit_edge357, label %.lr.ph356

.lr.ph356:                                        ; preds = %bb.bp
  %i.jb = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 3 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 2 uses
  br label %bb.bs

._crit_edge357:                                   ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, %bb.bp
  %i.jd = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !300
  %i.jf = load ptr, ptr %i.bj, align 8, !tbaa !303
  %i.jg = ptrtoint ptr %i.je to i64
  %i.jh = ptrtoint ptr %i.jf to i64
  %i.ji = sub i64 %i.jg, %i.jh
  %i.jj = getelementptr inbounds nuw i8, ptr %17, i64 8 ; 2 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.jl = load ptr, ptr %i.jk, align 8, !tbaa !300
  %i.jm = load ptr, ptr %i.jj, align 8, !tbaa !303
  %i.jn = ptrtoint ptr %i.jl to i64
  %i.jo = ptrtoint ptr %i.jm to i64
  %i.jp = sub i64 %i.jn, %i.jo
  %.not = icmp eq i64 %i.ji, %i.jp
  br i1 %.not, label %bb.ce, label %bb.bz

bb.bq:                                            ; preds = %bb.bn, %bb.bm, %bb.bl, %._crit_edge
  %i.jq = landingpad { ptr, i32 }
          cleanup
  br label %bb.fc

bb.br:                                            ; preds = %bb.bo
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %bb.fb

bb.bs:                                            ; preds = %.lr.ph356, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit
  %.sroa.0323.0354 = phi ptr [ %i.iz, %.lr.ph356 ], [ %i.lf, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %20) #23
  invoke void @_ZN6duckdb16ExpressionBinder4BindERNS_10unique_ptrINS_16ParsedExpressionESt14default_deleteIS2_ELb1EEENS_12optional_ptrINS_11LogicalTypeELb1EEEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %20, ptr noundef nonnull align 8 dereferenceable(104) %19, ptr noundef nonnull align 8 dereferenceable(8) %.sroa.0323.0354, ptr null, i1 noundef zeroext true)
          to label %bb.bt unwind label %bb.bx

bb.bt:                                            ; preds = %bb.bs
  %i.js = load ptr, ptr %i.jb, align 8, !tbaa !211 ; 6 uses
  %i.jt = load ptr, ptr %i.jc, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.js, %i.jt
  br i1 %.not.i.i, label %bb.bu, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread: ; preds = %bb.bt
  %i.ju = load i64, ptr %20, align 8, !tbaa !13
  store i64 %i.ju, ptr %i.js, align 8, !tbaa !13
  %i.jv = getelementptr inbounds nuw i8, ptr %i.js, i64 8
  store ptr %i.jv, ptr %i.jb, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

bb.bu:                                            ; preds = %bb.bt
  %i.jw = load ptr, ptr %18, align 8, !tbaa !213  ; 10 uses
  %i.jx = ptrtoint ptr %i.js to i64               ; 3 uses
  %i.jy = ptrtoint ptr %i.jw to i64               ; 3 uses
  %i.jz = sub i64 %i.jx, %i.jy                    ; 3 uses
  %i.ka = icmp eq i64 %i.jz, 9223372036854775800
  br i1 %i.ka, label %bb.bv, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.bv:                                            ; preds = %bb.bu
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc170 unwind label %.loopexit.split-lp

.noexc170:                                        ; preds = %bb.bv
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.bu
  %i.kb = ashr exact i64 %i.jz, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kb, i64 1)
  %i.kc = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kb ; 2 uses
  %i.kd = icmp ult i64 %i.kc, %i.kb
  %i.ke = call i64 @llvm.umin.i64(i64 %i.kc, i64 1152921504606846975)
  %i.kf = select i1 %i.kd, i64 1152921504606846975, i64 %i.ke ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.kf, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.kg = shl nuw nsw i64 %i.kf, 3
  %i.kh = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kg) #26
          to label %.noexc171 unwind label %.loopexit ; 10 uses

.noexc171:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 %i.jz
  %i.kj = load i64, ptr %20, align 8, !tbaa !13
  store i64 %i.kj, ptr %i.ki, align 8, !tbaa !13
  store ptr null, ptr %20, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.jw, %i.js
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc171
  %39 = sub i64 %i.jx, %i.jy
  %40 = add i64 %39, -8                           ; 2 uses
  %i.kk = lshr i64 %40, 3
  %i.kl = add nuw nsw i64 %i.kk, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %40, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader464, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.kh, i64 8
  %i.km = add i64 %i.jx, -8
  %i.kn = sub i64 %i.km, %i.jy
  %i.ko = and i64 %i.kn, -8                       ; 2 uses
  %scevgep458 = getelementptr i8, ptr %scevgep, i64 %i.ko
  %scevgep459 = getelementptr i8, ptr %i.jw, i64 8
  %scevgep460 = getelementptr i8, ptr %scevgep459, i64 %i.ko
  %bound0 = icmp ult ptr %i.kh, %scevgep460
  %bound1 = icmp ult ptr %i.jw, %scevgep458
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader464, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kl, 4611686018427387900     ; 3 uses
  %i.kp = shl i64 %n.vec, 3                       ; 2 uses
  %i.kq = getelementptr i8, ptr %i.kh, i64 %i.kp  ; 2 uses
  %i.kr = getelementptr i8, ptr %i.jw, i64 %i.kp
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.ks = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.kh, i64 %i.ks ; 2 uses
  %next.gep461 = getelementptr i8, ptr %i.jw, i64 %i.ks ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.kt = getelementptr i8, ptr %next.gep461, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep461, align 8, !tbaa !13, !alias.scope !1019, !noalias !1014
  %wide.load462 = load <2 x i64>, ptr %i.kt, align 8, !tbaa !13, !alias.scope !1019, !noalias !1014
  %i.ku = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !1022, !noalias !1019
  store <2 x i64> %wide.load462, ptr %i.ku, align 8, !tbaa !13, !alias.scope !1022, !noalias !1019
  %i.kv = getelementptr i8, ptr %next.gep461, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep461, align 8, !tbaa !13, !alias.scope !1019, !noalias !1014
  store <2 x ptr> splat (ptr null), ptr %i.kv, align 8, !tbaa !13, !alias.scope !1019, !noalias !1014
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.kw = icmp eq i64 %index.next, %n.vec
  br i1 %i.kw, label %middle.block, label %vector.body, !llvm.loop !1024

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kl, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader464

.lr.ph.i.i.i.i.i.i.i.preheader464:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.kh, %vector.memcheck ], [ %i.kh, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kq, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.jw, %vector.memcheck ], [ %i.jw, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kr, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader464, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.kz, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader464 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ky, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader464 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  call void @llvm.experimental.noalias.scope.decl(metadata !1017)
  %i.kx = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1017, !noalias !1014
  store i64 %i.kx, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1014, !noalias !1017
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1017, !noalias !1014
  %i.ky = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.kz = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.ky, %i.js
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1025

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc171
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.kh, %.noexc171 ], [ %i.kq, %middle.block ], [ %i.kz, %.lr.ph.i.i.i.i.i.i.i ]
  %i.la = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.jw, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, label %bb.bw

bb.bw:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jw) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, %bb.bw
  store ptr %i.kh, ptr %18, align 8, !tbaa !213
  store ptr %i.la, ptr %i.jb, align 8, !tbaa !211
  %i.lb = getelementptr inbounds nuw [8 x i8], ptr %i.kh, i64 %i.kf
  store ptr %i.lb, ptr %i.jc, align 8, !tbaa !212
  %.pr = load ptr, ptr %20, align 8, !tbaa !13    ; 3 uses
  %.not.i = icmp eq ptr %.pr, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.lc = load ptr, ptr %.pr, align 8, !tbaa !10
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 8
  %i.le = load ptr, ptr %i.ld, align 8
  call void %i.le(ptr noundef nonnull align 8 dereferenceable(88) %.pr) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  %i.lf = getelementptr inbounds nuw i8, ptr %.sroa.0323.0354, i64 8 ; 2 uses
  %.not346 = icmp eq ptr %i.lf, %i.ja
  br i1 %.not346, label %._crit_edge357, label %bb.bs

bb.bx:                                            ; preds = %bb.bs
  %i.lg = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit174

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

.loopexit.split-lp:                               ; preds = %bb.bv
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.by:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.lh = load ptr, ptr %20, align 8, !tbaa !13   ; 3 uses
  %.not.i172 = icmp eq ptr %i.lh, null
  br i1 %.not.i172, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit174, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i173

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i173: ; preds = %bb.by
  %i.li = load ptr, ptr %i.lh, align 8, !tbaa !10
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 8
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(88) %i.lh) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit174

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit174: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i173, %bb.by, %bb.bx
  %.pn97 = phi { ptr, i32 } [ %i.lg, %bb.bx ], [ %lpad.phi, %bb.by ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i173 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #23
  br label %bb.fa

bb.bz:                                            ; preds = %._crit_edge357
  %i.ll = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %21) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %22) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %21, ptr noundef nonnull @.str.31, ptr noundef nonnull align 1 dereferenceable(1) %22)
          to label %bb.ca unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread

bb.ca:                                            ; preds = %bb.bz
  invoke void @_ZN6duckdb15BinderExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.ll, ptr noundef nonnull align 8 dereferenceable(32) %21)
          to label %bb.cb unwind label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  invoke void @__cxa_throw(ptr nonnull %i.ll, ptr nonnull @_ZTIN6duckdb15BinderExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.fm unwind label %bb.cc

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread: ; preds = %bb.bz
  %i.lm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br label %bb.cd

bb.cc:                                            ; preds = %bb.cb, %bb.ca
  %.072 = phi i1 [ false, %bb.cb ], [ true, %bb.ca ] ; 2 uses
  %i.ln = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.lo = load ptr, ptr %21, align 8, !tbaa !103  ; 2 uses
  %i.lp = getelementptr inbounds nuw i8, ptr %21, i64 16
  %i.lq = icmp eq ptr %i.lo, %i.lp
  br i1 %i.lq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175: ; preds = %bb.cc
  call void @_ZdlPv(ptr noundef %i.lo) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.072, label %bb.cd, label %bb.fa

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177: ; preds = %bb.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %22) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %21) #23
  br i1 %.072, label %bb.cd, label %bb.fa

bb.cd:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177
  %.pn95337 = phi { ptr, i32 } [ %i.lm, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177.thread ], [ %i.ln, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit177 ], [ %i.ln, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i175 ]
  call void @__cxa_free_exception(ptr %i.ll) #23
  br label %bb.fa

bb.ce:                                            ; preds = %._crit_edge357
  %i.lr = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ls = load ptr, ptr %i.lr, align 8, !tbaa !150
  %i.lt = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.lu = load ptr, ptr %i.lt, align 8, !tbaa !150
  %i.lv = icmp eq ptr %i.ls, %i.lu
  br i1 %i.lv, label %bb.ck, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lw = call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %23) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %24) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull @.str.35, ptr noundef nonnull align 1 dereferenceable(1) %24)
          to label %bb.cg unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit180.thread

bb.cg:                                            ; preds = %bb.cf
  invoke void @_ZN6duckdb23NotImplementedExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.lw, ptr noundef nonnull align 8 dereferenceable(32) %23)
          to label %bb.ch unwind label %bb.ci

bb.ch:                                            ; preds = %bb.cg
  invoke void @__cxa_throw(ptr nonnull %i.lw, ptr nonnull @_ZTIN6duckdb23NotImplementedExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
end_hunk_13
begin_hunk_14_@_ZN6duckdb6Binder26CastLogicalOperatorToTypesERKNS_6vectorINS_11LogicalTypeELb1ESaIS2_EEES6_NS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEE:bb.a

bb.bw:                                            ; preds = %bb.bh, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ih = add nuw i64 %.060234, 1                 ; 2 uses
  %i.ii = load ptr, ptr %i.i, align 8, !tbaa !300
  %i.ij = load ptr, ptr %3, align 8, !tbaa !303
  %i.ik = ptrtoint ptr %i.ii to i64
  %i.il = ptrtoint ptr %i.ij to i64
  %i.im = sub i64 %i.ik, %i.il
  %i.in = sdiv exact i64 %i.im, 24
  %i.io = icmp ult i64 %i.ih, %i.in
  br i1 %i.io, label %bb.bh, label %._crit_edge236, !llvm.loop !1108

bb.bx:                                            ; preds = %_ZSteqIN6duckdb11LogicalTypeESaIS1_EEbRKSt6vectorIT_T0_ES8_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #23
  %i.ip = tail call noundef ptr @_ZNK6duckdb10unique_ptrINS_15LogicalOperatorESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %4) ; 2 uses
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !10
  %i.ir = getelementptr inbounds nuw i8, ptr %i.iq, i64 16
  %i.is = load ptr, ptr %i.ir, align 8
  call void %i.is(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::vector.1223") align 8 %11, ptr noundef nonnull align 8 dereferenceable(97) %i.ip)
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false)
  %i.it = load ptr, ptr %i.i, align 8, !tbaa !300
  %i.iu = load ptr, ptr %3, align 8, !tbaa !303
  %.not237 = icmp eq ptr %i.it, %i.iu
  br i1 %.not237, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.bx
  %i.iv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.iw = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %12, i64 16
  br label %bb.by

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143, %bb.bx
  %i.iy = phi ptr [ null, %bb.bx ], [ %i.li, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143 ]
  %i.iz = phi ptr [ null, %bb.bx ], [ %i.lj, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #23
  %i.ja = invoke noundef i64 @_ZN6duckdb6Binder18GenerateTableIndexEv(ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.cs unwind label %bb.dd

bb.by:                                            ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143
  %i.jb = phi ptr [ null, %.lr.ph ], [ %i.lh, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143 ] ; 11 uses
  %i.jc = phi ptr [ null, %.lr.ph ], [ %i.li, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143 ] ; 5 uses
  %i.jd = phi ptr [ null, %.lr.ph ], [ %i.lj, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143 ] ; 3 uses
  %.0228 = phi i64 [ 0, %.lr.ph ], [ %i.lk, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143 ] ; 6 uses
  %i.je = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.0228)
          to label %bb.bz unwind label %bb.ck

bb.bz:                                            ; preds = %bb.by
  %i.jf = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %11, i64 noundef %.0228)
          to label %bb.ca unwind label %bb.ck     ; 2 uses

bb.ca:                                            ; preds = %bb.bz
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.jg = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc unwind label %bb.ck    ; 5 uses

.noexc:                                           ; preds = %bb.ca
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.je)
          to label %bb.cb unwind label %bb.cc, !noalias !1109

bb.cb:                                            ; preds = %.noexc
  %.sroa.0.0.copyload.i = load i64, ptr %i.jf, align 8, !tbaa !112, !noalias !1109
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.jf, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112, !noalias !1109
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.jg, ptr noundef nonnull %6, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 noundef 0)
          to label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit unwind label %bb.cd, !noalias !1109

bb.cc:                                            ; preds = %.noexc
  %i.jh = landingpad { ptr, i32 }
          cleanup
  br label %bb.ce

bb.cd:                                            ; preds = %bb.cb
  %i.ji = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23, !noalias !1109
  br label %bb.ce

bb.ce:                                            ; preds = %bb.cd, %bb.cc
  %.pn.i = phi { ptr, i32 } [ %i.ji, %bb.cd ], [ %i.jh, %bb.cc ]
  call void @_ZdlPv(ptr noundef nonnull %i.jg) #25, !noalias !1109
  br label %.body

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.cb
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23, !noalias !1109
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.jj = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %2, i64 noundef %.0228)
          to label %bb.cf unwind label %.thread199

bb.cf:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.jk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0228)
          to label %bb.cg unwind label %.thread199

bb.cg:                                            ; preds = %bb.cf
  %i.jl = invoke noundef zeroext i1 @_ZNK6duckdb11LogicalTypeeqERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.jj, ptr noundef nonnull align 8 dereferenceable(24) %i.jk)
          to label %bb.ch unwind label %.thread199

bb.ch:                                            ; preds = %bb.cg
  br i1 %i.jl, label %bb.cm, label %bb.ci

bb.ci:                                            ; preds = %bb.ch
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #23
  %i.jm = load ptr, ptr %i.iv, align 8, !tbaa !15, !nonnull !88, !align !89
  %i.jn = ptrtoint ptr %i.jg to i64
  store i64 %i.jn, ptr %14, align 8, !tbaa !13
  %i.jo = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNK6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %3, i64 noundef %.0228)
          to label %bb.cj unwind label %bb.cl

bb.cj:                                            ; preds = %bb.ci
  invoke void @_ZN6duckdb19BoundCastExpression13AddCastToTypeERNS_13ClientContextENS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %13, ptr noundef nonnull align 8 dereferenceable(512) %i.jm, ptr noundef nonnull %14, ptr noundef nonnull align 8 dereferenceable(24) %i.jo, i1 noundef zeroext false)
          to label %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit126 unwind label %bb.cl

_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit126: ; preds = %bb.cj
  %i.jp = load ptr, ptr %13, align 8, !tbaa !13
  store ptr null, ptr %13, align 8, !tbaa !13
  %i.jq = load ptr, ptr %14, align 8, !tbaa !13   ; 3 uses
  %.not.i130 = icmp eq ptr %i.jq, null
  br i1 %.not.i130, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit132, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i131

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i131: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit126
  %i.jr = load ptr, ptr %i.jq, align 8, !tbaa !10
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.jt = load ptr, ptr %i.js, align 8
  call void %i.jt(ptr noundef nonnull align 8 dereferenceable(88) %i.jq) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit132

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit132: ; preds = %_ZN6duckdb10unique_ptrINS_10ExpressionESt14default_deleteIS1_ELb1EEaSEOS4_.exit126, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i131
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %bb.cm

bb.ck:                                            ; preds = %bb.ca, %bb.bz, %bb.by
  %i.ju = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.cl:                                            ; preds = %bb.cj, %bb.ci
  %i.jv = landingpad { ptr, i32 }
          cleanup
  %i.jw = load ptr, ptr %14, align 8, !tbaa !13   ; 3 uses
  %.not.i133 = icmp eq ptr %i.jw, null
  br i1 %.not.i133, label %.thread193, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i134

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i134: ; preds = %bb.cl
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !10
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 8
  %i.jz = load ptr, ptr %i.jy, align 8
  call void %i.jz(ptr noundef nonnull align 8 dereferenceable(88) %i.jw) #23, !inline_history !104
  br label %.thread193

.thread193:                                       ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i134, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #23
  br label %.body

bb.cm:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit132, %bb.ch
  %.sroa.0175.1 = phi ptr [ %i.jp, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit132 ], [ %i.jg, %bb.ch ] ; 4 uses
  %.not.i.i136 = icmp eq ptr %i.jd, %i.jc
  br i1 %.not.i.i136, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.ka = ptrtoint ptr %.sroa.0175.1 to i64
  store i64 %i.ka, ptr %i.jd, align 8, !tbaa !13
  %i.kb = getelementptr inbounds nuw i8, ptr %i.jd, i64 8 ; 2 uses
  store ptr %i.kb, ptr %i.iw, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143

bb.co:                                            ; preds = %bb.cm
  %i.kc = ptrtoint ptr %i.jc to i64               ; 3 uses
  %i.kd = ptrtoint ptr %i.jb to i64               ; 3 uses
  %i.ke = sub i64 %i.kc, %i.kd                    ; 3 uses
  %i.kf = icmp eq i64 %i.ke, 9223372036854775800
  br i1 %i.kf, label %bb.cp, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.cp:                                            ; preds = %bb.co
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc139 unwind label %.loopexit.split-lp

.noexc139:                                        ; preds = %bb.cp
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.co
  %i.kg = ashr exact i64 %i.ke, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.kg, i64 1)
  %i.kh = add nsw i64 %.sroa.speculated.i.i.i.i, %i.kg ; 2 uses
  %i.ki = icmp ult i64 %i.kh, %i.kg
  %i.kj = call i64 @llvm.umin.i64(i64 %i.kh, i64 1152921504606846975)
  %i.kk = select i1 %i.ki, i64 1152921504606846975, i64 %i.kj ; 3 uses
  %.not.i.i.i.i137 = icmp ne i64 %i.kk, 0
  call void @llvm.assume(i1 %.not.i.i.i.i137)
  %i.kl = shl nuw nsw i64 %i.kk, 3
  %i.km = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.kl) #26
          to label %.noexc140 unwind label %.loopexit209 ; 11 uses

.noexc140:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.ke
  %i.ko = ptrtoint ptr %.sroa.0175.1 to i64
  store i64 %i.ko, ptr %i.kn, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.jb, %i.jc
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc140
  %16 = sub i64 %i.kc, %i.kd
  %17 = add i64 %16, -8                           ; 2 uses
  %i.kp = lshr i64 %17, 3
  %i.kq = add nuw nsw i64 %i.kp, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %17, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader363, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.km, i64 8
  %i.kr = add i64 %i.kc, -8
  %i.ks = sub i64 %i.kr, %i.kd
  %i.kt = and i64 %i.ks, -8                       ; 2 uses
  %scevgep331 = getelementptr i8, ptr %scevgep, i64 %i.kt
  %scevgep332 = getelementptr i8, ptr %i.jb, i64 8
  %scevgep333 = getelementptr i8, ptr %scevgep332, i64 %i.kt
  %bound0 = icmp ult ptr %i.km, %scevgep333
  %bound1 = icmp ult ptr %i.jb, %scevgep331
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader363, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.kq, 4611686018427387900     ; 3 uses
  %i.ku = shl i64 %n.vec, 3                       ; 2 uses
  %i.kv = getelementptr i8, ptr %i.km, i64 %i.ku  ; 2 uses
  %i.kw = getelementptr i8, ptr %i.jb, i64 %i.ku
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.kx = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.km, i64 %i.kx ; 2 uses
  %next.gep334 = getelementptr i8, ptr %i.jb, i64 %i.kx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.ky = getelementptr i8, ptr %next.gep334, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep334, align 8, !tbaa !13, !alias.scope !1117, !noalias !1112
  %wide.load335 = load <2 x i64>, ptr %i.ky, align 8, !tbaa !13, !alias.scope !1117, !noalias !1112
  %i.kz = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !1120, !noalias !1117
  store <2 x i64> %wide.load335, ptr %i.kz, align 8, !tbaa !13, !alias.scope !1120, !noalias !1117
  %i.la = getelementptr i8, ptr %next.gep334, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep334, align 8, !tbaa !13, !alias.scope !1117, !noalias !1112
  store <2 x ptr> splat (ptr null), ptr %i.la, align 8, !tbaa !13, !alias.scope !1117, !noalias !1112
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.lb = icmp eq i64 %index.next, %n.vec
  br i1 %i.lb, label %middle.block, label %vector.body, !llvm.loop !1122

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.kq, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader363

.lr.ph.i.i.i.i.i.i.i.preheader363:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.km, %vector.memcheck ], [ %i.km, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kv, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.jb, %vector.memcheck ], [ %i.jb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.kw, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader363, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.le, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader363 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.ld, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader363 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1112)
  call void @llvm.experimental.noalias.scope.decl(metadata !1115)
  %i.lc = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1115, !noalias !1112
  store i64 %i.lc, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1112, !noalias !1115
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1115, !noalias !1112
  %i.ld = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.le = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i138 = icmp eq ptr %i.ld, %i.jc
  br i1 %.not.i.i.i.i.i.i.i138, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1123

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc140
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.km, %.noexc140 ], [ %i.kv, %middle.block ], [ %i.le, %.lr.ph.i.i.i.i.i.i.i ]
  %i.lf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.jb, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.jb) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.cq, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.km, ptr %12, align 8, !tbaa !213
  store ptr %i.lf, ptr %i.iw, align 8, !tbaa !211
  %i.lg = getelementptr inbounds nuw [8 x i8], ptr %i.km, i64 %i.kk ; 2 uses
  store ptr %i.lg, ptr %i.ix, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit143: ; preds = %bb.cn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i
  %i.lh = phi ptr [ %i.jb, %bb.cn ], [ %i.km, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ]
  %i.li = phi ptr [ %i.jc, %bb.cn ], [ %i.lg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.lj = phi ptr [ %i.kb, %bb.cn ], [ %i.lf, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ] ; 2 uses
  %i.lk = add nuw i64 %.0228, 1                   ; 2 uses
  %i.ll = load ptr, ptr %i.i, align 8, !tbaa !300
  %i.lm = load ptr, ptr %3, align 8, !tbaa !303
  %i.ln = ptrtoint ptr %i.ll to i64
  %i.lo = ptrtoint ptr %i.lm to i64
  %i.lp = sub i64 %i.ln, %i.lo
  %i.lq = sdiv exact i64 %i.lp, 24
  %i.lr = icmp ult i64 %i.lk, %i.lq
  br i1 %i.lr, label %bb.by, label %._crit_edge, !llvm.loop !1124

.thread199:                                       ; preds = %bb.cg, %bb.cf, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145

.loopexit209:                                     ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

.loopexit.split-lp:                               ; preds = %bb.cp
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.cr

bb.cr:                                            ; preds = %.loopexit.split-lp, %.loopexit209
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit209 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.not.i144 = icmp eq ptr %.sroa.0175.1, null
  br i1 %.not.i144, label %.body, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145: ; preds = %.thread199, %bb.cr
  %lpad.phi204 = phi { ptr, i32 } [ %lpad.thr_comm, %.thread199 ], [ %lpad.phi, %bb.cr ]
  %.sroa.0175.0203 = phi ptr [ %i.jg, %.thread199 ], [ %.sroa.0175.1, %bb.cr ] ; 2 uses
  %i.ls = load ptr, ptr %.sroa.0175.0203, align 8, !tbaa !10
  %i.lt = getelementptr inbounds nuw i8, ptr %i.ls, i64 8
  %i.lu = load ptr, ptr %i.lt, align 8
  call void %i.lu(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0175.0203) #23, !inline_history !104
  br label %.body

bb.cs:                                            ; preds = %._crit_edge
  call void @llvm.experimental.noalias.scope.decl(metadata !1125)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.lv = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc150 unwind label %bb.dd ; 3 uses

.noexc150:                                        ; preds = %bb.cs
  %i.lw = load ptr, ptr %12, align 8, !tbaa !213, !noalias !1125
  store ptr %i.lw, ptr %5, align 8, !tbaa !213, !noalias !1125
  %i.lx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %i.iz, ptr %i.lx, align 8, !tbaa !211, !noalias !1125
  %i.ly = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %i.iy, ptr %i.ly, align 8, !tbaa !212, !noalias !1125
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %12, i8 0, i64 24, i1 false), !noalias !1125
  invoke void @_ZN6duckdb17LogicalProjectionC1EmNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEELb1ESaIS6_EEE(ptr noundef nonnull align 8 dereferenceable(112) %i.lv, i64 noundef %i.ja, ptr noundef nonnull %5)
          to label %bb.ct unwind label %bb.cv, !noalias !1125

bb.ct:                                            ; preds = %.noexc150
  store ptr %i.lv, ptr %15, align 8, !tbaa !783, !alias.scope !1125
  %i.lz = load ptr, ptr %5, align 8, !tbaa !213, !noalias !1125 ; 3 uses
  %i.ma = load ptr, ptr %i.lx, align 8, !tbaa !211, !noalias !1125 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.lz, %i.ma
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i147

.lr.ph.i.i.i.i147:                                ; preds = %bb.ct, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.mf, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i ], [ %i.lz, %bb.ct ] ; 2 uses
  %i.mb = load ptr, ptr %.05.i.i.i.i, align 8, !tbaa !13, !noalias !1125 ; 3 uses
  %.not.i.i.i.i.i.i148 = icmp eq ptr %i.mb, null
  br i1 %.not.i.i.i.i.i.i148, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i147
  %i.mc = load ptr, ptr %i.mb, align 8, !tbaa !10, !noalias !1125
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.me = load ptr, ptr %i.md, align 8, !noalias !1125
  call void %i.me(ptr noundef nonnull align 8 dereferenceable(88) %i.mb) #23, !noalias !1125, !inline_history !895
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i147
  %i.mf = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i149 = icmp eq ptr %i.mf, %i.ma
  br i1 %.not.i.i.i.i149, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i147, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %5, align 8, !tbaa !213, !noalias !1125
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i, %bb.ct
  %i.mg = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.lz, %bb.ct ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.mg, null
  br i1 %.not.i.i1.i.i, label %bb.cw, label %bb.cu

bb.cu:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mg) #25, !noalias !1125
  br label %bb.cw

bb.cv:                                            ; preds = %.noexc150
  %i.mh = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23, !noalias !1125
  call void @_ZdlPv(ptr noundef nonnull %i.lv) #25, !noalias !1125
  br label %.body151

bb.cw:                                            ; preds = %bb.cu, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.mi = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_17LogicalProjectionESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %15)
          to label %bb.cx unwind label %bb.de     ; 3 uses

bb.cx:                                            ; preds = %bb.cw
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 24 ; 3 uses
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !896 ; 6 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %i.mi, i64 32 ; 2 uses
  %i.mn = load ptr, ptr %i.mm, align 8, !tbaa !897
  %.not.i.i153 = icmp eq ptr %i.ml, %i.mn
  br i1 %.not.i.i153, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.mo = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.mo, ptr %i.ml, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %i.mp = getelementptr inbounds nuw i8, ptr %i.ml, i64 8
  store ptr %i.mp, ptr %i.mk, align 8, !tbaa !896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

bb.cz:                                            ; preds = %bb.cx
  %i.mq = load ptr, ptr %i.mj, align 8, !tbaa !898 ; 10 uses
  %i.mr = ptrtoint ptr %i.ml to i64               ; 3 uses
  %i.ms = ptrtoint ptr %i.mq to i64               ; 3 uses
  %i.mt = sub i64 %i.mr, %i.ms                    ; 3 uses
  %i.mu = icmp eq i64 %i.mt, 9223372036854775800
  br i1 %i.mu, label %bb.da, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc163 unwind label %bb.de

.noexc163:                                        ; preds = %bb.da
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.cz
  %i.mv = ashr exact i64 %i.mt, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i154 = call i64 @llvm.umax.i64(i64 %i.mv, i64 1)
  %i.mw = add nsw i64 %.sroa.speculated.i.i.i.i154, %i.mv ; 2 uses
  %i.mx = icmp ult i64 %i.mw, %i.mv
  %i.my = call i64 @llvm.umin.i64(i64 %i.mw, i64 1152921504606846975)
  %i.mz = select i1 %i.mx, i64 1152921504606846975, i64 %i.my ; 3 uses
  %.not.i.i.i.i155 = icmp ne i64 %i.mz, 0
  call void @llvm.assume(i1 %.not.i.i.i.i155)
  %i.na = shl nuw nsw i64 %i.mz, 3
  %i.nb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.na) #26
          to label %.noexc164 unwind label %bb.de ; 10 uses

.noexc164:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 %i.mt
  %i.nd = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.nd, ptr %i.nc, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i156 = icmp eq ptr %i.mq, %i.ml
  br i1 %.not10.i.i.i.i.i.i.i156, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i157.preheader

.lr.ph.i.i.i.i.i.i.i157.preheader:                ; preds = %.noexc164
  %18 = sub i64 %i.mr, %i.ms
  %19 = add i64 %18, -8                           ; 2 uses
  %i.ne = lshr i64 %19, 3
  %i.nf = add nuw nsw i64 %i.ne, 1                ; 2 uses
  %min.iters.check344 = icmp ult i64 %19, 152
  br i1 %min.iters.check344, label %.lr.ph.i.i.i.i.i.i.i157.preheader362, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph.i.i.i.i.i.i.i157.preheader
  %i.ng = add i64 %i.mr, -8
  %i.nh = sub i64 %i.ng, %i.ms
  %i.ni = and i64 %i.nh, -8
  %i.nj = add i64 %i.ni, 8                        ; 2 uses
  %scevgep338 = getelementptr i8, ptr %i.nb, i64 %i.nj
  %scevgep339 = getelementptr i8, ptr %i.mq, i64 %i.nj
  %bound0340 = icmp ult ptr %i.nb, %scevgep339
  %bound1341 = icmp ult ptr %i.mq, %scevgep338
  %found.conflict342 = and i1 %bound0340, %bound1341
  br i1 %found.conflict342, label %.lr.ph.i.i.i.i.i.i.i157.preheader362, label %vector.ph345

vector.ph345:                                     ; preds = %vector.memcheck337
  %n.vec347 = and i64 %i.nf, 4611686018427387900  ; 3 uses
  %i.nk = shl i64 %n.vec347, 3                    ; 2 uses
  %i.nl = getelementptr i8, ptr %i.nb, i64 %i.nk  ; 2 uses
  %i.nm = getelementptr i8, ptr %i.mq, i64 %i.nk
  br label %vector.body348

vector.body348:                                   ; preds = %vector.body348, %vector.ph345
  %index349 = phi i64 [ 0, %vector.ph345 ], [ %index.next354, %vector.body348 ] ; 2 uses
  %i.nn = shl i64 %index349, 3                    ; 2 uses
  %next.gep350 = getelementptr i8, ptr %i.nb, i64 %i.nn ; 2 uses
  %next.gep351 = getelementptr i8, ptr %i.mq, i64 %i.nn ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.no = getelementptr i8, ptr %next.gep351, i64 16
  %wide.load352 = load <2 x i64>, ptr %next.gep351, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  %wide.load353 = load <2 x i64>, ptr %i.no, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  %i.np = getelementptr i8, ptr %next.gep350, i64 16
  store <2 x i64> %wide.load352, ptr %next.gep350, align 8, !tbaa !360, !alias.scope !1136, !noalias !1133
  store <2 x i64> %wide.load353, ptr %i.np, align 8, !tbaa !360, !alias.scope !1136, !noalias !1133
  %i.nq = getelementptr i8, ptr %next.gep351, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep351, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  store <2 x ptr> splat (ptr null), ptr %i.nq, align 8, !tbaa !360, !alias.scope !1133, !noalias !1128
  %index.next354 = add nuw i64 %index349, 4       ; 2 uses
  %i.nr = icmp eq i64 %index.next354, %n.vec347
  br i1 %i.nr, label %middle.block355, label %vector.body348, !llvm.loop !1138

middle.block355:                                  ; preds = %vector.body348
  %cmp.n356 = icmp eq i64 %i.nf, %n.vec347
  br i1 %cmp.n356, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i157.preheader362

.lr.ph.i.i.i.i.i.i.i157.preheader362:             ; preds = %vector.memcheck337, %.lr.ph.i.i.i.i.i.i.i157.preheader, %middle.block355
  %.012.i.i.i.i.i.i.i158.ph = phi ptr [ %i.nb, %vector.memcheck337 ], [ %i.nb, %.lr.ph.i.i.i.i.i.i.i157.preheader ], [ %i.nl, %middle.block355 ]
  %.0911.i.i.i.i.i.i.i159.ph = phi ptr [ %i.mq, %vector.memcheck337 ], [ %i.mq, %.lr.ph.i.i.i.i.i.i.i157.preheader ], [ %i.nm, %middle.block355 ]
  br label %.lr.ph.i.i.i.i.i.i.i157

.lr.ph.i.i.i.i.i.i.i157:                          ; preds = %.lr.ph.i.i.i.i.i.i.i157.preheader362, %.lr.ph.i.i.i.i.i.i.i157
  %.012.i.i.i.i.i.i.i158 = phi ptr [ %i.nu, %.lr.ph.i.i.i.i.i.i.i157 ], [ %.012.i.i.i.i.i.i.i158.ph, %.lr.ph.i.i.i.i.i.i.i157.preheader362 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i159 = phi ptr [ %i.nt, %.lr.ph.i.i.i.i.i.i.i157 ], [ %.0911.i.i.i.i.i.i.i159.ph, %.lr.ph.i.i.i.i.i.i.i157.preheader362 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1128)
  call void @llvm.experimental.noalias.scope.decl(metadata !1131)
  %i.ns = load i64, ptr %.0911.i.i.i.i.i.i.i159, align 8, !tbaa !360, !alias.scope !1131, !noalias !1128
  store i64 %i.ns, ptr %.012.i.i.i.i.i.i.i158, align 8, !tbaa !360, !alias.scope !1128, !noalias !1131
  store ptr null, ptr %.0911.i.i.i.i.i.i.i159, align 8, !tbaa !360, !alias.scope !1131, !noalias !1128
  %i.nt = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i159, i64 8 ; 2 uses
  %i.nu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i158, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i160 = icmp eq ptr %i.nt, %i.ml
  br i1 %.not.i.i.i.i.i.i.i160, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i157, !llvm.loop !1139

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i157, %middle.block355, %.noexc164
  %.0.lcssa.i.i.i.i.i.i.i161 = phi ptr [ %i.nb, %.noexc164 ], [ %i.nl, %middle.block355 ], [ %i.nu, %.lr.ph.i.i.i.i.i.i.i157 ]
  %i.nv = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i161, i64 8
  %.not.i23.i.i.i162 = icmp eq ptr %i.mq, null
  br i1 %.not.i23.i.i.i162, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.db

bb.db:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.mq) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.db, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.nb, ptr %i.mj, align 8, !tbaa !898
  store ptr %i.nv, ptr %i.mk, align 8, !tbaa !896
  %i.nw = getelementptr inbounds nuw [8 x i8], ptr %i.nb, i64 %i.mz
  store ptr %i.nw, ptr %i.mm, align 8, !tbaa !897
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.cy
  %i.nx = load ptr, ptr %15, align 8, !tbaa !783
  store ptr %i.nx, ptr %0, align 8, !tbaa !1002
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  %.pre = load ptr, ptr %11, align 8, !tbaa !1140 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %.not.i.i.i168 = icmp eq ptr %.pre, null
  br i1 %.not.i.i.i168, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, label %bb.dc

bb.dc:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef nonnull %.pre) #25
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit, %bb.dc
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.dh

bb.dd:                                            ; preds = %bb.cs, %._crit_edge
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %.body151

bb.de:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i, %bb.da, %bb.cw
  %i.nz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.oa = load ptr, ptr %15, align 8, !tbaa !783  ; 3 uses
  %.not.i169 = icmp eq ptr %i.oa, null
  br i1 %.not.i169, label %.body151, label %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170

_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170: ; preds = %bb.de
  %i.ob = load ptr, ptr %i.oa, align 8, !tbaa !10
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ob, i64 8
  %i.od = load ptr, ptr %i.oc, align 8
  call void %i.od(ptr noundef nonnull align 8 dereferenceable(112) %i.oa) #23, !inline_history !805
  br label %.body151

.body151:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170, %bb.de, %bb.dd, %bb.cv
  %.pn = phi { ptr, i32 } [ %i.mh, %bb.cv ], [ %i.ny, %bb.dd ], [ %i.nz, %bb.de ], [ %i.nz, %_ZNKSt14default_deleteIN6duckdb17LogicalProjectionEEclEPS1_.exit.i170 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #23
  br label %.body

.body:                                            ; preds = %bb.ce, %bb.ck, %.thread193, %bb.cr, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145, %.body151
  %.pn82.pn.pn = phi { ptr, i32 } [ %.pn, %.body151 ], [ %.pn.i, %bb.ce ], [ %i.ju, %bb.ck ], [ %i.jv, %.thread193 ], [ %lpad.phi, %bb.cr ], [ %lpad.phi204, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i145 ]
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %12) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #23
  %i.oe = load ptr, ptr %11, align 8, !tbaa !1140 ; 2 uses
  %.not.i.i.i172 = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i172, label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173, label %bb.df

bb.df:                                            ; preds = %.body
  call void @_ZdlPv(ptr noundef nonnull %i.oe) #25
  br label %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173

_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173: ; preds = %.body, %bb.df
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #23
  br label %bb.dg

bb.dg:                                            ; preds = %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121, %bb.bg
  %.pn95.pn = phi { ptr, i32 } [ %.pn95, %bb.bg ], [ %.pn93, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit121 ], [ %.pn82.pn.pn, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit173 ]
  resume { ptr, i32 } %.pn95.pn

bb.dh:                                            ; preds = %bb.bf, %._crit_edge236, %_ZNSt6vectorIN6duckdb13ColumnBindingESaIS1_EED2Ev.exit, %.loopexit210
  ret void
}

declare ptr @_ZN6duckdb6Binder13GetCTEBindingERKNS_12BindingAliasE(ptr noundef nonnull align 8 dereferenceable(472), ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZNK6duckdb10CTEBinding12IsReferencedEv(ptr noundef nonnull align 8 dereferenceable(256)) local_unnamed_addr #2

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN6duckdb9make_uniqINS_19LogicalRecursiveCTEEJRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERmmRbNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteISD_ELb1EEELb1ESaISG_EEENSC_INS_15LogicalOperatorESE_ISJ_ELb1EEESL_EEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_(ptr dead_on_unwind noalias writable sret(%"class.duckdb::unique_ptr.874") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 1 dereferenceable(1) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef nonnull align 8 dereferenceable(8) %7) local_unnamed_addr #7 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  %9 = alloca %"class.duckdb::vector.272", align 16 ; 7 uses
  %10 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %11 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #26 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.c, ptr %8, align 8, !tbaa !126
  %i.d = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i64 %i.f, ptr %i.a, align 8, !tbaa !112
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc unwind label %bb.g     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.h, ptr %8, align 8, !tbaa !103
  %i.i = load i64, ptr %i.a, align 8, !tbaa !112
  store i64 %i.i, ptr %i.c, align 8, !tbaa !119
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %bb.d
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !119
  store i8 %i.k, ptr %i.j, align 1, !tbaa !119
  br label %bb.d

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %._crit_edge.i.i
  %i.l = load i64, ptr %i.a, align 8, !tbaa !112  ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %8, i64 8
end_hunk_14
begin_hunk_15_@_ZN6duckdb12CTEBindState4BindERNS_10CTEBindingE:bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load <2 x ptr>, ptr %2, align 16, !tbaa !99
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %i.h = load ptr, ptr %i.f, align 8, !tbaa !114  ; 8 uses
  store <2 x ptr> %i.g, ptr %i.d, align 8, !tbaa !99
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %i.j = load atomic i64, ptr %i.i acquire, align 8 ; 2 uses
  %i.k = icmp eq i64 %i.j, 4294967297
  %i.l = trunc i64 %i.j to i32                    ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 8, !tbaa !115
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  store i32 0, ptr %i.m, align 4, !tbaa !117
  %i.n = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  call void %i.p(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !1168
  %i.q = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23, !inline_history !1168
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit

bb.d:                                             ; preds = %bb.b
  %i.t = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = add nsw i32 %i.l, -1
  store i32 %i.u, ptr %i.i, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.v = atomicrmw volatile add ptr %i.i, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i: ; preds = %bb.f, %bb.e
  %.0.i.i.i.i.i.i = phi i32 [ %i.l, %bb.e ], [ %i.v, %bb.f ]
  %i.w = icmp eq i32 %.0.i.i.i.i.i.i, 1
  br i1 %i.w, label %bb.g, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, !prof !120

bb.g:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.h) #23
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit: ; preds = %bb.a, %bb.c, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i, %bb.g
  %i.x = load ptr, ptr %i.e, align 8, !tbaa !114  ; 8 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, label %bb.h

bb.h:                                             ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 4 uses
  %i.z = load atomic i64, ptr %i.y acquire, align 8 ; 2 uses
  %i.aa = icmp eq i64 %i.z, 4294967297
  %i.ab = trunc i64 %i.z to i32                   ; 2 uses
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store i32 0, ptr %i.y, align 8, !tbaa !115
  %i.ac = getelementptr inbounds nuw i8, ptr %i.x, i64 12
  store i32 0, ptr %i.ac, align 4, !tbaa !117
  %i.ad = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #23, !inline_history !118
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !10
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  call void %i.ai(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #23, !inline_history !118
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

bb.j:                                             ; preds = %bb.h
  %i.aj = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i25 = icmp eq i8 %i.aj, 0
  br i1 %.not.i.i.i.i25, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ak = add nsw i32 %i.ab, -1
  store i32 %i.ak, ptr %i.y, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.l:                                             ; preds = %bb.j
  %i.al = atomicrmw volatile add ptr %i.y, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i = phi i32 [ %i.ab, %bb.k ], [ %i.al, %bb.l ]
  %i.am = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.am, label %bb.m, label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, !prof !120

bb.m:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.x) #23
  br label %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EEaSEOS2_.exit, %bb.i, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  %i.an = call noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
  call void @_ZN6duckdb6Binder18SetCanContainNullsEb(ptr noundef nonnull align 8 dereferenceable(472) %i.an, i1 noundef zeroext true)
  %i.ao = load ptr, ptr %0, align 8, !tbaa !1192, !nonnull !88, !align !89
  %i.ap = call noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6Binder16GetActiveBindersEv(ptr noundef nonnull align 8 dereferenceable(472) %i.ao) ; 7 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !tbaa !1190 ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 7 uses
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !1186 ; 2 uses
  %i.au = load ptr, ptr %i.ap, align 8, !tbaa !1189 ; 2 uses
  %i.av = ptrtoint ptr %i.at to i64               ; 2 uses
  %i.aw = ptrtoint ptr %i.au to i64
  %i.ax = sub i64 %i.av, %i.aw
  %i.ay = ashr exact i64 %i.ax, 3
  %i.az = icmp ult i64 %i.ar, %i.ay
  br i1 %i.az, label %.lr.ph, label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit
  %.pre = load i64, ptr %i.aq, align 8, !tbaa !1190
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit
  %i.ba = phi i64 [ %i.ar, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %.pre, %._crit_edge.loopexit ]
  %.sroa.9.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %.sroa.9.1, %._crit_edge.loopexit ] ; 2 uses
  %.sroa.066.0.lcssa = phi ptr [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %.sroa.066.1, %._crit_edge.loopexit ] ; 10 uses
  %i.bb = phi ptr [ %i.at, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %i.cl, %._crit_edge.loopexit ] ; 3 uses
  %.lcssa82 = phi ptr [ %i.au, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %i.cm, %._crit_edge.loopexit ]
  %.lcssa79 = phi i64 [ %i.av, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ], [ %i.cn, %._crit_edge.loopexit ]
  %i.bc = getelementptr inbounds [8 x i8], ptr %.lcssa82, i64 %i.ba ; 2 uses
  %.not.i.i = icmp eq ptr %i.bc, %i.bb
  br i1 %.not.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i

_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i: ; preds = %._crit_edge
  %i.bd = ptrtoint ptr %i.bb to i64
  %i.be = sub i64 %i.bd, %.lcssa79
  %i.bf = getelementptr inbounds i8, ptr %i.bc, i64 %i.be ; 2 uses
  %.not.i.i.i26 = icmp eq ptr %i.bb, %i.bf
  br i1 %.not.i.i.i26, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit, label %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb16ExpressionBinderEES3_EvT_S5_RSaIT0_E.exit.i.i.i

_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb16ExpressionBinderEES3_EvT_S5_RSaIT0_E.exit.i.i.i: ; preds = %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i
  store ptr %i.bf, ptr %i.as, align 8, !tbaa !1186
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit

.lr.ph:                                           ; preds = %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit
  %.021100 = phi i64 [ %i.ck, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ %i.ar, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 2 uses
  %.sroa.066.099 = phi ptr [ %.sroa.066.1, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 10 uses
  %.sroa.9.098 = phi ptr [ %.sroa.9.1, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 6 uses
  %.sroa.14.097 = phi ptr [ %.sroa.14.1, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit ], [ null, %_ZN6duckdb10shared_ptrINS_6BinderELb1EED2Ev.exit ] ; 2 uses
  %i.bg = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, i64 noundef %.021100)
          to label %bb.n unwind label %.loopexit73 ; 2 uses

bb.n:                                             ; preds = %.lr.ph
  %.not.i = icmp eq ptr %.sroa.9.098, %.sroa.14.097
  br i1 %.not.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %.sroa.9.098, align 8
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit

bb.p:                                             ; preds = %bb.n
  %i.bi = ptrtoint ptr %.sroa.9.098 to i64        ; 2 uses
  %i.bj = ptrtoint ptr %.sroa.066.099 to i64      ; 3 uses
  %i.bk = sub i64 %i.bi, %i.bj                    ; 3 uses
  %i.bl = icmp eq i64 %i.bk, 9223372036854775800
  br i1 %i.bl, label %bb.q, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i

bb.q:                                             ; preds = %bb.p
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc unwind label %.loopexit.split-lp74

.noexc:                                           ; preds = %bb.q
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i: ; preds = %bb.p
  %i.bm = ashr exact i64 %i.bk, 3                 ; 3 uses
  %.sroa.speculated.i.i.i = call i64 @llvm.umax.i64(i64 %i.bm, i64 1)
  %i.bn = add nsw i64 %.sroa.speculated.i.i.i, %i.bm ; 2 uses
  %i.bo = icmp ult i64 %i.bn, %i.bm
  %i.bp = call i64 @llvm.umin.i64(i64 %i.bn, i64 1152921504606846975)
  %i.bq = select i1 %i.bo, i64 1152921504606846975, i64 %i.bp ; 3 uses
  %.not.i.i.i27 = icmp ne i64 %i.bq, 0
  call void @llvm.assume(i1 %.not.i.i.i27)
  %i.br = shl nuw nsw i64 %i.bq, 3
  %i.bs = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.br) #26
          to label %.noexc28 unwind label %.loopexit73 ; 8 uses

.noexc28:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.bk
  %i.bu = load i64, ptr %i.bg, align 8
  store i64 %i.bu, ptr %i.bt, align 8
  %.not10.i.i.i.i.i.i = icmp eq ptr %.sroa.066.099, %.sroa.9.098
  br i1 %.not10.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %.noexc28
  %i.bv = ptrtoaddr ptr %i.bs to i64
  %7 = sub i64 %i.bi, %i.bj
  %8 = add i64 %7, -8                             ; 2 uses
  %i.bw = lshr i64 %8, 3
  %i.bx = add nuw nsw i64 %i.bw, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 24
  %i.by = sub i64 %i.bv, %i.bj
  %diff.check = icmp ult i64 %i.by, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.i.i.i.i.i.i.preheader181, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %n.vec = and i64 %i.bx, 4611686018427387900     ; 3 uses
  %i.bz = shl i64 %n.vec, 3                       ; 2 uses
  %i.ca = getelementptr i8, ptr %i.bs, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %.sroa.066.099, i64 %i.bz
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.cc = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bs, i64 %i.cc ; 2 uses
  %next.gep158 = getelementptr i8, ptr %.sroa.066.099, i64 %i.cc ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.cd = getelementptr i8, ptr %next.gep158, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep158, align 8, !alias.scope !1196, !noalias !1193
  %wide.load159 = load <2 x i64>, ptr %i.cd, align 8, !alias.scope !1196, !noalias !1193
  %i.ce = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !alias.scope !1193, !noalias !1196
  store <2 x i64> %wide.load159, ptr %i.ce, align 8, !alias.scope !1193, !noalias !1196
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cf = icmp eq i64 %index.next, %n.vec
  br i1 %i.cf, label %middle.block, label %vector.body, !llvm.loop !1198

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bx, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i.preheader181

.lr.ph.i.i.i.i.i.i.preheader181:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.ph = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ca, %middle.block ]
  %.0911.i.i.i.i.i.i.ph = phi ptr [ %.sroa.066.099, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.cb, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader181, %.lr.ph.i.i.i.i.i.i
  %.012.i.i.i.i.i.i = phi ptr [ %i.ci, %.lr.ph.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader181 ] ; 2 uses
  %.0911.i.i.i.i.i.i = phi ptr [ %i.ch, %.lr.ph.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader181 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1193)
  call void @llvm.experimental.noalias.scope.decl(metadata !1196)
  %i.cg = load i64, ptr %.0911.i.i.i.i.i.i, align 8, !alias.scope !1196, !noalias !1193
  store i64 %i.cg, ptr %.012.i.i.i.i.i.i, align 8, !alias.scope !1193, !noalias !1196
  %i.ch = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ch, %.sroa.9.098
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1199

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i: ; preds = %.lr.ph.i.i.i.i.i.i, %middle.block, %.noexc28
  %.0.lcssa.i.i.i.i.i.i = phi ptr [ %i.bs, %.noexc28 ], [ %i.ca, %middle.block ], [ %i.ci, %.lr.ph.i.i.i.i.i.i ]
  %.not.i23.i.i = icmp eq ptr %.sroa.066.099, null
  br i1 %.not.i23.i.i, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, label %bb.r

bb.r:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  call void @_ZdlPv(ptr noundef nonnull %.sroa.066.099) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i: ; preds = %bb.r, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bq
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i, %bb.o
  %.sroa.14.1 = phi ptr [ %i.cj, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.14.097, %bb.o ]
  %.0.lcssa.i.i.i.i.i.i.pn = phi ptr [ %.0.lcssa.i.i.i.i.i.i, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.9.098, %bb.o ]
  %.sroa.066.1 = phi ptr [ %i.bs, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i ], [ %.sroa.066.099, %bb.o ] ; 2 uses
  %.sroa.9.1 = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.pn, i64 8 ; 2 uses
  %i.ck = add nuw i64 %.021100, 1                 ; 2 uses
  %i.cl = load ptr, ptr %i.as, align 8, !tbaa !1186 ; 2 uses
  %i.cm = load ptr, ptr %i.ap, align 8, !tbaa !1189 ; 2 uses
  %i.cn = ptrtoint ptr %i.cl to i64               ; 2 uses
  %i.co = ptrtoint ptr %i.cm to i64
  %i.cp = sub i64 %i.cn, %i.co
  %i.cq = ashr exact i64 %i.cp, 3
  %i.cr = icmp ult i64 %i.ck, %i.cq
  br i1 %i.cr, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !1200

.loopexit73:                                      ; preds = %.lr.ph, %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i
  %lpad.loopexit75 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp74:                             ; preds = %bb.q
  %lpad.loopexit.split-lp76 = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit: ; preds = %_ZSt8_DestroyIPSt17reference_wrapperIN6duckdb16ExpressionBinderEES3_EvT_S5_RSaIT0_E.exit.i.i.i, %_ZSt4moveIN9__gnu_cxx17__normal_iteratorIPSt17reference_wrapperIN6duckdb16ExpressionBinderEESt6vectorIS5_SaIS5_EEEESA_ET0_T_SC_SB_.exit.i.i, %._crit_edge
  %i.cs = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.s unwind label %bb.ab

bb.s:                                             ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 24
  %i.cu = invoke noundef i64 @_ZN6duckdb7Binding8GetIndexEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.t unwind label %bb.ab

bb.t:                                             ; preds = %bb.s
  %i.cv = invoke noundef nonnull align 8 dereferenceable(96) ptr @_ZN6duckdb7Binding15GetBindingAliasEv(ptr noundef nonnull align 8 dereferenceable(224) %1)
          to label %bb.u unwind label %bb.ab

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb12BindingAliasC2ERKS0_(ptr noundef nonnull align 8 dereferenceable(96) %3, ptr noundef nonnull align 8 dereferenceable(96) %i.cv)
          to label %bb.v unwind label %bb.ab

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb11BindContext13AddCTEBindingEmNS_12BindingAliasERKNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS8_EEERKNS2_INS_11LogicalTypeELb1ESaISD_EEENS_7CTETypeE(ptr noundef nonnull align 8 dereferenceable(112) %i.ct, i64 noundef %i.cu, ptr noundef nonnull %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, i32 noundef 1)
          to label %bb.w unwind label %bb.ac

bb.w:                                             ; preds = %bb.v
  %i.cw = load ptr, ptr %5, align 8, !tbaa !303   ; 3 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !300 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.cw, %i.cy
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.w, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.cz, %.lr.ph.i.i.i ], [ %i.cw, %bb.w ] ; 2 uses
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %.05.i.i.i) #23
  %i.cz = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i29 = icmp eq ptr %i.cz, %i.cy
  br i1 %.not.i.i.i29, label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !660

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %.lr.ph.i.i.i
  %.pr.i = load ptr, ptr %5, align 8, !tbaa !303
  br label %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.w
  %i.da = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.cw, %bb.w ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.da, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, label %bb.x

bb.x:                                             ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.da) #25
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb11LogicalTypeES1_EvT_S3_RSaIT0_E.exit.i, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.db = load ptr, ptr %4, align 8, !tbaa !175   ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !172 ; 2 uses
  %.not4.i.i.i30 = icmp eq ptr %i.db, %i.dd
  br i1 %.not4.i.i.i30, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, label %.lr.ph.i.i.i31

.lr.ph.i.i.i31:                                   ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.05.i.i.i32 = phi ptr [ %i.dh, %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i ], [ %i.db, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 3 uses
  %i.de = load ptr, ptr %.05.i.i.i32, align 8, !tbaa !103 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 16
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i31
  call void @_ZdlPv(ptr noundef %i.de) #25
  br label %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i

_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i31, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  %i.dh = getelementptr inbounds nuw i8, ptr %.05.i.i.i32, i64 32 ; 2 uses
  %.not.i.i.i33 = icmp eq ptr %i.dh, %i.dd
  br i1 %.not.i.i.i33, label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i31, !llvm.loop !655

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEvPT_.exit.i.i.i
  %.pr.i34 = load ptr, ptr %4, align 8, !tbaa !175
  br label %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i

_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit
  %i.di = phi ptr [ %.pr.i34, %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i ], [ %i.db, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev.exit ] ; 2 uses
  %.not.i.i1.i35 = icmp eq ptr %i.di, null
  br i1 %.not.i.i1.i35, label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, label %bb.y

bb.y:                                             ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i
  call void @_ZdlPv(ptr noundef nonnull %i.di) #25
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  %i.dj = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !103 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  call void @_ZdlPv(ptr noundef %i.dk) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !103 ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.dq = icmp eq ptr %i.do, %i.dp
  br i1 %i.dq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i
  call void @_ZdlPv(ptr noundef %i.do) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i1.i
  %i.dr = load ptr, ptr %3, align 8, !tbaa !103   ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.dt = icmp eq ptr %i.dr, %i.ds
  br i1 %i.dt, label %_ZN6duckdb12BindingAliasD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i
  call void @_ZdlPv(ptr noundef %i.dr) #25
  br label %_ZN6duckdb12BindingAliasD2Ev.exit

_ZN6duckdb12BindingAliasD2Ev.exit:                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit3.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i4.i
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #23
  %i.du = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_6BinderELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %bb.z unwind label %bb.ad

bb.z:                                             ; preds = %_ZN6duckdb12BindingAliasD2Ev.exit
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !1201, !nonnull !88, !align !89
  invoke void @_ZN6duckdb6Binder4BindERNS_9QueryNodeE(ptr dead_on_unwind nonnull writable sret(%"struct.duckdb::BoundStatement") align 8 %6, ptr noundef nonnull align 8 dereferenceable(472) %i.du, ptr noundef nonnull align 8 dereferenceable(120) %i.dw)
          to label %bb.aa unwind label %bb.ad

bb.aa:                                            ; preds = %bb.z
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.dy = call noundef nonnull align 8 dereferenceable(136) ptr @_ZN6duckdb14BoundStatementaSEOS0_(ptr noundef nonnull align 8 dereferenceable(136) %i.dx, ptr noundef nonnull align 8 dereferenceable(136) %6) #23 ; 0 uses
  call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %6) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  %.not105 = icmp eq ptr %.sroa.066.0.lcssa, %.sroa.9.0.lcssa
  br i1 %.not105, label %._crit_edge109, label %.lr.ph108

.lr.ph108:                                        ; preds = %bb.aa
  %i.dz = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  %.pre119 = load ptr, ptr %i.as, align 8, !tbaa !1186
  br label %bb.ae

._crit_edge109:                                   ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52, %bb.aa
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ec = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noundef nonnull align 8 dereferenceable(24) %i.ea)
          to label %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit unwind label %bb.ab ; 0 uses

bb.ab:                                            ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit, %._crit_edge109, %.critedge, %bb.u, %bb.t, %bb.s, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE5eraseEN9__gnu_cxx17__normal_iteratorIPKS3_S5_EESA_.exit
  %i.ed = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ac:                                            ; preds = %bb.v
  %i.ee = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  call void @_ZN6duckdb12BindingAliasD2Ev(ptr noundef nonnull align 8 dead_on_return(96) dereferenceable(96) %3) #23
  br label %bb.aq

bb.ad:                                            ; preds = %bb.z, %_ZN6duckdb12BindingAliasD2Ev.exit
  %i.ef = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #23
  br label %bb.aq

bb.ae:                                            ; preds = %.lr.ph108, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52
  %i.eg = phi ptr [ %.pre119, %.lr.ph108 ], [ %i.fp, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52 ] ; 5 uses
  %.sroa.058.0106 = phi ptr [ %.sroa.066.0.lcssa, %.lr.ph108 ], [ %i.fq, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52 ] ; 3 uses
  %i.eh = load ptr, ptr %i.dz, align 8, !tbaa !1202
  %.not.i37 = icmp eq ptr %i.eg, %i.eh
  br i1 %.not.i37, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.ei = load i64, ptr %.sroa.058.0106, align 8
  store i64 %i.ei, ptr %i.eg, align 8
  %i.ej = load ptr, ptr %i.as, align 8, !tbaa !1186
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 8 ; 2 uses
  store ptr %i.ek, ptr %i.as, align 8, !tbaa !1186
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52

bb.ag:                                            ; preds = %bb.ae
  %i.el = load ptr, ptr %i.ap, align 8, !tbaa !1189 ; 7 uses
  %i.em = ptrtoint ptr %i.eg to i64               ; 2 uses
  %i.en = ptrtoint ptr %i.el to i64               ; 3 uses
  %i.eo = sub i64 %i.em, %i.en                    ; 3 uses
  %i.ep = icmp eq i64 %i.eo, 9223372036854775800
  br i1 %i.ep, label %bb.ah, label %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38

bb.ah:                                            ; preds = %bb.ag
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc50 unwind label %.loopexit.split-lp

.noexc50:                                         ; preds = %bb.ah
  unreachable

_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38: ; preds = %bb.ag
  %i.eq = ashr exact i64 %i.eo, 3                 ; 3 uses
  %.sroa.speculated.i.i.i39 = call i64 @llvm.umax.i64(i64 %i.eq, i64 1)
  %i.er = add nsw i64 %.sroa.speculated.i.i.i39, %i.eq ; 2 uses
  %i.es = icmp ult i64 %i.er, %i.eq
  %i.et = call i64 @llvm.umin.i64(i64 %i.er, i64 1152921504606846975)
  %i.eu = select i1 %i.es, i64 1152921504606846975, i64 %i.et ; 3 uses
  %.not.i.i.i40 = icmp ne i64 %i.eu, 0
  call void @llvm.assume(i1 %.not.i.i.i40)
  %i.ev = shl nuw nsw i64 %i.eu, 3
  %i.ew = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ev) #26
          to label %.noexc51 unwind label %.loopexit ; 8 uses

.noexc51:                                         ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38
  %i.ex = getelementptr inbounds nuw i8, ptr %i.ew, i64 %i.eo
  %i.ey = load i64, ptr %.sroa.058.0106, align 8
  store i64 %i.ey, ptr %i.ex, align 8
  %.not10.i.i.i.i.i.i41 = icmp eq ptr %i.el, %i.eg
  br i1 %.not10.i.i.i.i.i.i41, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42.preheader

.lr.ph.i.i.i.i.i.i42.preheader:                   ; preds = %.noexc51
  %i.ez = ptrtoaddr ptr %i.ew to i64
  %9 = sub i64 %i.em, %i.en
  %10 = add i64 %9, -8                            ; 2 uses
  %i.fa = lshr i64 %10, 3
  %i.fb = add nuw nsw i64 %i.fa, 1                ; 2 uses
  %min.iters.check164 = icmp ult i64 %10, 24
  %i.fc = sub i64 %i.ez, %i.en
  %diff.check162 = icmp ult i64 %i.fc, 32
  %or.cond179 = or i1 %min.iters.check164, %diff.check162
  br i1 %or.cond179, label %.lr.ph.i.i.i.i.i.i42.preheader180, label %vector.ph165

vector.ph165:                                     ; preds = %.lr.ph.i.i.i.i.i.i42.preheader
  %n.vec167 = and i64 %i.fb, 4611686018427387900  ; 3 uses
  %i.fd = shl i64 %n.vec167, 3                    ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ew, i64 %i.fd  ; 2 uses
  %i.ff = getelementptr i8, ptr %i.el, i64 %i.fd
  br label %vector.body168

vector.body168:                                   ; preds = %vector.body168, %vector.ph165
  %index169 = phi i64 [ 0, %vector.ph165 ], [ %index.next174, %vector.body168 ] ; 2 uses
  %i.fg = shl i64 %index169, 3                    ; 2 uses
  %next.gep170 = getelementptr i8, ptr %i.ew, i64 %i.fg ; 2 uses
  %next.gep171 = getelementptr i8, ptr %i.el, i64 %i.fg ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.fh = getelementptr i8, ptr %next.gep171, i64 16
  %wide.load172 = load <2 x i64>, ptr %next.gep171, align 8, !alias.scope !1206, !noalias !1203
  %wide.load173 = load <2 x i64>, ptr %i.fh, align 8, !alias.scope !1206, !noalias !1203
  %i.fi = getelementptr i8, ptr %next.gep170, i64 16
  store <2 x i64> %wide.load172, ptr %next.gep170, align 8, !alias.scope !1203, !noalias !1206
  store <2 x i64> %wide.load173, ptr %i.fi, align 8, !alias.scope !1203, !noalias !1206
  %index.next174 = add nuw i64 %index169, 4       ; 2 uses
  %i.fj = icmp eq i64 %index.next174, %n.vec167
  br i1 %i.fj, label %middle.block175, label %vector.body168, !llvm.loop !1208

middle.block175:                                  ; preds = %vector.body168
  %cmp.n176 = icmp eq i64 %i.fb, %n.vec167
  br i1 %cmp.n176, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42.preheader180

.lr.ph.i.i.i.i.i.i42.preheader180:                ; preds = %.lr.ph.i.i.i.i.i.i42.preheader, %middle.block175
  %.012.i.i.i.i.i.i43.ph = phi ptr [ %i.ew, %.lr.ph.i.i.i.i.i.i42.preheader ], [ %i.fe, %middle.block175 ]
  %.0911.i.i.i.i.i.i44.ph = phi ptr [ %i.el, %.lr.ph.i.i.i.i.i.i42.preheader ], [ %i.ff, %middle.block175 ]
  br label %.lr.ph.i.i.i.i.i.i42

.lr.ph.i.i.i.i.i.i42:                             ; preds = %.lr.ph.i.i.i.i.i.i42.preheader180, %.lr.ph.i.i.i.i.i.i42
  %.012.i.i.i.i.i.i43 = phi ptr [ %i.fm, %.lr.ph.i.i.i.i.i.i42 ], [ %.012.i.i.i.i.i.i43.ph, %.lr.ph.i.i.i.i.i.i42.preheader180 ] ; 2 uses
  %.0911.i.i.i.i.i.i44 = phi ptr [ %i.fl, %.lr.ph.i.i.i.i.i.i42 ], [ %.0911.i.i.i.i.i.i44.ph, %.lr.ph.i.i.i.i.i.i42.preheader180 ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1203)
  call void @llvm.experimental.noalias.scope.decl(metadata !1206)
  %i.fk = load i64, ptr %.0911.i.i.i.i.i.i44, align 8, !alias.scope !1206, !noalias !1203
  store i64 %i.fk, ptr %.012.i.i.i.i.i.i43, align 8, !alias.scope !1203, !noalias !1206
  %i.fl = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i44, i64 8 ; 2 uses
  %i.fm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i43, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i45 = icmp eq ptr %i.fl, %i.eg
  br i1 %.not.i.i.i.i.i.i45, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46, label %.lr.ph.i.i.i.i.i.i42, !llvm.loop !1209

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46: ; preds = %.lr.ph.i.i.i.i.i.i42, %middle.block175, %.noexc51
  %.0.lcssa.i.i.i.i.i.i47 = phi ptr [ %i.ew, %.noexc51 ], [ %i.fe, %middle.block175 ], [ %i.fm, %.lr.ph.i.i.i.i.i.i42 ]
  %i.fn = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i47, i64 8 ; 2 uses
  %.not.i23.i.i48 = icmp eq ptr %i.el, null
  br i1 %.not.i23.i.i48, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49, label %bb.ai

bb.ai:                                            ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46
  call void @_ZdlPv(ptr noundef nonnull %i.el) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49: ; preds = %bb.ai, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE11_S_relocateEPS3_S6_S6_RS4_.exit22.i.i46
  store ptr %i.ew, ptr %i.ap, align 8, !tbaa !1189
  store ptr %i.fn, ptr %i.as, align 8, !tbaa !1186
  %i.fo = getelementptr inbounds nuw [8 x i8], ptr %i.ew, i64 %i.eu
  store ptr %i.fo, ptr %i.dz, align 8, !tbaa !1202
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE9push_backERKS3_.exit52: ; preds = %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49, %bb.af
  %i.fp = phi ptr [ %i.fn, %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE17_M_realloc_insertIJRKS3_EEEvN9__gnu_cxx17__normal_iteratorIPS3_S5_EEDpOT_.exit.i49 ], [ %i.ek, %bb.af ]
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.058.0106, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.fq, %.sroa.9.0.lcssa
  br i1 %.not, label %._crit_edge109, label %bb.ae

.loopexit:                                        ; preds = %_ZNKSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EE12_M_check_lenEmPKc.exit.i.i38
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

.loopexit.split-lp:                               ; preds = %bb.ah
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit: ; preds = %._crit_edge109
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fs = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 4 uses
  %i.ft = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEaSERKS7_(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, ptr noundef nonnull align 8 dereferenceable(24) %i.fr)
          to label %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader unwind label %bb.ab ; 0 uses

_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader: ; preds = %_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEaSERKS3_.exit
  %i.fu = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !1210, !nonnull !88, !align !89 ; 3 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fv, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !172
  %i.fy = load ptr, ptr %i.fv, align 8, !tbaa !175
  %.not112 = icmp eq ptr %i.fx, %i.fy
  br i1 %.not112, label %.critedge, label %.lr.ph111

.lr.ph111:                                        ; preds = %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader
  %i.fz = getelementptr inbounds nuw i8, ptr %0, i64 192
  br label %bb.aj

bb.aj:                                            ; preds = %.lr.ph111, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.ga = phi ptr [ %i.fv, %.lr.ph111 ], [ %i.gl, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ]
  %.0110 = phi i64 [ 0, %.lr.ph111 ], [ %i.gk, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit ] ; 4 uses
  %i.gb = load ptr, ptr %i.fz, align 8, !tbaa !172
  %i.gc = load ptr, ptr %i.fs, align 8, !tbaa !175
  %i.gd = ptrtoint ptr %i.gb to i64
  %i.ge = ptrtoint ptr %i.gc to i64
  %i.gf = sub i64 %i.gd, %i.ge
  %i.gg = ashr exact i64 %i.gf, 5
  %i.gh = icmp ult i64 %.0110, %i.gg
  br i1 %i.gh, label %bb.ak, label %.critedge

.critedge:                                        ; preds = %bb.aj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEaSERKS8_.exit.preheader
  invoke void @_ZN6duckdb11QueryResult18DeduplicateColumnsERNS_6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS7_EEE(ptr noundef nonnull align 8 dereferenceable(24) %i.fs)
          to label %bb.ao unwind label %bb.ab

bb.ak:                                            ; preds = %bb.aj
  %i.gi = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNK6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ga, i64 noundef %.0110)
          to label %bb.al unwind label %bb.an

bb.al:                                            ; preds = %bb.ak
  %i.gj = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZN6duckdb6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb1ESaIS6_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.fs, i64 noundef %.0110)
          to label %bb.am unwind label %bb.an

bb.am:                                            ; preds = %bb.al
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.gj, ptr noundef nonnull align 8 dereferenceable(32) %i.gi)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit unwind label %bb.an

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %bb.am
  %i.gk = add nuw i64 %.0110, 1                   ; 2 uses
  %i.gl = load ptr, ptr %i.fu, align 8, !tbaa !1210, !nonnull !88, !align !89 ; 3 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gl, i64 8
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !172
  %i.go = load ptr, ptr %i.gl, align 8, !tbaa !175
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 5
  %i.gt = icmp ult i64 %i.gk, %i.gs
  br i1 %i.gt, label %bb.aj, label %.critedge, !llvm.loop !1211

bb.an:                                            ; preds = %bb.am, %bb.al, %bb.ak
  %i.gu = landingpad { ptr, i32 }
          cleanup
  br label %bb.aq

bb.ao:                                            ; preds = %.critedge
  %.not.i.i.i55 = icmp eq ptr %.sroa.066.0.lcssa, null
  br i1 %.not.i.i.i55, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  call void @_ZdlPv(ptr noundef nonnull %.sroa.066.0.lcssa) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit: ; preds = %bb.ao, %bb.ap
  ret void

bb.aq:                                            ; preds = %.loopexit, %.loopexit.split-lp, %.loopexit73, %.loopexit.split-lp74, %bb.an, %bb.ad, %bb.ac, %bb.ab
  %.sroa.066.093 = phi ptr [ %.sroa.066.0.lcssa, %bb.ac ], [ %.sroa.066.099, %.loopexit.split-lp74 ], [ %.sroa.066.0.lcssa, %bb.an ], [ %.sroa.066.0.lcssa, %bb.ab ], [ %.sroa.066.0.lcssa, %bb.ad ], [ %.sroa.066.099, %.loopexit73 ], [ %.sroa.066.0.lcssa, %.loopexit.split-lp ], [ %.sroa.066.0.lcssa, %.loopexit ] ; 2 uses
  %.pn = phi { ptr, i32 } [ %i.ee, %bb.ac ], [ %lpad.loopexit.split-lp76, %.loopexit.split-lp74 ], [ %i.gu, %bb.an ], [ %i.ed, %bb.ab ], [ %i.ef, %bb.ad ], [ %lpad.loopexit75, %.loopexit73 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit, %.loopexit ]
  %.not.i.i.i56 = icmp eq ptr %.sroa.066.093, null
  br i1 %.not.i.i.i56, label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit57, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  call void @_ZdlPv(ptr noundef nonnull %.sroa.066.093) #25
  br label %_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit57

_ZNSt6vectorISt17reference_wrapperIN6duckdb16ExpressionBinderEESaIS3_EED2Ev.exit57: ; preds = %bb.aq, %bb.ar
  resume { ptr, i32 } %.pn
}

declare void @_ZN6duckdb6Binder18SetCanContainNullsEb(ptr noundef nonnull align 8 dereferenceable(472), i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef nonnull align 8 dereferenceable(8) ptr @_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %3 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1186
  %i.e = load ptr, ptr %0, align 8, !tbaa !1189   ; 2 uses
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = ptrtoint ptr %i.e to i64
  %i.h = sub i64 %i.f, %i.g
  %i.i = ashr exact i64 %i.h, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %1, ptr %i.a, align 8, !tbaa !112
  store i64 %i.i, ptr %i.b, align 8, !tbaa !112
  %.not.i.i = icmp ult i64 %1, %i.i
  br i1 %.not.i.i, label %_ZN6duckdb6vectorISt17reference_wrapperINS_16ExpressionBinderEELb1ESaIS3_EE3getILb1EEERS3_m.exit, label %bb.b, !prof !298

bb.b:                                             ; preds = %bb.a
end_hunk_15
begin_hunk_16_@_ZN6duckdbL24PlanUncorrelatedSubqueryERNS_6BinderERNS_23BoundSubqueryExpressionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS5_ELb1EEES8_:bb.a
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #23, !noalias !1383
  br label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.pn.i399 = phi { ptr, i32 } [ %i.lu, %bb.ck ], [ %i.lt, %bb.cj ]
  call void @_ZdlPv(ptr noundef nonnull %i.ls) #25, !noalias !1383
  br label %.body404

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i408: ; preds = %bb.ci
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %18) #23, !noalias !1383
  call void @llvm.lifetime.end.p0(ptr nonnull %18)
  call void @llvm.lifetime.start.p0(ptr nonnull %53) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  %i.lv = getelementptr inbounds nuw i8, ptr %53, i64 8 ; 2 uses
  %i.lw = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #26
          to label %.noexc421 unwind label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit521 ; 4 uses

.noexc421:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i408
  %i.lx = getelementptr inbounds nuw i8, ptr %53, i64 16
  %i.ly = ptrtoint ptr %i.ls to i64
  store i64 %i.ly, ptr %i.lw, align 8, !tbaa !13
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 8 ; 4 uses
  store ptr %i.lw, ptr %53, align 8, !tbaa !213
  store ptr %i.lz, ptr %i.lv, align 8, !tbaa !211
  store ptr %i.lz, ptr %i.lx, align 8, !tbaa !212
  call void @llvm.lifetime.start.p0(ptr nonnull %54) #23
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_6BinderE(ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.cm unwind label %bb.dq

bb.cm:                                            ; preds = %.noexc421
  call void @llvm.lifetime.start.p0(ptr nonnull %55) #23
  invoke void @_ZN6duckdb19FirstFunctionGetter11GetFunctionERKNS_11LogicalTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::AggregateFunction") align 8 %56, ptr noundef nonnull align 8 dereferenceable(24) %i.lr)
          to label %bb.cn unwind label %bb.dr

bb.cn:                                            ; preds = %bb.cm
  store ptr %i.lw, ptr %57, align 8, !tbaa !213
  %i.ma = getelementptr inbounds nuw i8, ptr %57, i64 8 ; 2 uses
  store ptr %i.lz, ptr %i.ma, align 8, !tbaa !211
  %i.mb = getelementptr inbounds nuw i8, ptr %57, i64 16
  store ptr %i.lz, ptr %i.mb, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %53, i8 0, i64 24, i1 false)
  store ptr null, ptr %58, align 8, !tbaa !266
  invoke void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.768") align 8 %55, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %56, ptr noundef nonnull %57, ptr noundef nonnull %58, i8 noundef zeroext 1)
          to label %bb.co unwind label %bb.ds

bb.co:                                            ; preds = %bb.cn
  %i.mc = load ptr, ptr %58, align 8, !tbaa !13   ; 3 uses
  %.not.i426 = icmp eq ptr %i.mc, null
  br i1 %.not.i426, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i427

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i427: ; preds = %bb.co
  %i.md = load ptr, ptr %i.mc, align 8, !tbaa !10
  %i.me = getelementptr inbounds nuw i8, ptr %i.md, i64 8
  %i.mf = load ptr, ptr %i.me, align 8
  call void %i.mf(ptr noundef nonnull align 8 dereferenceable(88) %i.mc) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428: ; preds = %bb.co, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i427
  %i.mg = load ptr, ptr %57, align 8, !tbaa !213  ; 3 uses
  %i.mh = load ptr, ptr %i.ma, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i429 = icmp eq ptr %i.mg, %i.mh
  br i1 %.not4.i.i.i429, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438, label %.lr.ph.i.i.i430

.lr.ph.i.i.i430:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434
  %.05.i.i.i431 = phi ptr [ %i.mm, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434 ], [ %i.mg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428 ] ; 2 uses
  %i.mi = load ptr, ptr %.05.i.i.i431, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i432 = icmp eq ptr %i.mi, null
  br i1 %.not.i.i.i.i.i432, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i433

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i433: ; preds = %.lr.ph.i.i.i430
  %i.mj = load ptr, ptr %i.mi, align 8, !tbaa !10
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 8
  %i.ml = load ptr, ptr %i.mk, align 8
  call void %i.ml(ptr noundef nonnull align 8 dereferenceable(88) %i.mi) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i433, %.lr.ph.i.i.i430
  %i.mm = getelementptr inbounds nuw i8, ptr %.05.i.i.i431, i64 8 ; 2 uses
  %.not.i.i.i435 = icmp eq ptr %i.mm, %i.mh
  br i1 %.not.i.i.i435, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436, label %.lr.ph.i.i.i430, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i434
  %.pr.i437 = load ptr, ptr %57, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428
  %i.mn = phi ptr [ %.pr.i437, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i436 ], [ %i.mg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit428 ] ; 2 uses
  %.not.i.i1.i439 = icmp eq ptr %i.mn, null
  br i1 %.not.i.i1.i439, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440, label %bb.cp

bb.cp:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438
  call void @_ZdlPv(ptr noundef nonnull %i.mn) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i438, %bb.cp
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %56, align 8, !tbaa !10
  %i.mo = getelementptr inbounds nuw i8, ptr %56, i64 360
  %i.mp = load ptr, ptr %i.mo, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i441 = icmp eq ptr %i.mp, null
  br i1 %.not.i.i.i.i441, label %_ZN6duckdb17AggregateFunctionD2Ev.exit445, label %bb.cq

bb.cq:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 8 ; 4 uses
  %i.mr = load atomic i64, ptr %i.mq acquire, align 8 ; 2 uses
  %i.ms = icmp eq i64 %i.mr, 4294967297
  %i.mt = trunc i64 %i.mr to i32                  ; 2 uses
  br i1 %i.ms, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %bb.cq
  store i32 0, ptr %i.mq, align 8, !tbaa !115
  %i.mu = getelementptr inbounds nuw i8, ptr %i.mp, i64 12
  store i32 0, ptr %i.mu, align 4, !tbaa !117
  %i.mv = load ptr, ptr %i.mp, align 8, !tbaa !10
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %i.mx = load ptr, ptr %i.mw, align 8
  call void %i.mx(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #23, !inline_history !520
  %i.my = load ptr, ptr %i.mp, align 8, !tbaa !10
  %i.mz = getelementptr inbounds nuw i8, ptr %i.my, i64 24
  %i.na = load ptr, ptr %i.mz, align 8
  call void %i.na(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #23, !inline_history !520
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit445

bb.cs:                                            ; preds = %bb.cq
  %i.nb = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i442 = icmp eq i8 %i.nb, 0
  br i1 %.not.i.i.i.i.i442, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.nc = add nsw i32 %i.mt, -1
  store i32 %i.nc, ptr %i.mq, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443

bb.cu:                                            ; preds = %bb.cs
  %i.nd = atomicrmw volatile add ptr %i.mq, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443: ; preds = %bb.cu, %bb.ct
  %.0.i.i.i.i.i.i444 = phi i32 [ %i.mt, %bb.ct ], [ %i.nd, %bb.cu ]
  %i.ne = icmp eq i32 %.0.i.i.i.i.i.i444, 1
  br i1 %i.ne, label %bb.cv, label %_ZN6duckdb17AggregateFunctionD2Ev.exit445, !prof !120

bb.cv:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.mp) #23, !inline_history !521
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit445

_ZN6duckdb17AggregateFunctionD2Ev.exit445:        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit440, %bb.cr, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i443, %bb.cv
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %56) #23, !inline_history !521
  %i.nf = load ptr, ptr %55, align 8, !tbaa !522  ; 5 uses
  store ptr null, ptr %55, align 8, !tbaa !522
  %i.ng = getelementptr inbounds nuw i8, ptr %52, i64 8 ; 8 uses
  %i.nh = load ptr, ptr %i.ng, align 8, !tbaa !211 ; 6 uses
  %i.ni = getelementptr inbounds nuw i8, ptr %52, i64 16 ; 5 uses
  %i.nj = load ptr, ptr %i.ni, align 8, !tbaa !212 ; 2 uses
  %.not.i.i446 = icmp eq ptr %i.nh, %i.nj
  br i1 %.not.i.i446, label %bb.cx, label %bb.cw

bb.cw:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit445
  %i.nk = ptrtoint ptr %i.nf to i64
  store i64 %i.nk, ptr %i.nh, align 8, !tbaa !13
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  store ptr %i.nl, ptr %i.ng, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464

bb.cx:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit445
  %i.nm = load ptr, ptr %52, align 8, !tbaa !213  ; 10 uses
  %i.nn = ptrtoint ptr %i.nh to i64               ; 3 uses
  %i.no = ptrtoint ptr %i.nm to i64               ; 3 uses
  %i.np = sub i64 %i.nn, %i.no                    ; 3 uses
  %i.nq = icmp eq i64 %i.np, 9223372036854775800
  br i1 %i.nq, label %bb.cy, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447

bb.cy:                                            ; preds = %bb.cx
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc459 unwind label %bb.dt

.noexc459:                                        ; preds = %bb.cy
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447: ; preds = %bb.cx
  %i.nr = ashr exact i64 %i.np, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i448 = call i64 @llvm.umax.i64(i64 %i.nr, i64 1)
  %i.ns = add nsw i64 %.sroa.speculated.i.i.i.i448, %i.nr ; 2 uses
  %i.nt = icmp ult i64 %i.ns, %i.nr
  %i.nu = call i64 @llvm.umin.i64(i64 %i.ns, i64 1152921504606846975)
  %i.nv = select i1 %i.nt, i64 1152921504606846975, i64 %i.nu ; 3 uses
  %.not.i.i.i.i449 = icmp ne i64 %i.nv, 0
  call void @llvm.assume(i1 %.not.i.i.i.i449)
  %i.nw = shl nuw nsw i64 %i.nv, 3
  %i.nx = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.nw) #26
          to label %.noexc460 unwind label %bb.dt ; 10 uses

.noexc460:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 %i.np
  %i.nz = ptrtoint ptr %i.nf to i64
  store i64 %i.nz, ptr %i.ny, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i450 = icmp eq ptr %i.nm, %i.nh
  br i1 %.not10.i.i.i.i.i.i.i450, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455, label %.lr.ph.i.i.i.i.i.i.i451.preheader

.lr.ph.i.i.i.i.i.i.i451.preheader:                ; preds = %.noexc460
  %100 = sub i64 %i.nn, %i.no
  %101 = add i64 %100, -8                         ; 2 uses
  %i.oa = lshr i64 %101, 3
  %i.ob = add nuw nsw i64 %i.oa, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %101, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i451.preheader1561, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i451.preheader
  %i.oc = add i64 %i.nn, -8
  %i.od = sub i64 %i.oc, %i.no
  %i.oe = and i64 %i.od, -8
  %i.of = add i64 %i.oe, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.nx, i64 %i.of
  %scevgep1471 = getelementptr i8, ptr %i.nm, i64 %i.of
  %bound0 = icmp ult ptr %i.nx, %scevgep1471
  %bound1 = icmp ult ptr %i.nm, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i451.preheader1561, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ob, 4611686018427387900     ; 3 uses
  %i.og = shl i64 %n.vec, 3                       ; 2 uses
  %i.oh = getelementptr i8, ptr %i.nx, i64 %i.og  ; 2 uses
  %i.oi = getelementptr i8, ptr %i.nm, i64 %i.og
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.oj = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.nx, i64 %i.oj ; 2 uses
  %next.gep1472 = getelementptr i8, ptr %i.nm, i64 %i.oj ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.ok = getelementptr i8, ptr %next.gep1472, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep1472, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  %wide.load1473 = load <2 x i64>, ptr %i.ok, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  %i.ol = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !1394, !noalias !1391
  store <2 x i64> %wide.load1473, ptr %i.ol, align 8, !tbaa !13, !alias.scope !1394, !noalias !1391
  %i.om = getelementptr i8, ptr %next.gep1472, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1472, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  store <2 x ptr> splat (ptr null), ptr %i.om, align 8, !tbaa !13, !alias.scope !1391, !noalias !1386
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.on = icmp eq i64 %index.next, %n.vec
  br i1 %i.on, label %middle.block, label %vector.body, !llvm.loop !1396

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ob, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455, label %.lr.ph.i.i.i.i.i.i.i451.preheader1561

.lr.ph.i.i.i.i.i.i.i451.preheader1561:            ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i451.preheader, %middle.block
  %.012.i.i.i.i.i.i.i452.ph = phi ptr [ %i.nx, %vector.memcheck ], [ %i.nx, %.lr.ph.i.i.i.i.i.i.i451.preheader ], [ %i.oh, %middle.block ]
  %.0911.i.i.i.i.i.i.i453.ph = phi ptr [ %i.nm, %vector.memcheck ], [ %i.nm, %.lr.ph.i.i.i.i.i.i.i451.preheader ], [ %i.oi, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i451

.lr.ph.i.i.i.i.i.i.i451:                          ; preds = %.lr.ph.i.i.i.i.i.i.i451.preheader1561, %.lr.ph.i.i.i.i.i.i.i451
  %.012.i.i.i.i.i.i.i452 = phi ptr [ %i.oq, %.lr.ph.i.i.i.i.i.i.i451 ], [ %.012.i.i.i.i.i.i.i452.ph, %.lr.ph.i.i.i.i.i.i.i451.preheader1561 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i453 = phi ptr [ %i.op, %.lr.ph.i.i.i.i.i.i.i451 ], [ %.0911.i.i.i.i.i.i.i453.ph, %.lr.ph.i.i.i.i.i.i.i451.preheader1561 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1386)
  call void @llvm.experimental.noalias.scope.decl(metadata !1389)
  %i.oo = load i64, ptr %.0911.i.i.i.i.i.i.i453, align 8, !tbaa !13, !alias.scope !1389, !noalias !1386
  store i64 %i.oo, ptr %.012.i.i.i.i.i.i.i452, align 8, !tbaa !13, !alias.scope !1386, !noalias !1389
  store ptr null, ptr %.0911.i.i.i.i.i.i.i453, align 8, !tbaa !13, !alias.scope !1389, !noalias !1386
  %i.op = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i453, i64 8 ; 2 uses
  %i.oq = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i452, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i454 = icmp eq ptr %i.op, %i.nh
  br i1 %.not.i.i.i.i.i.i.i454, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455, label %.lr.ph.i.i.i.i.i.i.i451, !llvm.loop !1397

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455: ; preds = %.lr.ph.i.i.i.i.i.i.i451, %middle.block, %.noexc460
  %.0.lcssa.i.i.i.i.i.i.i456 = phi ptr [ %i.nx, %.noexc460 ], [ %i.oh, %middle.block ], [ %i.oq, %.lr.ph.i.i.i.i.i.i.i451 ]
  %i.or = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i456, i64 8 ; 2 uses
  %.not.i23.i.i.i457 = icmp eq ptr %i.nm, null
  br i1 %.not.i23.i.i.i457, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458, label %bb.cz

bb.cz:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455
  call void @_ZdlPv(ptr noundef nonnull %i.nm) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458: ; preds = %bb.cz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i455
  store ptr %i.nx, ptr %52, align 8, !tbaa !213
  store ptr %i.or, ptr %i.ng, align 8, !tbaa !211
  %i.os = getelementptr inbounds nuw [8 x i8], ptr %i.nx, i64 %i.nv ; 2 uses
  store ptr %i.os, ptr %i.ni, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464: ; preds = %bb.cw, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458
  %i.ot = phi ptr [ %i.nj, %bb.cw ], [ %i.os, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458 ]
  %i.ou = phi ptr [ %i.nl, %bb.cw ], [ %i.or, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i458 ]
  br i1 %i.lq, label %bb.da, label %bb.dx

bb.da:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit464
  call void @llvm.lifetime.start.p0(ptr nonnull %59) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %60) #23
  invoke void @_ZN6duckdb12CountStarFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::AggregateFunction") align 8 %61)
          to label %bb.db unwind label %bb.du

bb.db:                                            ; preds = %bb.da
  %i.ov = getelementptr inbounds nuw i8, ptr %62, i64 8
  %i.ow = getelementptr inbounds nuw i8, ptr %59, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %62, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %59, i8 0, i64 24, i1 false)
  store ptr null, ptr %63, align 8, !tbaa !266
  invoke void @_ZN6duckdb14FunctionBinder21BindAggregateFunctionENS_17AggregateFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEES7_NS_13AggregateTypeE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr.768") align 8 %60, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %61, ptr noundef nonnull %62, ptr noundef nonnull %63, i8 noundef zeroext 1)
          to label %bb.dc unwind label %bb.dv

bb.dc:                                            ; preds = %bb.db
  %i.ox = load ptr, ptr %63, align 8, !tbaa !13   ; 3 uses
  %.not.i465 = icmp eq ptr %i.ox, null
  br i1 %.not.i465, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i466

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i466: ; preds = %bb.dc
  %i.oy = load ptr, ptr %i.ox, align 8, !tbaa !10
  %i.oz = getelementptr inbounds nuw i8, ptr %i.oy, i64 8
  %i.pa = load ptr, ptr %i.oz, align 8
  call void %i.pa(ptr noundef nonnull align 8 dereferenceable(88) %i.ox) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467: ; preds = %bb.dc, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i466
  %i.pb = load ptr, ptr %62, align 8, !tbaa !213  ; 3 uses
  %i.pc = load ptr, ptr %i.ov, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i468 = icmp eq ptr %i.pb, %i.pc
  br i1 %.not4.i.i.i468, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477, label %.lr.ph.i.i.i469

.lr.ph.i.i.i469:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473
  %.05.i.i.i470 = phi ptr [ %i.ph, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473 ], [ %i.pb, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467 ] ; 2 uses
  %i.pd = load ptr, ptr %.05.i.i.i470, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i471 = icmp eq ptr %i.pd, null
  br i1 %.not.i.i.i.i.i471, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i472

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i472: ; preds = %.lr.ph.i.i.i469
  %i.pe = load ptr, ptr %i.pd, align 8, !tbaa !10
  %i.pf = getelementptr inbounds nuw i8, ptr %i.pe, i64 8
  %i.pg = load ptr, ptr %i.pf, align 8
  call void %i.pg(ptr noundef nonnull align 8 dereferenceable(88) %i.pd) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i472, %.lr.ph.i.i.i469
  %i.ph = getelementptr inbounds nuw i8, ptr %.05.i.i.i470, i64 8 ; 2 uses
  %.not.i.i.i474 = icmp eq ptr %i.ph, %i.pc
  br i1 %.not.i.i.i474, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475, label %.lr.ph.i.i.i469, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i473
  %.pr.i476 = load ptr, ptr %62, align 8, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467
  %i.pi = phi ptr [ %.pr.i476, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i475 ], [ %i.pb, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit467 ] ; 2 uses
  %.not.i.i1.i478 = icmp eq ptr %i.pi, null
  br i1 %.not.i.i1.i478, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479, label %bb.dd

bb.dd:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477
  call void @_ZdlPv(ptr noundef nonnull %i.pi) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i477, %bb.dd
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb17AggregateFunctionE, i64 16), ptr %61, align 8, !tbaa !10
  %i.pj = getelementptr inbounds nuw i8, ptr %61, i64 360
  %i.pk = load ptr, ptr %i.pj, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i480 = icmp eq ptr %i.pk, null
  br i1 %.not.i.i.i.i480, label %_ZN6duckdb17AggregateFunctionD2Ev.exit484, label %bb.de

bb.de:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pk, i64 8 ; 4 uses
  %i.pm = load atomic i64, ptr %i.pl acquire, align 8 ; 2 uses
  %i.pn = icmp eq i64 %i.pm, 4294967297
  %i.po = trunc i64 %i.pm to i32                  ; 2 uses
  br i1 %i.pn, label %bb.df, label %bb.dg

bb.df:                                            ; preds = %bb.de
  store i32 0, ptr %i.pl, align 8, !tbaa !115
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pk, i64 12
  store i32 0, ptr %i.pp, align 4, !tbaa !117
  %i.pq = load ptr, ptr %i.pk, align 8, !tbaa !10
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pq, i64 16
  %i.ps = load ptr, ptr %i.pr, align 8
  call void %i.ps(ptr noundef nonnull align 8 dereferenceable(16) %i.pk) #23, !inline_history !520
  %i.pt = load ptr, ptr %i.pk, align 8, !tbaa !10
  %i.pu = getelementptr inbounds nuw i8, ptr %i.pt, i64 24
  %i.pv = load ptr, ptr %i.pu, align 8
  call void %i.pv(ptr noundef nonnull align 8 dereferenceable(16) %i.pk) #23, !inline_history !520
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit484

bb.dg:                                            ; preds = %bb.de
  %i.pw = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i481 = icmp eq i8 %i.pw, 0
  br i1 %.not.i.i.i.i.i481, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %i.px = add nsw i32 %i.po, -1
  store i32 %i.px, ptr %i.pl, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482

bb.di:                                            ; preds = %bb.dg
  %i.py = atomicrmw volatile add ptr %i.pl, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482: ; preds = %bb.di, %bb.dh
  %.0.i.i.i.i.i.i483 = phi i32 [ %i.po, %bb.dh ], [ %i.py, %bb.di ]
  %i.pz = icmp eq i32 %.0.i.i.i.i.i.i483, 1
  br i1 %i.pz, label %bb.dj, label %_ZN6duckdb17AggregateFunctionD2Ev.exit484, !prof !120

bb.dj:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.pk) #23, !inline_history !521
  br label %_ZN6duckdb17AggregateFunctionD2Ev.exit484

_ZN6duckdb17AggregateFunctionD2Ev.exit484:        ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit479, %bb.df, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i482, %bb.dj
  call void @_ZN6duckdb18BaseScalarFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %61) #23, !inline_history !521
  %i.qa = load ptr, ptr %60, align 8, !tbaa !522  ; 5 uses
  store ptr null, ptr %60, align 8, !tbaa !522
  %i.qb = load ptr, ptr %i.ng, align 8, !tbaa !211 ; 6 uses
  %i.qc = load ptr, ptr %i.ni, align 8, !tbaa !212 ; 2 uses
  %.not.i.i485 = icmp eq ptr %i.qb, %i.qc
  br i1 %.not.i.i485, label %bb.dk, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread: ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit484
  %i.qd = ptrtoint ptr %i.qa to i64
  store i64 %i.qd, ptr %i.qb, align 8, !tbaa !13
  %i.qe = getelementptr inbounds nuw i8, ptr %i.qb, i64 8 ; 2 uses
  store ptr %i.qe, ptr %i.ng, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506

bb.dk:                                            ; preds = %_ZN6duckdb17AggregateFunctionD2Ev.exit484
  %i.qf = load ptr, ptr %52, align 8, !tbaa !213  ; 10 uses
  %i.qg = ptrtoint ptr %i.qb to i64               ; 3 uses
  %i.qh = ptrtoint ptr %i.qf to i64               ; 3 uses
  %i.qi = sub i64 %i.qg, %i.qh                    ; 3 uses
  %i.qj = icmp eq i64 %i.qi, 9223372036854775800
  br i1 %i.qj, label %bb.dl, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i486

bb.dl:                                            ; preds = %bb.dk
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc498 unwind label %bb.dw

.noexc498:                                        ; preds = %bb.dl
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i486: ; preds = %bb.dk
  %i.qk = ashr exact i64 %i.qi, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i487 = call i64 @llvm.umax.i64(i64 %i.qk, i64 1)
  %i.ql = add nsw i64 %.sroa.speculated.i.i.i.i487, %i.qk ; 2 uses
  %i.qm = icmp ult i64 %i.ql, %i.qk
  %i.qn = call i64 @llvm.umin.i64(i64 %i.ql, i64 1152921504606846975)
  %i.qo = select i1 %i.qm, i64 1152921504606846975, i64 %i.qn ; 4 uses
  %.not.i.i.i.i488 = icmp ne i64 %i.qo, 0
  call void @llvm.assume(i1 %.not.i.i.i.i488)
  %i.qp = shl nuw nsw i64 %i.qo, 3
  %i.qq = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.qp) #26
          to label %.noexc499 unwind label %bb.dw ; 12 uses

.noexc499:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i486
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qq, i64 %i.qi
  %i.qs = ptrtoint ptr %i.qa to i64
  store i64 %i.qs, ptr %i.qr, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i489 = icmp eq ptr %i.qf, %i.qb
  br i1 %.not10.i.i.i.i.i.i.i489, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494, label %.lr.ph.i.i.i.i.i.i.i490.preheader

.lr.ph.i.i.i.i.i.i.i490.preheader:                ; preds = %.noexc499
  %102 = sub i64 %i.qg, %i.qh
  %103 = add i64 %102, -8                         ; 2 uses
  %i.qt = lshr i64 %103, 3
  %i.qu = add nuw nsw i64 %i.qt, 1                ; 2 uses
  %min.iters.check1482 = icmp ult i64 %103, 152
  br i1 %min.iters.check1482, label %.lr.ph.i.i.i.i.i.i.i490.preheader1559, label %vector.memcheck1475

vector.memcheck1475:                              ; preds = %.lr.ph.i.i.i.i.i.i.i490.preheader
  %i.qv = add i64 %i.qg, -8
  %i.qw = sub i64 %i.qv, %i.qh
  %i.qx = and i64 %i.qw, -8
  %i.qy = add i64 %i.qx, 8                        ; 2 uses
  %scevgep1476 = getelementptr i8, ptr %i.qq, i64 %i.qy
  %scevgep1477 = getelementptr i8, ptr %i.qf, i64 %i.qy
  %bound01478 = icmp ult ptr %i.qq, %scevgep1477
  %bound11479 = icmp ult ptr %i.qf, %scevgep1476
  %found.conflict1480 = and i1 %bound01478, %bound11479
  br i1 %found.conflict1480, label %.lr.ph.i.i.i.i.i.i.i490.preheader1559, label %vector.ph1483

vector.ph1483:                                    ; preds = %vector.memcheck1475
  %n.vec1485 = and i64 %i.qu, 4611686018427387900 ; 3 uses
  %i.qz = shl i64 %n.vec1485, 3                   ; 2 uses
  %i.ra = getelementptr i8, ptr %i.qq, i64 %i.qz  ; 2 uses
  %i.rb = getelementptr i8, ptr %i.qf, i64 %i.qz
  br label %vector.body1486

vector.body1486:                                  ; preds = %vector.body1486, %vector.ph1483
  %index1487 = phi i64 [ 0, %vector.ph1483 ], [ %index.next1492, %vector.body1486 ] ; 2 uses
  %i.rc = shl i64 %index1487, 3                   ; 2 uses
  %next.gep1488 = getelementptr i8, ptr %i.qq, i64 %i.rc ; 2 uses
  %next.gep1489 = getelementptr i8, ptr %i.qf, i64 %i.rc ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.rd = getelementptr i8, ptr %next.gep1489, i64 16
  %wide.load1490 = load <2 x i64>, ptr %next.gep1489, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  %wide.load1491 = load <2 x i64>, ptr %i.rd, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  %i.re = getelementptr i8, ptr %next.gep1488, i64 16
  store <2 x i64> %wide.load1490, ptr %next.gep1488, align 8, !tbaa !13, !alias.scope !1406, !noalias !1403
  store <2 x i64> %wide.load1491, ptr %i.re, align 8, !tbaa !13, !alias.scope !1406, !noalias !1403
  %i.rf = getelementptr i8, ptr %next.gep1489, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1489, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  store <2 x ptr> splat (ptr null), ptr %i.rf, align 8, !tbaa !13, !alias.scope !1403, !noalias !1398
  %index.next1492 = add nuw i64 %index1487, 4     ; 2 uses
  %i.rg = icmp eq i64 %index.next1492, %n.vec1485
  br i1 %i.rg, label %middle.block1493, label %vector.body1486, !llvm.loop !1408

middle.block1493:                                 ; preds = %vector.body1486
  %cmp.n1494 = icmp eq i64 %i.qu, %n.vec1485
  br i1 %cmp.n1494, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494, label %.lr.ph.i.i.i.i.i.i.i490.preheader1559

.lr.ph.i.i.i.i.i.i.i490.preheader1559:            ; preds = %vector.memcheck1475, %.lr.ph.i.i.i.i.i.i.i490.preheader, %middle.block1493
  %.012.i.i.i.i.i.i.i491.ph = phi ptr [ %i.qq, %vector.memcheck1475 ], [ %i.qq, %.lr.ph.i.i.i.i.i.i.i490.preheader ], [ %i.ra, %middle.block1493 ]
  %.0911.i.i.i.i.i.i.i492.ph = phi ptr [ %i.qf, %vector.memcheck1475 ], [ %i.qf, %.lr.ph.i.i.i.i.i.i.i490.preheader ], [ %i.rb, %middle.block1493 ]
  br label %.lr.ph.i.i.i.i.i.i.i490

.lr.ph.i.i.i.i.i.i.i490:                          ; preds = %.lr.ph.i.i.i.i.i.i.i490.preheader1559, %.lr.ph.i.i.i.i.i.i.i490
  %.012.i.i.i.i.i.i.i491 = phi ptr [ %i.rj, %.lr.ph.i.i.i.i.i.i.i490 ], [ %.012.i.i.i.i.i.i.i491.ph, %.lr.ph.i.i.i.i.i.i.i490.preheader1559 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i492 = phi ptr [ %i.ri, %.lr.ph.i.i.i.i.i.i.i490 ], [ %.0911.i.i.i.i.i.i.i492.ph, %.lr.ph.i.i.i.i.i.i.i490.preheader1559 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1398)
  call void @llvm.experimental.noalias.scope.decl(metadata !1401)
  %i.rh = load i64, ptr %.0911.i.i.i.i.i.i.i492, align 8, !tbaa !13, !alias.scope !1401, !noalias !1398
  store i64 %i.rh, ptr %.012.i.i.i.i.i.i.i491, align 8, !tbaa !13, !alias.scope !1398, !noalias !1401
  store ptr null, ptr %.0911.i.i.i.i.i.i.i492, align 8, !tbaa !13, !alias.scope !1401, !noalias !1398
  %i.ri = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i492, i64 8 ; 2 uses
  %i.rj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i491, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i493 = icmp eq ptr %i.ri, %i.qb
  br i1 %.not.i.i.i.i.i.i.i493, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494, label %.lr.ph.i.i.i.i.i.i.i490, !llvm.loop !1409

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494: ; preds = %.lr.ph.i.i.i.i.i.i.i490, %middle.block1493, %.noexc499
  %.0.lcssa.i.i.i.i.i.i.i495 = phi ptr [ %i.qq, %.noexc499 ], [ %i.ra, %middle.block1493 ], [ %i.rj, %.lr.ph.i.i.i.i.i.i.i490 ]
  %i.rk = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i495, i64 8 ; 5 uses
  %.not.i23.i.i.i496 = icmp eq ptr %i.qf, null
  br i1 %.not.i23.i.i.i496, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494
  store ptr %i.qq, ptr %52, align 8, !tbaa !213
  store ptr %i.rk, ptr %i.ng, align 8, !tbaa !211
  %i.rl = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qo ; 2 uses
  store ptr %i.rl, ptr %i.ni, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i494
  call void @_ZdlPv(ptr noundef nonnull %i.qf) #25
  %.pre.pre = load ptr, ptr %60, align 8, !tbaa !522 ; 3 uses
  store ptr %i.qq, ptr %52, align 8, !tbaa !213
  store ptr %i.rk, ptr %i.ng, align 8, !tbaa !211
  %i.rm = getelementptr inbounds nuw [8 x i8], ptr %i.qq, i64 %i.qo ; 3 uses
  store ptr %i.rm, ptr %i.ni, align 8, !tbaa !212
  %.not.i504 = icmp eq ptr %.pre.pre, null
  br i1 %.not.i504, label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506, label %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505

_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503
  %i.rn = load ptr, ptr %.pre.pre, align 8, !tbaa !10
  %i.ro = getelementptr inbounds nuw i8, ptr %i.rn, i64 8
  %i.rp = load ptr, ptr %i.ro, align 8
  call void %i.rp(ptr noundef nonnull align 8 dereferenceable(512) %.pre.pre) #23, !inline_history !536
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506

_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505
  %i.rq = phi ptr [ %i.qe, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread ], [ %i.rk, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503 ], [ %i.rk, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505 ], [ %i.rk, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434 ]
  %i.rr = phi ptr [ %i.qc, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread ], [ %i.rm, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503 ], [ %i.rm, %_ZNKSt14default_deleteIN6duckdb24BoundAggregateExpressionEEclEPS1_.exit.i505 ], [ %i.rl, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit503.thread1434 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %60) #23
  %i.rs = load ptr, ptr %59, align 8, !tbaa !213  ; 4 uses
  %i.rt = load ptr, ptr %i.ow, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i507 = icmp eq ptr %i.rs, %i.rt
  br i1 %.not4.i.i.i507, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516, label %.lr.ph.i.i.i508

.lr.ph.i.i.i508:                                  ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512
  %.05.i.i.i509 = phi ptr [ %i.ry, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512 ], [ %i.rs, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506 ] ; 2 uses
  %i.ru = load ptr, ptr %.05.i.i.i509, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i510 = icmp eq ptr %i.ru, null
  br i1 %.not.i.i.i.i.i510, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i511

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i511: ; preds = %.lr.ph.i.i.i508
  %i.rv = load ptr, ptr %i.ru, align 8, !tbaa !10
  %i.rw = getelementptr inbounds nuw i8, ptr %i.rv, i64 8
  %i.rx = load ptr, ptr %i.rw, align 8
  call void %i.rx(ptr noundef nonnull align 8 dereferenceable(88) %i.ru) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i511, %.lr.ph.i.i.i508
  %i.ry = getelementptr inbounds nuw i8, ptr %.05.i.i.i509, i64 8 ; 2 uses
  %.not.i.i.i513 = icmp eq ptr %i.ry, %i.rt
  br i1 %.not.i.i.i513, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516, label %.lr.ph.i.i.i508, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i512, %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit506
  %.not.i.i1.i517 = icmp eq ptr %i.rs, null
  br i1 %.not.i.i1.i517, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit518, label %bb.dm

bb.dm:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516
  call void @_ZdlPv(ptr noundef nonnull %i.rs) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit518

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit518: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i516, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %59) #23
  br label %bb.dx

bb.dn:                                            ; preds = %bb.cf
  %i.rz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.do:                                            ; preds = %bb.cg
  %i.sa = landingpad { ptr, i32 }
          cleanup
  br label %bb.hx

bb.dp:                                            ; preds = %bb.ch
  %i.sb = landingpad { ptr, i32 }
          cleanup
  br label %.body404

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit521: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i408
  %i.sc = landingpad { ptr, i32 }
          cleanup
  %i.sd = load ptr, ptr %i.ls, align 8, !tbaa !10
  %i.se = getelementptr inbounds nuw i8, ptr %i.sd, i64 8
  %i.sf = load ptr, ptr %i.se, align 8
  call void %i.sf(ptr noundef nonnull align 8 dereferenceable(88) %i.ls) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit847

bb.dq:                                            ; preds = %.noexc421
  %i.sg = landingpad { ptr, i32 }
          cleanup
  br label %bb.hw

bb.dr:                                            ; preds = %bb.cm
  %i.sh = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit844

bb.ds:                                            ; preds = %bb.cn
  %i.si = landingpad { ptr, i32 }
          cleanup
  %i.sj = load ptr, ptr %58, align 8, !tbaa !13   ; 3 uses
  %.not.i522 = icmp eq ptr %i.sj, null
  br i1 %.not.i522, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523: ; preds = %bb.ds
  %i.sk = load ptr, ptr %i.sj, align 8, !tbaa !10
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 8
  %i.sm = load ptr, ptr %i.sl, align 8
  call void %i.sm(ptr noundef nonnull align 8 dereferenceable(88) %i.sj) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit524: ; preds = %bb.ds, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i523
  call void @_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(24) %57) #23
  call void @_ZN6duckdb17AggregateFunctionD2Ev(ptr noundef nonnull align 8 dereferenceable(368) %56) #23
  br label %_ZNSt10unique_ptrIN6duckdb24BoundAggregateExpressionESt14default_deleteIS1_EED2Ev.exit844

bb.dt:                                            ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i447, %bb.cy
  %i.sn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.not.i525 = icmp eq ptr %i.nf, null
  br i1 %.not.i525, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit527, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i526

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i526: ; preds = %bb.dt
  %i.so = load ptr, ptr %i.nf, align 8, !tbaa !10
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 8
  %i.sq = load ptr, ptr %i.sp, align 8
  call void %i.sq(ptr noundef nonnull align 8 dereferenceable(88) %i.nf) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit527
end_hunk_16
begin_hunk_17_@_ZN6duckdbL24PlanUncorrelatedSubqueryERNS_6BinderERNS_23BoundSubqueryExpressionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS5_ELb1EEES8_:bb.a
          to label %.noexc573 unwind label %bb.gz ; 5 uses

.noexc573:                                        ; preds = %bb.es
  %i.uv = getelementptr inbounds nuw i8, ptr %i.ut, i64 56
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %15, ptr noundef nonnull align 8 dereferenceable(24) %i.uv)
          to label %bb.et unwind label %bb.eu, !noalias !1416

bb.et:                                            ; preds = %.noexc573
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.uu, ptr noundef nonnull %15, i64 %i.th, i64 1, i64 noundef 0)
          to label %bb.ex unwind label %bb.ev, !noalias !1416

bb.eu:                                            ; preds = %.noexc573
  %i.uw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ew

bb.ev:                                            ; preds = %bb.et
  %i.ux = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23, !noalias !1416
  br label %bb.ew

bb.ew:                                            ; preds = %bb.ev, %bb.eu
  %.pn.i569 = phi { ptr, i32 } [ %i.ux, %bb.ev ], [ %i.uw, %bb.eu ]
  call void @_ZdlPv(ptr noundef nonnull %i.uu) #25, !noalias !1416
  br label %.body574

bb.ex:                                            ; preds = %bb.et
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %15) #23, !noalias !1416
  call void @llvm.lifetime.end.p0(ptr nonnull %15)
  call void @llvm.lifetime.start.p0(ptr nonnull %67) #23
  invoke void @_ZN6duckdb5Value6BIGINTEl(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::Value") align 8 %67, i64 noundef 1)
          to label %bb.ey unwind label %bb.ha

bb.ey:                                            ; preds = %bb.ex
  call void @llvm.lifetime.start.p0(ptr nonnull %14)
  %i.uy = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc577 unwind label %bb.hb ; 5 uses

.noexc577:                                        ; preds = %bb.ey
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %14, ptr noundef nonnull align 8 dereferenceable(64) %67) #23, !noalias !1419
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.uy, ptr noundef nonnull %14)
          to label %bb.fa unwind label %bb.ez, !noalias !1419

bb.ez:                                            ; preds = %.noexc577
  %i.uz = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #23, !noalias !1419
  call void @_ZdlPv(ptr noundef nonnull %i.uy) #25, !noalias !1419
  br label %.body578

bb.fa:                                            ; preds = %.noexc577
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %14) #23, !noalias !1419
  call void @llvm.lifetime.end.p0(ptr nonnull %14)
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %67) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %67) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %13)
  %i.va = invoke noalias noundef nonnull dereferenceable(104) ptr @_Znwm(i64 noundef 104) #26
          to label %.noexc592 unwind label %_ZNKSt14default_deleteIN6duckdb23BoundConstantExpressionEEclEPS1_.exit.i770 ; 6 uses

.noexc592:                                        ; preds = %bb.fa
  store ptr %i.uu, ptr %12, align 8, !tbaa !266, !noalias !1422
  store ptr %i.uy, ptr %13, align 8, !tbaa !266, !noalias !1422
  invoke void @_ZN6duckdb25BoundComparisonExpressionC1ENS_14ExpressionTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS3_ELb1EEES6_(ptr noundef nonnull align 8 dereferenceable(104) %i.va, i8 noundef zeroext 28, ptr noundef nonnull %12, ptr noundef nonnull %13)
          to label %bb.fb unwind label %bb.fc, !noalias !1422

bb.fb:                                            ; preds = %.noexc592
  %i.vb = load ptr, ptr %13, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i.i587 = icmp eq ptr %i.vb, null
  br i1 %.not.i.i587, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i588

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i588: ; preds = %bb.fb
  %i.vc = load ptr, ptr %i.vb, align 8, !tbaa !10, !noalias !1422
  %i.vd = getelementptr inbounds nuw i8, ptr %i.vc, i64 8
  %i.ve = load ptr, ptr %i.vd, align 8, !noalias !1422
  call void %i.ve(ptr noundef nonnull align 8 dereferenceable(88) %i.vb) #23, !noalias !1422, !inline_history !1379
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i588, %bb.fb
  %i.vf = load ptr, ptr %12, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i5.i590 = icmp eq ptr %i.vf, null
  br i1 %.not.i5.i590, label %bb.fd, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i591

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i591: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589
  %i.vg = load ptr, ptr %i.vf, align 8, !tbaa !10, !noalias !1422
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vg, i64 8
  %i.vi = load ptr, ptr %i.vh, align 8, !noalias !1422
  call void %i.vi(ptr noundef nonnull align 8 dereferenceable(88) %i.vf) #23, !noalias !1422, !inline_history !1379
  br label %bb.fd

bb.fc:                                            ; preds = %.noexc592
  %i.vj = landingpad { ptr, i32 }
          cleanup
  %i.vk = load ptr, ptr %13, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i8.i581 = icmp eq ptr %i.vk, null
  br i1 %.not.i8.i581, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i582

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i582: ; preds = %bb.fc
  %i.vl = load ptr, ptr %i.vk, align 8, !tbaa !10, !noalias !1422
  %i.vm = getelementptr inbounds nuw i8, ptr %i.vl, i64 8
  %i.vn = load ptr, ptr %i.vm, align 8, !noalias !1422
  call void %i.vn(ptr noundef nonnull align 8 dereferenceable(88) %i.vk) #23, !noalias !1422, !inline_history !1379
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i9.i582, %bb.fc
  %i.vo = load ptr, ptr %12, align 8, !tbaa !13, !noalias !1422 ; 3 uses
  %.not.i11.i584 = icmp eq ptr %i.vo, null
  br i1 %.not.i11.i584, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i586, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i585

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i585: ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583
  %i.vp = load ptr, ptr %i.vo, align 8, !tbaa !10, !noalias !1422
  %i.vq = getelementptr inbounds nuw i8, ptr %i.vp, i64 8
  %i.vr = load ptr, ptr %i.vq, align 8, !noalias !1422
  call void %i.vr(ptr noundef nonnull align 8 dereferenceable(88) %i.vo) #23, !noalias !1422, !inline_history !1379
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i586

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit13.i586: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i12.i585, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit10.i583
  call void @_ZdlPv(ptr noundef nonnull %i.va) #25, !noalias !1422
  br label %.body574

bb.fd:                                            ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i6.i591, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit.i589
  call void @llvm.lifetime.end.p0(ptr nonnull %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %13)
  call void @llvm.lifetime.start.p0(ptr nonnull %68) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %69) #23
  invoke void @_ZN6duckdb5ValueC1EPKc(ptr noundef nonnull align 8 dereferenceable(64) %69, ptr noundef nonnull @.str.45)
          to label %bb.fe unwind label %bb.hd

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.lifetime.start.p0(ptr nonnull %11)
  %i.vs = invoke noalias noundef nonnull dereferenceable(152) ptr @_Znwm(i64 noundef 152) #26
          to label %.noexc596 unwind label %bb.he ; 6 uses

.noexc596:                                        ; preds = %bb.fe
  call void @_ZN6duckdb5ValueC1EOS0_(ptr noundef nonnull align 8 dereferenceable(64) %11, ptr noundef nonnull align 8 dereferenceable(64) %69) #23, !noalias !1425
  invoke void @_ZN6duckdb23BoundConstantExpressionC1ENS_5ValueE(ptr noundef nonnull align 8 dereferenceable(152) %i.vs, ptr noundef nonnull %11)
          to label %bb.fg unwind label %bb.ff, !noalias !1425

bb.ff:                                            ; preds = %.noexc596
  %i.vt = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #23, !noalias !1425
  call void @_ZdlPv(ptr noundef nonnull %i.vs) #25, !noalias !1425
  br label %.body597

bb.fg:                                            ; preds = %.noexc596
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %11) #23, !noalias !1425
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %i.vu = getelementptr inbounds nuw i8, ptr %68, i64 8 ; 4 uses
  %i.vv = load ptr, ptr %i.vu, align 8, !tbaa !211 ; 6 uses
  %i.vw = getelementptr inbounds nuw i8, ptr %68, i64 16 ; 3 uses
  %i.vx = load ptr, ptr %i.vw, align 16, !tbaa !212
  %.not.i.i600 = icmp eq ptr %i.vv, %i.vx
  br i1 %.not.i.i600, label %bb.fi, label %bb.fh

bb.fh:                                            ; preds = %bb.fg
  %i.vy = ptrtoint ptr %i.vs to i64
  store i64 %i.vy, ptr %i.vv, align 8, !tbaa !13
  %i.vz = getelementptr inbounds nuw i8, ptr %i.vv, i64 8
  store ptr %i.vz, ptr %i.vu, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621

bb.fi:                                            ; preds = %bb.fg
  %i.wa = load ptr, ptr %68, align 16, !tbaa !213 ; 10 uses
  %i.wb = ptrtoint ptr %i.vv to i64               ; 3 uses
  %i.wc = ptrtoint ptr %i.wa to i64               ; 3 uses
  %i.wd = sub i64 %i.wb, %i.wc                    ; 3 uses
  %i.we = icmp eq i64 %i.wd, 9223372036854775800
  br i1 %i.we, label %bb.fj, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i601

bb.fj:                                            ; preds = %bb.fi
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc613 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit750

.noexc613:                                        ; preds = %bb.fj
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i601: ; preds = %bb.fi
  %i.wf = ashr exact i64 %i.wd, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i602 = call i64 @llvm.umax.i64(i64 %i.wf, i64 1)
  %i.wg = add nsw i64 %.sroa.speculated.i.i.i.i602, %i.wf ; 2 uses
  %i.wh = icmp ult i64 %i.wg, %i.wf
  %i.wi = call i64 @llvm.umin.i64(i64 %i.wg, i64 1152921504606846975)
  %i.wj = select i1 %i.wh, i64 1152921504606846975, i64 %i.wi ; 3 uses
  %.not.i.i.i.i603 = icmp ne i64 %i.wj, 0
  call void @llvm.assume(i1 %.not.i.i.i.i603)
  %i.wk = shl nuw nsw i64 %i.wj, 3
  %i.wl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.wk) #26
          to label %.noexc614 unwind label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit750 ; 10 uses

.noexc614:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i601
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 %i.wd
  %i.wn = ptrtoint ptr %i.vs to i64
  store i64 %i.wn, ptr %i.wm, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i604 = icmp eq ptr %i.wa, %i.vv
  br i1 %.not10.i.i.i.i.i.i.i604, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609, label %.lr.ph.i.i.i.i.i.i.i605.preheader

.lr.ph.i.i.i.i.i.i.i605.preheader:                ; preds = %.noexc614
  %104 = sub i64 %i.wb, %i.wc
  %105 = add i64 %104, -8                         ; 2 uses
  %i.wo = lshr i64 %105, 3
  %i.wp = add nuw nsw i64 %i.wo, 1                ; 2 uses
  %min.iters.check1504 = icmp ult i64 %105, 152
  br i1 %min.iters.check1504, label %.lr.ph.i.i.i.i.i.i.i605.preheader1557, label %vector.memcheck1497

vector.memcheck1497:                              ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader
  %i.wq = add i64 %i.wb, -8
  %i.wr = sub i64 %i.wq, %i.wc
  %i.ws = and i64 %i.wr, -8
  %i.wt = add i64 %i.ws, 8                        ; 2 uses
  %scevgep1498 = getelementptr i8, ptr %i.wl, i64 %i.wt
  %scevgep1499 = getelementptr i8, ptr %i.wa, i64 %i.wt
  %bound01500 = icmp ult ptr %i.wl, %scevgep1499
  %bound11501 = icmp ult ptr %i.wa, %scevgep1498
  %found.conflict1502 = and i1 %bound01500, %bound11501
  br i1 %found.conflict1502, label %.lr.ph.i.i.i.i.i.i.i605.preheader1557, label %vector.ph1505

vector.ph1505:                                    ; preds = %vector.memcheck1497
  %n.vec1507 = and i64 %i.wp, 4611686018427387900 ; 3 uses
  %i.wu = shl i64 %n.vec1507, 3                   ; 2 uses
  %i.wv = getelementptr i8, ptr %i.wl, i64 %i.wu  ; 2 uses
  %i.ww = getelementptr i8, ptr %i.wa, i64 %i.wu
  br label %vector.body1508

vector.body1508:                                  ; preds = %vector.body1508, %vector.ph1505
  %index1509 = phi i64 [ 0, %vector.ph1505 ], [ %index.next1514, %vector.body1508 ] ; 2 uses
  %i.wx = shl i64 %index1509, 3                   ; 2 uses
  %next.gep1510 = getelementptr i8, ptr %i.wl, i64 %i.wx ; 2 uses
  %next.gep1511 = getelementptr i8, ptr %i.wa, i64 %i.wx ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.wy = getelementptr i8, ptr %next.gep1511, i64 16
  %wide.load1512 = load <2 x i64>, ptr %next.gep1511, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  %wide.load1513 = load <2 x i64>, ptr %i.wy, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  %i.wz = getelementptr i8, ptr %next.gep1510, i64 16
  store <2 x i64> %wide.load1512, ptr %next.gep1510, align 8, !tbaa !13, !alias.scope !1436, !noalias !1433
  store <2 x i64> %wide.load1513, ptr %i.wz, align 8, !tbaa !13, !alias.scope !1436, !noalias !1433
  %i.xa = getelementptr i8, ptr %next.gep1511, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1511, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  store <2 x ptr> splat (ptr null), ptr %i.xa, align 8, !tbaa !13, !alias.scope !1433, !noalias !1428
  %index.next1514 = add nuw i64 %index1509, 4     ; 2 uses
  %i.xb = icmp eq i64 %index.next1514, %n.vec1507
  br i1 %i.xb, label %middle.block1515, label %vector.body1508, !llvm.loop !1438

middle.block1515:                                 ; preds = %vector.body1508
  %cmp.n1516 = icmp eq i64 %i.wp, %n.vec1507
  br i1 %cmp.n1516, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609, label %.lr.ph.i.i.i.i.i.i.i605.preheader1557

.lr.ph.i.i.i.i.i.i.i605.preheader1557:            ; preds = %vector.memcheck1497, %.lr.ph.i.i.i.i.i.i.i605.preheader, %middle.block1515
  %.012.i.i.i.i.i.i.i606.ph = phi ptr [ %i.wl, %vector.memcheck1497 ], [ %i.wl, %.lr.ph.i.i.i.i.i.i.i605.preheader ], [ %i.wv, %middle.block1515 ]
  %.0911.i.i.i.i.i.i.i607.ph = phi ptr [ %i.wa, %vector.memcheck1497 ], [ %i.wa, %.lr.ph.i.i.i.i.i.i.i605.preheader ], [ %i.ww, %middle.block1515 ]
  br label %.lr.ph.i.i.i.i.i.i.i605

.lr.ph.i.i.i.i.i.i.i605:                          ; preds = %.lr.ph.i.i.i.i.i.i.i605.preheader1557, %.lr.ph.i.i.i.i.i.i.i605
  %.012.i.i.i.i.i.i.i606 = phi ptr [ %i.xe, %.lr.ph.i.i.i.i.i.i.i605 ], [ %.012.i.i.i.i.i.i.i606.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader1557 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i607 = phi ptr [ %i.xd, %.lr.ph.i.i.i.i.i.i.i605 ], [ %.0911.i.i.i.i.i.i.i607.ph, %.lr.ph.i.i.i.i.i.i.i605.preheader1557 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1428)
  call void @llvm.experimental.noalias.scope.decl(metadata !1431)
  %i.xc = load i64, ptr %.0911.i.i.i.i.i.i.i607, align 8, !tbaa !13, !alias.scope !1431, !noalias !1428
  store i64 %i.xc, ptr %.012.i.i.i.i.i.i.i606, align 8, !tbaa !13, !alias.scope !1428, !noalias !1431
  store ptr null, ptr %.0911.i.i.i.i.i.i.i607, align 8, !tbaa !13, !alias.scope !1431, !noalias !1428
  %i.xd = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i607, i64 8 ; 2 uses
  %i.xe = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i606, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i608 = icmp eq ptr %i.xd, %i.vv
  br i1 %.not.i.i.i.i.i.i.i608, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609, label %.lr.ph.i.i.i.i.i.i.i605, !llvm.loop !1439

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609: ; preds = %.lr.ph.i.i.i.i.i.i.i605, %middle.block1515, %.noexc614
  %.0.lcssa.i.i.i.i.i.i.i610 = phi ptr [ %i.wl, %.noexc614 ], [ %i.wv, %middle.block1515 ], [ %i.xe, %.lr.ph.i.i.i.i.i.i.i605 ]
  %i.xf = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i610, i64 8
  %.not.i23.i.i.i611 = icmp eq ptr %i.wa, null
  br i1 %.not.i23.i.i.i611, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612, label %bb.fk

bb.fk:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609
  call void @_ZdlPv(ptr noundef nonnull %i.wa) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612: ; preds = %bb.fk, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i609
  store ptr %i.wl, ptr %68, align 16, !tbaa !213
  store ptr %i.xf, ptr %i.vu, align 8, !tbaa !211
  %i.xg = getelementptr inbounds nuw [8 x i8], ptr %i.wl, i64 %i.wj
  store ptr %i.xg, ptr %i.vw, align 16, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621

_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i612, %bb.fh
  call void @_ZN6duckdb5ValueD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %69) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %69) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %70) #23
  invoke void @_ZN6duckdb8ErrorFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %71)
          to label %bb.fl unwind label %bb.hf

bb.fl:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb23BoundConstantExpressionESt14default_deleteIS1_EED2Ev.exit621
  %i.xh = load <2 x ptr>, ptr %68, align 16, !tbaa !210
  store <2 x ptr> %i.xh, ptr %72, align 16, !tbaa !210
  %i.xi = getelementptr inbounds nuw i8, ptr %72, i64 16
  %i.xj = load ptr, ptr %i.vw, align 16, !tbaa !212
  store ptr %i.xj, ptr %i.xi, align 16, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %68, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb14FunctionBinder18BindScalarFunctionENS_14ScalarFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEEbNS_12optional_ptrINS_6BinderELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %70, ptr noundef nonnull align 8 dereferenceable(16) %54, ptr noundef nonnull %71, ptr noundef nonnull %72, i1 noundef zeroext false, ptr null)
          to label %bb.fm unwind label %bb.hg

bb.fm:                                            ; preds = %bb.fl
  %i.xk = getelementptr inbounds nuw i8, ptr %72, i64 8
  %i.xl = load ptr, ptr %72, align 16, !tbaa !213 ; 3 uses
  %i.xm = load ptr, ptr %i.xk, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i622 = icmp eq ptr %i.xl, %i.xm
  br i1 %.not4.i.i.i622, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631, label %.lr.ph.i.i.i623

.lr.ph.i.i.i623:                                  ; preds = %bb.fm, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627
  %.05.i.i.i624 = phi ptr [ %i.xr, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627 ], [ %i.xl, %bb.fm ] ; 2 uses
  %i.xn = load ptr, ptr %.05.i.i.i624, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i625 = icmp eq ptr %i.xn, null
  br i1 %.not.i.i.i.i.i625, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i626

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i626: ; preds = %.lr.ph.i.i.i623
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !10
  %i.xp = getelementptr inbounds nuw i8, ptr %i.xo, i64 8
  %i.xq = load ptr, ptr %i.xp, align 8
  call void %i.xq(ptr noundef nonnull align 8 dereferenceable(88) %i.xn) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i626, %.lr.ph.i.i.i623
  %i.xr = getelementptr inbounds nuw i8, ptr %.05.i.i.i624, i64 8 ; 2 uses
  %.not.i.i.i628 = icmp eq ptr %i.xr, %i.xm
  br i1 %.not.i.i.i628, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629, label %.lr.ph.i.i.i623, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i627
  %.pr.i630 = load ptr, ptr %72, align 16, !tbaa !213
  br label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629, %bb.fm
  %i.xs = phi ptr [ %.pr.i630, %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i629 ], [ %i.xl, %bb.fm ] ; 2 uses
  %.not.i.i1.i632 = icmp eq ptr %i.xs, null
  br i1 %.not.i.i1.i632, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633, label %bb.fn

bb.fn:                                            ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631
  call void @_ZdlPv(ptr noundef nonnull %i.xs) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633: ; preds = %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i631, %bb.fn
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6duckdb14ScalarFunctionE, i64 16), ptr %71, align 8, !tbaa !10
  %i.xt = getelementptr inbounds nuw i8, ptr %71, i64 352
  %i.xu = load ptr, ptr %i.xt, align 8, !tbaa !114 ; 8 uses
  %.not.i.i.i.i634 = icmp eq ptr %i.xu, null
  br i1 %.not.i.i.i.i634, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, label %bb.fo

bb.fo:                                            ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633
  %i.xv = getelementptr inbounds nuw i8, ptr %i.xu, i64 8 ; 4 uses
  %i.xw = load atomic i64, ptr %i.xv acquire, align 8 ; 2 uses
  %i.xx = icmp eq i64 %i.xw, 4294967297
  %i.xy = trunc i64 %i.xw to i32                  ; 2 uses
  br i1 %i.xx, label %bb.fp, label %bb.fq

bb.fp:                                            ; preds = %bb.fo
  store i32 0, ptr %i.xv, align 8, !tbaa !115
  %i.xz = getelementptr inbounds nuw i8, ptr %i.xu, i64 12
  store i32 0, ptr %i.xz, align 4, !tbaa !117
  %i.ya = load ptr, ptr %i.xu, align 8, !tbaa !10
  %i.yb = getelementptr inbounds nuw i8, ptr %i.ya, i64 16
  %i.yc = load ptr, ptr %i.yb, align 8
  call void %i.yc(ptr noundef nonnull align 8 dereferenceable(16) %i.xu) #23, !inline_history !1440
  %i.yd = load ptr, ptr %i.xu, align 8, !tbaa !10
  %i.ye = getelementptr inbounds nuw i8, ptr %i.yd, i64 24
  %i.yf = load ptr, ptr %i.ye, align 8
  call void %i.yf(ptr noundef nonnull align 8 dereferenceable(16) %i.xu) #23, !inline_history !1440
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

bb.fq:                                            ; preds = %bb.fo
  %i.yg = load i8, ptr @__libc_single_threaded, align 1, !tbaa !119
  %.not.i.i.i.i.i635 = icmp eq i8 %i.yg, 0
  br i1 %.not.i.i.i.i.i635, label %bb.fs, label %bb.fr

bb.fr:                                            ; preds = %bb.fq
  %i.yh = add nsw i32 %i.xy, -1
  store i32 %i.yh, ptr %i.xv, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636

bb.fs:                                            ; preds = %bb.fq
  %i.yi = atomicrmw volatile add ptr %i.xv, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636: ; preds = %bb.fs, %bb.fr
  %.0.i.i.i.i.i.i637 = phi i32 [ %i.xy, %bb.fr ], [ %i.yi, %bb.fs ]
  %i.yj = icmp eq i32 %.0.i.i.i.i.i.i637, 1
  br i1 %i.yj, label %bb.ft, label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i, !prof !120

bb.ft:                                            ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.xu) #23, !inline_history !1441
  br label %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i

_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i: ; preds = %bb.ft, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i.i636, %bb.fp, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EED2Ev.exit633
  %i.yk = getelementptr inbounds nuw i8, ptr %71, i64 256
  %i.yl = load ptr, ptr %i.yk, align 8, !tbaa !776 ; 2 uses
  %.not.i.i638 = icmp eq ptr %i.yl, null
  br i1 %.not.i.i638, label %_ZN6duckdb14ScalarFunctionD2Ev.exit, label %bb.fu

bb.fu:                                            ; preds = %_ZN6duckdb10shared_ptrINS_18ScalarFunctionInfoELb1EED2Ev.exit.i
  %i.ym = getelementptr inbounds nuw i8, ptr %71, i64 240 ; 2 uses
  %i.yn = invoke noundef zeroext i1 %i.yl(ptr noundef nonnull align 8 dereferenceable(32) %i.ym, ptr noundef nonnull align 8 dereferenceable(32) %i.ym, i32 noundef 3)
          to label %_ZN6duckdb14ScalarFunctionD2Ev.exit unwind label %bb.fv, !inline_history !1441 ; 0 uses

end_hunk_17
begin_hunk_18_@_ZN6duckdbL24PlanUncorrelatedSubqueryERNS_6BinderERNS_23BoundSubqueryExpressionERNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS5_ELb1EEES8_:bb.a
  br i1 %i.aji, label %bb.ik, label %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i

bb.ik:                                            ; preds = %bb.ij
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.48) #24
          to label %.noexc861 unwind label %bb.iq

.noexc861:                                        ; preds = %bb.ik
  unreachable

_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i: ; preds = %bb.ij
  %i.ajj = getelementptr inbounds nuw i8, ptr %86, i64 16 ; 2 uses
  %i.ajk = shl nuw nsw i64 %i.ajg, 3
  %i.ajl = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ajk) #26
          to label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit unwind label %bb.iq ; 7 uses

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit: ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i
  %i.ajm = getelementptr inbounds nuw i8, ptr %86, i64 8
  store ptr %i.ajl, ptr %86, align 8, !tbaa !213
  store ptr %i.ajl, ptr %i.ajm, align 8, !tbaa !211
  %i.ajn = getelementptr inbounds nuw [8 x i8], ptr %i.ajl, i64 %i.ajg ; 3 uses
  store ptr %i.ajn, ptr %i.ajj, align 8, !tbaa !212
  %.not1176 = icmp eq ptr %i.ajb, %i.ajc
  br i1 %.not1176, label %._crit_edge, label %.lr.ph1175

.lr.ph1175:                                       ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.ajo = getelementptr inbounds nuw i8, ptr %2, i64 304
  %i.ajp = getelementptr inbounds nuw i8, ptr %86, i64 8 ; 2 uses
  br label %bb.ir

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit
  %i.ajq = phi ptr [ %i.ajn, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.amf, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ]
  %i.ajr = phi ptr [ %i.ajl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.amg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ]
  %i.ajs = phi ptr [ %i.ajl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE7reserveEm.exit ], [ %i.ame, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %89) #23
  invoke void @_ZN6duckdb14FunctionBinderC1ERNS_6BinderE(ptr noundef nonnull align 8 dereferenceable(16) %89, ptr noundef nonnull align 8 dereferenceable(472) %1)
          to label %bb.ji unwind label %bb.kc

bb.il:                                            ; preds = %bb.hz
  %i.ajt = landingpad { ptr, i32 }
          cleanup
  br label %bb.li

bb.im:                                            ; preds = %bb.ia
  %i.aju = landingpad { ptr, i32 }
          cleanup
  br label %.body851

bb.in:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit855, %bb.id, %bb.ic
  %i.ajv = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit865

bb.io:                                            ; preds = %bb.ie
  %i.ajw = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ajx = load ptr, ptr %84, align 8, !tbaa !360 ; 3 uses
  %.not.i863 = icmp eq ptr %i.ajx, null
  br i1 %.not.i863, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit865, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i864

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i864: ; preds = %bb.io
  %i.ajy = load ptr, ptr %i.ajx, align 8, !tbaa !10
  %i.ajz = getelementptr inbounds nuw i8, ptr %i.ajy, i64 8
  %i.aka = load ptr, ptr %i.ajz, align 8
  call void %i.aka(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ajx) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit865

bb.ip:                                            ; preds = %bb.ig
  %i.akb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.akc = load ptr, ptr %85, align 8, !tbaa !360 ; 3 uses
  %.not.i866 = icmp eq ptr %i.akc, null
  br i1 %.not.i866, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit865, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i867

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i867: ; preds = %bb.ip
  %i.akd = load ptr, ptr %i.akc, align 8, !tbaa !10
  %i.ake = getelementptr inbounds nuw i8, ptr %i.akd, i64 8
  %i.akf = load ptr, ptr %i.ake, align 8
  call void %i.akf(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.akc) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit865

bb.iq:                                            ; preds = %_ZNSt12_Vector_baseIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_M_allocateEm.exit.i, %bb.ik
  %i.akg = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.ir:                                            ; preds = %.lr.ph1175, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900
  %i.akh = phi ptr [ %i.ajl, %.lr.ph1175 ], [ %i.ame, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ] ; 10 uses
  %i.aki = phi ptr [ %i.ajn, %.lr.ph1175 ], [ %i.amf, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ] ; 5 uses
  %i.akj = phi ptr [ %i.ajl, %.lr.ph1175 ], [ %i.amg, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ] ; 3 uses
  %.01291174 = phi i64 [ 0, %.lr.ph1175 ], [ %i.amh, %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900 ] ; 4 uses
  %i.akk = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.aiz, i64 noundef %.01291174)
          to label %bb.is unwind label %bb.jd

bb.is:                                            ; preds = %bb.ir
  %i.akl = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZN6duckdb6vectorINS_11LogicalTypeELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %i.ajo, i64 noundef %.01291174)
          to label %bb.it unwind label %bb.je

bb.it:                                            ; preds = %bb.is
  call void @llvm.lifetime.start.p0(ptr nonnull %87) #23
  %i.akm = invoke noundef nonnull align 8 dereferenceable(16) ptr @_ZN6duckdb6vectorINS_13ColumnBindingELb1ESaIS1_EEixEm(ptr noundef nonnull align 8 dereferenceable(24) %82, i64 noundef %.01291174)
          to label %bb.iu unwind label %bb.jf     ; 2 uses

bb.iu:                                            ; preds = %bb.it
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  %i.akn = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc873 unwind label %bb.jf ; 3 uses

.noexc873:                                        ; preds = %bb.iu
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %6, ptr noundef nonnull align 8 dereferenceable(24) %i.akk)
          to label %bb.iv unwind label %bb.iw, !noalias !1455

bb.iv:                                            ; preds = %.noexc873
  %.sroa.0.0.copyload.i870 = load i64, ptr %i.akm, align 8, !tbaa !112, !noalias !1455
  %.sroa.2.0..sroa_idx.i871 = getelementptr inbounds nuw i8, ptr %i.akm, i64 8
  %.sroa.2.0.copyload.i872 = load i64, ptr %.sroa.2.0..sroa_idx.i871, align 8, !tbaa !112, !noalias !1455
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.akn, ptr noundef nonnull %6, i64 %.sroa.0.0.copyload.i870, i64 %.sroa.2.0.copyload.i872, i64 noundef 0)
          to label %bb.iz unwind label %bb.ix, !noalias !1455

bb.iw:                                            ; preds = %.noexc873
  %i.ako = landingpad { ptr, i32 }
          cleanup
  br label %bb.iy

bb.ix:                                            ; preds = %bb.iv
  %i.akp = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23, !noalias !1455
  br label %bb.iy

bb.iy:                                            ; preds = %bb.ix, %bb.iw
  %.pn.i869 = phi { ptr, i32 } [ %i.akp, %bb.ix ], [ %i.ako, %bb.iw ]
  call void @_ZdlPv(ptr noundef nonnull %i.akn) #25, !noalias !1455
  br label %.body874

bb.iz:                                            ; preds = %bb.iv
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %6) #23, !noalias !1455
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  store ptr %i.akn, ptr %88, align 8, !tbaa !266
  invoke void @_ZN6duckdb19BoundCastExpression20AddDefaultCastToTypeENS_10unique_ptrINS_10ExpressionESt14default_deleteIS2_ELb1EEERKNS_11LogicalTypeEb(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %87, ptr noundef nonnull %88, ptr noundef nonnull align 8 dereferenceable(24) %i.akl, i1 noundef zeroext false)
          to label %bb.ja unwind label %bb.jg

bb.ja:                                            ; preds = %bb.iz
  %i.akq = load ptr, ptr %88, align 8, !tbaa !13  ; 3 uses
  %.not.i876 = icmp eq ptr %i.akq, null
  br i1 %.not.i876, label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit881, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i877

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i877: ; preds = %bb.ja
  %i.akr = load ptr, ptr %i.akq, align 8, !tbaa !10
  %i.aks = getelementptr inbounds nuw i8, ptr %i.akr, i64 8
  %i.akt = load ptr, ptr %i.aks, align 8
  call void %i.akt(ptr noundef nonnull align 8 dereferenceable(88) %i.akq) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit881

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit881: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i877, %bb.ja
  %.not.i.i882 = icmp eq ptr %i.akj, %i.aki
  br i1 %.not.i.i882, label %bb.jb, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897.thread

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897.thread: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit881
  %i.aku = load i64, ptr %87, align 8, !tbaa !13
  store i64 %i.aku, ptr %i.akj, align 8, !tbaa !13
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akj, i64 8 ; 2 uses
  store ptr %i.akv, ptr %i.ajp, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900

bb.jb:                                            ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit881
  %i.akw = ptrtoint ptr %i.aki to i64             ; 3 uses
  %i.akx = ptrtoint ptr %i.akh to i64             ; 3 uses
  %i.aky = sub i64 %i.akw, %i.akx                 ; 3 uses
  %i.akz = icmp eq i64 %i.aky, 9223372036854775800
  br i1 %i.akz, label %bb.jc, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i883

bb.jc:                                            ; preds = %bb.jb
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc895 unwind label %.loopexit.split-lp

.noexc895:                                        ; preds = %bb.jc
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i883: ; preds = %bb.jb
  %i.ala = ashr exact i64 %i.aky, 3               ; 3 uses
  %.sroa.speculated.i.i.i.i884 = call i64 @llvm.umax.i64(i64 %i.ala, i64 1)
  %i.alb = add nsw i64 %.sroa.speculated.i.i.i.i884, %i.ala ; 2 uses
  %i.alc = icmp ult i64 %i.alb, %i.ala
  %i.ald = call i64 @llvm.umin.i64(i64 %i.alb, i64 1152921504606846975)
  %i.ale = select i1 %i.alc, i64 1152921504606846975, i64 %i.ald ; 3 uses
  %.not.i.i.i.i885 = icmp ne i64 %i.ale, 0
  call void @llvm.assume(i1 %.not.i.i.i.i885)
  %i.alf = shl nuw nsw i64 %i.ale, 3
  %i.alg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.alf) #26
          to label %.noexc896 unwind label %.loopexit ; 12 uses

.noexc896:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i883
  %i.alh = getelementptr inbounds nuw i8, ptr %i.alg, i64 %i.aky
  %i.ali = load i64, ptr %87, align 8, !tbaa !13
  store i64 %i.ali, ptr %i.alh, align 8, !tbaa !13
  store ptr null, ptr %87, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i886 = icmp eq ptr %i.akh, %i.aki
  br i1 %.not10.i.i.i.i.i.i.i886, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897, label %.lr.ph.i.i.i.i.i.i.i887.preheader

.lr.ph.i.i.i.i.i.i.i887.preheader:                ; preds = %.noexc896
  %106 = sub i64 %i.akw, %i.akx
  %107 = add i64 %106, -8                         ; 2 uses
  %i.alj = lshr i64 %107, 3
  %i.alk = add nuw nsw i64 %i.alj, 1              ; 2 uses
  %min.iters.check1528 = icmp ult i64 %107, 56
  br i1 %min.iters.check1528, label %.lr.ph.i.i.i.i.i.i.i887.preheader1543, label %vector.memcheck1519

vector.memcheck1519:                              ; preds = %.lr.ph.i.i.i.i.i.i.i887.preheader
  %scevgep1520 = getelementptr i8, ptr %i.alg, i64 8
  %i.all = add i64 %i.akw, -8
  %i.alm = sub i64 %i.all, %i.akx
  %i.aln = and i64 %i.alm, -8                     ; 2 uses
  %scevgep1521 = getelementptr i8, ptr %scevgep1520, i64 %i.aln
  %scevgep1522 = getelementptr i8, ptr %i.akh, i64 8
  %scevgep1523 = getelementptr i8, ptr %scevgep1522, i64 %i.aln
  %bound01524 = icmp ult ptr %i.alg, %scevgep1523
  %bound11525 = icmp ult ptr %i.akh, %scevgep1521
  %found.conflict1526 = and i1 %bound01524, %bound11525
  br i1 %found.conflict1526, label %.lr.ph.i.i.i.i.i.i.i887.preheader1543, label %vector.ph1529

vector.ph1529:                                    ; preds = %vector.memcheck1519
  %n.vec1531 = and i64 %i.alk, 4611686018427387900 ; 3 uses
  %i.alo = shl i64 %n.vec1531, 3                  ; 2 uses
  %i.alp = getelementptr i8, ptr %i.alg, i64 %i.alo ; 2 uses
  %i.alq = getelementptr i8, ptr %i.akh, i64 %i.alo
  br label %vector.body1532

vector.body1532:                                  ; preds = %vector.body1532, %vector.ph1529
  %index1533 = phi i64 [ 0, %vector.ph1529 ], [ %index.next1538, %vector.body1532 ] ; 2 uses
  %i.alr = shl i64 %index1533, 3                  ; 2 uses
  %next.gep1534 = getelementptr i8, ptr %i.alg, i64 %i.alr ; 2 uses
  %next.gep1535 = getelementptr i8, ptr %i.akh, i64 %i.alr ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.als = getelementptr i8, ptr %next.gep1535, i64 16
  %wide.load1536 = load <2 x i64>, ptr %next.gep1535, align 8, !tbaa !13, !alias.scope !1463, !noalias !1458
  %wide.load1537 = load <2 x i64>, ptr %i.als, align 8, !tbaa !13, !alias.scope !1463, !noalias !1458
  %i.alt = getelementptr i8, ptr %next.gep1534, i64 16
  store <2 x i64> %wide.load1536, ptr %next.gep1534, align 8, !tbaa !13, !alias.scope !1466, !noalias !1463
  store <2 x i64> %wide.load1537, ptr %i.alt, align 8, !tbaa !13, !alias.scope !1466, !noalias !1463
  %i.alu = getelementptr i8, ptr %next.gep1535, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep1535, align 8, !tbaa !13, !alias.scope !1463, !noalias !1458
  store <2 x ptr> splat (ptr null), ptr %i.alu, align 8, !tbaa !13, !alias.scope !1463, !noalias !1458
  %index.next1538 = add nuw i64 %index1533, 4     ; 2 uses
  %i.alv = icmp eq i64 %index.next1538, %n.vec1531
  br i1 %i.alv, label %middle.block1539, label %vector.body1532, !llvm.loop !1468

middle.block1539:                                 ; preds = %vector.body1532
  %cmp.n1540 = icmp eq i64 %i.alk, %n.vec1531
  br i1 %cmp.n1540, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897, label %.lr.ph.i.i.i.i.i.i.i887.preheader1543

.lr.ph.i.i.i.i.i.i.i887.preheader1543:            ; preds = %vector.memcheck1519, %.lr.ph.i.i.i.i.i.i.i887.preheader, %middle.block1539
  %.012.i.i.i.i.i.i.i888.ph = phi ptr [ %i.alg, %vector.memcheck1519 ], [ %i.alg, %.lr.ph.i.i.i.i.i.i.i887.preheader ], [ %i.alp, %middle.block1539 ]
  %.0911.i.i.i.i.i.i.i889.ph = phi ptr [ %i.akh, %vector.memcheck1519 ], [ %i.akh, %.lr.ph.i.i.i.i.i.i.i887.preheader ], [ %i.alq, %middle.block1539 ]
  br label %.lr.ph.i.i.i.i.i.i.i887

.lr.ph.i.i.i.i.i.i.i887:                          ; preds = %.lr.ph.i.i.i.i.i.i.i887.preheader1543, %.lr.ph.i.i.i.i.i.i.i887
  %.012.i.i.i.i.i.i.i888 = phi ptr [ %i.aly, %.lr.ph.i.i.i.i.i.i.i887 ], [ %.012.i.i.i.i.i.i.i888.ph, %.lr.ph.i.i.i.i.i.i.i887.preheader1543 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i889 = phi ptr [ %i.alx, %.lr.ph.i.i.i.i.i.i.i887 ], [ %.0911.i.i.i.i.i.i.i889.ph, %.lr.ph.i.i.i.i.i.i.i887.preheader1543 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1458)
  call void @llvm.experimental.noalias.scope.decl(metadata !1461)
  %i.alw = load i64, ptr %.0911.i.i.i.i.i.i.i889, align 8, !tbaa !13, !alias.scope !1461, !noalias !1458
  store i64 %i.alw, ptr %.012.i.i.i.i.i.i.i888, align 8, !tbaa !13, !alias.scope !1458, !noalias !1461
  store ptr null, ptr %.0911.i.i.i.i.i.i.i889, align 8, !tbaa !13, !alias.scope !1461, !noalias !1458
  %i.alx = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i889, i64 8 ; 2 uses
  %i.aly = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i888, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i890 = icmp eq ptr %i.alx, %i.aki
  br i1 %.not.i.i.i.i.i.i.i890, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897, label %.lr.ph.i.i.i.i.i.i.i887, !llvm.loop !1469

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897: ; preds = %.lr.ph.i.i.i.i.i.i.i887, %middle.block1539, %.noexc896
  %.0.lcssa.i.i.i.i.i.i.i892 = phi ptr [ %i.alg, %.noexc896 ], [ %i.alp, %middle.block1539 ], [ %i.aly, %.lr.ph.i.i.i.i.i.i.i887 ]
  %i.alz = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i892, i64 8 ; 3 uses
  call void @_ZdlPv(ptr noundef nonnull %i.akh) #25
  store ptr %i.alg, ptr %86, align 8, !tbaa !213
  store ptr %i.alz, ptr %i.ajp, align 8, !tbaa !211
  %i.ama = getelementptr inbounds nuw [8 x i8], ptr %i.alg, i64 %i.ale ; 3 uses
  store ptr %i.ama, ptr %i.ajj, align 8, !tbaa !212
  %.pr1157 = load ptr, ptr %87, align 8, !tbaa !13 ; 3 uses
  %.not.i898 = icmp eq ptr %.pr1157, null
  br i1 %.not.i898, label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i899

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i899: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897
  %i.amb = load ptr, ptr %.pr1157, align 8, !tbaa !10
  %i.amc = getelementptr inbounds nuw i8, ptr %i.amb, i64 8
  %i.amd = load ptr, ptr %i.amc, align 8
  call void %i.amd(ptr noundef nonnull align 8 dereferenceable(88) %.pr1157) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900

_ZNSt10unique_ptrIN6duckdb10ExpressionESt14default_deleteIS1_EED2Ev.exit900: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897.thread, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i899
  %i.ame = phi ptr [ %i.akh, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897.thread ], [ %i.alg, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897 ], [ %i.alg, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i899 ] ; 2 uses
  %i.amf = phi ptr [ %i.aki, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897.thread ], [ %i.ama, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897 ], [ %i.ama, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i899 ] ; 2 uses
  %i.amg = phi ptr [ %i.akv, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897.thread ], [ %i.alz, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit897 ], [ %i.alz, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i899 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #23
  %i.amh = add nuw i64 %.01291174, 1              ; 2 uses
  %i.ami = load ptr, ptr %i.aja, align 8, !tbaa !300
  %i.amj = load ptr, ptr %i.aiz, align 8, !tbaa !303
  %i.amk = ptrtoint ptr %i.ami to i64
  %i.aml = ptrtoint ptr %i.amj to i64
  %i.amm = sub i64 %i.amk, %i.aml
  %i.amn = sdiv exact i64 %i.amm, 24
  %i.amo = icmp ult i64 %i.amh, %i.amn
  br i1 %i.amo, label %bb.ir, label %._crit_edge, !llvm.loop !1470

bb.jd:                                            ; preds = %bb.ir
  %i.amp = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.je:                                            ; preds = %bb.is
  %i.amq = landingpad { ptr, i32 }
          cleanup
  br label %bb.kh

bb.jf:                                            ; preds = %bb.iu, %bb.it
  %i.amr = landingpad { ptr, i32 }
          cleanup
  br label %.body874

bb.jg:                                            ; preds = %bb.iz
  %i.ams = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.amt = load ptr, ptr %88, align 8, !tbaa !13  ; 3 uses
  %.not.i901 = icmp eq ptr %i.amt, null
  br i1 %.not.i901, label %.body874, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i902

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i902: ; preds = %bb.jg
  %i.amu = load ptr, ptr %i.amt, align 8, !tbaa !10
  %i.amv = getelementptr inbounds nuw i8, ptr %i.amu, i64 8
  %i.amw = load ptr, ptr %i.amv, align 8
  call void %i.amw(ptr noundef nonnull align 8 dereferenceable(88) %i.amt) #23, !inline_history !104
  br label %.body874

.loopexit:                                        ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i883
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

.loopexit.split-lp:                               ; preds = %bb.jc
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.jh

bb.jh:                                            ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %i.amx = load ptr, ptr %87, align 8, !tbaa !13  ; 3 uses
  %.not.i907 = icmp eq ptr %i.amx, null
  br i1 %.not.i907, label %.body874, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i908

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i908: ; preds = %bb.jh
  %i.amy = load ptr, ptr %i.amx, align 8, !tbaa !10
  %i.amz = getelementptr inbounds nuw i8, ptr %i.amy, i64 8
  %i.ana = load ptr, ptr %i.amz, align 8
  call void %i.ana(ptr noundef nonnull align 8 dereferenceable(88) %i.amx) #23, !inline_history !104
  br label %.body874

.body874:                                         ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i908, %bb.jh, %bb.iy, %bb.jf, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i902, %bb.jg
  %.pn197 = phi { ptr, i32 } [ %i.ams, %bb.jg ], [ %.pn.i869, %bb.iy ], [ %i.amr, %bb.jf ], [ %i.ams, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i902 ], [ %lpad.phi, %bb.jh ], [ %lpad.phi, %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i908 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %87) #23
  br label %bb.kh

bb.ji:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %90) #23
  invoke void @_ZN6duckdb6RowFun11GetFunctionEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::ScalarFunction") align 8 %91)
          to label %bb.jj unwind label %bb.kd

bb.jj:                                            ; preds = %bb.ji
  store ptr %i.ajs, ptr %92, align 8, !tbaa !213
  %i.anb = getelementptr inbounds nuw i8, ptr %92, i64 8 ; 2 uses
  %i.anc = getelementptr inbounds nuw i8, ptr %86, i64 8
  store ptr %i.ajr, ptr %i.anb, align 8, !tbaa !211
  %i.and = getelementptr inbounds nuw i8, ptr %92, i64 16
  store ptr %i.ajq, ptr %i.and, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %86, i8 0, i64 24, i1 false)
  invoke void @_ZN6duckdb14FunctionBinder18BindScalarFunctionENS_14ScalarFunctionENS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS4_ELb1EEELb1ESaIS7_EEEbNS_12optional_ptrINS_6BinderELb1EEE(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::unique_ptr") align 8 %90, ptr noundef nonnull align 8 dereferenceable(16) %89, ptr noundef nonnull %91, ptr noundef nonnull %92, i1 noundef zeroext false, ptr null)
          to label %bb.jk unwind label %bb.ke

bb.jk:                                            ; preds = %bb.jj
  %i.ane = load ptr, ptr %92, align 8, !tbaa !213 ; 3 uses
  %i.anf = load ptr, ptr %i.anb, align 8, !tbaa !211 ; 2 uses
  %.not4.i.i.i910 = icmp eq ptr %i.ane, %i.anf
  br i1 %.not4.i.i.i910, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exit.i919, label %.lr.ph.i.i.i911

.lr.ph.i.i.i911:                                  ; preds = %bb.jk, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i915
  %.05.i.i.i912 = phi ptr [ %i.ank, %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i915 ], [ %i.ane, %bb.jk ] ; 2 uses
  %i.ang = load ptr, ptr %.05.i.i.i912, align 8, !tbaa !13 ; 3 uses
  %.not.i.i.i.i.i913 = icmp eq ptr %i.ang, null
  br i1 %.not.i.i.i.i.i913, label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i915, label %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i914

_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i914: ; preds = %.lr.ph.i.i.i911
  %i.anh = load ptr, ptr %i.ang, align 8, !tbaa !10
  %i.ani = getelementptr inbounds nuw i8, ptr %i.anh, i64 8
  %i.anj = load ptr, ptr %i.ani, align 8
  call void %i.anj(ptr noundef nonnull align 8 dereferenceable(88) %i.ang) #23, !inline_history !518
  br label %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i915

_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i915: ; preds = %_ZNKSt14default_deleteIN6duckdb10ExpressionEEclEPS1_.exit.i.i.i.i.i914, %.lr.ph.i.i.i911
  %i.ank = getelementptr inbounds nuw i8, ptr %.05.i.i.i912, i64 8 ; 2 uses
  %.not.i.i.i916 = icmp eq ptr %i.ank, %i.anf
  br i1 %.not.i.i.i916, label %_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i917, label %.lr.ph.i.i.i911, !llvm.loop !519

_ZSt8_DestroyIPN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEES5_EvT_S7_RSaIT0_E.exitthread-pre-split.i917: ; preds = %_ZSt8_DestroyIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEEEvPT_.exit.i.i.i915
  %.pr.i918 = load ptr, ptr %92, align 8, !tbaa !213
end_hunk_18
begin_hunk_19_@_ZN6duckdbL27PerformDuplicateEliminationERNS_6BinderERNS_17CorrelatedColumnsE:bb.a
  resume { ptr, i32 } %i.bq

.critedge:                                        ; preds = %bb.c, %bb.b, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit26, %bb.a
  %.1 = phi i1 [ true, %bb.a ], [ true, %bb.b ], [ false, %_ZN6duckdb20CorrelatedColumnInfoD2Ev.exit26 ], [ true, %bb.c ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN6duckdbL29CreateDuplicateEliminatedJoinERKNS_17CorrelatedColumnsENS_8JoinTypeENS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS5_ELb1EEEb(ptr dead_on_unwind noalias nonnull writable align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i8 noundef zeroext %2, ptr nofree noundef nonnull captures(none) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"struct.duckdb::LogicalType", align 8 ; 6 uses
  %6 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.a = zext i1 %4 to i8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1510)
  %i.b = tail call noalias noundef nonnull dereferenceable(432) ptr @_Znwm(i64 noundef 432) #26, !noalias !1510 ; 3 uses
  invoke void @_ZN6duckdb20LogicalDependentJoinC1ENS_8JoinTypeE(ptr noundef nonnull align 8 dereferenceable(425) %i.b, i8 noundef zeroext %2)
          to label %_ZN6duckdb9make_uniqINS_20LogicalDependentJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit unwind label %bb.b, !noalias !1510

common.resume:                                    ; preds = %_ZNKSt14default_deleteIN6duckdb20LogicalDependentJoinEEclEPS1_.exit.i, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.c, %bb.b ], [ %.pn13.pn, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18 ], [ %.pn13.pn, %_ZNKSt14default_deleteIN6duckdb20LogicalDependentJoinEEclEPS1_.exit.i ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #25, !noalias !1510
  br label %common.resume

_ZN6duckdb9make_uniqINS_20LogicalDependentJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit: ; preds = %bb.a
  store ptr %i.b, ptr %0, align 8, !tbaa !1353, !alias.scope !1510
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.i       ; 2 uses

bb.c:                                             ; preds = %_ZN6duckdb9make_uniqINS_20LogicalDependentJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 288
  %i.f = invoke noundef nonnull align 8 dereferenceable(24) ptr @_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EEaSERKS3_(ptr noundef nonnull align 8 dereferenceable(32) %i.e, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.i       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load i64, ptr %i.g, align 8, !tbaa !1509
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 312
  store i64 %i.h, ptr %i.i, align 8, !tbaa !1509
  %i.j = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 321
  store i8 %i.a, ptr %i.k, align 1, !tbaa !1481
  %i.l = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 97
  store i8 %2, ptr %i.m, align 1, !tbaa !1513
  %i.n = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.g unwind label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.o = load i64, ptr %3, align 8, !tbaa !360
  store i64 %i.o, ptr %6, align 8, !tbaa !360
  store ptr null, ptr %3, align 8, !tbaa !360
  invoke void @_ZN6duckdb15LogicalOperator8AddChildENS_10unique_ptrIS0_St14default_deleteIS0_ELb1EEE(ptr noundef nonnull align 8 dereferenceable(97) %i.n, ptr noundef nonnull %6)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %6, align 8, !tbaa !360    ; 3 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.h
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.p) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.h, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !1507
  %i.v = load ptr, ptr %1, align 8, !tbaa !1514   ; 2 uses
  %.not = icmp eq ptr %i.u, %i.v
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  ret void

bb.i:                                             ; preds = %bb.c, %bb.f, %bb.e, %bb.d, %_ZN6duckdb9make_uniqINS_20LogicalDependentJoinEJRNS_8JoinTypeEEEENS_17TemplatedUniqueIfIT_Lb1EE25templated_unique_single_tEDpOT0_.exit
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

bb.j:                                             ; preds = %bb.g
  %i.x = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.y = load ptr, ptr %6, align 8, !tbaa !360    ; 3 uses
  %.not.i16 = icmp eq ptr %i.y, null
  br i1 %.not.i16, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17: ; preds = %bb.j
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.y) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

.lr.ph:                                           ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit
  %i.ac = phi ptr [ %i.cg, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ], [ %i.v, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit ]
  %storemerge46 = phi i64 [ %i.ce, %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit ], [ 0, %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [80 x i8], ptr %i.ac, i64 %storemerge46 ; 3 uses
  %i.ae = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.k unwind label %bb.x       ; 3 uses

bb.k:                                             ; preds = %.lr.ph
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.ag = invoke noalias noundef nonnull dereferenceable(112) ptr @_Znwm(i64 noundef 112) #26
          to label %.noexc19 unwind label %bb.y   ; 6 uses

.noexc19:                                         ; preds = %bb.k
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %bb.l unwind label %bb.m, !noalias !1515

bb.l:                                             ; preds = %.noexc19
  %.sroa.0.0.copyload.i = load i64, ptr %i.ad, align 8, !tbaa !112, !noalias !1515
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !112, !noalias !1515
  invoke void @_ZN6duckdb24BoundColumnRefExpressionC1ENS_11LogicalTypeENS_13ColumnBindingEm(ptr noundef nonnull align 8 dereferenceable(112) %i.ag, ptr noundef nonnull %5, i64 %.sroa.0.0.copyload.i, i64 %.sroa.2.0.copyload.i, i64 noundef 0)
          to label %bb.p unwind label %bb.n, !noalias !1515

bb.m:                                             ; preds = %.noexc19
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23, !noalias !1515
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.pn.i = phi { ptr, i32 } [ %i.ai, %bb.n ], [ %i.ah, %bb.m ]
  call void @_ZdlPv(ptr noundef nonnull %i.ag) #25, !noalias !1515
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

bb.p:                                             ; preds = %bb.l
  call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %5) #23, !noalias !1515
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ae, i64 232 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 240 ; 3 uses
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !211 ; 6 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ae, i64 248 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !212
  %.not.i.i = icmp eq ptr %i.al, %i.an
  br i1 %.not.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ao = ptrtoint ptr %i.ag to i64
  store i64 %i.ao, ptr %i.al, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %i.ap, ptr %i.ak, align 8, !tbaa !211
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

bb.r:                                             ; preds = %bb.p
  %i.aq = load ptr, ptr %i.aj, align 8, !tbaa !213 ; 10 uses
  %i.ar = ptrtoint ptr %i.al to i64               ; 3 uses
  %i.as = ptrtoint ptr %i.aq to i64               ; 3 uses
  %i.at = sub i64 %i.ar, %i.as                    ; 3 uses
  %i.au = icmp eq i64 %i.at, 9223372036854775800
  br i1 %i.au, label %bb.s, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

bb.s:                                             ; preds = %bb.r
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.noexc20 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp

.noexc20:                                         ; preds = %bb.s
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.r
  %i.av = ashr exact i64 %i.at, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.av, i64 1)
  %i.aw = add nsw i64 %.sroa.speculated.i.i.i.i, %i.av ; 2 uses
  %i.ax = icmp ult i64 %i.aw, %i.av
  %i.ay = call i64 @llvm.umin.i64(i64 %i.aw, i64 1152921504606846975)
  %i.az = select i1 %i.ax, i64 1152921504606846975, i64 %i.ay ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.az, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ba = shl nuw nsw i64 %i.az, 3
  %i.bb = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ba) #26
          to label %.noexc21 unwind label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit ; 10 uses

.noexc21:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %i.at
  %i.bd = ptrtoint ptr %i.ag to i64
  store i64 %i.bd, ptr %i.bc, align 8, !tbaa !13
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.aq, %i.al
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc21
  %7 = sub i64 %i.ar, %i.as
  %8 = add i64 %7, -8                             ; 2 uses
  %i.be = lshr i64 %8, 3
  %i.bf = add nuw nsw i64 %i.be, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 56
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader77, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %scevgep = getelementptr i8, ptr %i.bb, i64 8
  %i.bg = add i64 %i.ar, -8
  %i.bh = sub i64 %i.bg, %i.as
  %i.bi = and i64 %i.bh, -8                       ; 2 uses
  %scevgep71 = getelementptr i8, ptr %scevgep, i64 %i.bi
  %scevgep72 = getelementptr i8, ptr %i.aq, i64 8
  %scevgep73 = getelementptr i8, ptr %scevgep72, i64 %i.bi
  %bound0 = icmp ult ptr %i.bb, %scevgep73
  %bound1 = icmp ult ptr %i.aq, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader77, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.bf, 4611686018427387900     ; 3 uses
  %i.bj = shl i64 %n.vec, 3                       ; 2 uses
  %i.bk = getelementptr i8, ptr %i.bb, i64 %i.bj  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.aq, i64 %i.bj
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bm = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.bb, i64 %i.bm ; 2 uses
  %next.gep74 = getelementptr i8, ptr %i.aq, i64 %i.bm ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.bn = getelementptr i8, ptr %next.gep74, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep74, align 8, !tbaa !13, !alias.scope !1523, !noalias !1518
  %wide.load75 = load <2 x i64>, ptr %i.bn, align 8, !tbaa !13, !alias.scope !1523, !noalias !1518
  %i.bo = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !13, !alias.scope !1526, !noalias !1523
  store <2 x i64> %wide.load75, ptr %i.bo, align 8, !tbaa !13, !alias.scope !1526, !noalias !1523
  %i.bp = getelementptr i8, ptr %next.gep74, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep74, align 8, !tbaa !13, !alias.scope !1523, !noalias !1518
  store <2 x ptr> splat (ptr null), ptr %i.bp, align 8, !tbaa !13, !alias.scope !1523, !noalias !1518
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bq = icmp eq i64 %index.next, %n.vec
  br i1 %i.bq, label %middle.block, label %vector.body, !llvm.loop !1528

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bf, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader77

.lr.ph.i.i.i.i.i.i.i.preheader77:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.bb, %vector.memcheck ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bk, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.aq, %vector.memcheck ], [ %i.aq, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.bl, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader77, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader77 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bs, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader77 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1518)
  call void @llvm.experimental.noalias.scope.decl(metadata !1521)
  %i.br = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1521, !noalias !1518
  store i64 %i.br, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1518, !noalias !1521
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !13, !alias.scope !1521, !noalias !1518
  %i.bs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bs, %i.al
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1529

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc21
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.noexc21 ], [ %i.bk, %middle.block ], [ %i.bt, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bu = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8
  %.not.i23.i.i.i = icmp eq ptr %i.aq, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.t

bb.t:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  call void @_ZdlPv(ptr noundef nonnull %i.aq) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.t, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.bb, ptr %i.aj, align 8, !tbaa !213
  store ptr %i.bu, ptr %i.ak, align 8, !tbaa !211
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.az
  store ptr %i.bv, ptr %i.am, align 8, !tbaa !212
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.q
  %i.bw = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.u unwind label %bb.x       ; 3 uses

bb.u:                                             ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 216 ; 3 uses
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !300 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 224
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !363
  %.not.i24 = icmp eq ptr %i.by, %i.ca
  br i1 %.not.i24, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  invoke void @_ZN6duckdb11LogicalTypeC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(24) %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %.noexc25 unwind label %bb.x

.noexc25:                                         ; preds = %bb.v
  %i.cb = load ptr, ptr %i.bx, align 8, !tbaa !300
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  store ptr %i.cc, ptr %i.bx, align 8, !tbaa !300
  br label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit

bb.w:                                             ; preds = %bb.u
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bw, i64 208
  invoke void @_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE17_M_realloc_insertIJRKS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %i.cd, ptr %i.by, ptr noundef nonnull align 8 dereferenceable(24) %i.af)
          to label %_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit unwind label %bb.x

_ZNSt6vectorIN6duckdb11LogicalTypeESaIS1_EE9push_backERKS1_.exit: ; preds = %.noexc25, %bb.w
  %i.ce = add nuw i64 %storemerge46, 1            ; 2 uses
  %i.cf = load ptr, ptr %i.t, align 8, !tbaa !1507
  %i.cg = load ptr, ptr %1, align 8, !tbaa !1514  ; 2 uses
  %i.ch = ptrtoint ptr %i.cf to i64
  %i.ci = ptrtoint ptr %i.cg to i64
  %i.cj = sub i64 %i.ch, %i.ci
  %i.ck = sdiv exact i64 %i.cj, 80
  %i.cl = icmp ult i64 %i.ce, %i.ck
  br i1 %i.cl, label %.lr.ph, label %._crit_edge, !llvm.loop !1530

bb.x:                                             ; preds = %bb.w, %bb.v, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit, %.lr.ph
  %i.cm = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

bb.y:                                             ; preds = %bb.k
  %i.cn = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit: ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_10ExpressionESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp: ; preds = %bb.s
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32

_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32: ; preds = %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit ], [ %lpad.loopexit.split-lp, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32.loopexit.split-lp ]
  %i.co = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8
  call void %i.cq(ptr noundef nonnull align 8 dereferenceable(88) %i.ag) #23, !inline_history !104
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18: ; preds = %bb.x, %bb.y, %bb.o, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17, %bb.j, %bb.i
  %.pn13.pn = phi { ptr, i32 } [ %i.x, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i17 ], [ %i.w, %bb.i ], [ %i.x, %bb.j ], [ %i.cm, %bb.x ], [ %lpad.phi, %_ZNSt10unique_ptrIN6duckdb24BoundColumnRefExpressionESt14default_deleteIS1_EED2Ev.exit32 ], [ %i.cn, %bb.y ], [ %.pn.i, %bb.o ] ; 2 uses
  %i.cr = load ptr, ptr %0, align 8, !tbaa !1353  ; 3 uses
  %.not.i33 = icmp eq ptr %i.cr, null
  br i1 %.not.i33, label %common.resume, label %_ZNKSt14default_deleteIN6duckdb20LogicalDependentJoinEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb20LogicalDependentJoinEEclEPS1_.exit.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit18
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !10
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8
  call void %i.cu(ptr noundef nonnull align 8 dereferenceable(425) %i.cr) #23, !inline_history !1531
  br label %common.resume
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZNK6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1353   ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %_ZN6duckdb10unique_ptrINS_20LogicalDependentJoinESt14default_deleteIS1_ELb1EE13AssertNotNullEb.exit, !prof !120

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.47, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.h unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread.i: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0.i = phi i1 [ false, %bb.d ], [ true, %bb.c ] ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
end_hunk_19
begin_hunk_20_@_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE17_M_realloc_insertIJS1_EEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_:bb.a
  %.not.i.i.i.i = icmp eq ptr %i.ch, %1
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, label %.lr.ph.i.i.i.i, !llvm.loop !1732

_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt6vectorIN6duckdb14BoundStatementESaIS1_EE12_M_check_lenEmPKc.exit
  %.0.lcssa.i.i.i.i = phi ptr [ %i.p, %_ZNKSt6vectorIN6duckdb14BoundStatementESaIS1_EE12_M_check_lenEmPKc.exit ], [ %i.ci, %.lr.ph.i.i.i.i ]
  %i.cj = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 136 ; 2 uses
  %.not10.i.i.i.i16 = icmp eq ptr %1, %i.b
  br i1 %.not10.i.i.i.i16, label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17

.lr.ph.i.i.i.i17:                                 ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit, %.lr.ph.i.i.i.i17
  %.012.i.i.i.i18 = phi ptr [ %i.dt, %.lr.ph.i.i.i.i17 ], [ %i.cj, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 13 uses
  %.0911.i.i.i.i19 = phi ptr [ %i.ds, %.lr.ph.i.i.i.i17 ], [ %1, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ] ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  %i.ck = load i64, ptr %.0911.i.i.i.i19, align 8, !tbaa !360, !alias.scope !1736, !noalias !1733
  store i64 %i.ck, ptr %.012.i.i.i.i18, align 8, !tbaa !360, !alias.scope !1733, !noalias !1736
  store ptr null, ptr %.0911.i.i.i.i19, align 8, !tbaa !360, !alias.scope !1736, !noalias !1733
  %i.cl = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 8
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 8 ; 2 uses
  %i.cn = load <2 x ptr>, ptr %i.cm, align 8, !tbaa !362, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.cn, ptr %i.cl, align 8, !tbaa !362, !alias.scope !1733, !noalias !1736
  %i.co = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 24
  %i.cp = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 24
  %i.cq = load ptr, ptr %i.cp, align 8, !tbaa !363, !alias.scope !1736, !noalias !1733
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !363, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cm, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.cr = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 32
  %i.cs = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 32 ; 2 uses
  %i.ct = load <2 x ptr>, ptr %i.cs, align 8, !tbaa !364, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.ct, ptr %i.cr, align 8, !tbaa !364, !alias.scope !1733, !noalias !1736
  %i.cu = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 48
  %i.cv = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 48
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !365, !alias.scope !1736, !noalias !1733
  store ptr %i.cw, ptr %i.cu, align 8, !tbaa !365, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.cx = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 56
  %i.cy = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 56
  %i.cz = load i8, ptr %i.cy, align 8, !tbaa !366, !alias.scope !1736, !noalias !1733
  store i8 %i.cz, ptr %i.cx, align 8, !tbaa !366, !alias.scope !1733, !noalias !1736
  %i.da = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 64
  %i.db = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 64 ; 2 uses
  %i.dc = load <2 x ptr>, ptr %i.db, align 8, !tbaa !385, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.dc, ptr %i.da, align 8, !tbaa !385, !alias.scope !1733, !noalias !1736
  %i.dd = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 80
  %i.de = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 80
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !386, !alias.scope !1736, !noalias !1733
  store ptr %i.df, ptr %i.dd, align 8, !tbaa !386, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.dg = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 88
  %i.dh = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 88 ; 2 uses
  %i.di = load <2 x ptr>, ptr %i.dh, align 8, !tbaa !387, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.di, ptr %i.dg, align 8, !tbaa !387, !alias.scope !1733, !noalias !1736
  %i.dj = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 104
  %i.dk = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 104
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !388, !alias.scope !1736, !noalias !1733
  store ptr %i.dl, ptr %i.dj, align 8, !tbaa !388, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dh, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  %i.dm = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 112
  %i.dn = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 112 ; 2 uses
  %i.do = load <2 x ptr>, ptr %i.dn, align 8, !tbaa !160, !alias.scope !1736, !noalias !1733
  store <2 x ptr> %i.do, ptr %i.dm, align 8, !tbaa !160, !alias.scope !1733, !noalias !1736
  %i.dp = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 128
  %i.dq = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 128
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !181, !alias.scope !1736, !noalias !1733
  store ptr %i.dr, ptr %i.dp, align 8, !tbaa !181, !alias.scope !1733, !noalias !1736
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dn, i8 0, i64 24, i1 false), !alias.scope !1736, !noalias !1733
  tail call void @_ZN6duckdb14BoundStatementD2Ev(ptr noundef nonnull align 8 dead_on_return(136) dereferenceable(136) %.0911.i.i.i.i19) #23, !noalias !1733
  %i.ds = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19, i64 136 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18, i64 136 ; 2 uses
  %.not.i.i.i.i20 = icmp eq ptr %i.ds, %i.b
  br i1 %.not.i.i.i.i20, label %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, label %.lr.ph.i.i.i.i17, !llvm.loop !1732

_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22: ; preds = %.lr.ph.i.i.i.i17, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit
  %.0.lcssa.i.i.i.i21 = phi ptr [ %i.cj, %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit ], [ %i.dt, %.lr.ph.i.i.i.i17 ]
  %.not.i23 = icmp eq ptr %i.c, null
  br i1 %.not.i23, label %_ZNSt12_Vector_baseIN6duckdb14BoundStatementESaIS1_EE13_M_deallocateEPS1_m.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22
  tail call void @_ZdlPv(ptr noundef nonnull %i.c) #25
  br label %_ZNSt12_Vector_baseIN6duckdb14BoundStatementESaIS1_EE13_M_deallocateEPS1_m.exit

_ZNSt12_Vector_baseIN6duckdb14BoundStatementESaIS1_EE13_M_deallocateEPS1_m.exit: ; preds = %_ZNSt6vectorIN6duckdb14BoundStatementESaIS1_EE11_S_relocateEPS1_S4_S4_RS2_.exit22, %bb.c
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %0, align 8, !tbaa !663
  store ptr %.0.lcssa.i.i.i.i21, ptr %i.a, align 8, !tbaa !664
  %i.dv = getelementptr inbounds nuw [136 x i8], ptr %i.p, i64 %i.l
  store ptr %i.dv, ptr %i.du, align 8, !tbaa !388
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr ptr @_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE14_M_insert_rvalEN9__gnu_cxx17__normal_iteratorIPKS5_S7_EEOS5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr %1, ptr noundef nonnull align 8 dereferenceable(8) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !150    ; 13 uses
  %i.b = ptrtoint ptr %1 to i64                   ; 7 uses
  %i.c = ptrtoint ptr %i.a to i64                 ; 5 uses
  %i.d = sub i64 %i.b, %i.c                       ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !1738 ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !1739
  %.not = icmp eq ptr %i.f, %i.h
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = icmp eq ptr %1, %i.f
  br i1 %i.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %2, align 8, !tbaa !296
  store i64 %i.j, ptr %i.f, align 8, !tbaa !296
  store ptr null, ptr %2, align 8, !tbaa !296
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.k, ptr %i.e, align 8, !tbaa !1738
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.d ; 2 uses
  %i.m = getelementptr inbounds i8, ptr %i.f, i64 -8 ; 4 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !296
  store i64 %i.n, ptr %i.f, align 8, !tbaa !296
  store ptr null, ptr %i.m, align 8, !tbaa !296
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.o, ptr %i.e, align 8, !tbaa !1738
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.p, %i.b
  %i.r = ashr exact i64 %i.q, 3                   ; 2 uses
  %i.s = icmp sgt i64 %i.r, 0
  br i1 %i.s, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.d, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i
  %.010.i.i.i.i.i.i = phi i64 [ %i.aa, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.r, %bb.d ] ; 2 uses
  %.069.i.i.i.i.i.i = phi ptr [ %i.u, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.f, %bb.d ]
  %.078.i.i.i.i.i.i = phi ptr [ %i.t, %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %i.t = getelementptr inbounds i8, ptr %.078.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.u = getelementptr inbounds i8, ptr %.069.i.i.i.i.i.i, i64 -8 ; 3 uses
  %i.v = load ptr, ptr %i.t, align 8, !tbaa !296
  store ptr null, ptr %i.t, align 8, !tbaa !296
  %i.w = load ptr, ptr %i.u, align 8, !tbaa !296  ; 3 uses
  store ptr %i.v, ptr %i.u, align 8, !tbaa !296
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !10
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.w) #23, !inline_history !1740
  br label %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i

_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %i.aa = add nsw i64 %.010.i.i.i.i.i.i, -1
  %i.ab = icmp sgt i64 %.010.i.i.i.i.i.i, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.i, label %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, !llvm.loop !1741

_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i: ; preds = %_ZN6duckdb10unique_ptrINS_14ResultModifierESt14default_deleteIS1_ELb1EEaSEOS4_.exit.i.i.i.i.i.i, %bb.d
  %i.ac = load ptr, ptr %2, align 8, !tbaa !296
  store ptr null, ptr %2, align 8, !tbaa !296
  %i.ad = load ptr, ptr %i.l, align 8, !tbaa !296 ; 3 uses
  store ptr %i.ac, ptr %i.l, align 8, !tbaa !296
  %.not.i.i.i.i.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit, label %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i

_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i: ; preds = %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !10
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %i.ad) #23, !inline_history !1742
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

bb.e:                                             ; preds = %bb.a
  %i.ah = getelementptr i8, ptr %i.a, i64 %i.d    ; 4 uses
  %i.ai = ptrtoint ptr %i.f to i64                ; 3 uses
  %i.aj = sub i64 %i.ai, %i.c                     ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 9223372036854775800
  br i1 %i.ak, label %bb.f, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.e
  %i.al = ashr exact i64 %i.aj, 3                 ; 3 uses
  %.sroa.speculated.i.i = tail call i64 @llvm.umax.i64(i64 %i.al, i64 1)
  %i.am = add nsw i64 %.sroa.speculated.i.i, %i.al ; 2 uses
  %i.an = icmp ult i64 %i.am, %i.al
  %i.ao = tail call i64 @llvm.umin.i64(i64 %i.am, i64 1152921504606846975)
  %i.ap = select i1 %i.an, i64 1152921504606846975, i64 %i.ao ; 3 uses
  %.not.i.i = icmp ne i64 %i.ap, 0
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.aq = shl nuw nsw i64 %i.ap, 3
  %i.ar = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aq) #26 ; 10 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.d
  %i.at = load i64, ptr %2, align 8, !tbaa !296
  store i64 %i.at, ptr %i.as, align 8, !tbaa !296
  store ptr null, ptr %2, align 8, !tbaa !296
  %.not10.i.i.i.i.i = icmp eq ptr %i.a, %1
  br i1 %.not10.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %3 = sub i64 %i.b, %i.c
  %4 = add i64 %3, -8                             ; 2 uses
  %i.au = lshr i64 %4, 3
  %i.av = add nuw nsw i64 %i.au, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %4, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.preheader
  %i.aw = add i64 %i.b, -8
  %i.ax = sub i64 %i.aw, %i.c
  %i.ay = and i64 %i.ax, -8
  %i.az = add i64 %i.ay, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.ar, i64 %i.az
  %scevgep23 = getelementptr i8, ptr %i.a, i64 %i.az
  %bound0 = icmp ult ptr %i.ar, %scevgep23
  %bound1 = icmp ult ptr %i.a, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.preheader50, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.av, 4611686018427387900     ; 3 uses
  %i.ba = shl i64 %n.vec, 3                       ; 2 uses
  %i.bb = getelementptr i8, ptr %i.ar, i64 %i.ba  ; 2 uses
  %i.bc = getelementptr i8, ptr %i.a, i64 %i.ba
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.bd = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.ar, i64 %i.bd ; 2 uses
  %next.gep24 = getelementptr i8, ptr %i.a, i64 %i.bd ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.be = getelementptr i8, ptr %next.gep24, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep24, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  %wide.load25 = load <2 x i64>, ptr %i.be, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  %i.bf = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !296, !alias.scope !1751, !noalias !1748
  store <2 x i64> %wide.load25, ptr %i.bf, align 8, !tbaa !296, !alias.scope !1751, !noalias !1748
  %i.bg = getelementptr i8, ptr %next.gep24, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep24, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  store <2 x ptr> splat (ptr null), ptr %i.bg, align 8, !tbaa !296, !alias.scope !1748, !noalias !1743
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bh = icmp eq i64 %index.next, %n.vec
  br i1 %i.bh, label %middle.block, label %vector.body, !llvm.loop !1753

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.av, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i.preheader50

.lr.ph.i.i.i.i.i.preheader50:                     ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.ph = phi ptr [ %i.ar, %vector.memcheck ], [ %i.ar, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bb, %middle.block ]
  %.0911.i.i.i.i.i.ph = phi ptr [ %i.a, %vector.memcheck ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.bc, %middle.block ]
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader50, %.lr.ph.i.i.i.i.i
  %.012.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i ], [ %.012.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 2 uses
  %.0911.i.i.i.i.i = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i ], [ %.0911.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.preheader50 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1746)
  %i.bi = load i64, ptr %.0911.i.i.i.i.i, align 8, !tbaa !296, !alias.scope !1746, !noalias !1743
  store i64 %i.bi, ptr %.012.i.i.i.i.i, align 8, !tbaa !296, !alias.scope !1743, !noalias !1746
  store ptr null, ptr %.0911.i.i.i.i.i, align 8, !tbaa !296, !alias.scope !1746, !noalias !1743
  %i.bj = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i, i64 8 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bj, %1
  br i1 %.not.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i, label %.lr.ph.i.i.i.i.i, !llvm.loop !1754

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i: ; preds = %.lr.ph.i.i.i.i.i, %middle.block, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i.i = phi ptr [ %i.ar, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i ], [ %i.bb, %middle.block ], [ %i.bk, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %i.bl = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 8 ; 6 uses
  %.not10.i.i.i.i16.i = icmp eq ptr %1, %i.f
  br i1 %.not10.i.i.i.i16.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader

.lr.ph.i.i.i.i17.i.preheader:                     ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %5 = sub i64 %i.ai, %i.b
  %6 = add i64 %5, -8                             ; 2 uses
  %i.bm = lshr i64 %6, 3
  %i.bn = add nuw nsw i64 %i.bm, 1                ; 2 uses
  %min.iters.check34 = icmp ult i64 %6, 216
  br i1 %min.iters.check34, label %.lr.ph.i.i.i.i17.i.preheader49, label %vector.memcheck27

vector.memcheck27:                                ; preds = %.lr.ph.i.i.i.i17.i.preheader
  %i.bo = add i64 %i.ai, -8
  %i.bp = sub i64 %i.bo, %i.b
  %i.bq = and i64 %i.bp, -8                       ; 2 uses
  %i.br = getelementptr i8, ptr %.0.lcssa.i.i.i.i.i, i64 %i.bq
  %scevgep28 = getelementptr i8, ptr %i.br, i64 16
  %i.bs = add i64 %i.bq, %i.b
  %i.bt = add i64 %i.bs, 8
  %i.bu = sub i64 %i.bt, %i.c
  %scevgep29 = getelementptr i8, ptr %i.a, i64 %i.bu
  %bound030 = icmp ult ptr %i.bl, %scevgep29
  %bound131 = icmp ult ptr %1, %scevgep28
  %found.conflict32 = and i1 %bound030, %bound131
  br i1 %found.conflict32, label %.lr.ph.i.i.i.i17.i.preheader49, label %vector.ph35

vector.ph35:                                      ; preds = %vector.memcheck27
  %n.vec37 = and i64 %i.bn, 4611686018427387900   ; 3 uses
  %i.bv = shl i64 %n.vec37, 3                     ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bl, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.ah, i64 %i.bv
  br label %vector.body38

vector.body38:                                    ; preds = %vector.body38, %vector.ph35
  %index39 = phi i64 [ 0, %vector.ph35 ], [ %index.next44, %vector.body38 ] ; 2 uses
  %i.by = shl i64 %index39, 3                     ; 2 uses
  %next.gep40 = getelementptr i8, ptr %i.bl, i64 %i.by ; 2 uses
  %next.gep41 = getelementptr i8, ptr %i.ah, i64 %i.by ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.bz = getelementptr i8, ptr %next.gep41, i64 16
  %wide.load42 = load <2 x i64>, ptr %next.gep41, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  %wide.load43 = load <2 x i64>, ptr %i.bz, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  %i.ca = getelementptr i8, ptr %next.gep40, i64 16
  store <2 x i64> %wide.load42, ptr %next.gep40, align 8, !tbaa !296, !alias.scope !1763, !noalias !1760
  store <2 x i64> %wide.load43, ptr %i.ca, align 8, !tbaa !296, !alias.scope !1763, !noalias !1760
  %i.cb = getelementptr i8, ptr %next.gep41, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep41, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !tbaa !296, !alias.scope !1760, !noalias !1755
  %index.next44 = add nuw i64 %index39, 4         ; 2 uses
  %i.cc = icmp eq i64 %index.next44, %n.vec37
  br i1 %i.cc, label %middle.block45, label %vector.body38, !llvm.loop !1765

middle.block45:                                   ; preds = %vector.body38
  %cmp.n46 = icmp eq i64 %i.bn, %n.vec37
  br i1 %cmp.n46, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i.preheader49

.lr.ph.i.i.i.i17.i.preheader49:                   ; preds = %vector.memcheck27, %.lr.ph.i.i.i.i17.i.preheader, %middle.block45
  %.012.i.i.i.i18.i.ph = phi ptr [ %i.bl, %vector.memcheck27 ], [ %i.bl, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bw, %middle.block45 ]
  %.0911.i.i.i.i19.i.ph = phi ptr [ %i.ah, %vector.memcheck27 ], [ %i.ah, %.lr.ph.i.i.i.i17.i.preheader ], [ %i.bx, %middle.block45 ]
  br label %.lr.ph.i.i.i.i17.i

.lr.ph.i.i.i.i17.i:                               ; preds = %.lr.ph.i.i.i.i17.i.preheader49, %.lr.ph.i.i.i.i17.i
  %.012.i.i.i.i18.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i17.i ], [ %.012.i.i.i.i18.i.ph, %.lr.ph.i.i.i.i17.i.preheader49 ] ; 2 uses
  %.0911.i.i.i.i19.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i17.i ], [ %.0911.i.i.i.i19.i.ph, %.lr.ph.i.i.i.i17.i.preheader49 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1758)
  %i.cd = load i64, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !296, !alias.scope !1758, !noalias !1755
  store i64 %i.cd, ptr %.012.i.i.i.i18.i, align 8, !tbaa !296, !alias.scope !1755, !noalias !1758
  store ptr null, ptr %.0911.i.i.i.i19.i, align 8, !tbaa !296, !alias.scope !1758, !noalias !1755
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i19.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i18.i, i64 8 ; 2 uses
  %.not.i.i.i.i20.i = icmp eq ptr %i.ce, %i.f
  br i1 %.not.i.i.i.i20.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, label %.lr.ph.i.i.i.i17.i, !llvm.loop !1766

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i: ; preds = %.lr.ph.i.i.i.i17.i, %middle.block45, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i
  %.0.lcssa.i.i.i.i21.i = phi ptr [ %i.bl, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit.i ], [ %i.bw, %middle.block45 ], [ %i.cf, %.lr.ph.i.i.i.i17.i ]
  %.not.i23.i = icmp eq ptr %i.a, null
  br i1 %.not.i23.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit, label %bb.g

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.a) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i, %bb.g
  store ptr %i.ar, ptr %0, align 8, !tbaa !1767
  store ptr %.0.lcssa.i.i.i.i21.i, ptr %i.e, align 8, !tbaa !1738
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %i.ap
  store ptr %i.cg, ptr %i.g, align 8, !tbaa !1739
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE13_M_insert_auxIS5_EEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEOT_.exit: ; preds = %_ZNKSt14default_deleteIN6duckdb14ResultModifierEEclEPS1_.exit.i.i.i.i.i.i, %_ZSt13move_backwardIPN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEES6_ET0_T_S8_S7_.exit.i, %bb.c, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_14ResultModifierESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1767
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 %i.d
  ret ptr %i.ci
}

declare noundef zeroext i8 @_ZN6duckdb8EnumUtil10FromStringINS_24DeprecatedUsingKeySyntaxEEET_PKc(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb12optional_ptrINS_10CTEBindingELb1EE10CheckValidEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %2 = alloca %"class.std::allocator.11", align 1 ; 5 uses
  %i.a = load ptr, ptr %0, align 8, !tbaa !1027
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__cxa_allocate_exception(i64 16) #23 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @.str.61, ptr noundef nonnull align 1 dereferenceable(1) %2)
          to label %bb.c unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  invoke void @__cxa_throw(ptr nonnull %i.b, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #24
          to label %bb.i unwind label %bb.e

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i1 [ false, %bb.d ], [ true, %bb.c ]  ; 2 uses
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.e = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.e
  call void @_ZdlPv(ptr noundef %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  br i1 %.0, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn9 = phi { ptr, i32 } [ %i.c, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.b) #23
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  ret void

bb.h:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  %.pn8 = phi { ptr, i32 } [ %i.d, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %.pn9, %bb.f ], [ %i.d, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  resume { ptr, i32 } %.pn8

bb.i:                                             ; preds = %bb.d
  unreachable
}

declare void @_ZN6duckdb19LogicalSetOperationC1EmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS2_ELb1EEES5_NS_19LogicalOperatorTypeEbb(ptr noundef nonnull align 8 dereferenceable(122), i64 noundef, i64 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb19LogicalRecursiveCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmbNS_6vectorINS_10unique_ptrINS_10ExpressionESt14default_deleteIS9_ELb1EEELb1ESaISC_EEENS8_INS_15LogicalOperatorESA_ISF_ELb1EEESH_(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %9 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %10 = alloca %"class.duckdb::unique_ptr.635", align 8 ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 5 uses
  store ptr %i.a, ptr %8, align 8, !tbaa !126
  %i.b = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !127  ; 3 uses
  %i.g = icmp ult i64 %i.f, 16
  call void @llvm.assume(i1 %i.g)
  %i.h = add nuw nsw i64 %i.f, 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.a, ptr noundef nonnull align 8 dereferenceable(1) %i.c, i64 %i.h, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.b, ptr %8, align 8, !tbaa !103
  %i.i = load i64, ptr %i.c, align 8, !tbaa !119
  store i64 %i.i, ptr %i.a, align 8, !tbaa !119
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.pre = load i64, ptr %.phi.trans.insert, align 8, !tbaa !127
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.j = phi i64 [ %i.f, %bb.b ], [ %.pre, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.j, ptr %i.l, align 8, !tbaa !127
  store ptr %i.c, ptr %1, align 8, !tbaa !103
  store i64 0, ptr %i.k, align 8, !tbaa !127
  store i8 0, ptr %i.c, align 8, !tbaa !119
  %i.m = load i64, ptr %6, align 8, !tbaa !360
  store i64 %i.m, ptr %9, align 8, !tbaa !360
  store ptr null, ptr %6, align 8, !tbaa !360
  %i.n = load i64, ptr %7, align 8, !tbaa !360
  store i64 %i.n, ptr %10, align 8, !tbaa !360
  store ptr null, ptr %7, align 8, !tbaa !360
  invoke void @_ZN6duckdb10LogicalCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEESB_NS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull %8, i64 noundef %2, i64 noundef %3, ptr noundef nonnull %9, ptr noundef nonnull %10, i8 noundef zeroext 78)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.o = load ptr, ptr %10, align 8, !tbaa !360   ; 3 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i: ; preds = %bb.c
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  call void %i.r(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.o) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i
  %i.s = load ptr, ptr %9, align 8, !tbaa !360    ; 3 uses
  %.not.i5 = icmp eq ptr %i.s, null
  br i1 %.not.i5, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i6

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i6: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8
  call void %i.v(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.s) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i6
  %i.w = load ptr, ptr %8, align 8, !tbaa !103    ; 2 uses
  %i.x = icmp eq ptr %i.w, %i.a
  br i1 %i.x, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7
  call void @_ZdlPv(ptr noundef %i.w) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %i.y = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb19LogicalRecursiveCTEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.y, ptr %i.z, align 8, !tbaa !1768
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load <2 x ptr>, ptr %5, align 8, !tbaa !210
  store <2 x ptr> %i.ab, ptr %i.aa, align 8, !tbaa !210
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !212
  store ptr %i.ae, ptr %i.ac, align 8, !tbaa !212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false)
  ret void

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.af = landingpad { ptr, i32 }
          cleanup
  %i.ag = load ptr, ptr %10, align 8, !tbaa !360  ; 3 uses
  %.not.i8 = icmp eq ptr %i.ag, null
  br i1 %.not.i8, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i9

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i9: ; preds = %bb.d
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !10
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8
  call void %i.aj(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ag) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10: ; preds = %bb.d, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i9
  %i.ak = load ptr, ptr %9, align 8, !tbaa !360   ; 3 uses
  %.not.i11 = icmp eq ptr %i.ak, null
  br i1 %.not.i11, label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13, label %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i12

_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i12: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !10
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %i.ak) #23, !inline_history !659
  br label %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13

_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit10, %_ZNKSt14default_deleteIN6duckdb15LogicalOperatorEEclEPS1_.exit.i12
  %i.ao = load ptr, ptr %8, align 8, !tbaa !103   ; 2 uses
  %i.ap = icmp eq ptr %i.ao, %i.a
  br i1 %i.ap, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13
  call void @_ZdlPv(ptr noundef %i.ao) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit16: ; preds = %_ZNSt10unique_ptrIN6duckdb15LogicalOperatorESt14default_deleteIS1_EED2Ev.exit13, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i14
  resume { ptr, i32 } %i.af
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN6duckdb10LogicalCTEC2ENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEmmNS_10unique_ptrINS_15LogicalOperatorESt14default_deleteIS8_ELb1EEESB_NS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef %1, i64 noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef %5, i8 noundef zeroext %6) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97) %0, i8 noundef zeroext %6)
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb10LogicalCTEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 4 uses
  store ptr %i.b, ptr %i.a, align 8, !tbaa !126
  %i.c = load ptr, ptr %1, align 8, !tbaa !103    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  %i.e = icmp eq ptr %i.c, %i.d
  br i1 %i.e, label %bb.b, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !127  ; 2 uses
  %i.h = icmp ult i64 %i.g, 16
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add nuw nsw i64 %i.g, 1
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.b, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.i, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i: ; preds = %bb.a
  store ptr %i.c, ptr %i.a, align 8, !tbaa !103
  %i.j = load i64, ptr %i.d, align 8, !tbaa !119
  store i64 %i.j, ptr %i.b, align 8, !tbaa !119
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !127
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i64 %i.l, ptr %i.m, align 8, !tbaa !127
  store ptr %i.d, ptr %1, align 8, !tbaa !103
  store i64 0, ptr %i.k, align 8, !tbaa !127
  store i8 0, ptr %i.d, align 8, !tbaa !119
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %2, ptr %i.n, align 8, !tbaa !1769
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i64 %3, ptr %i.o, align 8, !tbaa !1770
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, i8 0, i64 24, i1 false)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i64 -9223372036854775808, ptr %i.q, align 8, !tbaa !1509
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !896  ; 6 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !897  ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, %i.v
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.w = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.w, ptr %i.t, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.x, ptr %i.s, align 8, !tbaa !896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

bb.d:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EOS4_.exit
  %i.y = load ptr, ptr %i.r, align 8, !tbaa !898  ; 10 uses
  %i.z = ptrtoint ptr %i.t to i64                 ; 3 uses
  %i.aa = ptrtoint ptr %i.y to i64                ; 3 uses
  %i.ab = sub i64 %i.z, %i.aa                     ; 3 uses
  %i.ac = icmp eq i64 %i.ab, 9223372036854775800
  br i1 %i.ac, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.d
  %i.ad = ashr exact i64 %i.ab, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %i.ad, i64 1)
  %i.ae = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ad ; 2 uses
  %i.af = icmp ult i64 %i.ae, %i.ad
  %i.ag = tail call i64 @llvm.umin.i64(i64 %i.ae, i64 1152921504606846975)
  %i.ah = select i1 %i.af, i64 1152921504606846975, i64 %i.ag ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ah, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.ai = shl nuw nsw i64 %i.ah, 3
  %i.aj = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ai) #26
          to label %.noexc5 unwind label %bb.i    ; 10 uses

.noexc5:                                          ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ab
  %i.al = load i64, ptr %4, align 8, !tbaa !360
  store i64 %i.al, ptr %i.ak, align 8, !tbaa !360
  store ptr null, ptr %4, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i = icmp eq ptr %i.y, %i.t
  br i1 %.not10.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.noexc5
  %7 = sub i64 %i.z, %i.aa
  %8 = add i64 %7, -8                             ; 2 uses
  %i.am = lshr i64 %8, 3
  %i.an = add nuw nsw i64 %i.am, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %8, 152
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.ao = add i64 %i.z, -8
  %i.ap = sub i64 %i.ao, %i.aa
  %i.aq = and i64 %i.ap, -8
  %i.ar = add i64 %i.aq, 8                        ; 2 uses
  %scevgep = getelementptr i8, ptr %i.aj, i64 %i.ar
  %scevgep38 = getelementptr i8, ptr %i.y, i64 %i.ar
  %bound0 = icmp ult ptr %i.aj, %scevgep38
  %bound1 = icmp ult ptr %i.y, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader65, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.an, 4611686018427387900     ; 3 uses
  %i.as = shl i64 %n.vec, 3                       ; 2 uses
  %i.at = getelementptr i8, ptr %i.aj, i64 %i.as  ; 2 uses
  %i.au = getelementptr i8, ptr %i.y, i64 %i.as
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.av = shl i64 %index, 3                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.aj, i64 %i.av ; 2 uses
  %next.gep39 = getelementptr i8, ptr %i.y, i64 %i.av ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.aw = getelementptr i8, ptr %next.gep39, i64 16
  %wide.load = load <2 x i64>, ptr %next.gep39, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  %wide.load40 = load <2 x i64>, ptr %i.aw, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  %i.ax = getelementptr i8, ptr %next.gep, i64 16
  store <2 x i64> %wide.load, ptr %next.gep, align 8, !tbaa !360, !alias.scope !1779, !noalias !1776
  store <2 x i64> %wide.load40, ptr %i.ax, align 8, !tbaa !360, !alias.scope !1779, !noalias !1776
  %i.ay = getelementptr i8, ptr %next.gep39, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep39, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  store <2 x ptr> splat (ptr null), ptr %i.ay, align 8, !tbaa !360, !alias.scope !1776, !noalias !1771
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1781

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.an, %n.vec
  br i1 %cmp.n, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader65

.lr.ph.i.i.i.i.i.i.i.preheader65:                 ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.012.i.i.i.i.i.i.i.ph = phi ptr [ %i.aj, %vector.memcheck ], [ %i.aj, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.at, %middle.block ]
  %.0911.i.i.i.i.i.i.i.ph = phi ptr [ %i.y, %vector.memcheck ], [ %i.y, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %i.au, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader65, %.lr.ph.i.i.i.i.i.i.i
  %.012.i.i.i.i.i.i.i = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ], [ %.012.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i ], [ %.0911.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader65 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  %i.ba = load i64, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !1774, !noalias !1771
  store i64 %i.ba, ptr %.012.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !1771, !noalias !1774
  store ptr null, ptr %.0911.i.i.i.i.i.i.i, align 8, !tbaa !360, !alias.scope !1774, !noalias !1771
  %i.bb = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.bb, %i.t
  br i1 %.not.i.i.i.i.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1782

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block, %.noexc5
  %.0.lcssa.i.i.i.i.i.i.i = phi ptr [ %i.aj, %.noexc5 ], [ %i.at, %middle.block ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i ]
  %i.bd = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %.not.i23.i.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i23.i.i.i, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.y) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i: ; preds = %bb.e, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i
  store ptr %i.aj, ptr %i.r, align 8, !tbaa !898
  store ptr %i.bd, ptr %i.s, align 8, !tbaa !896
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ah ; 2 uses
  store ptr %i.be, ptr %i.u, align 8, !tbaa !897
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i, %bb.c
  %i.bf = phi ptr [ %i.be, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.v, %bb.c ] ; 4 uses
  %i.bg = phi ptr [ %i.bd, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i ], [ %i.x, %bb.c ] ; 3 uses
  %.not.i.i6 = icmp eq ptr %i.bg, %i.bf
  br i1 %.not.i.i6, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bh = load i64, ptr %5, align 8, !tbaa !360
  store i64 %i.bh, ptr %i.bg, align 8, !tbaa !360
  store ptr null, ptr %5, align 8, !tbaa !360
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.bi, ptr %i.s, align 8, !tbaa !896
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

bb.g:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit
  %i.bj = load ptr, ptr %i.r, align 8, !tbaa !898 ; 10 uses
  %i.bk = ptrtoint ptr %i.bf to i64               ; 3 uses
  %i.bl = ptrtoint ptr %i.bj to i64               ; 3 uses
  %i.bm = sub i64 %i.bk, %i.bl                    ; 3 uses
  %i.bn = icmp eq i64 %i.bm, 9223372036854775800
  br i1 %i.bn, label %.invoke, label %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7

.invoke:                                          ; preds = %bb.g, %bb.d
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.42) #24
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7: ; preds = %bb.g
  %i.bo = ashr exact i64 %i.bm, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i8 = tail call i64 @llvm.umax.i64(i64 %i.bo, i64 1)
  %i.bp = add nsw i64 %.sroa.speculated.i.i.i.i8, %i.bo ; 2 uses
  %i.bq = icmp ult i64 %i.bp, %i.bo
  %i.br = tail call i64 @llvm.umin.i64(i64 %i.bp, i64 1152921504606846975)
  %i.bs = select i1 %i.bq, i64 1152921504606846975, i64 %i.br ; 3 uses
  %.not.i.i.i.i9 = icmp ne i64 %i.bs, 0
  tail call void @llvm.assume(i1 %.not.i.i.i.i9)
  %i.bt = shl nuw nsw i64 %i.bs, 3
  %i.bu = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bt) #26
          to label %.noexc20 unwind label %bb.i   ; 10 uses

.noexc20:                                         ; preds = %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.bm
  %i.bw = load i64, ptr %5, align 8, !tbaa !360
  store i64 %i.bw, ptr %i.bv, align 8, !tbaa !360
  store ptr null, ptr %5, align 8, !tbaa !360
  %.not10.i.i.i.i.i.i.i10 = icmp eq ptr %i.bj, %i.bf
  br i1 %.not10.i.i.i.i.i.i.i10, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i11.preheader

.lr.ph.i.i.i.i.i.i.i11.preheader:                 ; preds = %.noexc20
  %9 = sub i64 %i.bk, %i.bl
  %10 = add i64 %9, -8                            ; 2 uses
  %i.bx = lshr i64 %10, 3
  %i.by = add nuw nsw i64 %i.bx, 1                ; 2 uses
  %min.iters.check49 = icmp ult i64 %10, 152
  br i1 %min.iters.check49, label %.lr.ph.i.i.i.i.i.i.i11.preheader64, label %vector.memcheck42

vector.memcheck42:                                ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader
  %i.bz = add i64 %i.bk, -8
  %i.ca = sub i64 %i.bz, %i.bl
  %i.cb = and i64 %i.ca, -8
  %i.cc = add i64 %i.cb, 8                        ; 2 uses
  %scevgep43 = getelementptr i8, ptr %i.bu, i64 %i.cc
  %scevgep44 = getelementptr i8, ptr %i.bj, i64 %i.cc
  %bound045 = icmp ult ptr %i.bu, %scevgep44
  %bound146 = icmp ult ptr %i.bj, %scevgep43
  %found.conflict47 = and i1 %bound045, %bound146
  br i1 %found.conflict47, label %.lr.ph.i.i.i.i.i.i.i11.preheader64, label %vector.ph50

vector.ph50:                                      ; preds = %vector.memcheck42
  %n.vec52 = and i64 %i.by, 4611686018427387900   ; 3 uses
  %i.cd = shl i64 %n.vec52, 3                     ; 2 uses
  %i.ce = getelementptr i8, ptr %i.bu, i64 %i.cd  ; 2 uses
  %i.cf = getelementptr i8, ptr %i.bj, i64 %i.cd
  br label %vector.body53

vector.body53:                                    ; preds = %vector.body53, %vector.ph50
  %index54 = phi i64 [ 0, %vector.ph50 ], [ %index.next59, %vector.body53 ] ; 2 uses
  %i.cg = shl i64 %index54, 3                     ; 2 uses
  %next.gep55 = getelementptr i8, ptr %i.bu, i64 %i.cg ; 2 uses
  %next.gep56 = getelementptr i8, ptr %i.bj, i64 %i.cg ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.ch = getelementptr i8, ptr %next.gep56, i64 16
  %wide.load57 = load <2 x i64>, ptr %next.gep56, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  %wide.load58 = load <2 x i64>, ptr %i.ch, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  %i.ci = getelementptr i8, ptr %next.gep55, i64 16
  store <2 x i64> %wide.load57, ptr %next.gep55, align 8, !tbaa !360, !alias.scope !1791, !noalias !1788
  store <2 x i64> %wide.load58, ptr %i.ci, align 8, !tbaa !360, !alias.scope !1791, !noalias !1788
  %i.cj = getelementptr i8, ptr %next.gep56, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep56, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  store <2 x ptr> splat (ptr null), ptr %i.cj, align 8, !tbaa !360, !alias.scope !1788, !noalias !1783
  %index.next59 = add nuw i64 %index54, 4         ; 2 uses
  %i.ck = icmp eq i64 %index.next59, %n.vec52
  br i1 %i.ck, label %middle.block60, label %vector.body53, !llvm.loop !1793

middle.block60:                                   ; preds = %vector.body53
  %cmp.n61 = icmp eq i64 %i.by, %n.vec52
  br i1 %cmp.n61, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i11.preheader64

.lr.ph.i.i.i.i.i.i.i11.preheader64:               ; preds = %vector.memcheck42, %.lr.ph.i.i.i.i.i.i.i11.preheader, %middle.block60
  %.012.i.i.i.i.i.i.i12.ph = phi ptr [ %i.bu, %vector.memcheck42 ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.ce, %middle.block60 ]
  %.0911.i.i.i.i.i.i.i13.ph = phi ptr [ %i.bj, %vector.memcheck42 ], [ %i.bj, %.lr.ph.i.i.i.i.i.i.i11.preheader ], [ %i.cf, %middle.block60 ]
  br label %.lr.ph.i.i.i.i.i.i.i11

.lr.ph.i.i.i.i.i.i.i11:                           ; preds = %.lr.ph.i.i.i.i.i.i.i11.preheader64, %.lr.ph.i.i.i.i.i.i.i11
  %.012.i.i.i.i.i.i.i12 = phi ptr [ %i.cn, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.012.i.i.i.i.i.i.i12.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader64 ] ; 2 uses
  %.0911.i.i.i.i.i.i.i13 = phi ptr [ %i.cm, %.lr.ph.i.i.i.i.i.i.i11 ], [ %.0911.i.i.i.i.i.i.i13.ph, %.lr.ph.i.i.i.i.i.i.i11.preheader64 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.cl = load i64, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !360, !alias.scope !1786, !noalias !1783
  store i64 %i.cl, ptr %.012.i.i.i.i.i.i.i12, align 8, !tbaa !360, !alias.scope !1783, !noalias !1786
  store ptr null, ptr %.0911.i.i.i.i.i.i.i13, align 8, !tbaa !360, !alias.scope !1786, !noalias !1783
  %i.cm = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i.i.i.i13, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i.i.i.i12, i64 8 ; 2 uses
  %.not.i.i.i.i.i.i.i14 = icmp eq ptr %i.cm, %i.bf
  br i1 %.not.i.i.i.i.i.i.i14, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15, label %.lr.ph.i.i.i.i.i.i.i11, !llvm.loop !1794

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15: ; preds = %.lr.ph.i.i.i.i.i.i.i11, %middle.block60, %.noexc20
  %.0.lcssa.i.i.i.i.i.i.i16 = phi ptr [ %i.bu, %.noexc20 ], [ %i.ce, %middle.block60 ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i11 ]
  %i.co = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i.i.i.i16, i64 8
  %.not.i23.i.i.i17 = icmp eq ptr %i.bj, null
  br i1 %.not.i23.i.i.i17, label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15
  tail call void @_ZdlPv(ptr noundef nonnull %i.bj) #25
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18: ; preds = %bb.h, %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE11_S_relocateEPS5_S8_S8_RS6_.exit22.i.i.i15
  store ptr %i.bu, ptr %i.r, align 8, !tbaa !898
  store ptr %i.co, ptr %i.s, align 8, !tbaa !896
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.bs
  store ptr %i.cp, ptr %i.u, align 8, !tbaa !897
  br label %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21

_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE9push_backEOS5_.exit21: ; preds = %_ZNSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE17_M_realloc_insertIJS5_EEEvN9__gnu_cxx17__normal_iteratorIPS5_S7_EEDpOT_.exit.i.i18, %bb.f
  ret void

bb.i:                                             ; preds = %.invoke, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i7, %_ZNKSt6vectorIN6duckdb10unique_ptrINS0_15LogicalOperatorESt14default_deleteIS2_ELb1EEESaIS5_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.cq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZN6duckdb17CorrelatedColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.p) #23
  %i.cr = load ptr, ptr %i.a, align 8, !tbaa !103 ; 2 uses
  %i.cs = icmp eq ptr %i.cr, %i.b
  br i1 %i.cs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.i
  tail call void @_ZdlPv(ptr noundef %i.cr) #25
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  tail call void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97) %0) #23
  resume { ptr, i32 } %i.cq
}

declare void @_ZN6duckdb15LogicalOperatorC2ENS_19LogicalOperatorTypeE(ptr noundef nonnull align 8 dereferenceable(97), i8 noundef zeroext) unnamed_addr #2

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb17CorrelatedColumnsD2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !1514   ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !1507 ; 2 uses
  %.not4.i.i.i = icmp eq ptr %i.a, %i.c
  br i1 %.not4.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i
  %.05.i.i.i = phi ptr [ %i.i, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i ], [ %i.a, %bb.a ] ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !103  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 56
  %i.g = icmp eq ptr %i.e, %i.f
  br i1 %i.g, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.e) #25
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i: ; preds = %.lr.ph.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i
  %i.h = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.h) #23
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.i, %i.c
  br i1 %.not.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, label %.lr.ph.i.i.i, !llvm.loop !1606

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i
  %.pr.i = load ptr, ptr %0, align 8, !tbaa !1514
  br label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i, %bb.a
  %i.j = phi ptr [ %.pr.i, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i ], [ %i.a, %bb.a ] ; 2 uses
  %.not.i.i1.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i1.i, label %_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.j) #25
  br label %_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EED2Ev.exit

_ZNSt6vectorIN6duckdb20CorrelatedColumnInfoESaIS1_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i, %bb.b
  ret void
}

; Function Attrs: nounwind
declare void @_ZN6duckdb15LogicalOperatorD2Ev(ptr noundef nonnull align 8 dead_on_return(97) dereferenceable(97)) unnamed_addr #4

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN6duckdb10LogicalCTED2Ev(ptr noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN6duckdb10LogicalCTEE, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1514 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !1507 ; 2 uses
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.a, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.j, %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i ], [ %i.b, %bb.a ] ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !103  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 56
  %i.h = icmp eq ptr %i.f, %i.g
  br i1 %i.h, label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  tail call void @_ZdlPv(ptr noundef %i.f) #25
  br label %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i

_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i: ; preds = %.lr.ph.i.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 16
  tail call void @_ZN6duckdb11LogicalTypeD1Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %i.i) #23
  %i.j = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 80 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.j, %i.d
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !1606

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i: ; preds = %_ZSt8_DestroyIN6duckdb20CorrelatedColumnInfoEEvPT_.exit.i.i.i.i
  %.pr.i.i = load ptr, ptr %i.a, align 8, !tbaa !1514
  br label %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i: ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i, %bb.a
  %i.k = phi ptr [ %.pr.i.i, %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exitthread-pre-split.i.i ], [ %i.b, %bb.a ] ; 2 uses
  %.not.i.i1.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i.i, label %_ZN6duckdb17CorrelatedColumnsD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i
  tail call void @_ZdlPv(ptr noundef nonnull %i.k) #25
  br label %_ZN6duckdb17CorrelatedColumnsD2Ev.exit

_ZN6duckdb17CorrelatedColumnsD2Ev.exit:           ; preds = %_ZSt8_DestroyIPN6duckdb20CorrelatedColumnInfoES1_EvT_S3_RSaIT0_E.exit.i.i, %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !103  ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
end_hunk_20
