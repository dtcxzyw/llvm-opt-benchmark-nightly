inline.NumInlined: 2510
inline.NumDeleted: 942
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_ZN6google8protobuf8compiler6csharp16MessageGenerator8GenerateEPNS0_2io7PrinterE:bb.a
bb.bj:                                            ; preds = %bb.bi
  %i.fy = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %20) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  br label %.body

bb.bk:                                            ; preds = %bb.bi
  %i.fz = load i64, ptr %20, align 8, !tbaa !71   ; 2 uses
  %i.ga = icmp eq i64 %i.fz, 0
  br i1 %i.ga, label %bb.bn, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  %i.gb = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i219, align 8, !tbaa !66
  %i.gc = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !74
  %i.ge = and i64 %i.gd, 65536
  %i.gf = icmp ne i64 %i.ge, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %20, i64 noundef %i.fz, ptr noundef %i.gb, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.gf)
          to label %bb.bn unwind label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.gg = landingpad { ptr, i32 }
          catch ptr null
  %i.gh = extractvalue { ptr, i32 } %i.gg, 0
  call void @__clang_call_terminate(ptr %i.gh) #29
  unreachable

bb.bn:                                            ; preds = %bb.bl, %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %20) #28
  %i.gi = load i8, ptr %i.dm, align 4, !tbaa !41, !range !69, !noundef !70
  %i.gj = trunc nuw i8 %i.gi to i1
  br i1 %i.gj, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  %i.gk = load ptr, ptr %i.f, align 8, !tbaa !21
  %i.gl = getelementptr inbounds nuw i8, ptr %i.gk, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !137
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load ptr, ptr %i.gn, align 8, !tbaa !138 ; 2 uses
  %i.gp = load ptr, ptr %i.go, align 8, !tbaa !64 ; 3 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.go, i64 8
  %i.gr = load i64, ptr %i.gq, align 8, !tbaa !67
  switch i64 %i.gr, label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread [
    i64 32, label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i
    i64 33, label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit
  ]

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i: ; preds = %bb.bo
  %i.gs = load i128, ptr %i.gp, align 1
  %i.gt = xor i128 %i.gs, 63005710922238749866870542373108019047
  %i.gu = getelementptr i8, ptr %i.gp, i64 16
  %i.gv = load i128, ptr %i.gu, align 1
  %i.gw = xor i128 %i.gv, 148148874381910705952234547080544347492
  %i.gx = or i128 %i.gt, %i.gw
  %i.gy = icmp ne i128 %i.gx, 0
  %i.gz = zext i1 %i.gy to i32
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread.invoke, label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread

_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit: ; preds = %bb.bo
  %bcmp.i7.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(33) %i.gp, ptr noundef nonnull dereferenceable(33) @.str.100, i64 33)
  %i.hb = icmp eq i32 %bcmp.i7.i, 0
  br i1 %i.hb, label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread.invoke, label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread

_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread: ; preds = %bb.bo, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit
  br label %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread.invoke

_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread.invoke: ; preds = %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i, %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread
  %i.hc = phi i64 [ 52, %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread ], [ 53, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ 53, %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit ]
  %i.hd = phi ptr [ @.str.15, %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread ], [ @.str.14, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i.i ], [ @.str.14, %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit ]
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 %i.hc, ptr nonnull %i.hd)
          to label %bb.bp unwind label %bb.am

bb.bp:                                            ; preds = %_ZN6google8protobuf8compiler6csharp17IsDescriptorProtoEPKNS0_14FileDescriptorE.exit.thread.invoke
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 83, ptr nonnull @.str.16)
          to label %bb.bq unwind label %bb.am

bb.bq:                                            ; preds = %bb.bp, %bb.bn
  %i.he = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.hf = load i32, ptr %i.he, align 8, !tbaa !56
  %i.hg = icmp sgt i32 %i.hf, 0
  br i1 %i.hg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.bq
  %i.hh = getelementptr inbounds nuw i8, ptr %33, i64 16 ; 5 uses
  %i.hi = ptrtoint ptr %i.hh to i64
  %i.hj = getelementptr inbounds nuw i8, ptr %33, i64 8
  %i.hk = getelementptr inbounds nuw i8, ptr %32, i64 16 ; 7 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %32, i64 8
  br label %bb.br

._crit_edge:                                      ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, %bb.bq
  invoke void @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase28WriteGeneratedCodeAttributesEPNS0_2io7PrinterE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1)
          to label %bb.bz unwind label %bb.am

bb.br:                                            ; preds = %.lr.ph, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228
  %.0133694 = phi i32 [ 0, %.lr.ph ], [ %i.ib, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %32) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %33) #28
  %i.hm = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0133694, ptr noundef nonnull %i.hh)
          to label %bb.bs unwind label %bb.bx

bb.bs:                                            ; preds = %bb.br
  %i.hn = ptrtoint ptr %i.hm to i64
  %i.ho = sub i64 %i.hn, %i.hi                    ; 5 uses
  store i64 %i.ho, ptr %33, align 8, !tbaa !88
  store ptr %i.hh, ptr %i.hj, align 8, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  store ptr %i.hk, ptr %32, align 8, !tbaa !60, !alias.scope !149
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #28, !noalias !149
  store i64 %i.ho, ptr %i.d, align 8, !tbaa !62, !noalias !149
  %i.hp = icmp ugt i64 %i.ho, 15
  br i1 %i.hp, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.bs
  %i.hq = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 0)
          to label %.noexc225 unwind label %bb.bx ; 2 uses

.noexc225:                                        ; preds = %.noexc.i.i
  store ptr %i.hq, ptr %32, align 8, !tbaa !64, !alias.scope !149
  %i.hr = load i64, ptr %i.d, align 8, !tbaa !62, !noalias !149
  store i64 %i.hr, ptr %i.hk, align 8, !tbaa !66, !alias.scope !149
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc225, %bb.bs
  %i.hs = phi ptr [ %i.hq, %.noexc225 ], [ %i.hk, %bb.bs ] ; 2 uses
  switch i64 %i.ho, label %bb.bu [
    i64 1, label %bb.bt
    i64 0, label %bb.bv
  ]

bb.bt:                                            ; preds = %._crit_edge.i.i.i
  %i.ht = load i8, ptr %i.hh, align 8, !tbaa !66
  store i8 %i.ht, ptr %i.hs, align 1, !tbaa !66
  br label %bb.bv

bb.bu:                                            ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.hs, ptr nonnull align 8 %i.hh, i64 %i.ho, i1 false)
  br label %bb.bv

bb.bv:                                            ; preds = %bb.bu, %bb.bt, %._crit_edge.i.i.i
  %i.hu = load i64, ptr %i.d, align 8, !tbaa !62, !noalias !149 ; 2 uses
  store i64 %i.hu, ptr %i.hl, align 8, !tbaa !67, !alias.scope !149
  %i.hv = load ptr, ptr %32, align 8, !tbaa !64, !alias.scope !149
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hv, i64 %i.hu
  store i8 0, ptr %i.hw, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #28, !noalias !149
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA2_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 25, ptr nonnull @.str.17, ptr noundef nonnull align 1 dereferenceable(2) @.str.18, ptr noundef nonnull align 8 dereferenceable(32) %32)
          to label %bb.bw unwind label %bb.by

bb.bw:                                            ; preds = %bb.bv
  %i.hx = load ptr, ptr %32, align 8, !tbaa !64   ; 2 uses
  %i.hy = icmp eq ptr %i.hx, %i.hk
  br i1 %i.hy, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226: ; preds = %bb.bw
  %i.hz = load i64, ptr %i.hk, align 8, !tbaa !66
  %i.ia = add i64 %i.hz, 1
  call void @_ZdlPvm(ptr noundef %i.hx, i64 noundef %i.ia) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit228: ; preds = %bb.bw, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i226
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  %i.ib = add nuw nsw i32 %.0133694, 1            ; 2 uses
  %i.ic = load i32, ptr %i.he, align 8, !tbaa !56
  %i.id = icmp slt i32 %i.ib, %i.ic
  br i1 %i.id, label %bb.br, label %._crit_edge, !llvm.loop !152

bb.bx:                                            ; preds = %.noexc.i.i, %bb.br
  %i.ie = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

bb.by:                                            ; preds = %bb.bv
  %i.if = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ig = load ptr, ptr %32, align 8, !tbaa !64   ; 2 uses
  %i.ih = icmp eq ptr %i.ig, %i.hk
  br i1 %i.ih, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229: ; preds = %bb.by
  %i.ii = load i64, ptr %i.hk, align 8, !tbaa !66
  %i.ij = add i64 %i.ii, 1
  call void @_ZdlPvm(ptr noundef %i.ig, i64 noundef %i.ij) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit231: ; preds = %bb.by, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229, %bb.bx
  %.pn174 = phi { ptr, i32 } [ %i.ie, %bb.bx ], [ %i.if, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i229 ], [ %i.if, %bb.by ]
  call void @llvm.lifetime.end.p0(ptr nonnull %33) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %32) #28
  br label %.body

bb.bz:                                            ; preds = %._crit_edge
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %29, i64 82, ptr nonnull @.str.19)
          to label %bb.ca unwind label %bb.am

bb.ca:                                            ; preds = %bb.bz
  %i.ik = load ptr, ptr %i.f, align 8, !tbaa !21  ; 2 uses
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !tbaa !153 ; 2 uses
  %.not = icmp eq ptr %i.im, null
  br i1 %.not, label %bb.cb, label %bb.cu

bb.cb:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %34) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %36) #28
  %i.in = getelementptr inbounds nuw i8, ptr %i.ik, i64 24
  %i.io = load ptr, ptr %i.in, align 8, !tbaa !137
  invoke void @_ZN6google8protobuf8compiler6csharp22GetReflectionClassNameB5cxx11EPKNS0_14FileDescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %36, ptr noundef %i.io)
          to label %bb.cc unwind label %bb.cp

bb.cc:                                            ; preds = %bb.cb
  %i.ip = load ptr, ptr %36, align 8, !tbaa !64
  %i.iq = getelementptr inbounds nuw i8, ptr %36, i64 8
  %i.ir = load i64, ptr %i.iq, align 8, !tbaa !67
  store i64 %i.ir, ptr %35, align 8
  %i.is = getelementptr inbounds nuw i8, ptr %35, i64 8
  store ptr %i.ip, ptr %i.is, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %37) #28
  store i64 25, ptr %37, align 8
  %i.it = getelementptr inbounds nuw i8, ptr %37, i64 8
  store ptr @.str.20, ptr %i.it, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %38) #28
  %i.iu = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %i.iu, i64 32
  %i.iw = load ptr, ptr %i.iv, align 8, !tbaa !153 ; 2 uses
  %i.ix = icmp eq ptr %i.iw, null
  br i1 %i.ix, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %bb.cc
  %i.iy = getelementptr inbounds nuw i8, ptr %i.iu, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !137
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 112
  br label %_ZNK6google8protobuf10Descriptor5indexEv.exit

bb.ce:                                            ; preds = %bb.cc
  %i.jb = getelementptr inbounds nuw i8, ptr %i.iw, i64 80
  br label %_ZNK6google8protobuf10Descriptor5indexEv.exit

_ZNK6google8protobuf10Descriptor5indexEv.exit:    ; preds = %bb.cd, %bb.ce
  %.sink4.in.i = phi ptr [ %i.jb, %bb.ce ], [ %i.ja, %bb.cd ]
  %.sink4.i = load ptr, ptr %.sink4.in.i, align 8, !tbaa !154
  %i.jc = ptrtoint ptr %i.iu to i64
  %i.jd = ptrtoint ptr %.sink4.i to i64
  %i.je = sub i64 %i.jc, %i.jd
  %.0.in.i = sdiv exact i64 %i.je, 160
  %.0.i = trunc i64 %.0.in.i to i32
  %i.jf = getelementptr inbounds nuw i8, ptr %38, i64 16 ; 3 uses
  %i.jg = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.i, ptr noundef nonnull %i.jf)
          to label %bb.cf unwind label %bb.cq

bb.cf:                                            ; preds = %_ZNK6google8protobuf10Descriptor5indexEv.exit
  %i.jh = ptrtoint ptr %i.jg to i64
  %i.ji = ptrtoint ptr %i.jf to i64
  %i.jj = sub i64 %i.jh, %i.ji
  store i64 %i.jj, ptr %38, align 8, !tbaa !88
  %i.jk = getelementptr inbounds nuw i8, ptr %38, i64 8
  store ptr %i.jf, ptr %i.jk, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %39) #28
  store i64 1, ptr %39, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %39, i64 8
  store ptr @.str.21, ptr %i.jl, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %34, ptr noundef nonnull align 8 dereferenceable(48) %35, ptr noundef nonnull align 8 dereferenceable(48) %37, ptr noundef nonnull align 8 dereferenceable(48) %38, ptr noundef nonnull align 8 dereferenceable(48) %39)
          to label %bb.cg unwind label %bb.cr

bb.cg:                                            ; preds = %bb.cf
  call void @llvm.lifetime.start.p0(ptr nonnull %19) #28
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA20_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %19, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 1 dereferenceable(20) @.str.22)
          to label %.noexc238 unwind label %bb.cs

.noexc238:                                        ; preds = %bb.cg
  %i.jm = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.jn = load i8, ptr %i.jm, align 8, !tbaa !80, !range !69, !alias.scope !155, !noundef !70
  %i.jo = trunc nuw i8 %i.jn to i1
  br i1 %i.jo, label %bb.ch, label %bb.ci

bb.ch:                                            ; preds = %.noexc238
  %.sroa.2.0..sroa_idx.i.i.i236 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.2.0.copyload.i.i.i237 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i236, align 8, !alias.scope !155 ; 5 uses
  store i64 19, ptr %.sroa.2.0.copyload.i.i.i237, align 8, !tbaa !88
  %i.jp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i237, i64 8
  store ptr @.str.22, ptr %i.jp, align 8, !tbaa !90
  %i.jq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i237, i64 16
  %i.jr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i237, i64 32 ; 2 uses
  store ptr %i.jr, ptr %i.jq, align 8, !tbaa !60
  %i.js = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i237, i64 24
  store i64 0, ptr %i.js, align 8, !tbaa !67
  store i8 0, ptr %i.jr, align 8, !tbaa !66
  br label %bb.ci

bb.ci:                                            ; preds = %bb.ch, %.noexc238
  %.sroa.2.0..sroa_idx.i234 = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.2.0.copyload.i235 = load ptr, ptr %.sroa.2.0..sroa_idx.i234, align 8 ; 5 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i235, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %19) #28
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !64 ; 6 uses
  %i.jv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i235, i64 32 ; 2 uses
  %i.jw = icmp eq ptr %i.ju, %i.jv
  %i.jx = load ptr, ptr %34, align 8, !tbaa !64   ; 6 uses
  %i.jy = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 4 uses
  %i.jz = icmp eq ptr %i.jx, %i.jy                ; 2 uses
  br i1 %i.jw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i245, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i239

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i245: ; preds = %bb.ci
  br i1 %i.jz, label %bb.cj, label %.thread.i246

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i239: ; preds = %bb.ci
  br i1 %i.jz, label %bb.cj, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i240

bb.cj:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i239, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i245
  %i.ka = getelementptr inbounds nuw i8, ptr %34, i64 8 ; 2 uses
  %i.kb = load i64, ptr %i.ka, align 8, !tbaa !67 ; 3 uses
  %i.kc = icmp ult i64 %i.kb, 16
  call void @llvm.assume(i1 %i.kc)
  %.not21.i242 = icmp eq ptr %34, %i.jt
  br i1 %.not21.i242, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247, label %bb.ck, !prof !91

bb.ck:                                            ; preds = %bb.cj
  switch i64 %i.kb, label %bb.cm [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i243
    i64 1, label %bb.cl
  ]

bb.cl:                                            ; preds = %bb.ck
  %i.kd = load i8, ptr %i.jx, align 1, !tbaa !66
  store i8 %i.kd, ptr %i.ju, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i243

bb.cm:                                            ; preds = %bb.ck
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ju, ptr align 1 %i.jx, i64 %i.kb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i243

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i243: ; preds = %bb.cm, %bb.cl, %bb.ck
  %i.ke = load i64, ptr %i.ka, align 8, !tbaa !67 ; 2 uses
  %i.kf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i235, i64 24
  store i64 %i.ke, ptr %i.kf, align 8, !tbaa !67
  %i.kg = load ptr, ptr %i.jt, align 8, !tbaa !64
  %i.kh = getelementptr inbounds nuw i8, ptr %i.kg, i64 %i.ke
  store i8 0, ptr %i.kh, align 1, !tbaa !66
  %.pre.i244 = load ptr, ptr %34, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247

.thread.i246:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i245
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i235, i64 24
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !64
  %i.kj = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.kk = load <2 x i64>, ptr %i.kj, align 8, !tbaa !66
  store <2 x i64> %i.kk, ptr %i.ki, align 8, !tbaa !66
  br label %bb.co

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i240: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i239
  %i.kl = load i64, ptr %i.jv, align 8, !tbaa !66
  store ptr %i.jx, ptr %i.jt, align 8, !tbaa !64
  %i.km = getelementptr inbounds nuw i8, ptr %34, i64 8
  %i.kn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i235, i64 24
  %i.ko = load <2 x i64>, ptr %i.km, align 8, !tbaa !66
  store <2 x i64> %i.ko, ptr %i.kn, align 8, !tbaa !66
  %.not.i241 = icmp eq ptr %i.ju, null
  br i1 %.not.i241, label %bb.co, label %bb.cn

bb.cn:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i240
  store ptr %i.ju, ptr %34, align 8, !tbaa !64
  store i64 %i.kl, ptr %i.jy, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247

bb.co:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i240, %.thread.i246
  store ptr %i.jy, ptr %34, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247: ; preds = %bb.cj, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i243, %bb.cn, %bb.co
  %i.kp = phi ptr [ %.pre.i244, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i243 ], [ %i.ju, %bb.cn ], [ %i.jy, %bb.co ], [ %i.jx, %bb.cj ]
  %i.kq = getelementptr inbounds nuw i8, ptr %34, i64 8
  store i64 0, ptr %i.kq, align 8, !tbaa !67
  store i8 0, ptr %i.kp, align 1, !tbaa !66
  %i.kr = load ptr, ptr %34, align 8, !tbaa !64   ; 2 uses
  %i.ks = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.kt = icmp eq ptr %i.kr, %i.ks
  br i1 %i.kt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247
  %i.ku = load i64, ptr %i.ks, align 8, !tbaa !66
  %i.kv = add i64 %i.ku, 1
  call void @_ZdlPvm(ptr noundef %i.kr, i64 noundef %i.kv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit247, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i248
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  %i.kw = load ptr, ptr %36, align 8, !tbaa !64   ; 2 uses
  %i.kx = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.ky = icmp eq ptr %i.kw, %i.kx
  br i1 %i.ky, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250
  %i.kz = load i64, ptr %i.kx, align 8, !tbaa !66
  %i.la = add i64 %i.kz, 1
  call void @_ZdlPvm(ptr noundef %i.kw, i64 noundef %i.la) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit253: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit250, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i251
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %bb.dn

bb.cp:                                            ; preds = %bb.cb
  %i.lb = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

bb.cq:                                            ; preds = %_ZNK6google8protobuf10Descriptor5indexEv.exit
  %i.lc = landingpad { ptr, i32 }
          cleanup
  br label %bb.ct

bb.cr:                                            ; preds = %bb.cf
  %i.ld = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

bb.cs:                                            ; preds = %bb.cg
  %i.le = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lf = load ptr, ptr %34, align 8, !tbaa !64   ; 2 uses
  %i.lg = getelementptr inbounds nuw i8, ptr %34, i64 16 ; 2 uses
  %i.lh = icmp eq ptr %i.lf, %i.lg
  br i1 %i.lh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254: ; preds = %bb.cs
  %i.li = load i64, ptr %i.lg, align 8, !tbaa !66
  %i.lj = add i64 %i.li, 1
  call void @_ZdlPvm(ptr noundef %i.lf, i64 noundef %i.lj) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256: ; preds = %bb.cs, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254, %bb.cr
  %.pn139 = phi { ptr, i32 } [ %i.ld, %bb.cr ], [ %i.le, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i254 ], [ %i.le, %bb.cs ]
  call void @llvm.lifetime.end.p0(ptr nonnull %39) #28
  br label %bb.ct

bb.ct:                                            ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256, %bb.cq
  %.pn139.pn = phi { ptr, i32 } [ %.pn139, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit256 ], [ %i.lc, %bb.cq ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %38) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %37) #28
  %i.lk = load ptr, ptr %36, align 8, !tbaa !64   ; 2 uses
  %i.ll = getelementptr inbounds nuw i8, ptr %36, i64 16 ; 2 uses
  %i.lm = icmp eq ptr %i.lk, %i.ll
  br i1 %i.lm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257: ; preds = %bb.ct
  %i.ln = load i64, ptr %i.ll, align 8, !tbaa !66
  %i.lo = add i64 %i.ln, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.lo) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit259: ; preds = %bb.ct, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257, %bb.cp
  %.pn139.pn.pn.pn = phi { ptr, i32 } [ %i.lb, %bb.cp ], [ %.pn139.pn, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i257 ], [ %.pn139.pn, %bb.ct ]
  call void @llvm.lifetime.end.p0(ptr nonnull %36) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %35) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %34) #28
  br label %.body

bb.cu:                                            ; preds = %bb.ca
  call void @llvm.lifetime.start.p0(ptr nonnull %40) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %42) #28
  invoke void @_ZN6google8protobuf8compiler6csharp12GetClassNameB5cxx11EPKNS0_10DescriptorE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %42, ptr noundef nonnull %i.im)
          to label %bb.cv unwind label %bb.di

bb.cv:                                            ; preds = %bb.cu
  %i.lp = load ptr, ptr %42, align 8, !tbaa !64
  %i.lq = getelementptr inbounds nuw i8, ptr %42, i64 8
  %i.lr = load i64, ptr %i.lq, align 8, !tbaa !67
  store i64 %i.lr, ptr %41, align 8
  %i.ls = getelementptr inbounds nuw i8, ptr %41, i64 8
  store ptr %i.lp, ptr %i.ls, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %43) #28
  store i64 24, ptr %43, align 8
  %i.lt = getelementptr inbounds nuw i8, ptr %43, i64 8
  store ptr @.str.23, ptr %i.lt, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %44) #28
  %i.lu = load ptr, ptr %i.f, align 8, !tbaa !21  ; 3 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 32
  %i.lw = load ptr, ptr %i.lv, align 8, !tbaa !153 ; 2 uses
  %i.lx = icmp eq ptr %i.lw, null
  br i1 %i.lx, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %bb.cv
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lu, i64 24
  %i.lz = load ptr, ptr %i.ly, align 8, !tbaa !137
  %i.ma = getelementptr inbounds nuw i8, ptr %i.lz, i64 112
  br label %_ZNK6google8protobuf10Descriptor5indexEv.exit264

bb.cx:                                            ; preds = %bb.cv
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lw, i64 80
  br label %_ZNK6google8protobuf10Descriptor5indexEv.exit264

_ZNK6google8protobuf10Descriptor5indexEv.exit264: ; preds = %bb.cw, %bb.cx
  %.sink4.in.i260 = phi ptr [ %i.mb, %bb.cx ], [ %i.ma, %bb.cw ]
  %.sink4.i261 = load ptr, ptr %.sink4.in.i260, align 8, !tbaa !154
  %i.mc = ptrtoint ptr %i.lu to i64
  %i.md = ptrtoint ptr %.sink4.i261 to i64
  %i.me = sub i64 %i.mc, %i.md
  %.0.in.i262 = sdiv exact i64 %i.me, 160
  %.0.i263 = trunc i64 %.0.in.i262 to i32
  %i.mf = getelementptr inbounds nuw i8, ptr %44, i64 16 ; 3 uses
  %i.mg = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEiPc(i32 noundef %.0.i263, ptr noundef nonnull %i.mf)
          to label %bb.cy unwind label %bb.dj

bb.cy:                                            ; preds = %_ZNK6google8protobuf10Descriptor5indexEv.exit264
  %i.mh = ptrtoint ptr %i.mg to i64
  %i.mi = ptrtoint ptr %i.mf to i64
  %i.mj = sub i64 %i.mh, %i.mi
  store i64 %i.mj, ptr %44, align 8, !tbaa !88
  %i.mk = getelementptr inbounds nuw i8, ptr %44, i64 8
  store ptr %i.mf, ptr %i.mk, align 8, !tbaa !90
  call void @llvm.lifetime.start.p0(ptr nonnull %45) #28
  store i64 1, ptr %45, align 8
  %i.ml = getelementptr inbounds nuw i8, ptr %45, i64 8
  store ptr @.str.21, ptr %i.ml, align 8
  invoke void @_ZN4absl12lts_202505126StrCatB5cxx11ERKNS0_8AlphaNumES3_S3_S3_(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %40, ptr noundef nonnull align 8 dereferenceable(48) %41, ptr noundef nonnull align 8 dereferenceable(48) %43, ptr noundef nonnull align 8 dereferenceable(48) %44, ptr noundef nonnull align 8 dereferenceable(48) %45)
          to label %bb.cz unwind label %bb.dk

bb.cz:                                            ; preds = %bb.cy
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #28
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA20_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %18, ptr noundef nonnull align 8 dereferenceable(32) %29, ptr noundef nonnull align 1 dereferenceable(20) @.str.22)
          to label %.noexc271 unwind label %bb.dl

.noexc271:                                        ; preds = %bb.cz
  %i.mm = getelementptr inbounds nuw i8, ptr %18, i64 16
  %i.mn = load i8, ptr %i.mm, align 8, !tbaa !80, !range !69, !alias.scope !160, !noundef !70
  %i.mo = trunc nuw i8 %i.mn to i1
  br i1 %i.mo, label %bb.da, label %bb.db

bb.da:                                            ; preds = %.noexc271
  %.sroa.2.0..sroa_idx.i.i.i269 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.2.0.copyload.i.i.i270 = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i269, align 8, !alias.scope !160 ; 5 uses
  store i64 19, ptr %.sroa.2.0.copyload.i.i.i270, align 8, !tbaa !88
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i270, i64 8
  store ptr @.str.22, ptr %i.mp, align 8, !tbaa !90
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i270, i64 16
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i270, i64 32 ; 2 uses
  store ptr %i.mr, ptr %i.mq, align 8, !tbaa !60
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i270, i64 24
  store i64 0, ptr %i.ms, align 8, !tbaa !67
  store i8 0, ptr %i.mr, align 8, !tbaa !66
  br label %bb.db

bb.db:                                            ; preds = %bb.da, %.noexc271
  %.sroa.2.0..sroa_idx.i267 = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.2.0.copyload.i268 = load ptr, ptr %.sroa.2.0..sroa_idx.i267, align 8 ; 5 uses
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 16 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #28
  %i.mu = load ptr, ptr %i.mt, align 8, !tbaa !64 ; 6 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 32 ; 2 uses
  %i.mw = icmp eq ptr %i.mu, %i.mv
  %i.mx = load ptr, ptr %40, align 8, !tbaa !64   ; 6 uses
  %i.my = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 4 uses
  %i.mz = icmp eq ptr %i.mx, %i.my                ; 2 uses
  br i1 %i.mw, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i279, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i273

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i279: ; preds = %bb.db
  br i1 %i.mz, label %bb.dc, label %.thread.i280

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i273: ; preds = %bb.db
  br i1 %i.mz, label %bb.dc, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274

bb.dc:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i273, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i279
  %i.na = getelementptr inbounds nuw i8, ptr %40, i64 8 ; 2 uses
  %i.nb = load i64, ptr %i.na, align 8, !tbaa !67 ; 3 uses
  %i.nc = icmp ult i64 %i.nb, 16
  call void @llvm.assume(i1 %i.nc)
  %.not21.i276 = icmp eq ptr %40, %i.mt
  br i1 %.not21.i276, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281, label %bb.dd, !prof !91

bb.dd:                                            ; preds = %bb.dc
  switch i64 %i.nb, label %bb.df [
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277
    i64 1, label %bb.de
  ]

bb.de:                                            ; preds = %bb.dd
  %i.nd = load i8, ptr %i.mx, align 1, !tbaa !66
  store i8 %i.nd, ptr %i.mu, align 1, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277

bb.df:                                            ; preds = %bb.dd
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.mu, ptr align 1 %i.mx, i64 %i.nb, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277: ; preds = %bb.df, %bb.de, %bb.dd
  %i.ne = load i64, ptr %i.na, align 8, !tbaa !67 ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 24
  store i64 %i.ne, ptr %i.nf, align 8, !tbaa !67
  %i.ng = load ptr, ptr %i.mt, align 8, !tbaa !64
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ng, i64 %i.ne
  store i8 0, ptr %i.nh, align 1, !tbaa !66
  %.pre.i278 = load ptr, ptr %40, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281

.thread.i280:                                     ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i279
  %i.ni = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 24
  store ptr %i.mx, ptr %i.mt, align 8, !tbaa !64
  %i.nj = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.nk = load <2 x i64>, ptr %i.nj, align 8, !tbaa !66
  store <2 x i64> %i.nk, ptr %i.ni, align 8, !tbaa !66
  br label %bb.dh

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i273
  %i.nl = load i64, ptr %i.mv, align 8, !tbaa !66
  store ptr %i.mx, ptr %i.mt, align 8, !tbaa !64
  %i.nm = getelementptr inbounds nuw i8, ptr %40, i64 8
  %i.nn = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i268, i64 24
  %i.no = load <2 x i64>, ptr %i.nm, align 8, !tbaa !66
  store <2 x i64> %i.no, ptr %i.nn, align 8, !tbaa !66
  %.not.i275 = icmp eq ptr %i.mu, null
  br i1 %.not.i275, label %bb.dh, label %bb.dg

bb.dg:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274
  store ptr %i.mu, ptr %40, align 8, !tbaa !64
  store i64 %i.nl, ptr %i.my, align 8, !tbaa !66
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281

bb.dh:                                            ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit23.thread25.i274, %.thread.i280
  store ptr %i.my, ptr %40, align 8, !tbaa !64
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281: ; preds = %bb.dc, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277, %bb.dg, %bb.dh
  %i.np = phi ptr [ %.pre.i278, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm.exit.i277 ], [ %i.mu, %bb.dg ], [ %i.my, %bb.dh ], [ %i.mx, %bb.dc ]
  %i.nq = getelementptr inbounds nuw i8, ptr %40, i64 8
  store i64 0, ptr %i.nq, align 8, !tbaa !67
  store i8 0, ptr %i.np, align 1, !tbaa !66
  %i.nr = load ptr, ptr %40, align 8, !tbaa !64   ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %40, i64 16 ; 2 uses
  %i.nt = icmp eq ptr %i.nr, %i.ns
  br i1 %i.nt, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281
  %i.nu = load i64, ptr %i.ns, align 8, !tbaa !66
  %i.nv = add i64 %i.nu, 1
  call void @_ZdlPvm(ptr noundef %i.nr, i64 noundef %i.nv) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEOS4_.exit281, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i282
  call void @llvm.lifetime.end.p0(ptr nonnull %45) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %44) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %43) #28
  %i.nw = load ptr, ptr %42, align 8, !tbaa !64   ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %42, i64 16 ; 2 uses
  %i.ny = icmp eq ptr %i.nw, %i.nx
  br i1 %i.ny, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284
  %i.nz = load i64, ptr %i.nx, align 8, !tbaa !66
  %i.oa = add i64 %i.nz, 1
  call void @_ZdlPvm(ptr noundef %i.nw, i64 noundef %i.oa) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit287: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit284, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i285
  call void @llvm.lifetime.end.p0(ptr nonnull %42) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %41) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %40) #28
  br label %bb.dn

bb.di:                                            ; preds = %bb.cu
  %i.ob = landingpad { ptr, i32 }
          cleanup
end_hunk_0
begin_hunk_1_@_ZN6google8protobuf8compiler6csharp16MessageGenerator19GenerateWriteToBodyEPNS0_2io7PrinterEb:bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %i.af, ptr nonnull %i.ae)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %4) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %common.resume

bb.d:                                             ; preds = %bb.b
  %i.ah = load i64, ptr %4, align 8, !tbaa !71    ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !tbaa !66
  %i.ak = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !74
  %i.am = and i64 %i.al, 65536
  %i.an = icmp ne i64 %i.am, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %4, i64 noundef %i.ah, ptr noundef %i.aj, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.an)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit: ; preds = %bb.d, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #28
  br label %bb.g

bb.g:                                             ; preds = %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit, %._crit_edge
  %i.aq = select i1 %2, ptr @.str.80, ptr @.str.81
  %i.ar = select i1 %2, i64 70, i64 66
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %3, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i.i15 = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i15, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 %i.ar, ptr nonnull %i.aq)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  br label %common.resume

bb.i:                                             ; preds = %bb.g
  %i.at = load i64, ptr %3, align 8, !tbaa !71    ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit16, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i15, align 8, !tbaa !66
  %i.aw = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !tbaa !74
  %i.ay = and i64 %i.ax, 65536
  %i.az = icmp ne i64 %i.ay, 0
  invoke void @_ZN4absl12lts_2025051218container_internal22DeallocateBackingArrayILm8ESaIcEEEvPvmPNS1_6ctrl_tEmmb(ptr noundef nonnull align 8 dereferenceable(32) %3, i64 noundef %i.at, ptr noundef %i.av, i64 noundef 32, i64 noundef 8, i1 noundef zeroext %i.az)
          to label %_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit16 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ba = landingpad { ptr, i32 }
          catch ptr null
  %i.bb = extractvalue { ptr, i32 } %i.ba, 0
  call void @__clang_call_terminate(ptr %i.bb) #29
  unreachable

_ZN6google8protobuf2io7Printer5PrintIJEEEvSt17basic_string_viewIcSt11char_traitsIcEEDpRKT_.exit16: ; preds = %bb.i, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #28
  ret void
}

; Function Attrs: mustprogress uwtable
define hidden void @_ZN6google8protobuf8compiler6csharp16MessageGenerator21GenerateMainParseLoopEPNS0_2io7PrinterEb(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %class.anon.40, align 8             ; 4 uses
  %4 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %5 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %6 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %7 = alloca %"class.absl::lts_20250512::flat_hash_map.44", align 8 ; 10 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca i64, align 8                      ; 6 uses
  %8 = alloca %"struct.std::pair.114", align 8    ; 6 uses
  %9 = alloca %"class.absl::lts_20250512::flat_hash_map.30", align 8 ; 14 uses
  %10 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %11 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  %12 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  %13 = alloca %"class.absl::lts_20250512::AlphaNum", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %9, i8 0, i64 16, i1 false)
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #28
  invoke void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS6_SaIcEEEEENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_SB_EEE30find_or_prepare_insert_non_sooIA16_cEESF_INSJ_8iteratorEbERKT_(ptr dead_on_unwind nonnull writable sret(%"struct.std::pair.114") align 8 %8, ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull align 1 dereferenceable(16) @.str.91)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.d = load i8, ptr %i.c, align 8, !tbaa !80, !range !69, !alias.scope !440, !noundef !70
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !440 ; 5 uses
  store i64 15, ptr %.sroa.2.0.copyload.i.i.i, align 8, !tbaa !88
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 8
  store ptr @.str.91, ptr %i.f, align 8, !tbaa !90
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 32 ; 2 uses
  store ptr %i.h, ptr %i.g, align 8, !tbaa !60
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i.i.i, i64 24
  store i64 0, ptr %i.i, align 8, !tbaa !67
  store i8 0, ptr %i.h, align 8, !tbaa !66
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #28
  %i.k = select i1 %2, ptr @.str.89, ptr @.str.90
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.2.0.copyload.i, i64 24
  %i.m = load i64, ptr %i.l, align 8, !tbaa !67
  %i.n = select i1 %2, i64 9, i64 5
  %i.o = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 noundef 0, i64 noundef %i.m, ptr noundef nonnull %i.k, i64 noundef %i.n)
          to label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit unwind label %bb.d ; 0 uses

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit: ; preds = %bb.c
  invoke void @_ZN6google8protobuf2io7Printer4EmitEN4absl12lts_202505124SpanIKNS2_3SubEEESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr null, i64 0, i64 161, ptr nonnull @.str.92)
          to label %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit unwind label %bb.d

_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.q = load i64, ptr %i.p, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 4 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !136
  %reass.add = shl i64 %i.q, 1
  %i.t = add i64 %i.s, %reass.add
  store i64 %i.t, ptr %i.r, align 8, !tbaa !136
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.v = load i8, ptr %i.u, align 4, !tbaa !41, !range !69, !noundef !70
  %i.w = trunc nuw i8 %i.v to i1                  ; 2 uses
  %i.x = select i1 %i.w, i64 195, i64 108
  %i.y = select i1 %i.w, ptr @.str.93, ptr @.str.94
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEENSt7__cxx1112basic_stringIcS9_SaIcEEENS5_18container_internal10StringHashENSF_8StringEqESaISt4pairIKSA_SE_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %9, i64 %i.x, ptr nonnull %i.y)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSEPKc.exit, %bb.c, %bb.a, %bb.ao, %._crit_edge
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body80

bb.e:                                             ; preds = %_ZN6google8protobuf2io7Printer4EmitESt17basic_string_viewIcSt11char_traitsIcEENS2_14SourceLocationE.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !51
  %i.ad = load ptr, ptr %i.aa, align 8, !tbaa !52 ; 2 uses
  %.not = icmp eq ptr %i.ac, %i.ad
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e
  %i.ae = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 5 uses
  %i.af = ptrtoint ptr %i.ae to i64
  %i.ag = getelementptr inbounds nuw i8, ptr %11, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 7 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 7 uses
  %i.an = getelementptr inbounds nuw i8, ptr %12, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %7, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i69 = getelementptr inbounds nuw i8, ptr %6, i64 16 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %6, i64 8
  br label %bb.f

._crit_edge:                                      ; preds = %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit, %bb.e
  invoke void @_ZN6google8protobuf2io7Printer7OutdentENS2_14SourceLocationE(ptr noundef nonnull align 16 dereferenceable(296) %1)
          to label %bb.aj unwind label %bb.d

bb.f:                                             ; preds = %.lr.ph, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit ] ; 2 uses
  %i.aq = phi ptr [ %i.ad, %.lr.ph ], [ %i.dy, %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit ]
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %indvars.iv
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !44 ; 5 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 2
  %i.au = load i8, ptr %i.at, align 2, !tbaa !55  ; 2 uses
  %i.av = zext i8 %i.au to i64
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr @_ZN6google8protobuf8internal14WireFormatLite21kWireTypeForFieldTypeE, i64 %i.av
  %i.ax = load i32, ptr %i.aw, align 4, !tbaa !445
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 4
  %i.az = load i32, ptr %i.ay, align 4, !tbaa !7
  %i.ba = shl i32 %i.az, 3                        ; 2 uses
  %i.bb = or i32 %i.ba, %i.ax
  %i.bc = getelementptr inbounds nuw i8, ptr %i.as, i64 1
  %i.bd = load i8, ptr %i.bc, align 1
  %i.be = and i8 %i.bd, 32
  %i.bf = icmp ne i8 %i.be, 0
  %i.bg = add i8 %i.au, -13
  %spec.select.i.i = icmp ult i8 %i.bg, -4
  %i.bh = and i1 %spec.select.i.i, %i.bf
  br i1 %i.bh, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #28
  %i.bi = or disjoint i32 %i.ba, 2
  %i.bj = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.bi, ptr noundef nonnull %i.ae)
          to label %bb.h unwind label %bb.m

bb.h:                                             ; preds = %bb.g
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = sub i64 %i.bk, %i.af                    ; 5 uses
  store i64 %i.bl, ptr %11, align 8, !tbaa !88
  store ptr %i.ae, ptr %i.ag, align 8, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !447)
  store ptr %i.ah, ptr %10, align 8, !tbaa !60, !alias.scope !447
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #28, !noalias !447
  store i64 %i.bl, ptr %i.b, align 8, !tbaa !62, !noalias !447
  %i.bm = icmp ugt i64 %i.bl, 15
  br i1 %i.bm, label %.noexc.i.i, label %._crit_edge.i.i.i

.noexc.i.i:                                       ; preds = %bb.h
  %i.bn = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %10, ptr noundef nonnull align 8 dereferenceable(8) %i.b, i64 noundef 0)
          to label %.noexc50 unwind label %bb.m   ; 2 uses

.noexc50:                                         ; preds = %.noexc.i.i
  store ptr %i.bn, ptr %10, align 8, !tbaa !64, !alias.scope !447
  %i.bo = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !447
  store i64 %i.bo, ptr %i.ah, align 8, !tbaa !66, !alias.scope !447
  br label %._crit_edge.i.i.i

._crit_edge.i.i.i:                                ; preds = %.noexc50, %bb.h
  %i.bp = phi ptr [ %i.bn, %.noexc50 ], [ %i.ah, %bb.h ] ; 2 uses
  switch i64 %i.bl, label %bb.j [
    i64 1, label %bb.i
    i64 0, label %bb.k
  ]

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bq = load i8, ptr %i.ae, align 8, !tbaa !66
  store i8 %i.bq, ptr %i.bp, align 1, !tbaa !66
  br label %bb.k

bb.j:                                             ; preds = %._crit_edge.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.bp, ptr nonnull align 8 %i.ae, i64 %i.bl, i1 false)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %._crit_edge.i.i.i
  %i.br = load i64, ptr %i.b, align 8, !tbaa !62, !noalias !447 ; 2 uses
  store i64 %i.br, ptr %i.ai, align 8, !tbaa !67, !alias.scope !447
  %i.bs = load ptr, ptr %10, align 8, !tbaa !64, !alias.scope !447
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 %i.br
  store i8 0, ptr %i.bt, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #28, !noalias !447
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA11_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 19, ptr nonnull @.str.95, ptr noundef nonnull align 1 dereferenceable(11) @.str.96, ptr noundef nonnull align 8 dereferenceable(32) %10)
          to label %bb.l unwind label %bb.n

bb.l:                                             ; preds = %bb.k
  %i.bu = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.bv = icmp eq ptr %i.bu, %i.ah
  br i1 %i.bv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.l
  %i.bw = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.bx = add i64 %i.bw, 1
  call void @_ZdlPvm(ptr noundef %i.bu, i64 noundef %i.bx) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %bb.o

bb.m:                                             ; preds = %.noexc.i.i, %bb.g
  %i.by = landingpad { ptr, i32 }
          cleanup
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

bb.n:                                             ; preds = %bb.k
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load ptr, ptr %10, align 8, !tbaa !64   ; 2 uses
  %i.cb = icmp eq ptr %i.ca, %i.ah
  br i1 %i.cb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51: ; preds = %bb.n
  %i.cc = load i64, ptr %i.ah, align 8, !tbaa !66
  %i.cd = add i64 %i.cc, 1
  call void @_ZdlPvm(ptr noundef %i.ca, i64 noundef %i.cd) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit53: ; preds = %bb.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51, %bb.m
  %.pn = phi { ptr, i32 } [ %i.by, %bb.m ], [ %i.bz, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i51 ], [ %i.bz, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #28
  br label %.body80

bb.o:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #28
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #28
  %i.ce = invoke noundef ptr @_ZN4absl12lts_2025051216numbers_internal15FastIntToBufferEjPc(i32 noundef %i.bb, ptr noundef nonnull %i.aj)
          to label %bb.p unwind label %bb.af

bb.p:                                             ; preds = %bb.o
  %i.cf = ptrtoint ptr %i.ce to i64
  %i.cg = sub i64 %i.cf, %i.ak                    ; 5 uses
  store i64 %i.cg, ptr %13, align 8, !tbaa !88
  store ptr %i.aj, ptr %i.al, align 8, !tbaa !90
  call void @llvm.experimental.noalias.scope.decl(metadata !450)
  store ptr %i.am, ptr %12, align 8, !tbaa !60, !alias.scope !450
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28, !noalias !450
  store i64 %i.cg, ptr %i.a, align 8, !tbaa !62, !noalias !450
  %i.ch = icmp ugt i64 %i.cg, 15
  br i1 %i.ch, label %.noexc.i.i58, label %._crit_edge.i.i.i57

.noexc.i.i58:                                     ; preds = %bb.p
  %i.ci = invoke noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0)
          to label %.noexc61 unwind label %bb.af  ; 2 uses

.noexc61:                                         ; preds = %.noexc.i.i58
  store ptr %i.ci, ptr %12, align 8, !tbaa !64, !alias.scope !450
  %i.cj = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !450
  store i64 %i.cj, ptr %i.am, align 8, !tbaa !66, !alias.scope !450
  br label %._crit_edge.i.i.i57

._crit_edge.i.i.i57:                              ; preds = %.noexc61, %bb.p
  %i.ck = phi ptr [ %i.ci, %.noexc61 ], [ %i.am, %bb.p ] ; 2 uses
  switch i64 %i.cg, label %bb.r [
    i64 1, label %bb.q
    i64 0, label %bb.s
  ]

bb.q:                                             ; preds = %._crit_edge.i.i.i57
  %i.cl = load i8, ptr %i.aj, align 8, !tbaa !66
  store i8 %i.cl, ptr %i.ck, align 1, !tbaa !66
  br label %bb.s

bb.r:                                             ; preds = %._crit_edge.i.i.i57
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.ck, ptr nonnull align 8 %i.aj, i64 %i.cg, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %._crit_edge.i.i.i57
  %i.cm = load i64, ptr %i.a, align 8, !tbaa !62, !noalias !450 ; 2 uses
  store i64 %i.cm, ptr %i.an, align 8, !tbaa !67, !alias.scope !450
  %i.cn = load ptr, ptr %12, align 8, !tbaa !64, !alias.scope !450
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 %i.cm
  store i8 0, ptr %i.co, align 1, !tbaa !66
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28, !noalias !450
  invoke void @_ZN6google8protobuf2io7Printer5PrintIJA4_cNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEEvSt17basic_string_viewIcS8_EDpRKT_(ptr noundef nonnull align 16 dereferenceable(296) %1, i64 14, ptr nonnull @.str.97, ptr noundef nonnull align 1 dereferenceable(4) @.str.98, ptr noundef nonnull align 8 dereferenceable(32) %12)
          to label %bb.t unwind label %bb.ag

bb.t:                                             ; preds = %bb.s
  %i.cp = load ptr, ptr %12, align 8, !tbaa !64   ; 2 uses
  %i.cq = icmp eq ptr %i.cp, %i.am
  br i1 %i.cq, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63: ; preds = %bb.t
  %i.cr = load i64, ptr %i.am, align 8, !tbaa !66
  %i.cs = add i64 %i.cr, 1
  call void @_ZdlPvm(ptr noundef %i.cp, i64 noundef %i.cs) #27
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65: ; preds = %bb.t, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i63
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #28
  %i.ct = load i64, ptr %i.p, align 8, !tbaa !97
  %i.cu = load i64, ptr %i.r, align 8, !tbaa !136
  %i.cv = add i64 %i.cu, %i.ct
  store i64 %i.cv, ptr %i.r, align 8, !tbaa !136
  %i.cw = invoke noundef i32 @_ZN6google8protobuf8compiler6csharp16MessageGenerator16GetPresenceIndexEPKNS0_15FieldDescriptorE(ptr noundef nonnull align 8 dereferenceable(53) %0, ptr noundef nonnull %i.as)
          to label %.noexc66 unwind label %bb.ah

.noexc66:                                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit65
  %i.cx = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp19SourceGeneratorBase7optionsEv(ptr noundef nonnull align 8 dereferenceable(53) %0)
          to label %.noexc67 unwind label %bb.ah

.noexc67:                                         ; preds = %.noexc66
  %i.cy = invoke noundef ptr @_ZN6google8protobuf8compiler6csharp20CreateFieldGeneratorEPKNS0_15FieldDescriptorEiPKNS2_7OptionsE(ptr noundef nonnull %i.as, i32 noundef %i.cw, ptr noundef %i.cx)
          to label %_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit unwind label %bb.ah ; 6 uses

_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit: ; preds = %.noexc67
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !19
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 72
  %i.db = load ptr, ptr %i.da, align 8
  invoke void %i.db(ptr noundef nonnull align 8 dereferenceable(64) %i.cy, ptr noundef nonnull %1, i1 noundef zeroext %2)
          to label %bb.u unwind label %bb.ai

bb.u:                                             ; preds = %_ZN6google8protobuf8compiler6csharp16MessageGenerator28CreateFieldGeneratorInternalEPKNS0_15FieldDescriptorE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #28
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %7, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2025051218container_internal11kEmptyGroupE, i64 16), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  invoke void @_ZN6google8protobuf2io7Printer5PrintIN4absl12lts_2025051213flat_hash_mapISt17basic_string_viewIcSt11char_traitsIcEESA_NS5_18container_internal10StringHashENSB_8StringEqESaISt4pairIKSA_SA_EEEEEEvRKT_SA_(ptr noundef nonnull align 16 dereferenceable(296) %1, ptr noundef nonnull align 8 dereferenceable(32) %7, i64 7, ptr nonnull @.str.53)
          to label %bb.w unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dc = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2025051218container_internal12raw_hash_setINS1_17FlatHashMapPolicyISt17basic_string_viewIcSt11char_traitsIcEES7_EENS1_10StringHashENS1_8StringEqESaISt4pairIKS7_S7_EEED2Ev(ptr noundef nonnull align 8 dereferenceable(32) %7) #28
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #28
  br label %_ZNSt10unique_ptrIN6google8protobuf8compiler6csharp18FieldGeneratorBaseESt14default_deleteIS4_EED2Ev.exit78

bb.w:                                             ; preds = %bb.u
  %i.dd = load i64, ptr %7, align 8, !tbaa !71    ; 2 uses
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %bb.z, label %bb.x

end_hunk_1
