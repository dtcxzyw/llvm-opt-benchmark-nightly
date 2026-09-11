Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/generated_message_tctable_gen?download=true
inline.NumInlined: 1028
inline.NumDeleted: 519
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
  %i.nd = select i1 %i.nb, i8 19, i8 20
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bt:                                            ; preds = %.critedge.i88, %.critedge.i88
  %i.ne = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc94 unwind label %.loopexit

.noexc94:                                         ; preds = %bb.bt
  br i1 %i.ne, label %bb.bu, label %bb.bv

bb.bu:                                            ; preds = %.noexc94
  %i.nf = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !20, !noalias !171
  %i.nh = icmp slt i32 %i.ng, 16
  %i.ni = select i1 %i.nh, i8 17, i8 18
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bv:                                            ; preds = %.noexc94
  %i.nj = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.nk = load i8, ptr %i.nj, align 1, !noalias !171
  %i.nl = and i8 %i.nk, 32
  %.not27.i.i = icmp eq i8 %i.nl, 0
  %i.nm = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.nn = load i32, ptr %i.nm, align 4, !tbaa !20, !noalias !171
  %i.no = icmp slt i32 %i.nn, 16                  ; 2 uses
  br i1 %.not27.i.i, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.np = select i1 %i.no, i8 15, i8 16
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bx:                                            ; preds = %bb.bv
  %i.nq = select i1 %i.no, i8 13, i8 14
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.by:                                            ; preds = %.critedge.i88
  %i.nr = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc95 unwind label %.loopexit

.noexc95:                                         ; preds = %bb.by
  br i1 %i.nr, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %.noexc95
  %i.ns = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.nt = load i32, ptr %i.ns, align 4, !tbaa !20, !noalias !171
  %i.nu = icmp slt i32 %i.nt, 16
  %i.nv = select i1 %i.nu, i8 29, i8 30
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ca:                                            ; preds = %.noexc95
  %i.nw = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.nx = load i8, ptr %i.nw, align 1, !noalias !171
  %i.ny = and i8 %i.nx, 32
  %.not26.i.i = icmp eq i8 %i.ny, 0
  %i.nz = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.oa = load i32, ptr %i.nz, align 4, !tbaa !20, !noalias !171
  %i.ob = icmp slt i32 %i.oa, 16                  ; 2 uses
  br i1 %.not26.i.i, label %bb.cc, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.oc = select i1 %i.ob, i8 27, i8 28
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cc:                                            ; preds = %bb.ca
  %i.od = select i1 %i.ob, i8 25, i8 26
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cd:                                            ; preds = %.critedge.i88, %.critedge.i88, %.critedge.i88
  %i.oe = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc96 unwind label %.loopexit

.noexc96:                                         ; preds = %bb.cd
  br i1 %i.oe, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %.noexc96
  %i.of = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.og = load i32, ptr %i.of, align 4, !tbaa !20, !noalias !171
  %i.oh = icmp slt i32 %i.og, 16
  %i.oi = select i1 %i.oh, i8 35, i8 36
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cf:                                            ; preds = %.noexc96
  %i.oj = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.ok = load i8, ptr %i.oj, align 1, !noalias !171
  %i.ol = and i8 %i.ok, 32
  %.not25.i.i = icmp eq i8 %i.ol, 0
  %i.om = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.on = load i32, ptr %i.om, align 4, !tbaa !20, !noalias !171
  %i.oo = icmp slt i32 %i.on, 16                  ; 2 uses
  br i1 %.not25.i.i, label %bb.ch, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.op = select i1 %i.oo, i8 33, i8 34
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ch:                                            ; preds = %bb.cf
  %i.oq = select i1 %i.oo, i8 31, i8 32
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ci:                                            ; preds = %.critedge.i88, %.critedge.i88, %.critedge.i88
  %i.or = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc97 unwind label %.loopexit

.noexc97:                                         ; preds = %bb.ci
  br i1 %i.or, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.noexc97
  %i.os = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ot = load i32, ptr %i.os, align 4, !tbaa !20, !noalias !171
  %i.ou = icmp slt i32 %i.ot, 16
  %i.ov = select i1 %i.ou, i8 41, i8 42
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ck:                                            ; preds = %.noexc97
  %i.ow = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.ox = load i8, ptr %i.ow, align 1, !noalias !171
  %i.oy = and i8 %i.ox, 32
  %.not24.i.i = icmp eq i8 %i.oy, 0
  %i.oz = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.pa = load i32, ptr %i.oz, align 4, !tbaa !20, !noalias !171
  %i.pb = icmp slt i32 %i.pa, 16                  ; 2 uses
  br i1 %.not24.i.i, label %bb.cm, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.pc = select i1 %i.pb, i8 39, i8 40
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cm:                                            ; preds = %bb.ck
  %i.pd = select i1 %i.pb, i8 37, i8 38
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cn:                                            ; preds = %.critedge.i88
  %i.pe = invoke noundef zeroext i1 @_ZN6google8protobuf8internal3cpp33HasPreservingUnknownEnumSemanticsEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.lm)
          to label %.noexc98 unwind label %.loopexit

.noexc98:                                         ; preds = %bb.cn
  br i1 %i.pe, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i, label %bb.co

bb.co:                                            ; preds = %.noexc98
  %i.pf = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc99 unwind label %.loopexit

.noexc99:                                         ; preds = %bb.co
  %.not.i.i46.i = icmp eq ptr %i.pf, null
  br i1 %.not.i.i46.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i, label %bb.cp

bb.cp:                                            ; preds = %.noexc99
  %i.pg = getelementptr inbounds nuw i8, ptr %i.lm, i64 32
  %i.ph = load ptr, ptr %i.pg, align 8, !tbaa !65, !noalias !171 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.ph, null
  br i1 %.not5.i.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.cp
  %i.pi = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.ph)
          to label %.noexc100 unwind label %.loopexit

.noexc100:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i
  %i.pj = icmp eq ptr %i.pi, %i.lm
  br i1 %i.pj, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i: ; preds = %.noexc100, %.noexc98
  %i.pk = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc101 unwind label %.loopexit

.noexc101:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i
  br i1 %i.pk, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %.noexc101
  %i.pl = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !20, !noalias !171
  %i.pn = icmp slt i32 %i.pm, 16
  %i.po = select i1 %i.pn, i8 11, i8 12
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cr:                                            ; preds = %.noexc101
  %i.pp = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.pq = load i8, ptr %i.pp, align 1, !noalias !171
  %i.pr = and i8 %i.pq, 32
  %.not23.i.i = icmp eq i8 %i.pr, 0
  %i.ps = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !tbaa !20, !noalias !171
  %i.pu = icmp slt i32 %i.pt, 16                  ; 2 uses
  br i1 %.not23.i.i, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.pv = select i1 %i.pu, i8 9, i8 10
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ct:                                            ; preds = %bb.cr
  %i.pw = select i1 %i.pu, i8 7, i8 8
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i: ; preds = %.noexc100, %bb.cp, %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !171
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !171
  %i.px = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i
  %i.py = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf8internal12_GLOBAL__N_122GetEnumValidationRangeEPKNS0_14EnumDescriptorERiS6_(ptr noundef %i.px, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc103.a unwind label %.loopexit

.noexc103.a:                                      ; preds = %.noexc102
  br i1 %i.py, label %bb.cu, label %bb.cw

bb.cu:                                            ; preds = %.noexc103.a
  %i.pz = load i32, ptr %i.b, align 4, !tbaa !8, !noalias !171 ; 2 uses
  %i.qa = icmp slt i32 %i.pz, 128
  %i.qb = load i32, ptr %i.a, align 4, !noalias !171 ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.qb, 2
  %or.cond4.i.i.i = select i1 %i.qa, i1 %or.cond.i.i.i, i1 false
  br i1 %or.cond4.i.i.i, label %bb.cv, label %16

bb.cv:                                            ; preds = %bb.cu
  %14 = trunc i32 %i.pz to i8                     ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !171
  %i.qc = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc104 unwind label %.loopexit ; 2 uses

.noexc104:                                        ; preds = %bb.cv
  %15 = icmp eq i32 %i.qb, 0
  br i1 %15, label %bb.df, label %bb.dk

bb.cw:                                            ; preds = %.noexc103.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !171
  %i.qd = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc105 unwind label %.loopexit

.noexc105:                                        ; preds = %bb.cw
  br i1 %i.qd, label %bb.cx, label %bb.cy

bb.cx:                                            ; preds = %.noexc105
  %i.qe = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.qf = load i32, ptr %i.qe, align 4, !tbaa !20, !noalias !171
  %i.qg = icmp slt i32 %i.qf, 16
  %i.qh = select i1 %i.qg, i8 47, i8 48
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cy:                                            ; preds = %.noexc105
  %i.qi = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.qj = load i8, ptr %i.qi, align 1, !noalias !171
  %i.qk = and i8 %i.qj, 32
  %.not19.i.i.a = icmp eq i8 %i.qk, 0
  %i.ql = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.qm = load i32, ptr %i.ql, align 4, !tbaa !20, !noalias !171
  %i.qn = icmp slt i32 %i.qm, 16                  ; 2 uses
  br i1 %.not19.i.i.a, label %bb.da, label %bb.cz

bb.cz:                                            ; preds = %bb.cy
  %i.qo = select i1 %i.qn, i8 45, i8 46
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.da:                                            ; preds = %bb.cy
  %i.qp = select i1 %i.qn, i8 43, i8 44
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

16:                                               ; preds = %bb.cu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !171
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !171
  %17 = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.lm)
          to label %.noexc106 unwind label %.loopexit

.noexc106:                                        ; preds = %16
  br i1 %17, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %.noexc106
  %i.qq = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.qr = load i32, ptr %i.qq, align 4, !tbaa !20, !noalias !171
  %i.qs = icmp slt i32 %i.qr, 16
  %i.qt = select i1 %i.qs, i8 53, i8 54
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dc:                                            ; preds = %.noexc106
  %i.qu = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.qv = load i8, ptr %i.qu, align 1, !noalias !171
  %i.qw = and i8 %i.qv, 32
  %.not20.i.i.a = icmp eq i8 %i.qw, 0
  %i.qx = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.qy = load i32, ptr %i.qx, align 4, !tbaa !20, !noalias !171
  %i.qz = icmp slt i32 %i.qy, 16                  ; 2 uses
  br i1 %.not20.i.i.a, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.ra = select i1 %i.qz, i8 51, i8 52
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.rb = select i1 %i.qz, i8 49, i8 50
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.df:                                            ; preds = %.noexc104
  br i1 %i.qc, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.rc = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.rd = load i32, ptr %i.rc, align 4, !tbaa !20, !noalias !171
  %i.re = icmp slt i32 %i.rd, 16
  %i.rf = select i1 %i.re, i8 59, i8 60
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dh:                                            ; preds = %bb.df
  %i.rg = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.rh = load i8, ptr %i.rg, align 1, !noalias !171
  %i.ri = and i8 %i.rh, 32
  %.not22.i.i = icmp eq i8 %i.ri, 0
  %i.rj = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.rk = load i32, ptr %i.rj, align 4, !tbaa !20, !noalias !171
  %i.rl = icmp slt i32 %i.rk, 16                  ; 2 uses
  br i1 %.not22.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.rm = select i1 %i.rl, i8 57, i8 58
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.rn = select i1 %i.rl, i8 55, i8 56
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dk:                                            ; preds = %.noexc104
  br i1 %i.qc, label %bb.dl, label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.ro = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.rp = load i32, ptr %i.ro, align 4, !tbaa !20, !noalias !171
  %i.rq = icmp slt i32 %i.rp, 16
  %i.rr = select i1 %i.rq, i8 65, i8 66
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dm:                                            ; preds = %bb.dk
  %i.rs = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.rt = load i8, ptr %i.rs, align 1, !noalias !171
  %i.ru = and i8 %i.rt, 32
  %.not21.i.i = icmp eq i8 %i.ru, 0
  %i.rv = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.rw = load i32, ptr %i.rv, align 4, !tbaa !20, !noalias !171
  %i.rx = icmp slt i32 %i.rw, 16                  ; 2 uses
  br i1 %.not21.i.i, label %bb.do, label %bb.dn

bb.dn:                                            ; preds = %bb.dm
  %i.ry = select i1 %i.rx, i8 63, i8 64
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.do:                                            ; preds = %bb.dm
  %i.rz = select i1 %i.rx, i8 61, i8 62
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dp:                                            ; preds = %.critedge.i88
  %i.sa = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.sb = load i8, ptr %i.sa, align 1, !noalias !171
  %i.sc = and i8 %i.sb, 7
  switch i8 %i.sc, label %bb.dv [
    i8 2, label %bb.dq
    i8 1, label %bb.dt
  ]

bb.dq:                                            ; preds = %bb.dp
  %i.sd = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.se = load i8, ptr %i.sd, align 1, !noalias !171
  %i.sf = and i8 %i.se, 32
  %.not17.i.i = icmp eq i8 %i.sf, 0
  %i.sg = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.sh = load i32, ptr %i.sg, align 4, !tbaa !20, !noalias !171
  %i.si = icmp slt i32 %i.sh, 16                  ; 2 uses
  br i1 %.not17.i.i, label %bb.ds, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.sj = select i1 %i.si, i8 81, i8 82
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ds:                                            ; preds = %bb.dq
  %i.sk = select i1 %i.si, i8 79, i8 80
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dt:                                            ; preds = %bb.dp
  %i.sl = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  %i.sm = load i8, ptr %i.sl, align 2, !tbaa !66, !range !40, !noalias !171, !noundef !41
  %i.sn = trunc nuw i8 %i.sm to i1
  br i1 %i.sn, label %bb.du, label %bb.dv

bb.du:                                            ; preds = %bb.dt
  %i.so = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.sp = load i32, ptr %i.so, align 4, !tbaa !20, !noalias !171
  %i.sq = icmp slt i32 %i.sp, 16
  %i.sr = select i1 %i.sq, i8 87, i8 88
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dv:                                            ; preds = %bb.dt, %bb.dp
  %i.ss = getelementptr inbounds nuw i8, ptr %i.ji, i64 18
  %i.st = load i8, ptr %i.ss, align 2, !tbaa !172, !range !40, !noalias !171, !noundef !41
  %i.su = trunc nuw i8 %i.st to i1
  br i1 %i.su, label %bb.dw, label %bb.dx

bb.dw:                                            ; preds = %bb.dv
  %i.sv = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.sw = load i32, ptr %i.sv, align 4, !tbaa !20, !noalias !171
  %i.sx = icmp slt i32 %i.sw, 16
  %i.sy = select i1 %i.sx, i8 75, i8 76
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dx:                                            ; preds = %bb.dv
  %i.sz = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.ta = load i8, ptr %i.sz, align 1, !noalias !171
  %i.tb = and i8 %i.ta, 32
  %.not18.i.i = icmp eq i8 %i.tb, 0
  %i.tc = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.td = load i32, ptr %i.tc, align 4, !tbaa !20, !noalias !171
  %i.te = icmp slt i32 %i.td, 16                  ; 2 uses
  br i1 %.not18.i.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  %i.tf = select i1 %i.te, i8 69, i8 70
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dz:                                            ; preds = %bb.dx
  %i.tg = select i1 %i.te, i8 67, i8 68
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ea:                                            ; preds = %.critedge.i88
  %i.th = getelementptr inbounds nuw i8, ptr %i.jh, i64 16
  %i.ti = load i8, ptr %i.th, align 8, !tbaa !63, !noalias !171
  switch i8 %i.ti, label %bb.fl [
    i8 0, label %bb.eb
    i8 2, label %bb.em
  ]

bb.eb:                                            ; preds = %bb.ea
  %i.tj = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.tk = load i8, ptr %i.tj, align 1, !noalias !171
  %i.tl = and i8 %i.tk, 7
  switch i8 %i.tl, label %bb.eh [
    i8 2, label %bb.ec
    i8 1, label %bb.ef
  ]

bb.ec:                                            ; preds = %bb.eb
  %i.tm = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.tn = load i8, ptr %i.tm, align 1, !noalias !171
  %i.to = and i8 %i.tn, 32
  %.not15.i.i = icmp eq i8 %i.to, 0
  %i.tp = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.tq = load i32, ptr %i.tp, align 4, !tbaa !20, !noalias !171
  %i.tr = icmp slt i32 %i.tq, 16                  ; 2 uses
  br i1 %.not15.i.i, label %bb.ee, label %bb.ed

bb.ed:                                            ; preds = %bb.ec
  %i.ts = select i1 %i.tr, i8 85, i8 86
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ee:                                            ; preds = %bb.ec
  %i.tt = select i1 %i.tr, i8 83, i8 84
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ef:                                            ; preds = %bb.eb
  %i.tu = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  %i.tv = load i8, ptr %i.tu, align 2, !tbaa !66, !range !40, !noalias !171, !noundef !41
  %i.tw = trunc nuw i8 %i.tv to i1
  br i1 %i.tw, label %bb.eg, label %bb.eh

bb.eg:                                            ; preds = %bb.ef
  %i.tx = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ty = load i32, ptr %i.tx, align 4, !tbaa !20, !noalias !171
  %i.tz = icmp slt i32 %i.ty, 16
  %i.ua = select i1 %i.tz, i8 89, i8 90
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.eh:                                            ; preds = %bb.ef, %bb.eb
  %i.ub = getelementptr inbounds nuw i8, ptr %i.ji, i64 18
  %i.uc = load i8, ptr %i.ub, align 2, !tbaa !172, !range !40, !noalias !171, !noundef !41
  %i.ud = trunc nuw i8 %i.uc to i1
  br i1 %i.ud, label %bb.ei, label %bb.ej

bb.ei:                                            ; preds = %bb.eh
  %i.ue = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.uf = load i32, ptr %i.ue, align 4, !tbaa !20, !noalias !171
  %i.ug = icmp slt i32 %i.uf, 16
  %i.uh = select i1 %i.ug, i8 77, i8 78
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ej:                                            ; preds = %bb.eh
  %i.ui = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.uj = load i8, ptr %i.ui, align 1, !noalias !171
  %i.uk = and i8 %i.uj, 32
  %.not16.i.i = icmp eq i8 %i.uk, 0
  %i.ul = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.um = load i32, ptr %i.ul, align 4, !tbaa !20, !noalias !171
  %i.un = icmp slt i32 %i.um, 16                  ; 2 uses
  br i1 %.not16.i.i, label %bb.el, label %bb.ek

bb.ek:                                            ; preds = %bb.ej
  %i.uo = select i1 %i.un, i8 73, i8 74
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.el:                                            ; preds = %bb.ej
  %i.up = select i1 %i.un, i8 71, i8 72
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.em:                                            ; preds = %bb.ea
  %i.uq = getelementptr inbounds nuw i8, ptr %i.lm, i64 3
  %i.ur = load i8, ptr %i.uq, align 1, !noalias !171
  %i.us = and i8 %i.ur, 7
  switch i8 %i.us, label %bb.es [
    i8 2, label %bb.en
    i8 1, label %bb.eq
  ]

bb.en:                                            ; preds = %bb.em
  %i.ut = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.uu = load i8, ptr %i.ut, align 1, !noalias !171
  %i.uv = and i8 %i.uu, 32
  %.not13.i.i = icmp eq i8 %i.uv, 0
  %i.uw = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ux = load i32, ptr %i.uw, align 4, !tbaa !20, !noalias !171
  %i.uy = icmp slt i32 %i.ux, 16                  ; 2 uses
  br i1 %.not13.i.i, label %bb.ep, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.uz = select i1 %i.uy, i8 81, i8 82
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ep:                                            ; preds = %bb.en
  %i.va = select i1 %i.uy, i8 79, i8 80
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.eq:                                            ; preds = %bb.em
  %i.vb = getelementptr inbounds nuw i8, ptr %i.ji, i64 22
  %i.vc = load i8, ptr %i.vb, align 2, !tbaa !66, !range !40, !noalias !171, !noundef !41
  %i.vd = trunc nuw i8 %i.vc to i1
  br i1 %i.vd, label %bb.er, label %bb.es

bb.er:                                            ; preds = %bb.eq
  %i.ve = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.vf = load i32, ptr %i.ve, align 4, !tbaa !20, !noalias !171
  %i.vg = icmp slt i32 %i.vf, 16
  %i.vh = select i1 %i.vg, i8 87, i8 88
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.es:                                            ; preds = %bb.eq, %bb.em
  %i.vi = getelementptr inbounds nuw i8, ptr %i.ji, i64 18
  %i.vj = load i8, ptr %i.vi, align 2, !tbaa !172, !range !40, !noalias !171, !noundef !41
  %i.vk = trunc nuw i8 %i.vj to i1
  br i1 %i.vk, label %bb.et, label %bb.eu

bb.et:                                            ; preds = %bb.es
  %i.vl = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.vm = load i32, ptr %i.vl, align 4, !tbaa !20, !noalias !171
  %i.vn = icmp slt i32 %i.vm, 16
  %i.vo = select i1 %i.vn, i8 75, i8 76
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.eu:                                            ; preds = %bb.es
  %i.vp = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.vq = load i8, ptr %i.vp, align 1, !noalias !171
  %i.vr = and i8 %i.vq, 32
  %.not14.i.i = icmp eq i8 %i.vr, 0
  %i.vs = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.vt = load i32, ptr %i.vs, align 4, !tbaa !20, !noalias !171
  %i.vu = icmp slt i32 %i.vt, 16                  ; 2 uses
  br i1 %.not14.i.i, label %bb.ew, label %bb.ev

bb.ev:                                            ; preds = %bb.eu
  %i.vv = select i1 %i.vu, i8 69, i8 70
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ew:                                            ; preds = %bb.eu
  %i.vw = select i1 %i.vu, i8 67, i8 68
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i: ; preds = %.critedge.i88
  %.val.i.i = load i16, ptr %i.kb, align 8, !noalias !171
  %i.vx = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.vy = load i8, ptr %i.vx, align 1, !noalias !171
  %i.vz = and i8 %i.vy, 32
  %.not.i129.i.i = icmp eq i8 %i.vz, 0            ; 3 uses
  %i.wa = icmp ne i16 %.val.i.i, 0
  %spec.select.i.i.i = select i1 %.not.i129.i.i, i1 %i.wa, i1 false
  br i1 %spec.select.i.i.i, label %bb.ex, label %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i

bb.ex:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i
  %i.wb = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.wc = load i32, ptr %i.wb, align 4, !tbaa !20, !noalias !171
  %i.wd = icmp slt i32 %i.wc, 16
  %i.we = select i1 %i.wd, i8 107, i8 108
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i45.i
  %i.wf = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.wg = load i8, ptr %i.wf, align 4, !tbaa !55, !range !40, !noalias !171, !noundef !41
  %i.wh = trunc nuw i8 %i.wg to i1
  %i.wi = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.wj = load i32, ptr %i.wi, align 4, !tbaa !20, !noalias !171
  %i.wk = icmp slt i32 %i.wj, 16                  ; 4 uses
  br i1 %i.wh, label %bb.ey, label %bb.fb

bb.ey:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i
  br i1 %.not.i129.i.i, label %bb.fa, label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.wl = select i1 %i.wk, i8 105, i8 106
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fa:                                            ; preds = %bb.ey
  %i.wm = select i1 %i.wk, i8 103, i8 104
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fb:                                            ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.thread.i.i
  br i1 %.not.i129.i.i, label %bb.fd, label %bb.fc

bb.fc:                                            ; preds = %bb.fb
  %i.wn = select i1 %i.wk, i8 101, i8 102
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fd:                                            ; preds = %bb.fb
  %i.wo = select i1 %i.wk, i8 99, i8 100
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fe:                                            ; preds = %.critedge.i88
  %i.wp = getelementptr inbounds nuw i8, ptr %i.ji, i64 20
  %i.wq = load i8, ptr %i.wp, align 4, !tbaa !55, !range !40, !noalias !171, !noundef !41
  %i.wr = trunc nuw i8 %i.wq to i1
  %i.ws = getelementptr inbounds nuw i8, ptr %i.lm, i64 1
  %i.wt = load i8, ptr %i.ws, align 1, !noalias !171
  %i.wu = and i8 %i.wt, 32
  %.not10.i.i = icmp eq i8 %i.wu, 0               ; 2 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.lm, i64 4
  %i.ww = load i32, ptr %i.wv, align 4, !tbaa !20, !noalias !171
  %i.wx = icmp slt i32 %i.ww, 16                  ; 4 uses
  br i1 %i.wr, label %bb.ff, label %bb.fi

bb.ff:                                            ; preds = %bb.fe
  br i1 %.not10.i.i, label %bb.fh, label %bb.fg

bb.fg:                                            ; preds = %bb.ff
  %i.wy = select i1 %i.wx, i8 97, i8 98
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fh:                                            ; preds = %bb.ff
  %i.wz = select i1 %i.wx, i8 95, i8 96
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fi:                                            ; preds = %bb.fe
  br i1 %.not10.i.i, label %bb.fk, label %bb.fj

bb.fj:                                            ; preds = %bb.fi
  %i.xa = select i1 %i.wx, i8 93, i8 94
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fk:                                            ; preds = %bb.fi
  %i.xb = select i1 %i.wx, i8 91, i8 92
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.fl:                                            ; preds = %bb.ea, %.critedge.i88
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19, !noalias !171
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef nonnull @.str.1, i32 noundef 239, ptr noundef nonnull @.str.12) #20
          to label %.noexc107 unwind label %.loopexit.split-lp

.noexc107:                                        ; preds = %bb.fl
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %5)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i unwind label %bb.fm, !noalias !171

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit.i.i: ; preds = %.noexc107
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21, !noalias !171
  unreachable

bb.fm:                                            ; preds = %.noexc107
  %i.xc = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %5) #21, !noalias !171
  unreachable

_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i: ; preds = %bb.fk, %bb.fj, %bb.fh, %bb.fg, %bb.fd, %bb.fc, %bb.fa, %bb.ez, %bb.ex, %bb.ew, %bb.ev, %bb.et, %bb.er, %bb.ep, %bb.eo, %bb.el, %bb.ek, %bb.ei, %bb.eg, %bb.ee, %bb.ed, %bb.dz, %bb.dy, %bb.dw, %bb.du, %bb.ds, %bb.dr, %bb.do, %bb.dn, %bb.dl, %bb.dj, %bb.di, %bb.dg, %bb.de, %bb.dd, %bb.db, %bb.da, %bb.cz, %bb.cx, %bb.ct, %bb.cs, %bb.cq, %bb.cm, %bb.cl, %bb.cj, %bb.ch, %bb.cg, %bb.ce, %bb.cc, %bb.cb, %bb.bz, %bb.bx, %bb.bw, %bb.bu, %bb.bs, %bb.br, %bb.bp, %bb.bn, %bb.bm, %bb.bk, %bb.bi, %bb.bh, %bb.bf
  %.sroa.51.0.i = phi i8 [ %i.lo, %bb.bf ], [ %i.lo, %bb.bi ], [ %i.lo, %bb.bh ], [ %i.lo, %bb.bk ], [ %i.lo, %bb.bn ], [ %i.lo, %bb.bm ], [ %i.lo, %bb.bp ], [ %i.lo, %bb.bs ], [ %i.lo, %bb.br ], [ %i.lo, %bb.bu ], [ %i.lo, %bb.bx ], [ %i.lo, %bb.bw ], [ %i.lo, %bb.bz ], [ %i.lo, %bb.cc ], [ %i.lo, %bb.cb ], [ %i.lo, %bb.ce ], [ %i.lo, %bb.ch ], [ %i.lo, %bb.cg ], [ %i.lo, %bb.cj ], [ %i.lo, %bb.cm ], [ %i.lo, %bb.cl ], [ %i.lo, %bb.cq ], [ %i.lo, %bb.ct ], [ %i.lo, %bb.cs ], [ %14, %bb.dg ], [ %14, %bb.dj ], [ %14, %bb.di ], [ %14, %bb.dl ], [ %14, %bb.do ], [ %14, %bb.dn ], [ %i.lo, %bb.db ], [ %i.lo, %bb.de ], [ %i.lo, %bb.dd ], [ %i.lo, %bb.cx ], [ %i.lo, %bb.da ], [ %i.lo, %bb.cz ], [ %i.lo, %bb.dw ], [ %i.lo, %bb.dz ], [ %i.lo, %bb.dy ], [ %i.lo, %bb.ds ], [ %i.lo, %bb.dr ], [ %i.lo, %bb.du ], [ %i.lo, %bb.ei ], [ %i.lo, %bb.el ], [ %i.lo, %bb.ek ], [ %i.lo, %bb.ee ], [ %i.lo, %bb.ed ], [ %i.lo, %bb.eg ], [ %i.lo, %bb.et ], [ %i.lo, %bb.ew ], [ %i.lo, %bb.ev ], [ %i.lo, %bb.ep ], [ %i.lo, %bb.eo ], [ %i.lo, %bb.er ], [ %i.lo, %bb.ex ], [ %i.lo, %bb.fa ], [ %i.lo, %bb.ez ], [ %i.lo, %bb.fd ], [ %i.lo, %bb.fc ], [ %i.lo, %bb.fh ], [ %i.lo, %bb.fg ], [ %i.lo, %bb.fk ], [ %i.lo, %bb.fj ]
  %.0.ph.i.i = phi i8 [ %i.lv, %bb.bf ], [ %i.md, %bb.bi ], [ %i.mc, %bb.bh ], [ %i.mi, %bb.bk ], [ %i.mq, %bb.bn ], [ %i.mp, %bb.bm ], [ %i.mv, %bb.bp ], [ %i.nd, %bb.bs ], [ %i.nc, %bb.br ], [ %i.ni, %bb.bu ], [ %i.nq, %bb.bx ], [ %i.np, %bb.bw ], [ %i.nv, %bb.bz ], [ %i.od, %bb.cc ], [ %i.oc, %bb.cb ], [ %i.oi, %bb.ce ], [ %i.oq, %bb.ch ], [ %i.op, %bb.cg ], [ %i.ov, %bb.cj ], [ %i.pd, %bb.cm ], [ %i.pc, %bb.cl ], [ %i.po, %bb.cq ], [ %i.pw, %bb.ct ], [ %i.pv, %bb.cs ], [ %i.rf, %bb.dg ], [ %i.rn, %bb.dj ], [ %i.rm, %bb.di ], [ %i.rr, %bb.dl ], [ %i.rz, %bb.do ], [ %i.ry, %bb.dn ], [ %i.qt, %bb.db ], [ %i.rb, %bb.de ], [ %i.ra, %bb.dd ], [ %i.qh, %bb.cx ], [ %i.qp, %bb.da ], [ %i.qo, %bb.cz ], [ %i.sy, %bb.dw ], [ %i.tg, %bb.dz ], [ %i.tf, %bb.dy ], [ %i.sk, %bb.ds ], [ %i.sj, %bb.dr ], [ %i.sr, %bb.du ], [ %i.uh, %bb.ei ], [ %i.up, %bb.el ], [ %i.uo, %bb.ek ], [ %i.tt, %bb.ee ], [ %i.ts, %bb.ed ], [ %i.ua, %bb.eg ], [ %i.vo, %bb.et ], [ %i.vw, %bb.ew ], [ %i.vv, %bb.ev ], [ %i.va, %bb.ep ], [ %i.uz, %bb.eo ], [ %i.vh, %bb.er ], [ %i.we, %bb.ex ], [ %i.wm, %bb.fa ], [ %i.wl, %bb.ez ], [ %i.wo, %bb.fd ], [ %i.wn, %bb.fc ], [ %i.wz, %bb.fh ], [ %i.wy, %bb.fg ], [ %i.xb, %bb.fk ], [ %i.xa, %bb.fj ]
  %i.xd = getelementptr inbounds nuw i8, ptr %i.ji, i64 12
  %i.xe = load float, ptr %i.xd, align 4, !tbaa !56, !noalias !171 ; 2 uses
  store i8 %.0.ph.i.i, ptr %i.le, align 16, !tbaa !168
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(18) %.sroa.5.0..sroa_idx.i, i8 0, i64 18, i1 false)
  %.sroa.51.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 19
  store i8 %.sroa.51.0.i, ptr %.sroa.51.0..sroa_idx.i, align 1, !tbaa !39
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.le, i64 20
  store float %i.xe, ptr %.sroa.7.0..sroa_idx.i, align 4, !tbaa !173
  store i8 1, ptr %i.lf, align 8, !tbaa !167
  %i.xf = getelementptr inbounds nuw i8, ptr %i.le, i64 8
  store ptr %i.jj, ptr %i.xf, align 8, !tbaa !174
  %i.xg = trunc i32 %.0.i.i.i to i16
  %i.xh = getelementptr inbounds nuw i8, ptr %i.le, i64 16
  store i16 %i.xg, ptr %i.xh, align 16, !tbaa !175
  %i.xi = load i32, ptr %i.kl, align 8, !tbaa !64 ; 2 uses
  %i.xj = icmp sgt i32 %i.xi, -1
  %i.xk = trunc i32 %i.xi to i8
  %i.xl = select i1 %i.xj, i8 %i.xk, i8 63
  %i.xm = getelementptr inbounds nuw i8, ptr %i.le, i64 18
  store i8 %i.xl, ptr %i.xm, align 2, !tbaa !176
  %i.xn = fcmp oge float %i.xe, 5.000000e-02
  %i.xo = zext i1 %i.xn to i32
  %i.xp = shl nuw i32 %i.xo, %i.lc
  %i.xq = or i32 %i.xp, %.2
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i

_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i: ; preds = %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i, %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i, %bb.bd, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i, %_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i, %bb.az, %bb.ay
  %.3 = phi i32 [ %.2, %bb.az ], [ %.2, %_ZN6google8protobuf8internal33IsFieldTypeEligibleForFastParsingEPKNS0_15FieldDescriptorE.exit.i.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.i.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit17.thread.i.i ], [ %i.xq, %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i ], [ %.2, %bb.bd ], [ %.2, %_ZN6google8protobuf8internal27GetRecodedTagForFastParsingEPKNS0_15FieldDescriptorE.exit.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i ], [ %.2, %_ZN6google8protobuf8internal12_GLOBAL__N_110HasLazyRepEPKNS0_15FieldDescriptorERKNS1_17TailCallTableInfo12FieldOptionsE.exit.i.i ], [ %.2, %bb.ay ] ; 2 uses
  %i.xr = add nuw i64 %.022.i, 1                  ; 2 uses
  %i.xs = load ptr, ptr %i.fm, align 8, !tbaa !45
  %i.xt = load ptr, ptr %i.d, align 8, !tbaa !44  ; 2 uses
  %i.xu = ptrtoint ptr %i.xs to i64
  %i.xv = ptrtoint ptr %i.xt to i64
  %i.xw = sub i64 %i.xu, %i.xv
  %i.xx = sdiv exact i64 %i.xw, 24
  %i.xy = icmp ult i64 %i.xr, %i.xx
  br i1 %i.xy, label %bb.ay, label %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit, !llvm.loop !145

_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit: ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i, %bb.ax
  %.4 = phi i32 [ %.1, %bb.ax ], [ %.3, %_ZN6google8protobuf8internal12_GLOBAL__N_129IsFieldEligibleForFastParsingERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.thread.i ] ; 4 uses
  %i.xz = icmp ugt i32 %i.ih, 1
  br i1 %i.xz, label %.lr.ph216, label %.critedge

.lr.ph216:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit
  %i.ya = lshr i64 %i.ii, 1                       ; 6 uses
  %i.yb = trunc nuw nsw i64 %i.ya to i32
  %i.yc = lshr i32 %.4, %i.yb                     ; 2 uses
  %i.yd = and i32 %i.yc, %.4
  %i.ye = icmp eq i32 %i.yd, 0
  br i1 %i.ye, label %.preheader, label %.critedge

.preheader:                                       ; preds = %.lr.ph216
  %.not219 = icmp eq i64 %i.ya, 0
  br i1 %.not219, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.gd, %.preheader
  %i.yf = or i32 %i.yc, %.4                       ; 4 uses
  %i.yg = icmp ugt i32 %i.ih, 3
  br i1 %i.yg, label %.lr.ph216.1, label %.critedge

.lr.ph216.1:                                      ; preds = %._crit_edge
  %i.yh = lshr i64 %i.ii, 2                       ; 6 uses
  %i.yi = trunc nuw nsw i64 %i.yh to i32
  %i.yj = lshr i32 %i.yf, %i.yi                   ; 2 uses
  %i.yk = and i32 %i.yj, %i.yf
  %i.yl = icmp eq i32 %i.yk, 0
  br i1 %i.yl, label %.preheader.1, label %.critedge

.preheader.1:                                     ; preds = %.lr.ph216.1
  %.not219.1 = icmp eq i64 %i.yh, 0
  br i1 %.not219.1, label %._crit_edge.1, label %.lr.ph.1

.lr.ph.1:                                         ; preds = %.preheader.1, %bb.fp
  %.060213.1 = phi i64 [ %i.yw, %bb.fp ], [ 0, %.preheader.1 ] ; 4 uses
  %i.ym = add nuw nsw i64 %.060213.1, %i.yh       ; 2 uses
  %i.yn = trunc nuw i64 %i.ym to i32
  %i.yo = shl nuw i32 1, %i.yn
  %i.yp = and i32 %i.yo, %i.yf
  %.not69.1 = icmp eq i32 %i.yp, 0
  br i1 %.not69.1, label %bb.fn, label %bb.fo

bb.fn:                                            ; preds = %.lr.ph.1
  %i.yq = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.1
  %i.yr = getelementptr inbounds nuw i8, ptr %i.yq, i64 24
  %i.ys = load i8, ptr %i.yr, align 8, !tbaa !167
  %i.yt = icmp eq i8 %i.ys, 0
  br i1 %i.yt, label %bb.fo, label %bb.fp

bb.fo:                                            ; preds = %bb.fn, %.lr.ph.1
  %i.yu = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %i.ym
  %i.yv = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.yv, ptr noundef nonnull align 16 dereferenceable(32) %i.yu, i64 32, i1 false)
  br label %bb.fp

bb.fp:                                            ; preds = %bb.fo, %bb.fn
  %i.yw = add nuw nsw i64 %.060213.1, 1           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.yw, %i.yh
  br i1 %exitcond.not.1, label %._crit_edge.1, label %.lr.ph.1, !llvm.loop !146

._crit_edge.1:                                    ; preds = %bb.fp, %.preheader.1
  %i.yx = or i32 %i.yj, %i.yf                     ; 4 uses
  %i.yy = icmp ugt i32 %i.ih, 7
  br i1 %i.yy, label %.lr.ph216.2, label %.critedge

.lr.ph216.2:                                      ; preds = %._crit_edge.1
  %i.yz = lshr i64 %i.ii, 3                       ; 6 uses
  %i.za = trunc nuw nsw i64 %i.yz to i32
  %i.zb = lshr i32 %i.yx, %i.za                   ; 2 uses
  %i.zc = and i32 %i.zb, %i.yx
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %.preheader.2, label %.critedge

.preheader.2:                                     ; preds = %.lr.ph216.2
  %.not219.2 = icmp eq i64 %i.yz, 0
  br i1 %.not219.2, label %._crit_edge.2, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.preheader.2, %bb.fs
  %.060213.2 = phi i64 [ %i.zo, %bb.fs ], [ 0, %.preheader.2 ] ; 4 uses
  %i.ze = add nuw nsw i64 %.060213.2, %i.yz       ; 2 uses
  %i.zf = trunc nuw i64 %i.ze to i32
  %i.zg = shl nuw i32 1, %i.zf
  %i.zh = and i32 %i.zg, %i.yx
  %.not69.2 = icmp eq i32 %i.zh, 0
  br i1 %.not69.2, label %bb.fq, label %bb.fr

bb.fq:                                            ; preds = %.lr.ph.2
  %i.zi = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.2
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 24
  %i.zk = load i8, ptr %i.zj, align 8, !tbaa !167
  %i.zl = icmp eq i8 %i.zk, 0
  br i1 %i.zl, label %bb.fr, label %bb.fs

bb.fr:                                            ; preds = %bb.fq, %.lr.ph.2
  %i.zm = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %i.ze
  %i.zn = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.zn, ptr noundef nonnull align 16 dereferenceable(32) %i.zm, i64 32, i1 false)
  br label %bb.fs

bb.fs:                                            ; preds = %bb.fr, %bb.fq
  %i.zo = add nuw nsw i64 %.060213.2, 1           ; 2 uses
  %exitcond.not.2 = icmp eq i64 %i.zo, %i.yz
  br i1 %exitcond.not.2, label %._crit_edge.2, label %.lr.ph.2, !llvm.loop !146

._crit_edge.2:                                    ; preds = %bb.fs, %.preheader.2
  %i.zp = or i32 %i.zb, %i.yx                     ; 4 uses
  %i.zq = icmp ugt i32 %i.ih, 15
  br i1 %i.zq, label %.lr.ph216.3, label %.critedge

.lr.ph216.3:                                      ; preds = %._crit_edge.2
  %i.zr = lshr i64 %i.ii, 4                       ; 6 uses
  %i.zs = trunc nuw nsw i64 %i.zr to i32
  %i.zt = lshr i32 %i.zp, %i.zs                   ; 2 uses
  %i.zu = and i32 %i.zt, %i.zp
  %i.zv = icmp eq i32 %i.zu, 0
  br i1 %i.zv, label %.preheader.3, label %.critedge

.preheader.3:                                     ; preds = %.lr.ph216.3
  %.not219.3 = icmp eq i64 %i.zr, 0
  br i1 %.not219.3, label %._crit_edge.3, label %.lr.ph.3

.lr.ph.3:                                         ; preds = %.preheader.3, %bb.fv
  %.060213.3 = phi i64 [ %i.aag, %bb.fv ], [ 0, %.preheader.3 ] ; 4 uses
  %i.zw = add nuw nsw i64 %.060213.3, %i.zr       ; 2 uses
  %i.zx = trunc nuw i64 %i.zw to i32
  %i.zy = shl nuw i32 1, %i.zx
  %i.zz = and i32 %i.zy, %i.zp
  %.not69.3 = icmp eq i32 %i.zz, 0
  br i1 %.not69.3, label %bb.ft, label %bb.fu

bb.ft:                                            ; preds = %.lr.ph.3
  %i.aaa = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.3
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 24
  %i.aac = load i8, ptr %i.aab, align 8, !tbaa !167
  %i.aad = icmp eq i8 %i.aac, 0
  br i1 %i.aad, label %bb.fu, label %bb.fv

bb.fu:                                            ; preds = %bb.ft, %.lr.ph.3
  %i.aae = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %i.zw
  %i.aaf = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aaf, ptr noundef nonnull align 16 dereferenceable(32) %i.aae, i64 32, i1 false)
  br label %bb.fv

bb.fv:                                            ; preds = %bb.fu, %bb.ft
  %i.aag = add nuw nsw i64 %.060213.3, 1          ; 2 uses
  %exitcond.not.3 = icmp eq i64 %i.aag, %i.zr
  br i1 %exitcond.not.3, label %._crit_edge.3, label %.lr.ph.3, !llvm.loop !146

._crit_edge.3:                                    ; preds = %bb.fv, %.preheader.3
  %i.aah = or i32 %i.zt, %i.zp                    ; 3 uses
  %i.aai = icmp ugt i32 %i.ih, 31
  br i1 %i.aai, label %.lr.ph216.4, label %.critedge

.lr.ph216.4:                                      ; preds = %._crit_edge.3
  %i.aaj = lshr i64 %i.ii, 5                      ; 6 uses
  %i.aak = trunc nuw nsw i64 %i.aaj to i32
  %i.aal = lshr i32 %i.aah, %i.aak
  %i.aam = and i32 %i.aal, %i.aah
  %i.aan = icmp eq i32 %i.aam, 0
  br i1 %i.aan, label %.preheader.4, label %.critedge

.preheader.4:                                     ; preds = %.lr.ph216.4
  %.not219.4 = icmp eq i64 %i.aaj, 0
  br i1 %.not219.4, label %.critedge, label %.lr.ph.4

.lr.ph.4:                                         ; preds = %.preheader.4, %bb.fy
  %.060213.4 = phi i64 [ %i.aay, %bb.fy ], [ 0, %.preheader.4 ] ; 4 uses
  %i.aao = add nuw nsw i64 %.060213.4, %i.aaj     ; 2 uses
  %i.aap = trunc nuw i64 %i.aao to i32
  %i.aaq = shl nuw i32 1, %i.aap
  %i.aar = and i32 %i.aaq, %i.aah
  %.not69.4 = icmp eq i32 %i.aar, 0
  br i1 %.not69.4, label %bb.fw, label %bb.fx

bb.fw:                                            ; preds = %.lr.ph.4
  %i.aas = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.4
  %i.aat = getelementptr inbounds nuw i8, ptr %i.aas, i64 24
  %i.aau = load i8, ptr %i.aat, align 8, !tbaa !167
  %i.aav = icmp eq i8 %i.aau, 0
  br i1 %i.aav, label %bb.fx, label %bb.fy

bb.fx:                                            ; preds = %bb.fw, %.lr.ph.4
  %i.aaw = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %i.aao
  %i.aax = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213.4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.aax, ptr noundef nonnull align 16 dereferenceable(32) %i.aaw, i64 32, i1 false)
  br label %bb.fy

bb.fy:                                            ; preds = %bb.fx, %bb.fw
  %i.aay = add nuw nsw i64 %.060213.4, 1          ; 2 uses
  %exitcond.not.4 = icmp eq i64 %i.aay, %i.aaj
  br i1 %exitcond.not.4, label %.critedge, label %.lr.ph.4, !llvm.loop !146

bb.fz:                                            ; preds = %.thread
  %i.aaz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  br label %bb.gv

bb.ga:                                            ; preds = %bb.ar
  %i.aba = landingpad { ptr, i32 }
          cleanup
  br label %bb.gv

.loopexit:                                        ; preds = %bb.bb, %bb.be, %bb.bj, %bb.bo, %bb.bt, %bb.by, %bb.cd, %bb.ci, %bb.cn, %bb.co, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i, %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i, %.noexc102, %bb.cv, %bb.cw, %16
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

.loopexit.split-lp:                               ; preds = %bb.fl, %.critedge
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

.lr.ph:                                           ; preds = %.preheader, %bb.gd
  %.060213 = phi i64 [ %i.abl, %bb.gd ], [ 0, %.preheader ] ; 4 uses
  %i.abb = add nuw nsw i64 %.060213, %i.ya        ; 2 uses
  %i.abc = trunc nuw i64 %i.abb to i32
  %i.abd = shl nuw i32 1, %i.abc
  %i.abe = and i32 %i.abd, %.4
  %.not69 = icmp eq i32 %i.abe, 0
  br i1 %.not69, label %bb.gb, label %bb.gc

bb.gb:                                            ; preds = %.lr.ph
  %i.abf = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213
  %i.abg = getelementptr inbounds nuw i8, ptr %i.abf, i64 24
  %i.abh = load i8, ptr %i.abg, align 8, !tbaa !167
  %i.abi = icmp eq i8 %i.abh, 0
  br i1 %i.abi, label %bb.gc, label %bb.gd

bb.gc:                                            ; preds = %bb.gb, %.lr.ph
  %i.abj = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %i.abb
  %i.abk = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.060213
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.abk, ptr noundef nonnull align 16 dereferenceable(32) %i.abj, i64 32, i1 false)
  br label %bb.gd

bb.gd:                                            ; preds = %bb.gc, %bb.gb
  %i.abl = add nuw nsw i64 %.060213, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.abl, %i.ya
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !146

.critedge:                                        ; preds = %.lr.ph216, %._crit_edge, %.lr.ph216.1, %._crit_edge.1, %.lr.ph216.2, %._crit_edge.2, %.lr.ph216.3, %._crit_edge.3, %.lr.ph216.4, %bb.fy, %.preheader.4, %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit
  %.061.lcssa = phi i64 [ %i.ii, %_ZN6google8protobuf8internal12_GLOBAL__N_118PopulateFastFieldsESt8optionalIjERKSt6vectorINS1_17TailCallTableInfo14FieldEntryInfoESaIS7_EERKNS6_14MessageOptionsEN4absl12lts_202505124SpanIKNS6_12FieldOptionsEEENSH_INS6_13FastFieldInfoEEERj.exit ], [ %i.ya, %._crit_edge ], [ %i.ii, %.lr.ph216 ], [ %i.ya, %.lr.ph216.1 ], [ %i.yh, %._crit_edge.1 ], [ %i.yh, %.lr.ph216.2 ], [ %i.yz, %._crit_edge.2 ], [ %i.yz, %.lr.ph216.3 ], [ %i.zr, %._crit_edge.3 ], [ %i.zr, %.lr.ph216.4 ], [ %i.aaj, %bb.fy ], [ %i.aaj, %.preheader.4 ] ; 2 uses
  %i.abm = getelementptr inbounds nuw [32 x i8], ptr %10, i64 %.061.lcssa
  invoke void @_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE13_M_assign_auxIPS4_EEvT_S9_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull %10, ptr noundef nonnull %i.abm)
          to label %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit unwind label %.loopexit.split-lp

_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit: ; preds = %.critedge
  %i.abn = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %.061.lcssa, i1 false)
  %i.abo = trunc nuw nsw i64 %i.abn to i32
  %i.abp = sub nsw i32 63, %i.abo
  %i.abq = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i32 %i.abp, ptr %i.abq, align 8, !tbaa !163
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  invoke fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_119MakeNumToEntryTableEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo12FieldOptionsEEE(ptr dead_on_unwind noalias writable align 8 %11, ptr %3, i64 %4)
          to label %bb.ge unwind label %bb.gl

bb.ge:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit
  %i.abr = load i32, ptr %11, align 8, !tbaa !88
  store i32 %i.abr, ptr %i.f, align 8, !tbaa !88
  %i.abs = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 4 uses
  %i.abt = load ptr, ptr %i.g, align 8, !tbaa !89 ; 5 uses
  %i.abu = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.abv = load ptr, ptr %i.abu, align 8, !tbaa !90 ; 2 uses
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.abx = load ptr, ptr %i.abw, align 8, !tbaa !91
  %i.aby = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.abz = load <2 x ptr>, ptr %i.abs, align 8, !tbaa !92
  store <2 x ptr> %i.abz, ptr %i.g, align 8, !tbaa !92
  %i.aca = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 2 uses
  %i.acb = load ptr, ptr %i.aca, align 8, !tbaa !91
  store ptr %i.acb, ptr %i.abw, align 8, !tbaa !91
  %.not4.i.i.i.i.i.i109 = icmp eq ptr %i.abt, %i.abv
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.abs, i8 0, i64 24, i1 false)
  br i1 %.not4.i.i.i.i.i.i109, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i110

.lr.ph.i.i.i.i.i.i110:                            ; preds = %bb.ge, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113
  %.05.i.i.i.i.i.i111 = phi ptr [ %i.acj, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113 ], [ %i.abt, %bb.ge ] ; 3 uses
  %i.acc = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i111, i64 8
  %i.acd = load ptr, ptr %i.acc, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i112 = icmp eq ptr %i.acd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i112, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113, label %bb.gf

bb.gf:                                            ; preds = %.lr.ph.i.i.i.i.i.i110
  %i.ace = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i111, i64 24
  %i.acf = load ptr, ptr %i.ace, align 8, !tbaa !96
  %i.acg = ptrtoint ptr %i.acf to i64
  %i.ach = ptrtoint ptr %i.acd to i64
  %i.aci = sub i64 %i.acg, %i.ach
  call void @_ZdlPvm(ptr noundef nonnull %i.acd, i64 noundef %i.aci) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113: ; preds = %bb.gf, %.lr.ph.i.i.i.i.i.i110
  %i.acj = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i.i.i111, i64 32 ; 2 uses
  %.not.i.i.i.i.i.i114 = icmp eq ptr %i.acj, %i.abv
  br i1 %.not.i.i.i.i.i.i114, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115, label %.lr.ph.i.i.i.i.i.i110, !llvm.loop !1

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i.i.i113, %bb.ge
  %.not.i.i1.i.i.i.i116 = icmp eq ptr %i.abt, null
  br i1 %.not.i.i1.i.i.i.i116, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117, label %bb.gg

bb.gg:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115
  %i.ack = ptrtoint ptr %i.abx to i64
  %i.acl = ptrtoint ptr %i.abt to i64
  %i.acm = sub i64 %i.ack, %i.acl
  call void @_ZdlPvm(ptr noundef nonnull %i.abt, i64 noundef %i.acm) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i.i.i115, %bb.gg
  %i.acn = load ptr, ptr %i.abs, align 8, !tbaa !89 ; 3 uses
  %i.aco = load ptr, ptr %i.aby, align 8, !tbaa !90 ; 2 uses
  %.not4.i.i.i.i118 = icmp eq ptr %i.acn, %i.aco
  br i1 %.not4.i.i.i.i118, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126, label %.lr.ph.i.i.i.i119

.lr.ph.i.i.i.i119:                                ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122
  %.05.i.i.i.i120 = phi ptr [ %i.acw, %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122 ], [ %i.acn, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117 ] ; 3 uses
  %i.acp = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 8
  %i.acq = load ptr, ptr %i.acp, align 8, !tbaa !95 ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i121 = icmp eq ptr %i.acq, null
  br i1 %.not.i.i.i.i.i.i.i.i.i121, label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122, label %bb.gh

bb.gh:                                            ; preds = %.lr.ph.i.i.i.i119
  %i.acr = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 24
  %i.acs = load ptr, ptr %i.acr, align 8, !tbaa !96
  %i.act = ptrtoint ptr %i.acs to i64
  %i.acu = ptrtoint ptr %i.acq to i64
  %i.acv = sub i64 %i.act, %i.acu
  call void @_ZdlPvm(ptr noundef nonnull %i.acq, i64 noundef %i.acv) #18
  br label %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122

_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122: ; preds = %bb.gh, %.lr.ph.i.i.i.i119
  %i.acw = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i120, i64 32 ; 2 uses
  %.not.i.i.i.i123 = icmp eq ptr %i.acw, %i.aco
  br i1 %.not.i.i.i.i123, label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124, label %.lr.ph.i.i.i.i119, !llvm.loop !1

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124: ; preds = %_ZSt8_DestroyIN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockEEvPT_.exit.i.i.i.i122
  %.pr.i.i125 = load ptr, ptr %i.abs, align 8, !tbaa !89
  br label %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126

_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117
  %i.acx = phi ptr [ %.pr.i.i125, %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exitthread-pre-split.i.i124 ], [ %i.acn, %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableaSEOS3_.exit117 ] ; 3 uses
  %.not.i.i1.i.i127 = icmp eq ptr %i.acx, null
  br i1 %.not.i.i1.i.i127, label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128, label %bb.gi

bb.gi:                                            ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126
  %i.acy = load ptr, ptr %i.aca, align 8, !tbaa !91
  %i.acz = ptrtoint ptr %i.acy to i64
  %i.ada = ptrtoint ptr %i.acx to i64
  %i.adb = sub i64 %i.acz, %i.ada
  call void @_ZdlPvm(ptr noundef nonnull %i.acx, i64 noundef %i.adb) #18
  br label %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128

_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128: ; preds = %_ZSt8_DestroyIPN6google8protobuf8internal17TailCallTableInfo14SkipEntryBlockES4_EvT_S6_RSaIT0_E.exit.i.i126, %bb.gi
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  %i.adc = load ptr, ptr %i.fm, align 8, !tbaa !45
  %i.add = load ptr, ptr %i.d, align 8, !tbaa !44 ; 2 uses
  %i.ade = ptrtoint ptr %i.adc to i64
  %i.adf = ptrtoint ptr %i.add to i64
  %i.adg = sub i64 %i.ade, %i.adf
  %i.adh = sdiv exact i64 %i.adg, 24              ; 2 uses
  %i.adi = icmp eq i64 %i.adh, %4
  br i1 %i.adi, label %bb.gk, label %bb.gj, !prof !57

bb.gj:                                            ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128
  %i.adj = invoke noundef nonnull ptr @_ZN4absl12lts_2025051212log_internal17MakeCheckOpStringImmEEPKcT_T0_S4_(i64 noundef %i.adh, i64 noundef %4, ptr noundef nonnull @.str.2)
          to label %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit unwind label %bb.gm

bb.gk:                                            ; preds = %_ZN6google8protobuf8internal17TailCallTableInfo15NumToEntryTableD2Ev.exit128
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  invoke fastcc void @_ZN6google8protobuf8internal12_GLOBAL__N_118GenerateFieldNamesEPKNS0_10DescriptorEN4absl12lts_202505124SpanIKNS1_17TailCallTableInfo14FieldEntryInfoEEERKNS9_14MessageOptionsENS8_IKNS9_12FieldOptionsEEE(ptr dead_on_unwind noalias writable align 8 %13, ptr noundef nonnull %1, ptr %i.add, i64 %4)
          to label %bb.gq unwind label %bb.gt

bb.gl:                                            ; preds = %_ZNSt6vectorIN6google8protobuf8internal17TailCallTableInfo13FastFieldInfoESaIS4_EE6assignIPS4_vEEvT_S9_.exit
  %i.adk = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %bb.gu

bb.gm:                                            ; preds = %bb.gj
  %i.adl = landingpad { ptr, i32 }
          cleanup
  br label %bb.gu

_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit: ; preds = %bb.gj
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  invoke void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalC1EPKciS4_(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull @.str.1, i32 noundef 952, ptr noundef nonnull %i.adj) #20
          to label %bb.gn unwind label %bb.go

bb.gn:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  invoke void @_ZN4absl12lts_2025051212log_internal10LogMessage5FlushEv(ptr noundef nonnull align 8 dereferenceable(16) %12)
          to label %_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit unwind label %bb.gp

_ZNKO4absl12lts_2025051212log_internal7VoidifyaaIRNS1_10LogMessageEEEvOT_.exit: ; preds = %bb.gn
  call void @_ZN4absl12lts_2025051212log_internal15LogMessageFatalD1Ev(ptr noundef nonnull align 8 dereferenceable(16) %12) #21
  unreachable

bb.go:                                            ; preds = %_ZN4absl12lts_2025051212log_internal12Check_EQImplImmEEPKcRKT_RKT0_S4_.exit
  %i.adm = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %bb.gu

bb.gp:                                            ; preds = %bb.gn
  %i.adn = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
end_hunk_0
