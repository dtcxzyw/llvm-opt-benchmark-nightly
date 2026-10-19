Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-a6df2c06781ea95b.yara_x_proto.f1622c5365b6210a-cgu.11?download=true
inline.NumInlined: 76
inline.NumDeleted: 53
begin_hunk_0_@_RINvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrECskIStwd7HrDO_12yara_x_proto:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr null, ptr %i.c, align 8
  %i.d = invoke noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @10, ptr noundef nonnull %1, ptr noundef nonnull %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.i, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvNtNtB4_2io5write17default_write_fmt7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrEECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b) #16
          to label %bb.l unwind label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.c, align 8, !noundef !5 ; 5 uses
  %.not = icmp eq ptr %i.f, null                  ; 2 uses
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br i1 %.not, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit, !prof !33

bb.e:                                             ; preds = %bb.c
  br i1 %.not, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = ptrtoint ptr %i.f to i64                 ; 2 uses
  %i.h = and i64 %i.g, 3
  switch i64 %i.h, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i
    i64 3, label %bb.g
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i
    i64 1, label %bb.h
  ], !prof !7

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = icmp ult ptr %i.f, inttoptr (i64 188978561024 to ptr)
  %i.j = and i64 %i.g, 1095216660480
  %i.k = icmp ne i64 %i.j, 1095216660480
  call void @llvm.assume(i1 %i.i)
  call void @llvm.assume(i1 %i.k)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i

bb.h:                                             ; preds = %bb.f
  %i.l = getelementptr i8, ptr %i.f, i64 -1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.l, ptr %i.m, align 8, !alias.scope !34
  store i8 3, ptr %i.a, align 8, !alias.scope !34
  call void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i: ; preds = %bb.h, %bb.g, %bb.f, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i, %bb.e, %bb.d
  %.sroa.0.0 = phi ptr [ %i.f, %bb.d ], [ null, %bb.e ], [ null, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0

bb.i:                                             ; preds = %bb.d
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @11, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #19
          to label %bb.j unwind label %bb.b

bb.j:                                             ; preds = %bb.i
  unreachable

bb.k:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.l:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { i64, i64 } @_RINvNtNtCskKLDkoKarTP_4core5slice5index5rangeNtNtNtB6_3ops5range9RangeFullECskIStwd7HrDO_12yara_x_proto(i64 noundef %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
_RNvNtNtCskKLDkoKarTP_4core5slice5index16into_slice_range.exit:
  %i.a = insertvalue { i64, i64 } { i64 0, i64 poison }, i64 %0, 1
  ret { i64, i64 } %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_RNvCskIStwd7HrDO_12yara_x_proto16get_field_format(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [16 x i8], align 8                ; 8 uses
  %i.i = alloca [104 x i8], align 8               ; 6 uses
  %i.j = alloca [104 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.k = load i64, ptr %1, align 8, !range !9, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = trunc nuw i64 %i.k to i1
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !5
  %.sroa.06.0.v = select i1 %i.m, i64 16, i64 72
  %.sroa.06.0 = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.06.0.v ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 160
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = icmp ult i64 %i.p, %i.r
  br i1 %i.s, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.06.0, i64 152
  %i.u = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.v = getelementptr inbounds nuw [216 x i8], ptr %i.u, i64 %i.p
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 152
  %i.z = load ptr, ptr %i.y, align 8, !align !6, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  %_RNvNvXs1a_NtCsg2CeFYmfPbl_8protobuf10descriptorNtB8_12FieldOptionsNtNtBa_7message7Message16default_instance8instance. = select i1 %.not, ptr @_RNvNvXs1a_NtCsg2CeFYmfPbl_8protobuf10descriptorNtB8_12FieldOptionsNtNtBa_7message7Message16default_instance8instance, ptr %i.z
  call void @_RNvMs_NtCsg2CeFYmfPbl_8protobuf3extINtB4_16ExtFieldOptionalNtNtB6_10descriptor12FieldOptionsNtNtCskIStwd7HrDO_12yara_x_proto4yara12FieldOptionsE3getB1w_(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.i, ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) @16, ptr noundef nonnull align 8 %_RNvNvXs1a_NtCsg2CeFYmfPbl_8protobuf10descriptorNtB8_12FieldOptionsNtNtBa_7message7Message16default_instance8instance.)
  %i.aa = load i64, ptr %i.i, align 8, !range !4, !noundef !5
  %.not33 = icmp eq i64 %i.aa, -1
  br i1 %.not33, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #18
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.j, ptr noundef nonnull align 8 dereferenceable(104) %i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %i.ac = load i64, ptr %i.ab, align 8, !range !4, !noundef !5
  %.not34 = icmp eq i64 %i.ac, -1
  br i1 %.not34, label %.thread, label %bb.f

.thread:                                          ; preds = %bb.d
  store ptr inttoptr (i64 1 to ptr), ptr %i.h, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 0, ptr %i.ad, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.b
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ab

bb.f:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5 ; 3 uses
  store ptr %i.af, ptr %i.h, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.ah, ptr %i.ai, align 8
  %i.aj = icmp eq i64 %i.ah, 1
  br i1 %i.aj, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %lhsc = load i8, ptr %i.af, align 1
  switch i8 %lhsc, label %bb.i [
    i8 120, label %bb.h
    i8 116, label %bb.j
  ]

bb.h:                                             ; preds = %bb.g
  store i64 3, ptr %0, align 8
  br label %bb.as

bb.i:                                             ; preds = %bb.g, %.thread, %bb.f
  %i.ak = phi i64 [ 0, %.thread ], [ %i.ah, %bb.f ], [ 1, %bb.g ] ; 3 uses
  %i.al = phi ptr [ inttoptr (i64 1 to ptr), %.thread ], [ %i.af, %bb.f ], [ %i.af, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect5fieldNtB5_15FieldDescriptor18containing_message(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 4, ptr %0, align 8
  br label %bb.as

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %bb.m, %.body, %bb.n, %bb.k
  %.pn40 = phi { ptr, i32 } [ %i.am, %bb.k ], [ %.pn, %bb.n ], [ %.pn, %.body ], [ %.pn, %bb.m ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIStwd7HrDO_12yara_x_proto4yara12FieldOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j) #16
          to label %bb.av unwind label %bb.aa

bb.k:                                             ; preds = %bb.ar, %bb.w, %bb.i
  %i.am = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit

bb.l:                                             ; preds = %bb.i
  %i.an = invoke noundef zeroext i1 @_RNvMNtCskKLDkoKarTP_4core5sliceSh11starts_withCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef %i.ak, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @17, i64 noundef 6)
          to label %bb.o unwind label %.loopexit.split-lp

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.aj, %bb.ak, %bb.al, %bb.au, %bb.y
  %.pn = phi { ptr, i32 } [ %i.dk, %bb.au ], [ %i.bo, %bb.y ], [ %i.cu, %bb.aj ], [ %i.cu, %bb.al ], [ %i.cu, %bb.ak ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !106)
  call void @llvm.experimental.noalias.scope.decl(metadata !107)
  call void @llvm.experimental.noalias.scope.decl(metadata !108)
  %i.ao = load i64, ptr %i.g, align 8, !range !9, !alias.scope !109, !noundef !5
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit, label %bb.m

bb.m:                                             ; preds = %.body
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !110)
  call void @llvm.experimental.noalias.scope.decl(metadata !111)
  %i.ar = load ptr, ptr %i.aq, align 8, !alias.scope !112, !nonnull !5, !noundef !5
  %i.as = atomicrmw sub ptr %i.ar, i64 1 release, align 8, !noalias !112
  %i.at = icmp eq i64 %i.as, 1
  br i1 %i.at, label %bb.n, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit unwind label %bb.aa

.loopexit:                                        ; preds = %bb.an
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.l, %bb.t, %.loopexit64
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.o:                                             ; preds = %bb.l
  br i1 %i.an, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.au = icmp eq i64 %i.ak, 0
  br i1 %i.au, label %bb.u, label %bb.t

bb.q:                                             ; preds = %bb.o
  %i.av = add i64 %i.ak, -6
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.aw, ptr %i.f, align 8, !captures !8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store i64 %i.av, ptr %i.ax, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %i.ay = load i64, ptr %i.g, align 8, !range !9, !alias.scope !113, !noundef !5
  %i.az = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 4 uses
  %i.ba = trunc nuw i64 %i.ay to i1
  %i.bb = load ptr, ptr %i.az, align 8, !alias.scope !113, !nonnull !5, !noundef !5 ; 2 uses
  br i1 %i.ba, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 288
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !114, !nonnull !5, !noundef !5
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  br label %bb.ac

bb.s:                                             ; preds = %bb.q
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 344
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !114, !nonnull !5, !align !6, !noundef !5
  br label %bb.ac

bb.t:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect5fieldNtB5_15FieldDescriptor9full_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.x unwind label %.loopexit.split-lp

bb.u:                                             ; preds = %bb.p
  store i64 2, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !115)
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.bh = load i64, ptr %i.g, align 8, !range !9, !alias.scope !118, !noundef !5
  %i.bi = icmp eq i64 %i.bh, 0
  br i1 %i.bi, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit43, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bj = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !119)
  call void @llvm.experimental.noalias.scope.decl(metadata !120)
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !121, !nonnull !5, !noundef !5
  %i.bl = atomicrmw sub ptr %i.bk, i64 1 release, align 8, !noalias !121
  %i.bm = icmp eq i64 %i.bl, 1
  br i1 %i.bm, label %bb.w, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit43

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit43 unwind label %bb.k

bb.x:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.h, ptr %i.b, align 8
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIStwd7HrDO_12yara_x_proto, ptr %.sroa.424.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bn, align 8
  %.sroa.428.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.428.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @20) #19
          to label %bb.z unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #16
          to label %.body unwind label %bb.aa

bb.z:                                             ; preds = %bb.at, %bb.x
  unreachable

bb.aa:                                            ; preds = %bb.n, %bb.au, %bb.y, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit43: ; preds = %bb.v, %bb.u, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIStwd7HrDO_12yara_x_proto4yara12FieldOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.e, %bb.as, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit43
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ac:                                            ; preds = %bb.s, %bb.r
  %.sroa.01.0.i = phi ptr [ %i.be, %bb.r ], [ %i.bg, %bb.s ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 104
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !114, !nonnull !5, !noundef !5 ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 112
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !114, !noundef !5 ; 2 uses
  %.idx = mul nuw nsw i64 %i.bt, 120
  %i.bu = getelementptr inbounds nuw i8, ptr %i.br, i64 %.idx
  %i.bv = icmp eq i64 %i.bt, 0
  br i1 %i.bv, label %.loopexit64, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.ac
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.ad

bb.ad:                                            ; preds = %.noexc45, %.lr.ph.i
  %.sroa.8.0 = phi i64 [ 0, %.lr.ph.i ], [ %i.dc, %.noexc45 ] ; 5 uses
  %i.bw = phi ptr [ %i.br, %.lr.ph.i ], [ %i.bx, %.noexc45 ]
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 120 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !122
  %i.by = load i64, ptr %i.g, align 8, !range !9, !noalias !123, !noundef !5
  %i.bz = trunc nuw i64 %i.by to i1               ; 3 uses
  %.sroa.5.0.i.i.i.i.pre102 = load ptr, ptr %i.az, align 8, !noalias !123 ; 2 uses
  br i1 %i.bz, label %bb.ae, label %_RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i

bb.ae:                                            ; preds = %bb.ad
  %i.ca = atomicrmw add ptr %.sroa.5.0.i.i.i.i.pre102, i64 1 monotonic, align 8, !noalias !123
  %i.cb = icmp slt i64 %i.ca, 0
  br i1 %i.cb, label %bb.af, label %._RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i_crit_edge

._RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i_crit_edge: ; preds = %bb.ae
  %.sroa.5.0.i.i.i.i.pre = load ptr, ptr %i.az, align 8, !noalias !123
  br label %_RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i

bb.af:                                            ; preds = %bb.ae
  call void @llvm.trap()
  unreachable

_RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i: ; preds = %._RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i_crit_edge, %bb.ad
  %i.cc = phi ptr [ %.sroa.5.0.i.i.i.i.pre102, %bb.ad ], [ %.sroa.5.0.i.i.i.i.pre, %._RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i_crit_edge ] ; 5 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ 0, %bb.ad ], [ 1, %._RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i_crit_edge ] ; 3 uses
  store i64 %.sroa.0.0.i.i.i.i, ptr %i.a, align 8, !noalias !122
  store ptr %i.cc, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !122
  store i64 %.sroa.8.0, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !122
  %i.cd = trunc nuw i64 %.sroa.0.0.i.i.i.i to i1
  %.sroa.01.0.v.i.i.i.i.i.i = select i1 %i.cd, i64 16, i64 72
  %.sroa.01.0.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cc, i64 %.sroa.01.0.v.i.i.i.i.i.i ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 88
  %i.cf = load i64, ptr %i.ce, align 8, !noalias !124, !noundef !5 ; 2 uses
  %i.cg = icmp ult i64 %.sroa.8.0, %i.cf
  br i1 %i.cg, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %_RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.i.i.i.i.i, i64 80
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !124, !nonnull !5, !noundef !5
  %i.cj = getelementptr inbounds nuw [184 x i8], ptr %i.ci, i64 %.sroa.8.0
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 16
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !124, !noundef !5 ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 72
  %i.cn = load i64, ptr %i.cm, align 8, !range !4, !noalias !124, !noundef !5
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cn, -1
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor4name.exit.i.i.i.i.i, label %bb.ai

bb.ah:                                            ; preds = %_RNCNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect4fileNtB7_14FileDescriptor5enums0CskIStwd7HrDO_12yara_x_proto.exit.i.i.i
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0, i64 noundef %i.cf, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #18
          to label %.noexc.i.i.i.i unwind label %bb.aj, !noalias !125

.noexc.i.i.i.i:                                   ; preds = %bb.ah
  unreachable

bb.ai:                                            ; preds = %bb.ag
  %i.co = getelementptr inbounds nuw i8, ptr %i.cl, i64 80
  %i.cp = load ptr, ptr %i.co, align 8, !noalias !124, !nonnull !5, !noundef !5
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cl, i64 88
  %i.cr = load i64, ptr %i.cq, align 8, !noalias !124, !noundef !5
  br label %_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor4name.exit.i.i.i.i.i

_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor4name.exit.i.i.i.i.i: ; preds = %bb.ai, %bb.ag
  %.sroa.3.0.i.i.i.i.i.i = phi i64 [ %i.cr, %bb.ai ], [ 0, %bb.ag ] ; 2 uses
  %.sroa.0.0.i.i.i.i.i.i = phi ptr [ %i.cp, %bb.ai ], [ inttoptr (i64 1 to ptr), %bb.ag ]
  %i.cs = load i64, ptr %i.ax, align 8, !noalias !126, !noundef !5
  %i.ct = icmp eq i64 %.sroa.3.0.i.i.i.i.i.i, %i.cs
  br i1 %i.ct, label %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.i.i.i.i, label %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.thread.i.i.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.cu = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.bz, label %bb.ak, label %.body

bb.ak:                                            ; preds = %bb.aj
  %i.cv = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !127
  %i.cw = icmp eq i64 %i.cv, 1
  br i1 %i.cw, label %bb.al, label %.body

bb.al:                                            ; preds = %bb.ak
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i.i.i) #20
          to label %.body unwind label %bb.ao, !noalias !128

_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.i.i.i.i: ; preds = %_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor4name.exit.i.i.i.i.i
  %i.cx = load ptr, ptr %i.f, align 8, !noalias !126, !nonnull !5, !noundef !5
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.0.0.i.i.i.i.i.i, ptr nonnull %i.cx, i64 %.sroa.3.0.i.i.i.i.i.i), !noalias !126
  %i.cy = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.cy, label %bb.ap, label %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.thread.i.i.i.i

_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.thread.i.i.i.i: ; preds = %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.i.i.i.i, %_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor4name.exit.i.i.i.i.i
  br i1 %i.bz, label %bb.am, label %.noexc45

bb.am:                                            ; preds = %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.thread.i.i.i.i
  %i.cz = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !129
  %i.da = icmp eq i64 %i.cz, 1
  br i1 %i.da, label %bb.an, label %.noexc45

bb.an:                                            ; preds = %bb.am
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.4.0..sroa_idx.i.i.i) #20
          to label %.noexc45 unwind label %.loopexit

bb.ao:                                            ; preds = %bb.al
  %i.db = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !128
  unreachable

.noexc45:                                         ; preds = %bb.an, %bb.am, %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.thread.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  %i.dc = add nuw nsw i64 %.sroa.8.0, 1
  %i.dd = icmp eq ptr %i.bx, %i.bu
  br i1 %i.dd, label %.loopexit64, label %bb.ad

bb.ap:                                            ; preds = %_RNCNvCskIStwd7HrDO_12yara_x_proto16get_field_format0B3_.exit.i.i.i.i
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !122
  store i64 %.sroa.0.0.i.i.i.i, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.experimental.noalias.scope.decl(metadata !130)
  call void @llvm.experimental.noalias.scope.decl(metadata !131)
  call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.de = load i64, ptr %i.g, align 8, !range !9, !alias.scope !133, !noundef !5
  %i.df = icmp eq i64 %i.de, 0
  br i1 %i.df, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit48, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.dg = atomicrmw sub ptr %i.cc, i64 1 release, align 8, !noalias !134
  %i.dh = icmp eq i64 %i.dg, 1
  br i1 %i.dh, label %bb.ar, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit48

bb.ar:                                            ; preds = %bb.aq
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.az) #20
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit48 unwind label %bb.k

.loopexit64:                                      ; preds = %.noexc45, %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RNvMs1_NtNtCsg2CeFYmfPbl_8protobuf7reflect5fieldNtB5_15FieldDescriptor9full_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.at unwind label %.loopexit.split-lp

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit48: ; preds = %bb.aq, %bb.ap, %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.as

bb.as:                                            ; preds = %bb.h, %bb.j, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit48
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskIStwd7HrDO_12yara_x_proto4yara12FieldOptionsEBF_(ptr noalias nofree noundef align 8 dereferenceable(104) %i.j)
  br label %bb.ab

bb.at:                                            ; preds = %.loopexit64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXsq_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  %i.di = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.f, ptr %i.di, align 8
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIStwd7HrDO_12yara_x_proto, ptr %.sroa.416.0..sroa_idx, align 8
  %i.dj = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.f, ptr %i.dj, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr @_RNvXs1i_NtCskKLDkoKarTP_4core3fmtReNtB6_7Display3fmtCskIStwd7HrDO_12yara_x_proto, ptr %.sroa.420.0..sroa_idx, align 8
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @21, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #19
          to label %bb.z unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #16
          to label %.body unwind label %bb.aa

bb.av:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorECskIStwd7HrDO_12yara_x_proto.exit
  resume { ptr, i32 } %.pn40
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXNvNtNtCskKLDkoKarTP_4core2io5write17default_write_fmtINtB2_7AdapterNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrENtNtB8_3fmt5Write9write_strCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.c = tail call noundef ptr @_RNvYNtNtNtNtCsG258MDvU3F_3std3sys5stdio4unix6StderrNtNtNtCskKLDkoKarTP_4core2io5write5Write9write_allCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) ; 3 uses
  %.not = icmp ne ptr %i.c, null                  ; 2 uses
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %i.d, align 8, !noundef !5 ; 4 uses
  %i.e = icmp eq ptr %.val, null
  br i1 %i.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.f = ptrtoint ptr %.val to i64                ; 2 uses
  %i.g = and i64 %i.f, 3
  switch i64 %i.g, label %default.unreachable [
    i64 2, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i
    i64 3, label %bb.d
    i64 0, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.h = icmp ult ptr %.val, inttoptr (i64 188978561024 to ptr)
  %i.i = and i64 %i.f, 1095216660480
  %i.j = icmp ne i64 %i.i, 1095216660480
  tail call void @llvm.assume(i1 %i.h)
  tail call void @llvm.assume(i1 %i.j)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i

bb.e:                                             ; preds = %bb.c
  %i.k = getelementptr i8, ptr %.val, i64 -1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.k) ]
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.l, align 8, !alias.scope !137
  store i8 3, ptr %i.a, align 8, !alias.scope !137
  invoke void @_RNvXsd_NtNtCskKLDkoKarTP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.l)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i unwind label %bb.g

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit

bb.f:                                             ; preds = %bb.a, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit
  ret i1 %.not

bb.g:                                             ; preds = %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  store ptr %i.c, ptr %i.d, align 8
  resume { ptr, i32 } %i.m

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECskIStwd7HrDO_12yara_x_proto.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskIStwd7HrDO_12yara_x_proto.exit.i, %bb.b
  store ptr %i.c, ptr %i.d, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtB8_3str5error9Utf8ErrorNtB6_5Debug3fmtCskIStwd7HrDO_12yara_x_proto(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !141
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.a, align 8, !noalias !141
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @31, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @32, i64 noundef 11, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @29, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @33, i64 noundef 9, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @30)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !141
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCskKLDkoKarTP_4core3fmtRNtNtNtCskIStwd7HrDO_12yara_x_proto4yara18enum_value_options5ValueNtB6_5Debug3fmtBC_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !6, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !145)
  %i.d = load i64, ptr %i.c, align 8, !range !9, !alias.scope !145, !noundef !5
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !146
  store ptr %i.f, ptr %i.a, align 8, !noalias !146
  %i.g = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @28, i64 noundef 3, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !146
  br label %_RNvXs4_NtNtCskIStwd7HrDO_12yara_x_proto4yara18enum_value_optionsNtB5_5ValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !146
  store ptr %i.f, ptr %i.b, align 8, !noalias !146
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @26, i64 noundef 3, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @25)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !146
  br label %_RNvXs4_NtNtCskIStwd7HrDO_12yara_x_proto4yara18enum_value_optionsNtB5_5ValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit

_RNvXs4_NtNtCskIStwd7HrDO_12yara_x_proto4yara18enum_value_optionsNtB5_5ValueNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt.exit: ; preds = %bb.b, %bb.c
  %.sroa.0.0.in.i = phi i1 [ %i.g, %bb.b ], [ %i.h, %bb.c ]
  ret i1 %.sroa.0.0.in.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = and i32 %i.b, 67108864
  %.not1 = icmp eq i32 %i.d, 0
  br i1 %.not1, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvXs6_NtNtCskKLDkoKarTP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
end_hunk_0
