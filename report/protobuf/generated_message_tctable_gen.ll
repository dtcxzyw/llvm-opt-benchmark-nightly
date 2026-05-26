inline.NumInlined: 1028
inline.NumDeleted: 519
begin_hunk_0_@_ZN6google8protobuf8internal17TailCallTableInfoC2EPKNS0_10DescriptorERKNS2_14MessageOptionsEN4absl12lts_202505124SpanIKNS2_12FieldOptionsEEE:bb.a
  br i1 %i.mc, label %bb.bo, label %bb.bp

bb.bo:                                            ; preds = %.noexc94
  %i.md = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.me = load i32, ptr %i.md, align 4, !tbaa !7, !noalias !161
  %i.mf = icmp slt i32 %i.me, 16
  %i.mg = select i1 %i.mf, i8 17, i8 18
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bp:                                            ; preds = %.noexc94
  %i.mh = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.mi = load i8, ptr %i.mh, align 1, !noalias !161
  %i.mj = and i8 %i.mi, 32
  %.not27.i.i = icmp eq i8 %i.mj, 0
  %i.mk = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ml = load i32, ptr %i.mk, align 4, !tbaa !7, !noalias !161
  %i.mm = icmp slt i32 %i.ml, 16                  ; 2 uses
  br i1 %.not27.i.i, label %bb.br, label %bb.bq

bb.bq:                                            ; preds = %bb.bp
  %i.mn = select i1 %i.mm, i8 15, i8 16
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.br:                                            ; preds = %bb.bp
  %i.mo = select i1 %i.mm, i8 13, i8 14
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bs:                                            ; preds = %.critedge.i88
  %i.mp = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc95 unwind label %.loopexit

.noexc95:                                         ; preds = %bb.bs
  br i1 %i.mp, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.noexc95
  %i.mq = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.mr = load i32, ptr %i.mq, align 4, !tbaa !7, !noalias !161
  %i.ms = icmp slt i32 %i.mr, 16
  %i.mt = select i1 %i.ms, i8 29, i8 30
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bu:                                            ; preds = %.noexc95
  %i.mu = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.mv = load i8, ptr %i.mu, align 1, !noalias !161
  %i.mw = and i8 %i.mv, 32
  %.not26.i.i = icmp eq i8 %i.mw, 0
  %i.mx = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.my = load i32, ptr %i.mx, align 4, !tbaa !7, !noalias !161
  %i.mz = icmp slt i32 %i.my, 16                  ; 2 uses
  br i1 %.not26.i.i, label %bb.bw, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.na = select i1 %i.mz, i8 27, i8 28
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bw:                                            ; preds = %bb.bu
  %i.nb = select i1 %i.mz, i8 25, i8 26
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bx:                                            ; preds = %.critedge.i88, %.critedge.i88, %.critedge.i88
  %i.nc = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc96 unwind label %.loopexit

.noexc96:                                         ; preds = %bb.bx
  br i1 %i.nc, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %.noexc96
  %i.nd = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ne = load i32, ptr %i.nd, align 4, !tbaa !7, !noalias !161
  %i.nf = icmp slt i32 %i.ne, 16
  %i.ng = select i1 %i.nf, i8 35, i8 36
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.bz:                                            ; preds = %.noexc96
  %i.nh = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.ni = load i8, ptr %i.nh, align 1, !noalias !161
  %i.nj = and i8 %i.ni, 32
  %.not25.i.i = icmp eq i8 %i.nj, 0
  %i.nk = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.nl = load i32, ptr %i.nk, align 4, !tbaa !7, !noalias !161
  %i.nm = icmp slt i32 %i.nl, 16                  ; 2 uses
  br i1 %.not25.i.i, label %bb.cb, label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.nn = select i1 %i.nm, i8 33, i8 34
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cb:                                            ; preds = %bb.bz
  %i.no = select i1 %i.nm, i8 31, i8 32
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cc:                                            ; preds = %.critedge.i88, %.critedge.i88, %.critedge.i88
  %i.np = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc97 unwind label %.loopexit

.noexc97:                                         ; preds = %bb.cc
  br i1 %i.np, label %bb.cd, label %bb.ce

bb.cd:                                            ; preds = %.noexc97
  %i.nq = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.nr = load i32, ptr %i.nq, align 4, !tbaa !7, !noalias !161
  %i.ns = icmp slt i32 %i.nr, 16
  %i.nt = select i1 %i.ns, i8 41, i8 42
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ce:                                            ; preds = %.noexc97
  %i.nu = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.nv = load i8, ptr %i.nu, align 1, !noalias !161
  %i.nw = and i8 %i.nv, 32
  %.not24.i.i = icmp eq i8 %i.nw, 0
  %i.nx = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ny = load i32, ptr %i.nx, align 4, !tbaa !7, !noalias !161
  %i.nz = icmp slt i32 %i.ny, 16                  ; 2 uses
  br i1 %.not24.i.i, label %bb.cg, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.oa = select i1 %i.nz, i8 39, i8 40
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cg:                                            ; preds = %bb.ce
  %i.ob = select i1 %i.nz, i8 37, i8 38
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ch:                                            ; preds = %.critedge.i88
  %i.oc = invoke noundef zeroext i1 @_ZN6google8protobuf8internal3cpp33HasPreservingUnknownEnumSemanticsEPKNS0_15FieldDescriptorE(ptr noundef nonnull %i.kk)
          to label %.noexc98 unwind label %.loopexit

.noexc98:                                         ; preds = %bb.ch
  br i1 %i.oc, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i, label %bb.ci

bb.ci:                                            ; preds = %.noexc98
  %i.od = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc99 unwind label %.loopexit

.noexc99:                                         ; preds = %bb.ci
  %.not.i.i47.i = icmp eq ptr %i.od, null
  br i1 %.not.i.i47.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i, label %bb.cj

bb.cj:                                            ; preds = %.noexc99
  %i.oe = getelementptr inbounds nuw i8, ptr %i.kk, i64 32
  %i.of = load ptr, ptr %i.oe, align 8, !tbaa !66, !noalias !161 ; 2 uses
  %.not5.i.i.i = icmp eq ptr %i.of, null
  br i1 %.not5.i.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i: ; preds = %bb.cj
  %i.og = invoke noundef ptr @_ZNK6google8protobuf10Descriptor9map_valueEv(ptr noundef nonnull align 8 dereferenceable(160) %i.of)
          to label %.noexc100 unwind label %.loopexit

.noexc100:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.i.i
  %i.oh = icmp eq ptr %i.og, %i.kk
  br i1 %i.oh, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i, label %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i: ; preds = %.noexc100, %.noexc98
  %i.oi = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc101 unwind label %.loopexit

.noexc101:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread1.i.i
  br i1 %i.oi, label %bb.ck, label %bb.cl

bb.ck:                                            ; preds = %.noexc101
  %i.oj = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ok = load i32, ptr %i.oj, align 4, !tbaa !7, !noalias !161
  %i.ol = icmp slt i32 %i.ok, 16
  %i.om = select i1 %i.ol, i8 11, i8 12
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cl:                                            ; preds = %.noexc101
  %i.on = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.oo = load i8, ptr %i.on, align 1, !noalias !161
  %i.op = and i8 %i.oo, 32
  %.not23.i.i = icmp eq i8 %i.op, 0
  %i.oq = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.or = load i32, ptr %i.oq, align 4, !tbaa !7, !noalias !161
  %i.os = icmp slt i32 %i.or, 16                  ; 2 uses
  br i1 %.not23.i.i, label %bb.cn, label %bb.cm

bb.cm:                                            ; preds = %bb.cl
  %i.ot = select i1 %i.os, i8 9, i8 10
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cn:                                            ; preds = %bb.cl
  %i.ou = select i1 %i.os, i8 7, i8 8
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i: ; preds = %.noexc100, %bb.cj, %.noexc99
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19, !noalias !161
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19, !noalias !161
  %i.ov = invoke noundef ptr @_ZNK6google8protobuf15FieldDescriptor9enum_typeEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc102 unwind label %.loopexit

.noexc102:                                        ; preds = %_ZN6google8protobuf8internal12_GLOBAL__N_114TreatEnumAsIntEPKNS0_15FieldDescriptorE.exit.thread.i.i
  %i.ow = invoke fastcc noundef zeroext i1 @_ZN6google8protobuf8internal12_GLOBAL__N_122GetEnumValidationRangeEPKNS0_14EnumDescriptorERiS6_(ptr noundef %i.ov, ptr noundef nonnull align 4 dereferenceable(4) %i.a, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
          to label %.noexc103 unwind label %.loopexit

.noexc103:                                        ; preds = %.noexc102
  br i1 %i.ow, label %bb.co, label %bb.cq

bb.co:                                            ; preds = %.noexc103
  %i.ox = load i32, ptr %i.b, align 4, !tbaa !3, !noalias !161 ; 2 uses
  %i.oy = icmp slt i32 %i.ox, 128
  %i.oz = load i32, ptr %i.a, align 4, !noalias !161 ; 2 uses
  %or.cond.i.i.i = icmp ult i32 %i.oz, 2
  %or.cond4.i.i.i = select i1 %i.oy, i1 %or.cond.i.i.i, i1 false
  br i1 %or.cond4.i.i.i, label %bb.cp, label %bb.cv

bb.cp:                                            ; preds = %bb.co
  %i.pa = trunc i32 %i.ox to i8                   ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !161
  %i.pb = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc104 unwind label %.loopexit ; 2 uses

.noexc104:                                        ; preds = %bb.cp
  %i.pc = icmp eq i32 %i.oz, 0
  br i1 %i.pc, label %bb.da, label %bb.df

bb.cq:                                            ; preds = %.noexc103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !161
  %i.pd = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc105 unwind label %.loopexit

.noexc105:                                        ; preds = %bb.cq
  br i1 %i.pd, label %bb.cr, label %bb.cs

bb.cr:                                            ; preds = %.noexc105
  %i.pe = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.pf = load i32, ptr %i.pe, align 4, !tbaa !7, !noalias !161
  %i.pg = icmp slt i32 %i.pf, 16
  %i.ph = select i1 %i.pg, i8 47, i8 48
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cs:                                            ; preds = %.noexc105
  %i.pi = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.pj = load i8, ptr %i.pi, align 1, !noalias !161
  %i.pk = and i8 %i.pj, 32
  %.not19.i.i = icmp eq i8 %i.pk, 0
  %i.pl = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.pm = load i32, ptr %i.pl, align 4, !tbaa !7, !noalias !161
  %i.pn = icmp slt i32 %i.pm, 16                  ; 2 uses
  br i1 %.not19.i.i, label %bb.cu, label %bb.ct

bb.ct:                                            ; preds = %bb.cs
  %i.po = select i1 %i.pn, i8 45, i8 46
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cu:                                            ; preds = %bb.cs
  %i.pp = select i1 %i.pn, i8 43, i8 44
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cv:                                            ; preds = %bb.co
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19, !noalias !161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19, !noalias !161
  %i.pq = invoke noundef zeroext i1 @_ZNK6google8protobuf15FieldDescriptor9is_packedEv(ptr noundef nonnull align 8 dereferenceable(88) %i.kk)
          to label %.noexc106 unwind label %.loopexit

.noexc106:                                        ; preds = %bb.cv
  br i1 %i.pq, label %bb.cw, label %bb.cx

bb.cw:                                            ; preds = %.noexc106
  %i.pr = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ps = load i32, ptr %i.pr, align 4, !tbaa !7, !noalias !161
  %i.pt = icmp slt i32 %i.ps, 16
  %i.pu = select i1 %i.pt, i8 53, i8 54
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cx:                                            ; preds = %.noexc106
  %i.pv = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.pw = load i8, ptr %i.pv, align 1, !noalias !161
  %i.px = and i8 %i.pw, 32
  %.not20.i.i = icmp eq i8 %i.px, 0
  %i.py = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.pz = load i32, ptr %i.py, align 4, !tbaa !7, !noalias !161
  %i.qa = icmp slt i32 %i.pz, 16                  ; 2 uses
  br i1 %.not20.i.i, label %bb.cz, label %bb.cy

bb.cy:                                            ; preds = %bb.cx
  %i.qb = select i1 %i.qa, i8 51, i8 52
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.cz:                                            ; preds = %bb.cx
  %i.qc = select i1 %i.qa, i8 49, i8 50
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.da:                                            ; preds = %.noexc104
  br i1 %i.pb, label %bb.db, label %bb.dc

bb.db:                                            ; preds = %bb.da
  %i.qd = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.qe = load i32, ptr %i.qd, align 4, !tbaa !7, !noalias !161
  %i.qf = icmp slt i32 %i.qe, 16
  %i.qg = select i1 %i.qf, i8 59, i8 60
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dc:                                            ; preds = %bb.da
  %i.qh = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.qi = load i8, ptr %i.qh, align 1, !noalias !161
  %i.qj = and i8 %i.qi, 32
  %.not22.i.i = icmp eq i8 %i.qj, 0
  %i.qk = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.ql = load i32, ptr %i.qk, align 4, !tbaa !7, !noalias !161
  %i.qm = icmp slt i32 %i.ql, 16                  ; 2 uses
  br i1 %.not22.i.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.qn = select i1 %i.qm, i8 57, i8 58
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.de:                                            ; preds = %bb.dc
  %i.qo = select i1 %i.qm, i8 55, i8 56
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.df:                                            ; preds = %.noexc104
  br i1 %i.pb, label %bb.dg, label %bb.dh

bb.dg:                                            ; preds = %bb.df
  %i.qp = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.qq = load i32, ptr %i.qp, align 4, !tbaa !7, !noalias !161
  %i.qr = icmp slt i32 %i.qq, 16
  %i.qs = select i1 %i.qr, i8 65, i8 66
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dh:                                            ; preds = %bb.df
  %i.qt = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.qu = load i8, ptr %i.qt, align 1, !noalias !161
  %i.qv = and i8 %i.qu, 32
  %.not21.i.i = icmp eq i8 %i.qv, 0
  %i.qw = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.qx = load i32, ptr %i.qw, align 4, !tbaa !7, !noalias !161
  %i.qy = icmp slt i32 %i.qx, 16                  ; 2 uses
  br i1 %.not21.i.i, label %bb.dj, label %bb.di

bb.di:                                            ; preds = %bb.dh
  %i.qz = select i1 %i.qy, i8 63, i8 64
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dj:                                            ; preds = %bb.dh
  %i.ra = select i1 %i.qy, i8 61, i8 62
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dk:                                            ; preds = %.critedge.i88
  %i.rb = getelementptr inbounds nuw i8, ptr %i.kk, i64 3
  %i.rc = load i8, ptr %i.rb, align 1, !noalias !161
  %i.rd = and i8 %i.rc, 7                         ; 2 uses
  %i.re = icmp eq i8 %i.rd, 2
  br i1 %i.re, label %bb.dl, label %bb.do

bb.dl:                                            ; preds = %bb.dk
  %i.rf = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.rg = load i8, ptr %i.rf, align 1, !noalias !161
  %i.rh = and i8 %i.rg, 32
  %.not18.i.i = icmp eq i8 %i.rh, 0
  %i.ri = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.rj = load i32, ptr %i.ri, align 4, !tbaa !7, !noalias !161
  %i.rk = icmp slt i32 %i.rj, 16                  ; 2 uses
  br i1 %.not18.i.i, label %bb.dn, label %bb.dm

bb.dm:                                            ; preds = %bb.dl
  %i.rl = select i1 %i.rk, i8 81, i8 82
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dn:                                            ; preds = %bb.dl
  %i.rm = select i1 %i.rk, i8 79, i8 80
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.do:                                            ; preds = %bb.dk
  %i.rn = icmp eq i8 %i.rd, 1
  %i.ro = getelementptr inbounds nuw i8, ptr %i.ie, i64 22
  %i.rp = load i8, ptr %i.ro, align 2, !range !39, !noalias !161
  %i.rq = trunc nuw i8 %i.rp to i1
  %or.cond.i46.i = select i1 %i.rn, i1 %i.rq, i1 false
  br i1 %or.cond.i46.i, label %bb.dp, label %bb.dq

bb.dp:                                            ; preds = %bb.do
  %i.rr = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.rs = load i32, ptr %i.rr, align 4, !tbaa !7, !noalias !161
  %i.rt = icmp slt i32 %i.rs, 16
  %i.ru = select i1 %i.rt, i8 87, i8 88
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dq:                                            ; preds = %bb.do
  %i.rv = getelementptr inbounds nuw i8, ptr %i.ie, i64 18
  %i.rw = load i8, ptr %i.rv, align 2, !tbaa !164, !range !39, !noalias !161, !noundef !40
  %i.rx = trunc nuw i8 %i.rw to i1
  br i1 %i.rx, label %bb.dr, label %bb.ds

bb.dr:                                            ; preds = %bb.dq
  %i.ry = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.rz = load i32, ptr %i.ry, align 4, !tbaa !7, !noalias !161
  %i.sa = icmp slt i32 %i.rz, 16
  %i.sb = select i1 %i.sa, i8 75, i8 76
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.ds:                                            ; preds = %bb.dq
  %i.sc = getelementptr inbounds nuw i8, ptr %i.kk, i64 1
  %i.sd = load i8, ptr %i.sc, align 1, !noalias !161
  %i.se = and i8 %i.sd, 32
  %.not17.i.i = icmp eq i8 %i.se, 0
  %i.sf = getelementptr inbounds nuw i8, ptr %i.kk, i64 4
  %i.sg = load i32, ptr %i.sf, align 4, !tbaa !7, !noalias !161
  %i.sh = icmp slt i32 %i.sg, 16                  ; 2 uses
  br i1 %.not17.i.i, label %bb.du, label %bb.dt

bb.dt:                                            ; preds = %bb.ds
  %i.si = select i1 %i.sh, i8 69, i8 70
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.du:                                            ; preds = %bb.ds
  %i.sj = select i1 %i.sh, i8 67, i8 68
  br label %_ZN6google8protobuf8internal12_GLOBAL__N_118MakeFastFieldEntryERKNS1_17TailCallTableInfo14FieldEntryInfoERKNS3_12FieldOptionsERKNS3_14MessageOptionsE.exit.i

bb.dv:                                            ; preds = %.critedge.i88
  %i.sk = getelementptr inbounds nuw i8, ptr %i.id, i64 16
  %i.sl = load i8, ptr %i.sk, align 8, !tbaa !63, !noalias !161
end_hunk_0
