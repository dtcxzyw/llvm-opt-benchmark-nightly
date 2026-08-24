Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rocksdb/original/ldb_cmd?download=true
inline.NumInlined: 11498
inline.NumDeleted: 3305
loop-unroll.NumCompletelyUnrolled: 70
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN7rocksdb15DBDumperCommand9DoCommandEv:bb.a
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123: ; preds = %bb.bg
  %i.hg = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.he) #37
          to label %.noexc128 unwind label %bb.bq ; 2 uses

.noexc128:                                        ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123
  store ptr %i.hg, ptr %i.gx, align 8, !tbaa !14, !alias.scope !1290
  store i64 %i.hb, ptr %i.gy, align 8, !tbaa !17, !alias.scope !1290
  br label %._crit_edge.i.i.i.i122

._crit_edge.i.i.i.i122:                           ; preds = %.noexc128, %bb.be
  %i.hh = phi ptr [ %i.hg, %.noexc128 ], [ %i.gy, %bb.be ] ; 3 uses
  switch i64 %i.hb, label %bb.bi [
    i64 1, label %bb.bh
    i64 0, label %bb.bj
  ]

bb.bh:                                            ; preds = %._crit_edge.i.i.i.i122
  %i.hi = load i8, ptr %i.gz, align 1, !tbaa !17
  store i8 %i.hi, ptr %i.hh, align 1, !tbaa !17
  br label %bb.bj

bb.bi:                                            ; preds = %._crit_edge.i.i.i.i122
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.hh, ptr align 1 %i.gz, i64 %i.hb, i1 false)
  br label %bb.bj

bb.bj:                                            ; preds = %bb.bi, %bb.bh, %._crit_edge.i.i.i.i122
  %i.hj = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 6 uses
  store i64 %i.hb, ptr %i.hj, align 8, !tbaa !18, !alias.scope !1290
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hh, i64 %i.hb
  store i8 0, ptr %i.hk, align 1, !tbaa !17
  %i.hl = load i32, ptr %15, align 8, !tbaa !195
  store i32 %i.hl, ptr %i.k, align 8, !tbaa !195
  %i.hm = load ptr, ptr %i.l, align 8, !tbaa !14  ; 6 uses
  %i.hn = icmp eq ptr %i.hm, %i.n
  %i.ho = load ptr, ptr %i.gx, align 8, !tbaa !14 ; 5 uses
  %i.hp = icmp eq ptr %i.ho, %i.gy                ; 2 uses
  br i1 %i.hn, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135: ; preds = %bb.bj
  br i1 %i.hp, label %bb.bk, label %.thread.i.i136

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130: ; preds = %bb.bj
  br i1 %i.hp, label %bb.bk, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i131

bb.bk:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  %i.hq = load i64, ptr %i.hj, align 8, !tbaa !18 ; 3 uses
  %i.hr = icmp ult i64 %i.hq, 16
  call void @llvm.assume(i1 %i.hr)
  switch i64 %i.hq, label %bb.bm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i133
    i64 1, label %bb.bl
  ]

bb.bl:                                            ; preds = %bb.bk
  %i.hs = load i8, ptr %i.ho, align 1, !tbaa !17
  store i8 %i.hs, ptr %i.hm, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i133

bb.bm:                                            ; preds = %bb.bk
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hm, ptr align 1 %i.ho, i64 %i.hq, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i133

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i133: ; preds = %bb.bm, %bb.bl, %bb.bk
  %i.ht = load i64, ptr %i.hj, align 8, !tbaa !18 ; 2 uses
  %i.hu = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.ht, ptr %i.hu, align 8, !tbaa !18
  %i.hv = load ptr, ptr %i.l, align 8, !tbaa !14
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.ht
  store i8 0, ptr %i.hw, align 1, !tbaa !17
  %.pre.i.i134 = load ptr, ptr %i.gx, align 8, !tbaa !14
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit137

.thread.i.i136:                                   ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i135
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ho, ptr %i.l, align 8, !tbaa !14
  %i.hy = load <2 x i64>, ptr %i.hj, align 8, !tbaa !17
  store <2 x i64> %i.hy, ptr %i.hx, align 8, !tbaa !17
  br label %bb.bo

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i131: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i130
  %i.hz = load i64, ptr %i.n, align 8, !tbaa !17
  store ptr %i.ho, ptr %i.l, align 8, !tbaa !14
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ib = load <2 x i64>, ptr %i.hj, align 8, !tbaa !17
  store <2 x i64> %i.ib, ptr %i.ia, align 8, !tbaa !17
  %.not.i.i132 = icmp eq ptr %i.hm, null
  br i1 %.not.i.i132, label %bb.bo, label %bb.bn

bb.bn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i131
  store ptr %i.hm, ptr %i.gx, align 8, !tbaa !14
  store i64 %i.hz, ptr %i.gy, align 8, !tbaa !17
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit137

bb.bo:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i.i131, %.thread.i.i136
  store ptr %i.gy, ptr %i.gx, align 8, !tbaa !14
  br label %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit137

_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit137: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i133, %bb.bn, %bb.bo
  %i.ic = phi ptr [ %.pre.i.i134, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i.i133 ], [ %i.hm, %bb.bn ], [ %i.gy, %bb.bo ]
  store i64 0, ptr %i.hj, align 8, !tbaa !18
  store i8 0, ptr %i.ic, align 1, !tbaa !17
  %i.id = load ptr, ptr %i.gx, align 8, !tbaa !14 ; 2 uses
  %i.ie = icmp eq ptr %i.id, %i.gy
  br i1 %i.ie, label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit140, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit137
  %i.if = load i64, ptr %i.gy, align 8, !tbaa !17
  %i.ig = add i64 %i.if, 1
  call void @_ZdlPvm(ptr noundef %i.id, i64 noundef %i.ig) #38
  br label %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit140

_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit140: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultaSEOS0_.exit137, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i138
  %i.ih = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.ij = icmp eq ptr %i.ih, %i.ii
  br i1 %i.ij, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit140
  %i.ik = load i64, ptr %i.ii, align 8, !tbaa !17
  %i.il = add i64 %i.ik, 1
  call void @_ZdlPvm(ptr noundef %i.ih, i64 noundef %i.il) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143: ; preds = %_ZN7rocksdb23LDBCommandExecuteResultD2Ev.exit140, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i141
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %bb.br

bb.bp:                                            ; preds = %bb.bd
  %i.im = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

bb.bq:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i123, %.noexc6.i.i.i124, %.noexc.i.i.i125
  %i.in = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.io = load ptr, ptr %16, align 8, !tbaa !14   ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 2 uses
  %i.iq = icmp eq ptr %i.io, %i.ip
  br i1 %i.iq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144: ; preds = %bb.bq
  %i.ir = load i64, ptr %i.ip, align 8, !tbaa !17
  %i.is = add i64 %i.ir, 1
  call void @_ZdlPvm(ptr noundef %i.io, i64 noundef %i.is) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146: ; preds = %bb.bq, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144, %bb.bp
  %.pn19 = phi { ptr, i32 } [ %i.im, %bb.bp ], [ %i.in, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i144 ], [ %i.in, %bb.bq ]
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #36
  br label %.body

bb.br:                                            ; preds = %bb.u, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit92, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit116, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit143, %bb.bc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.it = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.iv = icmp eq ptr %i.it, %i.iu
  br i1 %i.iv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147: ; preds = %bb.br
  %i.iw = load i64, ptr %i.iu, align 8, !tbaa !17
  %i.ix = add i64 %i.iw, 1
  call void @_ZdlPvm(ptr noundef %i.it, i64 noundef %i.ix) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149: ; preds = %bb.br, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i147
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  br label %bb.bt

.body:                                            ; preds = %bb.t, %bb.o, %bb.at, %bb.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101, %bb.v, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56
  %.pn19.pn = phi { ptr, i32 } [ %.pn19, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146 ], [ %i.ce, %bb.v ], [ %i.fj, %bb.at ], [ %.pn15.pn.pn, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit101 ], [ %.pn13, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit119 ], [ %.pn11, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit56 ], [ %i.cc, %bb.t ], [ %i.ci, %bb.x ], [ %i.bq, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #36
  %i.iy = load ptr, ptr %3, align 8, !tbaa !14    ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ja = icmp eq ptr %i.iy, %i.iz
  br i1 %i.ja, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150: ; preds = %.body
  %i.jb = load i64, ptr %i.iz, align 8, !tbaa !17
  %i.jc = add i64 %i.jb, 1
  call void @_ZdlPvm(ptr noundef %i.iy, i64 noundef %i.jc) #38
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit152: ; preds = %.body, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i150
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #36
  resume { ptr, i32 } %.pn19.pn

bb.bs:                                            ; preds = %bb.a
  tail call void @_ZN7rocksdb15DBDumperCommand13DoDumpCommandEv(ptr noundef nonnull align 8 dereferenceable(2578) %0)
  br label %bb.bt

bb.bt:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit149, %bb.bs
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN7rocksdb15DBDumperCommand19GetFileNameFromPathERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !18   ; 11 uses
  %.not = icmp eq i64 %i.b, 0
  %.pre = load ptr, ptr %1, align 8, !tbaa !14    ; 4 uses
  br i1 %.not, label %._crit_edge.i.i.thread, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i

._crit_edge.i.i.thread:                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store ptr %i.c, ptr %0, align 8, !tbaa !9
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i:     ; preds = %bb.a, %bb.b
  %.1.i.i.in = phi i64 [ %.1.i.i, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %.1.i.i = add i64 %.1.i.i.in, -1                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.pre, i64 %.1.i.i
  %i.e = load i8, ptr %i.d, align 1, !tbaa !17
  switch i8 %i.e, label %bb.b [
    i8 92, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
    i8 47, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  ]

bb.b:                                             ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %.not17.i.i = icmp eq i64 %.1.i.i, 0
  br i1 %.not17.i.i, label %.loopexit, label %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, !llvm.loop !1293

.loopexit:                                        ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.f, ptr %0, align 8, !tbaa !9
  %i.g = icmp ugt i64 %i.b, 15
  br i1 %i.g, label %bb.c, label %._crit_edge.i.i

bb.c:                                             ; preds = %.loopexit
  %i.h = icmp slt i64 %i.b, 0
  br i1 %i.h, label %.noexc.i, label %bb.d

.noexc.i:                                         ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.468) #35
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.i = add nuw i64 %i.b, 1                      ; 2 uses
  %i.j = icmp slt i64 %i.i, 0
  br i1 %i.j, label %.noexc6.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, !prof !13

.noexc6.i:                                        ; preds = %bb.d
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i: ; preds = %bb.d
  %i.k = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.i) #37 ; 2 uses
  store ptr %i.k, ptr %0, align 8, !tbaa !14
  store i64 %i.b, ptr %i.f, align 8, !tbaa !17
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i, %.loopexit
  %i.l = phi ptr [ %i.k, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i ], [ %i.f, %.loopexit ] ; 5 uses
  switch i64 %i.b, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.m = load i8, ptr %.pre, align 1, !tbaa !17
  store i8 %i.m, ptr %i.l, align 1, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.f:                                             ; preds = %._crit_edge.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.l, ptr nonnull align 1 %.pre, i64 %i.b, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i.thread, %._crit_edge.i.i, %bb.e, %bb.f
  %i.n = phi ptr [ %i.c, %._crit_edge.i.i.thread ], [ %i.l, %._crit_edge.i.i ], [ %i.l, %bb.e ], [ %i.l, %bb.f ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.b, ptr %i.o, align 8, !tbaa !18
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.b
  store i8 0, ptr %i.p, align 1, !tbaa !17
  br label %bb.k

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i: ; preds = %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i, %_ZNSt11char_traitsIcE4findEPKcmRS1_.exit.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.q, ptr %0, align 8, !tbaa !9, !alias.scope !1294
  %i.r = getelementptr inbounds nuw i8, ptr %.pre, i64 %.1.i.i.in ; 2 uses
  %i.s = sub nuw i64 %i.b, %.1.i.i.in             ; 8 uses
  %i.t = icmp ugt i64 %i.s, 15
  br i1 %i.t, label %bb.g, label %._crit_edge.i.i.i

bb.g:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.u = icmp slt i64 %i.s, 0
  br i1 %i.u, label %.noexc10.i.i, label %bb.h

.noexc10.i.i:                                     ; preds = %bb.g
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.468) #35
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.v = add nuw i64 %i.s, 1                      ; 2 uses
  %i.w = icmp slt i64 %i.v, 0
  br i1 %i.w, label %.noexc11.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, !prof !13

.noexc11.i.i:                                     ; preds = %bb.h
  tail call void @_ZSt17__throw_bad_allocv() #35
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i: ; preds = %bb.h
  %i.x = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.v) #37 ; 2 uses
  store ptr %i.x, ptr %0, align 8, !tbaa !14, !alias.scope !1294
  store i64 %i.s, ptr %i.q, align 8, !tbaa !17, !alias.scope !1294
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i
  %i.y = phi ptr [ %i.x, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i ], [ %i.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE8_M_checkEmPKc.exit.i.i ] ; 3 uses
  switch i64 %i.s, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.z = load i8, ptr %i.r, align 1, !tbaa !17
  store i8 %i.z, ptr %i.y, align 1, !tbaa !17
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

bb.j:                                             ; preds = %._crit_edge.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %i.r, i64 %i.s, i1 false)
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit: ; preds = %._crit_edge.i.i.i, %bb.i, %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.s, ptr %i.aa, align 8, !tbaa !18, !alias.scope !1294
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.s
  store i8 0, ptr %i.ab, align 1, !tbaa !17
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6substrEmm.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN7rocksdb12_GLOBAL__N_112DumpWalFilesENS_7OptionsERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEbbbbRKSt3mapIjPKNS_10ComparatorESt4lessIjESaISt4pairIKjSD_EEEPNS_23LDBCommandExecuteResultE(ptr noundef nonnull align 8 %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, i1 noundef zeroext %5, ptr nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %6, ptr nofree noundef nonnull captures(address) %7) unnamed_addr #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"class.std::allocator", align 1    ; 3 uses
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  %9 = alloca %"class.std::allocator", align 1    ; 3 uses
  %10 = alloca %"class.std::allocator", align 1   ; 3 uses
  %11 = alloca %"class.std::vector", align 8      ; 12 uses
  %12 = alloca %"class.rocksdb::Status", align 8  ; 7 uses
  %13 = alloca %"class.std::optional", align 8    ; 6 uses
  %14 = alloca %"class.std::optional.570", align 4 ; 6 uses
  %15 = alloca %"class.rocksdb::Status", align 8  ; 9 uses
  %16 = alloca %"class.rocksdb::LDBCommandExecuteResult", align 8 ; 9 uses
  %17 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %18 = alloca %"class.rocksdb::LDBCommandExecuteResult", align 8 ; 9 uses
  %19 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %20 = alloca %"struct.rocksdb::Options", align 8 ; 6 uses
  %21 = alloca %"class.rocksdb::(anonymous namespace)::WALFileIterator", align 8 ; 18 uses
  %22 = alloca %"class.rocksdb::LDBCommandExecuteResult", align 8 ; 9 uses
  %23 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  %24 = alloca %"class.std::__cxx11::basic_string", align 8 ; 15 uses
  %25 = alloca %"struct.rocksdb::Options", align 8 ; 6 uses
  %26 = alloca %"class.std::__cxx11::basic_string", align 8 ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #36
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !198  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #36
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 240
  %i.g = load ptr, ptr %i.f, align 8
  invoke void %i.g(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %12, ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %11)
          to label %bb.b unwind label %bb.s

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #36
  %i.h = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i8 0, ptr %i.h, align 8, !tbaa !1297
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #36
  %i.i = getelementptr inbounds nuw i8, ptr %14, i64 4
  store i8 0, ptr %i.i, align 4, !tbaa !1298
  %i.j = load i8, ptr %12, align 8, !tbaa !246
  %i.k = icmp eq i8 %i.j, 0
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr %11, align 8, !tbaa !33    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33   ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %bb.d, label %bb.at

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #36
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !45
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 232
  %i.r = load ptr, ptr %i.q, align 8
  invoke void %i.r(ptr dead_on_unwind nonnull writable sret(%"class.rocksdb::Status") align 8 %15, ptr noundef nonnull align 8 dereferenceable(72) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.e unwind label %bb.t

bb.e:                                             ; preds = %bb.d
  %i.s = load i8, ptr %15, align 8, !tbaa !246
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %bb.x, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #36
  %i.u = load ptr, ptr %1, align 8, !tbaa !14, !noalias !1300
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = load i64, ptr %i.v, align 8, !tbaa !18, !noalias !1300
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #36, !noalias !1300
  invoke void @_ZSt12__str_concatINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEET_PKNS6_10value_typeENS6_9size_typeES9_SA_RKNS6_14allocator_typeE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %17, ptr noundef %i.u, i64 noundef %i.w, ptr noundef nonnull @.str.534, i64 noundef 27, ptr noundef nonnull align 1 dereferenceable(1) %10)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #36, !noalias !1300
  call void @llvm.experimental.noalias.scope.decl(metadata !1303)
  store i32 2, ptr %16, align 8, !tbaa !195, !alias.scope !1303
  %i.x = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 7 uses
  %i.y = getelementptr inbounds nuw i8, ptr %16, i64 24 ; 9 uses
  store ptr %i.y, ptr %i.x, align 8, !tbaa !9, !alias.scope !1303
  %i.z = load ptr, ptr %17, align 8, !tbaa !14, !noalias !1303 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !tbaa !18, !noalias !1303 ; 8 uses
  %i.ac = icmp ugt i64 %i.ab, 15
  br i1 %i.ac, label %bb.h, label %._crit_edge.i.i.i.i

bb.h:                                             ; preds = %bb.g
  %i.ad = icmp slt i64 %i.ab, 0
  br i1 %i.ad, label %.noexc.i.i.i, label %bb.i

.noexc.i.i.i:                                     ; preds = %bb.h
  invoke void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.468) #35
          to label %.noexc unwind label %bb.w

.noexc:                                           ; preds = %.noexc.i.i.i
  unreachable

bb.i:                                             ; preds = %bb.h
  %i.ae = add nuw i64 %i.ab, 1                    ; 2 uses
  %i.af = icmp slt i64 %i.ae, 0
  br i1 %i.af, label %.noexc6.i.i.i, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i, !prof !13

.noexc6.i.i.i:                                    ; preds = %bb.i
  invoke void @_ZSt17__throw_bad_allocv() #35
          to label %.noexc71 unwind label %bb.w

.noexc71:                                         ; preds = %.noexc6.i.i.i
  unreachable

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i: ; preds = %bb.i
  %i.ag = invoke noalias noundef nonnull ptr @_Znwm(i64 noundef %i.ae) #37
          to label %.noexc72 unwind label %bb.w   ; 2 uses

.noexc72:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm.exit.i.i.i.i
  store ptr %i.ag, ptr %i.x, align 8, !tbaa !14, !alias.scope !1303
  store i64 %i.ab, ptr %i.y, align 8, !tbaa !17, !alias.scope !1303
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc72, %bb.g
  %i.ah = phi ptr [ %i.ag, %.noexc72 ], [ %i.y, %bb.g ] ; 3 uses
  switch i64 %i.ab, label %bb.k [
    i64 1, label %bb.j
    i64 0, label %bb.l
  ]

bb.j:                                             ; preds = %._crit_edge.i.i.i.i
  %i.ai = load i8, ptr %i.z, align 1, !tbaa !17
  store i8 %i.ai, ptr %i.ah, align 1, !tbaa !17
  br label %bb.l

bb.k:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ah, ptr align 1 %i.z, i64 %i.ab, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %._crit_edge.i.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  store i64 %i.ab, ptr %i.aj, align 8, !tbaa !18, !alias.scope !1303
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ab
  store i8 0, ptr %i.ak, align 1, !tbaa !17
  %i.al = load i32, ptr %16, align 8, !tbaa !195
  store i32 %i.al, ptr %7, align 8, !tbaa !195
end_hunk_0
