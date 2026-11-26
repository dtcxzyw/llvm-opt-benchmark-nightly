Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/vsite_parm?download=true
inline.NumInlined: 1614
inline.NumDeleted: 663
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZL20cmp_atomtype_name_ABP6t_atomP22PreprocessingAtomTypesRKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEi:bb.a

.noexc21:                                         ; preds = %bb.j
  unreachable

_ZNOSt8optionalIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit22: ; preds = %bb.i
  %i.ao = zext nneg i32 %3 to i64
  %i.ap = invoke noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32) %6, ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.ao)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %_ZNOSt8optionalIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit22
  %i.aq = load i8, ptr %i.al, align 8, !tbaa !151, !range !41, !noundef !42
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.l, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit25

bb.l:                                             ; preds = %bb.k
  store i8 0, ptr %i.al, align 8, !tbaa !151
  %i.as = load ptr, ptr %6, align 8, !tbaa !68    ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.au = icmp eq ptr %i.as, %i.at
  br i1 %i.au, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit25, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i23

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i23: ; preds = %bb.l
  %i.av = load i64, ptr %i.at, align 8, !tbaa !69
  %i.aw = add i64 %i.av, 1
  call void @_ZdlPvm(ptr noundef %i.as, i64 noundef %i.aw) #27
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit25

_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit25: ; preds = %bb.l, %bb.k, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i23
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.o

bb.m:                                             ; preds = %bb.j, %_ZNOSt8optionalIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5valueEv.exit22
  %i.ax = landingpad { ptr, i32 }
          cleanup
  %i.ay = load i8, ptr %i.al, align 8, !tbaa !151, !range !41, !noundef !42
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.n, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit28

bb.n:                                             ; preds = %bb.m
  store i8 0, ptr %i.al, align 8, !tbaa !151
  %i.ba = load ptr, ptr %6, align 8, !tbaa !68    ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.bc = icmp eq ptr %i.ba, %i.bb
  br i1 %i.bc, label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit28, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26: ; preds = %bb.n
  %i.bd = load i64, ptr %i.bb, align 8, !tbaa !69
  %i.be = add i64 %i.bd, 1
  call void @_ZdlPvm(ptr noundef %i.ba, i64 noundef %i.be) #27
  br label %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit28

_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit28: ; preds = %bb.n, %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i26
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  br label %bb.p

bb.o:                                             ; preds = %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit25, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit17
  %.013 = phi i1 [ %i.t, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit17 ], [ %i.ap, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit25 ]
  ret i1 %.013

bb.p:                                             ; preds = %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit28, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit20
  %.pn = phi { ptr, i32 } [ %i.ab, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit20 ], [ %i.ax, %_ZNSt14_Optional_baseIKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEELb0ELb0EED2Ev.exit28 ]
  resume { ptr, i32 } %.pn
}

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2akEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2alEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2ajEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #15

declare void @_ZN17InteractionOfType17setForceParameterEif(ptr noundef nonnull align 8 dereferenceable(105), i32 noundef, float noundef) local_unnamed_addr #4

declare void @_ZNK22PreprocessingAtomTypes20atomNameFromAtomTypeB5cxx11Ei(ptr dead_on_unwind writable sret(%"class.std::optional.75") align 8, ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #4

declare noundef zeroext i1 @_ZN3gmx20equalCaseInsensitiveERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES7_m(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32), i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare noundef i64 @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE4findEPKcmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #16

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #17

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2c1Ev(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #4

declare noundef nonnull align 4 dereferenceable(4) ptr @_ZNK17InteractionOfType2amEv(ptr noundef nonnull align 8 dereferenceable(105)) local_unnamed_addr #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #15

declare void @_ZNSt10filesystem7__cxx114path5_ListC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #4

declare void @_ZNSt10filesystem7__cxx114path14_M_split_cmptsEv(ptr noundef nonnull align 8 dereferenceable(40)) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @_ZNKSt10filesystem7__cxx114path5_List13_Impl_deleterclEPNS2_5_ImplE(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef) local_unnamed_addr #13

; Function Attrs: mustprogress uwtable
define void @_Z16set_vsites_ptypebP13gmx_moltype_tRKN3gmx8MDLoggerE(i1 noundef zeroext %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %4 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  br i1 %0, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !57   ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, i8 0, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 5 uses
  store ptr %i.e, ptr %3, align 8, !tbaa !59
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.f, align 8, !tbaa !62
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i8 1, ptr %i.g, align 8, !tbaa !65
  %i.h = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %3, ptr noundef nonnull @.str.33)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.b, align 8, !tbaa !67
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  invoke void %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %i.h)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit unwind label %bb.e, !inline_history !1

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit: ; preds = %bb.d
  %i.l = load ptr, ptr %3, align 8, !tbaa !68     ; 2 uses
  %i.m = icmp eq ptr %i.l, %i.e
  br i1 %i.m, label %_ZN3gmx14LogEntryWriterD2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit
  %i.n = load i64, ptr %i.e, align 8, !tbaa !69
  %i.o = add i64 %i.n, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.o) #27
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit

_ZN3gmx14LogEntryWriterD2Ev.exit:                 ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  %i.q = load ptr, ptr %3, align 8, !tbaa !68     ; 2 uses
  %i.r = icmp eq ptr %i.q, %i.e
  br i1 %i.r, label %_ZN3gmx14LogEntryWriterD2Ev.exit32, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30: ; preds = %bb.e
  %i.s = load i64, ptr %i.e, align 8, !tbaa !69
  %i.t = add i64 %i.s, 1
  call void @_ZdlPvm(ptr noundef %i.q, i64 noundef %i.t) #27
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit32

_ZN3gmx14LogEntryWriterD2Ev.exit32:               ; preds = %bb.e, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i30
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.o

bb.f:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit, %bb.b, %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 16
  br label %bb.h

bb.g:                                             ; preds = %.loopexit
  ret void

bb.h:                                             ; preds = %bb.f, %.loopexit
  %indvars.iv53 = phi i64 [ 0, %bb.f ], [ %indvars.iv.next54, %.loopexit ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv53 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 28
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !28
  %i.ae = and i32 %i.ad, 2
  %.not = icmp eq i32 %i.ae, 0
  br i1 %.not, label %.loopexit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.u, i64 %indvars.iv53 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !33
  %.fr = freeze i32 %i.ah                         ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !74
  %i.ak = load ptr, ptr %i.af, align 8, !tbaa !36 ; 3 uses
  %i.al = ptrtoint ptr %i.aj to i64
  %i.am = ptrtoint ptr %i.ak to i64
  %i.an = sub i64 %i.al, %i.am
  %i.ao = lshr exact i64 %i.an, 2                 ; 2 uses
  %i.ap = trunc i64 %i.ao to i32                  ; 3 uses
  %i.aq = load ptr, ptr @debug, align 8, !tbaa !51
  %i.ar = icmp ne ptr %i.aq, null
  %i.as = icmp ne i32 %i.ap, 0
  %or.cond = and i1 %i.ar, %i.as
  br i1 %or.cond, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.at = load ptr, ptr %i.v, align 8, !tbaa !57  ; 3 uses
  %i.au = icmp eq ptr %i.at, null
  br i1 %i.au, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i8 0, i64 24, i1 false)
  store ptr %i.w, ptr %4, align 8, !tbaa !59
  store i64 0, ptr %i.x, align 8, !tbaa !62
  store i8 1, ptr %i.y, align 8, !tbaa !65
  %i.av = add nsw i32 %.fr, 1
  %i.aw = sdiv i32 %i.ap, %i.av
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !75
  %i.az = invoke noundef nonnull align 8 dereferenceable(40) ptr (ptr, ptr, ...) @_ZN3gmx14LogEntryWriter19appendTextFormattedEPKcz(ptr noundef nonnull align 8 dereferenceable(40) %4, ptr noundef nonnull @.str.34, i32 noundef %i.aw, ptr noundef %i.ay)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ba = load ptr, ptr %i.at, align 8, !tbaa !67
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8
  invoke void %i.bc(ptr noundef nonnull align 8 dereferenceable(8) %i.at, ptr noundef nonnull align 8 dereferenceable(40) %i.az)
          to label %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit33 unwind label %bb.m, !inline_history !1

_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit33: ; preds = %bb.l
  %i.bd = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.be = icmp eq ptr %i.bd, %i.w
  br i1 %i.be, label %_ZN3gmx14LogEntryWriterD2Ev.exit36, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34: ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit33
  %i.bf = load i64, ptr %i.w, align 8, !tbaa !69
  %i.bg = add i64 %i.bf, 1
  call void @_ZdlPvm(ptr noundef %i.bd, i64 noundef %i.bg) #27
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit36

_ZN3gmx14LogEntryWriterD2Ev.exit36:               ; preds = %_ZN3gmx14LogWriteHelperaSERKNS_14LogEntryWriterE.exit33, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i34
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.n

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.bh = landingpad { ptr, i32 }
          cleanup
  %i.bi = load ptr, ptr %4, align 8, !tbaa !68    ; 2 uses
  %i.bj = icmp eq ptr %i.bi, %i.w
  br i1 %i.bj, label %_ZN3gmx14LogEntryWriterD2Ev.exit39, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37: ; preds = %bb.m
  %i.bk = load i64, ptr %i.w, align 8, !tbaa !69
  %i.bl = add i64 %i.bk, 1
  call void @_ZdlPvm(ptr noundef %i.bi, i64 noundef %i.bl) #27
  br label %_ZN3gmx14LogEntryWriterD2Ev.exit39

_ZN3gmx14LogEntryWriterD2Ev.exit39:               ; preds = %bb.m, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #24
  br label %bb.o

bb.n:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit36, %bb.j, %bb.i
  %i.bm = icmp sgt i32 %i.ap, 0
  br i1 %i.bm, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.n
  %i.bn = load ptr, ptr %i.z, align 8, !tbaa !159 ; 2 uses
  %i.bo = add i32 %.fr, 1
  %i.bp = sext i32 %i.bo to i64                   ; 8 uses
  %i.bq = and i64 %i.ao, 2147483647               ; 3 uses
  %i.br = call i64 @llvm.smax.i64(i64 %i.bp, i64 %i.bq)
  %i.bs = icmp sgt i64 %i.bq, %i.bp
  %i.bt = zext i1 %i.bs to i64                    ; 2 uses
  %i.bu = add nsw i64 %i.bt, %i.bp
  %i.bv = sub i64 %i.br, %i.bu
  %i.bw = call i64 @llvm.umax.i64(i64 %i.bp, i64 1)
  %i.bx = udiv i64 %i.bv, %i.bw
  %i.by = add i64 %i.bx, %i.bt
  %i.bz = add i64 %i.by, 1                        ; 3 uses
  %min.iters.check = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph
  %n.vec = and i64 %i.bz, -8                      ; 3 uses
  %i.ca = mul i64 %n.vec, %i.bp
  %broadcast.splatinsert = insertelement <8 x i64> poison, i64 %i.bp, i64 0
  %broadcast.splat = shufflevector <8 x i64> %broadcast.splatinsert, <8 x i64> poison, <8 x i32> zeroinitializer
  %i.cb = mul nsw <8 x i64> %broadcast.splat, <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>
  %i.cc = shl nsw i64 %i.bp, 3
  %broadcast.splatinsert66 = insertelement <8 x i64> poison, i64 %i.cc, i64 0
  %broadcast.splat67 = shufflevector <8 x i64> %broadcast.splatinsert66, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <8 x i64> [ %i.cb, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 2 uses
  %wide.gep = getelementptr [4 x i8], ptr %i.ak, <8 x i64> %vec.ind
  %wide.gep68 = getelementptr i8, <8 x ptr> %wide.gep, i64 4
  %wide.masked.gather = call <8 x i32> @llvm.masked.gather.v8i32.v8p0(<8 x ptr> align 4 %wide.gep68, <8 x i1> splat (i1 true), <8 x i32> poison), !tbaa !37
  %i.cd = sext <8 x i32> %wide.masked.gather to <8 x i64>
  %wide.gep69 = getelementptr inbounds [36 x i8], ptr %i.bn, <8 x i64> %i.cd
  %wide.gep70 = getelementptr inbounds nuw i8, <8 x ptr> %wide.gep69, i64 20
  call void @llvm.masked.scatter.v8i32.v8p0(<8 x i32> splat (i32 4), <8 x ptr> align 4 %wide.gep70, <8 x i1> splat (i1 true)), !tbaa !160
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add nsw <8 x i64> %vec.ind, %broadcast.splat67
  %i.ce = icmp eq i64 %index.next, %n.vec
  br i1 %i.ce, label %middle.block, label %vector.body, !llvm.loop !153

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.bz, %n.vec
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph, %middle.block
  %indvars.iv.ph = phi i64 [ 0, %.lr.ph ], [ %i.ca, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv = phi i64 [ %indvars.iv.next, %scalar.ph ], [ %indvars.iv.ph, %scalar.ph.preheader ] ; 2 uses
  %i.cf = getelementptr [4 x i8], ptr %i.ak, i64 %indvars.iv
  %i.cg = getelementptr i8, ptr %i.cf, i64 4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !37
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [36 x i8], ptr %i.bn, i64 %i.ci
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 20
  store i32 4, ptr %i.ck, align 4, !tbaa !160
  %indvars.iv.next = add nsw i64 %indvars.iv, %i.bp ; 2 uses
  %i.cl = icmp slt i64 %indvars.iv.next, %i.bq
  br i1 %i.cl, label %scalar.ph, label %.loopexit, !llvm.loop !154

.loopexit:                                        ; preds = %scalar.ph, %middle.block, %bb.n, %bb.h
  %indvars.iv.next54 = add nuw nsw i64 %indvars.iv53, 1 ; 2 uses
  %.not48 = icmp eq i64 %indvars.iv.next54, 95
  br i1 %.not48, label %bb.g, label %bb.h

bb.o:                                             ; preds = %_ZN3gmx14LogEntryWriterD2Ev.exit39, %_ZN3gmx14LogEntryWriterD2Ev.exit32
  %.pn = phi { ptr, i32 } [ %i.bh, %_ZN3gmx14LogEntryWriterD2Ev.exit39 ], [ %i.p, %_ZN3gmx14LogEntryWriterD2Ev.exit32 ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define void @_Z19clean_vsite_bondedsRN3gmx16EnumerationArrayI19InteractionFunction18InteractionsOfTypeLS1_95EEEibRKNS_8MDLoggerE(ptr noundef nonnull align 8 dereferenceable(21280) %0, i32 noundef %1, i1 noundef zeroext %2, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %3) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.gmx::LogEntryWriter", align 8 ; 15 uses
  %5 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %6 = alloca %"class.gmx::LogEntryWriter", align 8 ; 10 uses
  %7 = alloca %"class.gmx::LogEntryWriter", align 8 ; 10 uses
  %8 = alloca %"class.gmx::LogEntryWriter", align 8 ; 10 uses
  %9 = alloca %"class.gmx::LogEntryWriter", align 8 ; 10 uses
  %10 = alloca %"class.gmx::LogEntryWriter", align 8 ; 10 uses
  %11 = alloca %"class.std::vector.99", align 16  ; 16 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %13 = alloca %"class.gmx::LogEntryWriter", align 8 ; 11 uses
  %14 = alloca %"class.std::vector.99", align 16  ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.a = sext i32 %1 to i64                       ; 13 uses
  %i.b = icmp slt i32 %1, 0
  br i1 %i.b, label %bb.b, label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #25
          to label %.noexc unwind label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EED2Ev.exit228.thread

.noexc:                                           ; preds = %bb.b
  unreachable

_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i: ; preds = %bb.a
  %.not.i.i.i.i = icmp eq i32 %1, 0               ; 3 uses
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit, label %_ZNSt12_Vector_baseISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.i

_ZNSt12_Vector_baseISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.i: ; preds = %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %i.c = shl nuw nsw i64 %i.a, 3
  %i.d = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.c) #26
          to label %.lr.ph.i.i.i.i.i.preheader unwind label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EED2Ev.exit228.thread ; 4 uses

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZNSt12_Vector_baseISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.i
  %xtraiter = and i64 %i.a, 7
  %i.e = and i32 %1, 7
  %lcmp.mod.not = icmp eq i32 %i.e, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.prol:                            ; preds = %.lr.ph.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.prol
  %.08.i.i.i.i.i.prol = phi ptr [ %i.h, %.lr.ph.i.i.i.i.i.prol ], [ %i.d, %.lr.ph.i.i.i.i.i.preheader ] ; 2 uses
  %.057.i.i.i.i.i.prol = phi i64 [ %i.g, %.lr.ph.i.i.i.i.i.prol ], [ %i.a, %.lr.ph.i.i.i.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 4
  store i8 0, ptr %i.f, align 4, !tbaa !54
  %i.g = add nsw i64 %.057.i.i.i.i.i.prol, -1     ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i.prol, i64 8 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.prol, !llvm.loop !161

.lr.ph.i.i.i.i.i.prol.loopexit:                   ; preds = %.lr.ph.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.preheader
  %.08.i.i.i.i.i.unr = phi ptr [ %i.d, %.lr.ph.i.i.i.i.i.preheader ], [ %i.h, %.lr.ph.i.i.i.i.i.prol ]
  %.057.i.i.i.i.i.unr = phi i64 [ %i.a, %.lr.ph.i.i.i.i.i.preheader ], [ %i.g, %.lr.ph.i.i.i.i.i.prol ]
  %i.i = icmp ult i32 %1, 8
  br i1 %i.i, label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.loopexit, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i
  %.08.i.i.i.i.i = phi ptr [ %i.s, %.lr.ph.i.i.i.i.i ], [ %.08.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %.057.i.i.i.i.i = phi i64 [ %i.r, %.lr.ph.i.i.i.i.i ], [ %.057.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 4
  store i8 0, ptr %i.j, align 4, !tbaa !54
  %i.k = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 12
  store i8 0, ptr %i.k, align 4, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 20
  store i8 0, ptr %i.l, align 4, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 28
  store i8 0, ptr %i.m, align 4, !tbaa !54
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 36
  store i8 0, ptr %i.n, align 4, !tbaa !54
  %i.o = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 44
  store i8 0, ptr %i.o, align 4, !tbaa !54
  %i.p = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 52
  store i8 0, ptr %i.p, align 4, !tbaa !54
  %i.q = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 60
  store i8 0, ptr %i.q, align 4, !tbaa !54
  %i.r = add nsw i64 %.057.i.i.i.i.i, -8          ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.08.i.i.i.i.i, i64 64
  %.not.i.i.i.i.i.7 = icmp eq i64 %i.r, 0
  br i1 %.not.i.i.i.i.i.7, label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.loopexit, label %.lr.ph.i.i.i.i.i, !llvm.loop !162

_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.loopexit: ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.prol.loopexit
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.a
  %i.u = ptrtoint ptr %i.t to i64
  br label %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit

_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit: ; preds = %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.loopexit, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i
  %.sroa.19.0 = phi i64 [ 0, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.u, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.loopexit ] ; 2 uses
  %.sroa.0278.0 = phi ptr [ null, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EE17_S_check_init_lenEmRKS3_.exit.i ], [ %i.d, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.loopexit ] ; 34 uses
  br label %bb.d

bb.c:                                             ; preds = %.loopexit363
  %.not = icmp eq i32 %.189, 0
  br i1 %.not, label %.loopexit, label %bb.o

_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EED2Ev.exit228.thread: ; preds = %bb.b, %_ZNSt12_Vector_baseISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  call void @_ZNSt6vectorIS_IiSaIiEESaIS1_EED2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %11) #24
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #24
  br label %_ZNSt6vectorISt8optionalI16VsiteAtomMappingESaIS2_EED2Ev.exit230

bb.d:                                             ; preds = %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit, %.loopexit363
  %indvars.iv466 = phi i64 [ 0, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit ], [ %indvars.iv.next467, %.loopexit363 ] ; 5 uses
  %.088407 = phi i32 [ 0, %_ZNSt6vectorISt8optionalI19InteractionFunctionESaIS2_EEC2EmRKS3_.exit ], [ %.189, %.loopexit363 ] ; 2 uses
  %i.w = getelementptr inbounds nuw [32 x i8], ptr @interaction_function, i64 %indvars.iv466
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 28
  %i.y = load i32, ptr %i.x, align 4, !tbaa !28
  %i.z = and i32 %i.y, 2
  %.not105 = icmp eq i32 %i.z, 0
  br i1 %.not105, label %.loopexit363, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = getelementptr inbounds nuw [224 x i8], ptr %0, i64 %indvars.iv466 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 4 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !31
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !32 ; 3 uses
  %i.ae = ptrtoint ptr %i.ac to i64
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = sub i64 %i.ae, %i.af                    ; 2 uses
  %i.ah = sdiv exact i64 %i.ag, 112
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = add i32 %.088407, %i.ai                 ; 4 uses
  %i.ak = icmp sgt i64 %i.ag, 0
  br i1 %i.ak, label %.lr.ph402, label %.loopexit363

end_hunk_0
