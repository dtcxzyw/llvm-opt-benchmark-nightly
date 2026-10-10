Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/gromacs/original/pdbio?download=true
inline.NumInlined: 516
inline.NumDeleted: 238
begin_hunk_0_@_Z15gmx_conect_doneP12gmx_conect_t:bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_Z16gmx_conect_existP12gmx_conect_tii(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #17 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !60
  %wide.trip.count = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge23
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62   ; 2 uses
  %i.g = icmp eq i32 %i.f, %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63   ; 2 uses
  %i.j = icmp eq i32 %i.i, %2
  %or.cond25 = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond25, label %._crit_edge, label %._crit_edge23

._crit_edge23:                                    ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, %1
  %i.l = icmp eq i32 %i.f, %2
  %or.cond = and i1 %i.l, %i.k
  br i1 %or.cond, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %._crit_edge23, %bb.c, %bb.a
  %.lcssa = phi i1 [ false, %bb.a ], [ true, %._crit_edge23 ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.lcssa
}

; Function Attrs: mustprogress uwtable
define void @_Z14gmx_conect_addP12gmx_conect_tii(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !59     ; 3 uses
  %i.b = icmp sgt i32 %i.a, 0
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !70   ; 2 uses
  br i1 %i.b, label %.lr.ph.i, label %_Z16gmx_conect_existP12gmx_conect_tii.exit

.lr.ph.i:                                         ; preds = %bb.a
  %wide.trip.count.i = zext nneg i32 %i.a to i64
  br label %bb.c

bb.b:                                             ; preds = %._crit_edge23.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_Z16gmx_conect_existP12gmx_conect_tii.exit, label %bb.c, !llvm.loop !0

bb.c:                                             ; preds = %bb.b, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.b ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %indvars.iv.i ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !62   ; 2 uses
  %i.g = icmp eq i32 %i.f, %1
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 4
  %i.i = load i32, ptr %i.h, align 4, !tbaa !63   ; 2 uses
  %i.j = icmp eq i32 %i.i, %2
  %or.cond25.i = select i1 %i.g, i1 %i.j, i1 false
  br i1 %or.cond25.i, label %_Z16gmx_conect_existP12gmx_conect_tii.exit.thread, label %._crit_edge23.i

._crit_edge23.i:                                  ; preds = %bb.c
  %i.k = icmp eq i32 %i.i, %1
  %i.l = icmp eq i32 %i.f, %2
  %or.cond.i = and i1 %i.l, %i.k
  br i1 %or.cond.i, label %_Z16gmx_conect_existP12gmx_conect_tii.exit.thread, label %bb.b

_Z16gmx_conect_existP12gmx_conect_tii.exit:       ; preds = %bb.b, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = add nsw i32 %i.a, 1                      ; 2 uses
  store i32 %i.n, ptr %0, align 8, !tbaa !59
  %i.o = sext i32 %i.n to i64
  %i.p = tail call noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.29, i32 noundef 873, ptr noundef %i.d, i64 noundef range(i64 -2147483647, 2147483648) %i.o, i64 noundef 8) ; 2 uses
  store ptr %i.p, ptr %i.m, align 8, !tbaa !70
  %i.q = load i32, ptr %0, align 8, !tbaa !59
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr [8 x i8], ptr %i.p, i64 %i.r ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -8
  store i32 %1, ptr %i.t, align 4, !tbaa !62
  %i.u = getelementptr i8, ptr %i.s, i64 -4
  store i32 %2, ptr %i.u, align 4, !tbaa !63
  br label %_Z16gmx_conect_existP12gmx_conect_tii.exit.thread

_Z16gmx_conect_existP12gmx_conect_tii.exit.thread: ; preds = %bb.c, %._crit_edge23.i, %_Z16gmx_conect_existP12gmx_conect_tii.exit
  ret void
}

declare noundef ptr @_Z12save_reallocPKcS0_iPvmm(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef i32 @_Z12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_t(ptr noundef %0, ptr noundef initializes((0, 1)) %1, ptr noundef %2, ptr noundef initializes((64, 69)) %3, ptr noundef %4, ptr nofree noundef writeonly captures(none) %5, ptr nofree noundef writeonly captures(address_is_null) %6, ptr nofree noundef writeonly captures(address_is_null) %7, ptr nofree noundef captures(address_is_null) %8) local_unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 18 uses
  %11 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %i.c = alloca [12 x i8], align 1                ; 4 uses
  %i.d = alloca [12 x i8], align 1                ; 4 uses
  %i.e = alloca [12 x i8], align 1                ; 5 uses
  %i.f = alloca [12 x i8], align 1                ; 5 uses
  %i.g = alloca i8, align 1                       ; 6 uses
  %i.h = alloca double, align 8                   ; 4 uses
  %i.i = alloca double, align 8                   ; 4 uses
  %i.j = alloca double, align 8                   ; 4 uses
  %i.k = alloca i32, align 4                      ; 6 uses
  %i.l = alloca i32, align 4                      ; 6 uses
  %i.m = alloca i32, align 4                      ; 6 uses
  %i.n = alloca [12 x i8], align 1                ; 5 uses
  %i.o = alloca [12 x i8], align 4                ; 7 uses
  %i.p = alloca [12 x i8], align 1                ; 7 uses
  %i.q = alloca [12 x i8], align 4                ; 8 uses
  %i.r = alloca [12 x i8], align 1                ; 6 uses
  %i.s = alloca [12 x i8], align 4                ; 8 uses
  %i.t = alloca [12 x i8], align 4                ; 7 uses
  %i.u = alloca [3 x i8], align 2                 ; 7 uses
  %i.v = alloca [12 x i8], align 8                ; 6 uses
  %i.w = alloca [12 x i8], align 8                ; 6 uses
  %i.x = alloca [12 x i8], align 8                ; 6 uses
  %i.y = alloca [12 x i8], align 1                ; 6 uses
  %i.z = alloca [12 x i8], align 1                ; 6 uses
  %12 = alloca %"class.std::filesystem::__cxx11::path", align 8 ; 5 uses
  %i.aa = alloca i64, align 8                     ; 6 uses
  %i.ab = alloca [4097 x i8], align 16            ; 30 uses
  %13 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %14 = alloca %"class.std::__cxx11::basic_string", align 8 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab) #25
  %.not = icmp eq ptr %6, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 1, ptr %6, align 4, !tbaa !118
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not91 = icmp eq ptr %7, null                  ; 2 uses
  br i1 %.not91, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %7, i8 0, i64 36, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 64
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 8 uses
  store i32 0, ptr %i.ac, align 8
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.af = icmp ne ptr %i.ae, null
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 68 ; 2 uses
  %i.ah = zext i1 %i.af to i8
  store i8 %i.ah, ptr %i.ag, align 4, !tbaa !28
  store i8 0, ptr %1, align 1, !tbaa !15
  %i.ai = load atomic i8, ptr @_ZGVZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier acquire, align 8
  %i.aj = icmp eq i8 %i.ai, 0
  br i1 %i.aj, label %bb.f, label %bb.i, !prof !119

bb.f:                                             ; preds = %bb.e
  %i.ak = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier) #25
  %.not92 = icmp eq i32 %i.ak, 0
  br i1 %.not92, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke void @_ZN3gmx26StringToEnumValueConverterI13PdbRecordTypeXadL_Z17enumValueToStringS1_EELNS_17StringCompareTypeE0ELNS_12StripStringsE1EEC2Ev(ptr noundef nonnull align 8 dereferenceable(48) @_ZZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier)
          to label %bb.h unwind label %bb.s

bb.h:                                             ; preds = %bb.g
  %i.al = tail call i32 @__cxa_atexit(ptr nonnull @_ZN3gmx26StringToEnumValueConverterI13PdbRecordTypeXadL_Z17enumValueToStringS1_EELNS_17StringCompareTypeE0ELNS_12StripStringsE1EED2Ev, ptr nonnull @_ZZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier, ptr nonnull @__dso_handle) #25 ; 0 uses
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier) #25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.f, %bb.e
  %i.am = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 8 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %14, i64 8
  %.not95 = icmp eq ptr %8, null
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 7 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 4 uses
  %i.as = getelementptr inbounds nuw i8, ptr %9, i64 19
  %i.at = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 9 uses
  %i.au = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 6 uses
  %i.av = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 10 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 8 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.not96 = icmp eq ptr %2, null
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ab, i64 6 ; 5 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ab, i64 55
  %i.ba = getelementptr inbounds nuw i8, ptr %i.f, i64 11
  %i.bb = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.bc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.bd = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.be = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bf = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.bg = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.bh = getelementptr inbounds nuw i8, ptr %i.n, i64 5
  %scevgep63.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 12 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.bj = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ab, i64 29
  %i.bl = getelementptr inbounds nuw i8, ptr %i.p, i64 5
  %i.bm = getelementptr inbounds nuw i8, ptr %i.q, i64 4
  %i.bn = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %scevgep224.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 17
  %i.bo = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ab, i64 21
  %scevgep230.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 22
  %i.bq = getelementptr inbounds nuw i8, ptr %i.t, i64 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.ab, i64 26
  %scevgep236.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 30
  %i.bs = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %scevgep242.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 38
  %i.bt = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %scevgep248.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 46
  %i.bu = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %scevgep254.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 54
  %i.bv = getelementptr inbounds nuw i8, ptr %i.y, i64 6
  %scevgep260.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 60
  %i.bw = getelementptr inbounds nuw i8, ptr %i.z, i64 7
  %scevgep266.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 77
  %i.bx = getelementptr inbounds nuw i8, ptr %i.u, i64 2
  %i.by = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.ca = getelementptr inbounds nuw i8, ptr %3, i64 40
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138
  %.067252 = phi i32 [ 0, %bb.i ], [ %.269, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 21 uses
  %.070249 = phi i32 [ 0, %bb.i ], [ %.272, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 28 uses
  %.078248 = phi i1 [ false, %bb.i ], [ %.280, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 19 uses
  %.081247 = phi i1 [ false, %bb.i ], [ %.283, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit138 ] ; 18 uses
  %i.cb = call noundef ptr @_Z6fgets2PciP8_IO_FILE(ptr noundef nonnull %i.ab, i32 noundef 4096, ptr noundef %0)
  %.not93 = icmp eq ptr %i.cb, null
  br i1 %.not93, label %.critedge, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #25
  store ptr %i.am, ptr %13, align 8, !tbaa !37
  %i.cc = call noundef i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #25 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa) #25
  store i64 %i.cc, ptr %i.aa, align 8, !tbaa !48
  %i.cd = icmp ugt i64 %i.cc, 15
  br i1 %i.cd, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.k
  %i.ce = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.aa, i64 noundef 0)
          to label %.noexc unwind label %bb.t     ; 2 uses

.noexc:                                           ; preds = %.noexc.i
  store ptr %i.ce, ptr %13, align 8, !tbaa !19
  %i.cf = load i64, ptr %i.aa, align 8, !tbaa !48
  store i64 %i.cf, ptr %i.am, align 8, !tbaa !15
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc, %bb.k
  %i.cg = phi ptr [ %i.ce, %.noexc ], [ %i.am, %bb.k ] ; 2 uses
  switch i64 %i.cc, label %bb.m [
    i64 1, label %bb.l
    i64 0, label %bb.n
  ]

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.ch = load i8, ptr %i.ab, align 16, !tbaa !15
  store i8 %i.ch, ptr %i.cg, align 1, !tbaa !15
  br label %bb.n

bb.m:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.cg, ptr nonnull align 16 %i.ab, i64 %i.cc, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %._crit_edge.i.i
  %i.ci = load i64, ptr %i.aa, align 8, !tbaa !48 ; 2 uses
  store i64 %i.ci, ptr %i.an, align 8, !tbaa !38
  %i.cj = load ptr, ptr %13, align 8, !tbaa !19
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 %i.ci
  store i8 0, ptr %i.ck, align 1, !tbaa !15
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #25
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.cl = load i64, ptr %i.an, align 8, !tbaa !38, !noalias !120
  store ptr %i.ao, ptr %14, align 8, !tbaa !37, !alias.scope !120
  %i.cm = load ptr, ptr %13, align 8, !tbaa !19, !noalias !120 ; 2 uses
  %spec.select.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.cl, i64 6) ; 4 uses
  switch i64 %spec.select.i.i.i, label %bb.p [
    i64 1, label %bb.o
    i64 0, label %bb.q
  ]

bb.o:                                             ; preds = %bb.n
  %i.cn = load i8, ptr %i.cm, align 1, !tbaa !15
  store i8 %i.cn, ptr %i.ao, align 8, !tbaa !15
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ao, ptr align 1 %i.cm, i64 %spec.select.i.i.i, i1 false)
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o, %bb.n
  store i64 %spec.select.i.i.i, ptr %i.ap, align 8, !tbaa !38, !alias.scope !120
  %i.co = getelementptr inbounds nuw i8, ptr %i.ao, i64 %spec.select.i.i.i
  store i8 0, ptr %i.co, align 1, !tbaa !15
  %i.cp = invoke i64 @_ZNK3gmx26StringToEnumValueConverterI13PdbRecordTypeXadL_Z17enumValueToStringS1_EELNS_17StringCompareTypeE0ELNS_12StripStringsE1EE9valueFromERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(48) @_ZZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier, ptr noundef nonnull align 8 dereferenceable(32) %14)
          to label %bb.r unwind label %bb.u       ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.sroa.0.0.extract.trunc = trunc i64 %i.cp to i32 ; 2 uses
  %i.cq = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.cr = icmp eq ptr %i.cq, %i.ao
  br i1 %i.cr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.r
  %i.cs = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.ct = add i64 %i.cs, 1
  call void @_ZdlPvm(ptr noundef %i.cq, i64 noundef %i.ct) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.r, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  %i.cu = and i64 %i.cp, 4294967296
  %.not147 = icmp eq i64 %i.cu, 0
  br i1 %.not147, label %bb.co, label %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit, !llvm.loop !101

bb.s:                                             ; preds = %bb.g
  %i.cv = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZ12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_tE26sc_pdbRecordTypeIdentifier) #25
  br label %bb.cp

bb.t:                                             ; preds = %.noexc.i
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit141

bb.u:                                             ; preds = %bb.q
  %i.cx = landingpad { ptr, i32 }
          cleanup
  %i.cy = load ptr, ptr %14, align 8, !tbaa !19   ; 2 uses
  %i.cz = icmp eq ptr %i.cy, %i.ao
  br i1 %i.cz, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111: ; preds = %bb.u
  %i.da = load i64, ptr %i.ao, align 8, !tbaa !15
  %i.db = add i64 %i.da, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.db) #26
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit113: ; preds = %bb.u, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i111
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #25
  br label %.body

_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit:    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  switch i32 %.sroa.0.0.extract.trunc, label %bb.co [
    i32 0, label %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit116
    i32 1, label %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit116
    i32 2, label %bb.ag
    i32 3, label %bb.ao
    i32 9, label %bb.be
    i32 8, label %bb.be
    i32 4, label %bb.bj
    i32 7, label %bb.bt
    i32 5, label %bb.bu
    i32 6, label %bb.bw
    i32 11, label %bb.bx
  ]

.loopexit151:                                     ; preds = %.preheader.preheader.i, %.noexc117, %.noexc118, %.noexc119, %.noexc120, %.noexc121, %bb.ad, %.noexc124, %bb.ah
  %lpad.loopexit153 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp152:                            ; preds = %bb.v
  %lpad.loopexit.split-lp154 = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit116: ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit, %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z) #25
  %i.dc = load i32, ptr %3, align 8, !tbaa !64
  %.not.i = icmp slt i32 %.070249, %i.dc
  br i1 %.not.i, label %.preheader.preheader.i, label %bb.v

end_hunk_0
begin_hunk_1_@_Z12read_pdbfileP8_IO_FILEPcPiP7t_atomsP8t_symtabPA3_fP7PbcTypeS8_P12gmx_conect_t:bb.a
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i8 %i.df, ptr %i.fn, align 4, !tbaa !56
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fl, i64 9
  %i.fp = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %i.fo, ptr noundef nonnull dereferenceable(1) %i.r) #25 ; 0 uses
  %i.fq = call double @strtod(ptr noundef nonnull captures(none) %i.z, ptr noundef null) #25
  %i.fr = fptrunc double %i.fq to float
  %i.fs = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.ft = getelementptr inbounds [52 x i8], ptr %i.fs, i64 %.pre.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 20
  store float %i.fr, ptr %i.fu, align 4, !tbaa !55
  %i.fv = call double @strtod(ptr noundef nonnull captures(none) %i.y, ptr noundef null) #25
  %i.fw = fptrunc double %i.fv to float
  %i.fx = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.fy = getelementptr inbounds [52 x i8], ptr %i.fx, i64 %.pre.i
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store float %i.fw, ptr %i.fz, align 4, !tbaa !35
  br label %_ZL9read_atomP8t_symtabPKc13PdbRecordTypeiP7t_atomsPA3_fi.exit

_ZL9read_atomP8t_symtabPKc13PdbRecordTypeiP7t_atomsPA3_fi.exit: ; preds = %.preheader.preheader._crit_edge.i, %bb.af
  %i.ga = add nsw i32 %.070249, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p) #25
  br label %bb.co

bb.ag:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  %i.gb = load i8, ptr %i.ag, align 4, !tbaa !28, !range !29, !noundef !30
  %i.gc = trunc nuw i8 %i.gb to i1
  br i1 %i.gc, label %bb.ah, label %bb.co

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %i.n, ptr noundef nonnull align 2 dereferenceable(5) %i.ay, i64 5, i1 false), !tbaa !15
  store i8 0, ptr %i.bh, align 1, !tbaa !15
  %i.gd = load i32, ptr %scevgep63.i, align 4, !tbaa !15
  store i32 %i.gd, ptr %i.o, align 4, !tbaa !15
  store i8 0, ptr %i.bi, align 4, !tbaa !15
  invoke void @_Z4trimPc(ptr noundef nonnull %i.o)
          to label %.noexc127 unwind label %.loopexit151

.noexc127:                                        ; preds = %bb.ah
  %i.ge = call i64 @__isoc23_strtol(ptr noundef nonnull %i.n, ptr noundef null, i32 noundef 10) #25
  %i.gf = trunc i64 %i.ge to i32                  ; 2 uses
  %i.gg = icmp sgt i32 %.070249, 0
  br i1 %i.gg, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %.noexc127
  %i.gh = load ptr, ptr %i.bj, align 8, !tbaa !49
  %i.gi = zext nneg i32 %.070249 to i64
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ak, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %i.gi, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.ak ] ; 2 uses
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, -1 ; 6 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.gh, i64 %indvars.iv.next.i
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !50
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !12
  %i.gm = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.o, ptr noundef nonnull dereferenceable(1) %i.gl) #28
  %i.gn = icmp eq i32 %i.gm, 0
  br i1 %i.gn, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.go = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.gp = getelementptr inbounds nuw [52 x i8], ptr %i.go, i64 %indvars.iv.next.i ; 7 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 4
  %i.gr = load i32, ptr %i.gq, align 4, !tbaa !122
  %i.gs = icmp eq i32 %i.gr, %i.gf
  br i1 %i.gs, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %i.gt = icmp samesign ugt i64 %indvars.iv.i, 1
  br i1 %i.gt, label %bb.ai, label %._crit_edge.i, !llvm.loop !102

._crit_edge.i:                                    ; preds = %bb.ak, %.noexc127
  %i.gu = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.gv = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.gu, ptr noundef nonnull @.str.57, ptr noundef nonnull %i.o, i32 noundef %i.gf) #30 ; 0 uses
  br label %_ZL11read_anisouPciP7t_atoms.exit

bb.al:                                            ; preds = %bb.aj
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gp, i64 28
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gp, i64 32
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gp, i64 36
  %i.gz = getelementptr inbounds nuw i8, ptr %i.gp, i64 40
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gp, i64 44
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gp, i64 48
  %i.hc = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.bk, ptr noundef nonnull @.str.58, ptr noundef nonnull %i.gw, ptr noundef nonnull %i.gx, ptr noundef nonnull %i.gy, ptr noundef nonnull %i.gz, ptr noundef nonnull %i.ha, ptr noundef nonnull %i.hb) #25
  %i.hd = icmp eq i32 %i.hc, 6
  br i1 %i.hd, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.he = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.hf = getelementptr inbounds nuw [52 x i8], ptr %i.he, i64 %indvars.iv.next.i
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 24
  store i8 1, ptr %i.hg, align 4, !tbaa !57
  br label %_ZL11read_anisouPciP7t_atoms.exit

bb.an:                                            ; preds = %bb.al
  %i.hh = trunc nuw nsw i64 %indvars.iv.next.i to i32
  %i.hi = load ptr, ptr @stderr, align 8, !tbaa !67
  %i.hj = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %i.hi, ptr noundef nonnull @.str.59, i32 noundef %i.hh) #30 ; 0 uses
  %i.hk = load ptr, ptr %i.ad, align 8, !tbaa !31
  %i.hl = getelementptr inbounds nuw [52 x i8], ptr %i.hk, i64 %indvars.iv.next.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 24
  store i8 0, ptr %i.hm, align 4, !tbaa !57
  br label %_ZL11read_anisouPciP7t_atoms.exit

_ZL11read_anisouPciP7t_atoms.exit:                ; preds = %._crit_edge.i, %bb.am, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n) #25
  br label %bb.co

bb.ao:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m) #25
  %i.hn = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.c, ptr noundef nonnull %i.d, ptr noundef nonnull %i.e, ptr noundef nonnull %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j) #25 ; 0 uses
  %i.ho = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #28
  %i.hp = icmp ugt i64 %i.ho, 54
  br i1 %i.hp, label %bb.ap, label %bb.as

bb.ap:                                            ; preds = %bb.ao
  %i.hq = call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %i.f, ptr noundef nonnull dereferenceable(1) %i.az, i64 noundef 11) #25 ; 0 uses
  store i8 0, ptr %i.ba, align 1, !tbaa !15
  store i8 32, ptr %i.g, align 1, !tbaa !15
  store i32 0, ptr %i.k, align 4, !tbaa !32
  store i32 0, ptr %i.l, align 4, !tbaa !32
  store i32 0, ptr %i.m, align 4, !tbaa !32
  %i.hr = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.61, ptr noundef nonnull %i.g, ptr noundef nonnull %i.k, ptr noundef nonnull %i.l, ptr noundef nonnull %i.m) #25 ; 0 uses
  %i.hs = load i8, ptr %i.g, align 1, !tbaa !15   ; 2 uses
  %i.ht = icmp eq i8 %i.hs, 80
  %i.hu = load i32, ptr %i.k, align 4             ; 2 uses
  %i.hv = icmp eq i32 %i.hu, 1
  %or.cond.i = select i1 %i.ht, i1 %i.hv, i1 false
  %i.hw = load i32, ptr %i.l, align 4             ; 2 uses
  %i.hx = icmp slt i32 %i.hw, 2
  %or.cond3.i = select i1 %or.cond.i, i1 %i.hx, i1 false
  %i.hy = load i32, ptr %i.m, align 4             ; 2 uses
  %i.hz = icmp slt i32 %i.hy, 2
  %or.cond5.i = select i1 %or.cond3.i, i1 %i.hz, i1 false
  br i1 %or.cond5.i, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ia = call double @strtod(ptr noundef nonnull captures(none) %i.e, ptr noundef null) #25
  %i.ib = fmul double %i.ia, 1.000000e-01
  %i.ic = fcmp ogt double %i.ib, 0.000000e+00
  %i.id = select i1 %i.ic, i32 0, i32 2
  %.pre.i129 = load i8, ptr %i.g, align 1, !tbaa !15
  %.pre65.i = load i32, ptr %i.k, align 4
  %.pre66.i = load i32, ptr %i.l, align 4
  %.pre67.i = load i32, ptr %i.m, align 4
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ie = phi i32 [ %.pre67.i, %bb.aq ], [ %i.hy, %bb.ap ]
  %i.if = phi i32 [ %.pre66.i, %bb.aq ], [ %i.hw, %bb.ap ]
  %i.ig = phi i32 [ %.pre65.i, %bb.aq ], [ %i.hu, %bb.ap ]
  %i.ih = phi i8 [ %.pre.i129, %bb.aq ], [ %i.hs, %bb.ap ]
  %.0.i = phi i32 [ %i.id, %bb.aq ], [ 4, %bb.ap ]
  %i.ii = icmp eq i8 %i.ih, 80
  %i.ij = icmp eq i32 %i.ig, 21
  %or.cond7.i = select i1 %i.ii, i1 %i.ij, i1 false
  %i.ik = icmp eq i32 %i.if, 1
  %or.cond9.i = select i1 %or.cond7.i, i1 %i.ik, i1 false
  %i.il = icmp eq i32 %i.ie, 1
  %or.cond11.i = select i1 %or.cond9.i, i1 %i.il, i1 false
  %spec.select.i = select i1 %or.cond11.i, i32 3, i32 %.0.i
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.ao
  %.1.i = phi i32 [ 4, %bb.ao ], [ %spec.select.i, %bb.ar ] ; 2 uses
  br i1 %.not, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  store i32 %.1.i, ptr %6, align 4, !tbaa !118
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  br i1 %.not91, label %_ZL11read_cryst1PcP7PbcTypePA3_f.exit, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.im = call double @strtod(ptr noundef nonnull captures(none) %i.c, ptr noundef null) #25
  %i.in = fmul double %i.im, 1.000000e-01         ; 2 uses
  %i.io = call double @strtod(ptr noundef nonnull captures(none) %i.d, ptr noundef null) #25
  %i.ip = fmul double %i.io, 1.000000e-01         ; 2 uses
  %i.iq = call double @strtod(ptr noundef nonnull captures(none) %i.e, ptr noundef null) #25
  %i.ir = fmul double %i.iq, 1.000000e-01         ; 5 uses
  %i.is = icmp eq i32 %.1.i, 3
  %i.it = fmul double %i.in, 5.000000e-01
  %spec.select64.i = select i1 %i.is, double %i.it, double %i.in
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.bb, i8 0, i64 32, i1 false)
  %i.iu = fptrunc double %spec.select64.i to float
  store float %i.iu, ptr %7, align 4, !tbaa !14
  %i.iv = load double, ptr %i.h, align 8, !tbaa !124 ; 2 uses
  %i.iw = fcmp une double %i.iv, 9.000000e+01     ; 2 uses
  %i.ix = load double, ptr %i.i, align 8          ; 2 uses
  %i.iy = fcmp une double %i.ix, 9.000000e+01     ; 2 uses
  %or.cond13.i = select i1 %i.iw, i1 true, i1 %i.iy
  %i.iz = load double, ptr %i.j, align 8          ; 2 uses
  %i.ja = fcmp une double %i.iz, 9.000000e+01     ; 2 uses
  %or.cond15.i = select i1 %or.cond13.i, i1 true, i1 %i.ja
  br i1 %or.cond15.i, label %bb.aw, label %bb.bd

bb.aw:                                            ; preds = %bb.av
  br i1 %i.iw, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.jb = fmul double %i.iv, f0x3F91DF46A2529D39
  %i.jc = call double @cos(double noundef %i.jb) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.ax, %bb.aw
  %.056.i = phi double [ %i.jc, %bb.ax ], [ 0.000000e+00, %bb.aw ]
  br i1 %i.iy, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.jd = fmul double %i.ix, f0x3F91DF46A2529D39
  %i.je = call double @cos(double noundef %i.jd) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %.055.i = phi double [ %i.je, %bb.az ], [ 0.000000e+00, %bb.ay ] ; 2 uses
  br i1 %i.ja, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  %i.jf = fmul double %i.iz, f0x3F91DF46A2529D39  ; 2 uses
  %i.jg = call double @cos(double noundef %i.jf) #25 ; 2 uses
  %i.jh = call double @sin(double noundef %i.jf) #25 ; 2 uses
  %15 = insertelement <2 x double> poison, double %i.jg, i64 0
  %16 = insertelement <2 x double> %15, double %i.jh, i64 1
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %.054.i = phi double [ %i.jg, %bb.bb ], [ 0.000000e+00, %bb.ba ]
  %.053.i = phi double [ %i.jh, %bb.bb ], [ 1.000000e+00, %bb.ba ]
  %17 = phi <2 x double> [ %16, %bb.bb ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.ba ]
  %18 = insertelement <2 x double> poison, double %i.ip, i64 0
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> zeroinitializer
  %20 = fmul <2 x double> %19, %17
  %21 = fptrunc <2 x double> %20 to <2 x float>
  store <2 x float> %21, ptr %i.bd, align 4, !tbaa !14
  %i.ji = fmul double %i.ir, %.055.i
  %i.jj = fptrunc double %i.ji to float           ; 3 uses
  store float %i.jj, ptr %i.be, align 4, !tbaa !14
  %i.jk = fneg double %.055.i
  %i.jl = call double @llvm.fmuladd.f64(double %i.jk, double %.054.i, double %.056.i)
  %i.jm = fmul double %i.ir, %i.jl
  %i.jn = fdiv double %i.jm, %.053.i
  %i.jo = fptrunc double %i.jn to float           ; 3 uses
  store float %i.jo, ptr %i.bf, align 4, !tbaa !14
  %i.jp = fmul float %i.jj, %i.jj
  %i.jq = fpext float %i.jp to double
  %i.jr = fneg double %i.jq
  %i.js = call double @llvm.fmuladd.f64(double %i.ir, double %i.ir, double %i.jr)
  %i.jt = fmul float %i.jo, %i.jo
  %i.ju = fpext float %i.jt to double
  %i.jv = fsub double %i.js, %i.ju
  %i.jw = call double @sqrt(double noundef %i.jv) #25
  br label %.sink.split.i

bb.bd:                                            ; preds = %bb.av
  %i.jx = fptrunc double %i.ip to float
  store float %i.jx, ptr %i.bc, align 4, !tbaa !14
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.bd, %bb.bc
  %.sink74.i = phi double [ %i.jw, %bb.bc ], [ %i.ir, %bb.bd ]
  %i.jy = fptrunc double %.sink74.i to float
  store float %i.jy, ptr %i.bg, align 4, !tbaa !14
  br label %_ZL11read_cryst1PcP7PbcTypePA3_f.exit

_ZL11read_cryst1PcP7PbcTypePA3_f.exit:            ; preds = %bb.au, %.sink.split.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #25
  br label %bb.co

bb.be:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit, %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  %i.jz = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ab) #28
  %i.ka = icmp ugt i64 %i.jz, 6
  br i1 %i.ka, label %.preheader255, label %bb.co

.preheader255:                                    ; preds = %bb.be, %.preheader255
  %.074 = phi ptr [ %i.kc, %.preheader255 ], [ %i.ay, %bb.be ] ; 3 uses
  %i.kb = load i8, ptr %.074, align 1, !tbaa !15
  %.not103 = icmp eq i8 %i.kb, 32
  %i.kc = getelementptr inbounds nuw i8, ptr %.074, i64 1
  br i1 %.not103, label %.preheader, label %.preheader255, !llvm.loop !103

.preheader:                                       ; preds = %.preheader255, %.preheader
  %.175246 = phi ptr [ %i.kd, %.preheader ], [ %.074, %.preheader255 ]
  %i.kd = getelementptr inbounds nuw i8, ptr %.175246, i64 1 ; 5 uses
  %.pr = load i8, ptr %i.kd, align 1, !tbaa !15   ; 2 uses
  %i.ke = icmp eq i8 %.pr, 32
  br i1 %i.ke, label %.preheader, label %bb.bf, !llvm.loop !104

bb.bf:                                            ; preds = %.preheader
  %i.kf = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.kd, ptr noundef nonnull dereferenceable(1) @.str.42) #28 ; 2 uses
  %.not104 = icmp eq ptr %i.kf, null
  br i1 %.not104, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store i8 0, ptr %i.kf, align 1, !tbaa !15
  %char0105.pre = load i8, ptr %i.kd, align 1
  br label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %bb.bf
  %char0105 = phi i8 [ %char0105.pre, %bb.bg ], [ %.pr, %bb.bf ]
  %.not106 = icmp eq i8 %char0105, 0
  br i1 %.not106, label %bb.co, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.kg = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.kd) #25 ; 0 uses
  br label %bb.co

bb.bj:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  %i.kh = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ab, ptr noundef nonnull dereferenceable(1) @.str.43) #28
  %.not97 = icmp eq ptr %i.kh, null
  br i1 %.not97, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.ki = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) @.str.44) #28
  %.not98 = icmp eq ptr %i.ki, null
  br i1 %.not98, label %bb.co, label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %bb.bj
  %i.kj = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.ay, ptr noundef nonnull dereferenceable(1) @.str.44) #28 ; 2 uses
  %.not99 = icmp eq ptr %i.kj, null
  %spec.select = select i1 %.not99, ptr %i.ab, ptr %i.kj
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bm, %bb.bl
  %.377 = phi ptr [ %spec.select, %bb.bl ], [ %i.kl, %bb.bm ] ; 3 uses
  %i.kk = load i8, ptr %.377, align 1, !tbaa !15
  %.not100 = icmp eq i8 %i.kk, 32
  %i.kl = getelementptr inbounds nuw i8, ptr %.377, i64 1
  br i1 %.not100, label %.preheader149, label %bb.bm, !llvm.loop !105

.preheader149:                                    ; preds = %bb.bm, %.preheader149
  %.4245 = phi ptr [ %i.km, %.preheader149 ], [ %.377, %bb.bm ]
  %i.km = getelementptr inbounds nuw i8, ptr %.4245, i64 1 ; 7 uses
  %.pr146 = load i8, ptr %i.km, align 1, !tbaa !15 ; 2 uses
  %i.kn = icmp eq i8 %.pr146, 32
  br i1 %i.kn, label %.preheader149, label %bb.bn, !llvm.loop !106

bb.bn:                                            ; preds = %.preheader149
  %i.ko = call noundef ptr @strstr(ptr noundef nonnull dereferenceable(1) %i.km, ptr noundef nonnull dereferenceable(1) @.str.45) #28 ; 2 uses
  %.not101 = icmp eq ptr %i.ko, null
  br i1 %.not101, label %bb.bp, label %.preheader148

.preheader148:                                    ; preds = %bb.bn, %.preheader148
  %.073 = phi ptr [ %i.kp, %.preheader148 ], [ %i.ko, %bb.bn ] ; 3 uses
  %i.kp = getelementptr inbounds i8, ptr %.073, i64 -1 ; 2 uses
  %i.kq = load i8, ptr %i.kp, align 1, !tbaa !15
  %i.kr = icmp eq i8 %i.kq, 59
  %i.ks = icmp ugt ptr %.073, %i.km
  %i.kt = and i1 %i.ks, %i.kr
  br i1 %i.kt, label %.preheader148, label %bb.bo, !llvm.loop !107

bb.bo:                                            ; preds = %.preheader148
  store i8 0, ptr %.073, align 1, !tbaa !15
  %char0.pre = load i8, ptr %i.km, align 1
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %char0 = phi i8 [ %char0.pre, %bb.bo ], [ %.pr146, %bb.bn ]
  %.not102 = icmp eq i8 %char0, 0
  br i1 %.not102, label %bb.co, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  br i1 %.081247, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  %strlen = call i64 @strlen(ptr nonnull dereferenceable(1) %1)
  %endptr = getelementptr inbounds i8, ptr %1, i64 %strlen
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %endptr, ptr noundef nonnull align 1 dereferenceable(3) @.str.46, i64 3, i1 false)
  %i.ku = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.km) #25 ; 0 uses
  br label %bb.co

bb.bs:                                            ; preds = %bb.bq
  %i.kv = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %i.km) #25 ; 0 uses
  br label %bb.co

bb.bt:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  %i.kw = add nsw i32 %.067252, 1
  br label %bb.co

bb.bu:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  br i1 %.not96, label %bb.co, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.kx = call i32 (ptr, ptr, ...) @__isoc23_sscanf(ptr noundef nonnull %i.ab, ptr noundef nonnull @.str.47, ptr noundef nonnull %2) #25 ; 0 uses
  br label %bb.co

bb.bw:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  br label %bb.co

bb.bx:                                            ; preds = %_ZNRSt8optionalI13PdbRecordTypeE5valueEv.exit
  br i1 %.not95, label %bb.cm, label %bb.by

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #25
  store ptr %i.aq, ptr %9, align 8, !tbaa !37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3) %i.aq, ptr noundef nonnull align 1 dereferenceable(3) @.str.62, i64 3, i1 false)
  store i64 3, ptr %i.ar, align 8, !tbaa !38
  store i8 0, ptr %i.as, align 1, !tbaa !15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #25
  store ptr %i.at, ptr %10, align 8, !tbaa !37, !alias.scope !125
  store i64 0, ptr %i.au, align 8, !tbaa !38, !alias.scope !125
  store i8 0, ptr %i.at, align 8, !tbaa !15, !alias.scope !125
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7reserveEm(ptr noundef nonnull align 8 dereferenceable(32) %10, i64 noundef 5)
          to label %bb.bz unwind label %.loopexit

bb.bz:                                            ; preds = %bb.by
  %i.ky = load i64, ptr %i.au, align 8, !tbaa !38, !alias.scope !125
  %i.kz = add i64 %i.ky, -4611686018427387901
  %i.la = icmp ult i64 %i.kz, 3
  br i1 %i.la, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i: ; preds = %bb.bz
  %i.lb = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_appendEPKcm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull %i.aq, i64 noundef 3)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i unwind label %.loopexit ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i.i.i.i
  %i.lc = load i64, ptr %i.au, align 8, !tbaa !38, !alias.scope !125
  %i.ld = and i64 %i.lc, -2
  %i.le = icmp eq i64 %i.ld, 4611686018427387902
  br i1 %i.le, label %.invoke.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE15_M_check_lengthEmmPKc.exit.i10.i.i.i

.invoke.i.i.i:                                    ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6appendEPKcm.exit.i.i.i, %bb.bz
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.64) #27
end_hunk_1
