Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/ruff_python_literal-307a1f0c9a06c048.ruff_python_literal.9b149e7bebd214cb-cgu.00?download=true
inline.NumInlined: 122
inline.NumDeleted: 50
begin_hunk_0_@_RNvMsb_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_9FieldName5parse:bb.a

bb.bj:                                            ; preds = %bb.bh
  %i.jf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bk:                                            ; preds = %bb.r, %bb.s, %bb.bg
  %.sroa.12.0 = phi i56 [ undef, %bb.r ], [ %.sroa.10.sroa.10.sroa.0.3.i, %bb.bg ], [ undef, %bb.s ]
  %.sroa.8.0 = phi i8 [ undef, %bb.r ], [ %.sroa.10.sroa.0.3.i, %bb.bg ], [ undef, %bb.s ]
  %.sroa.040.0 = phi i64 [ -1, %bb.r ], [ %.sroa.0.3.i, %bb.bg ], [ -1, %bb.s ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.19.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.2, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.14, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14)
  %.not17 = icmp eq i64 %.sroa.040.0, -1
  br i1 %.not17, label %bb.bp, label %bb.bl

bb.bl:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i64 %.sroa.040.0, ptr %i.e, align 8
  store i8 %.sroa.8.0, ptr %.sroa.3.0..sroa_idx, align 8
  store i56 %.sroa.12.0, ptr %.sroa.4.0..sroa_idx, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(16) %.sroa.4.sroa.2, i64 16, i1 false)
  %i.jg = load i64, ptr %i.ca, align 8, !alias.scope !207, !noalias !208, !noundef !3 ; 3 uses
  %i.jh = load i64, ptr %i.f, align 8, !range !7, !alias.scope !207, !noalias !208, !noundef !3
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %bb.bm, label %bb.bq

bb.bm:                                            ; preds = %bb.bl
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartE8grow_oneBP_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %bb.bq unwind label %bb.bn, !noalias !208

bb.bn:                                            ; preds = %bb.bm
  %i.jj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEBF_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e) #14
          to label %.body unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.jk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.bp:                                            ; preds = %bb.bk
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.jl = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.jl, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.08.2, label %bb.br, label %bb.bu

bb.bq:                                            ; preds = %bb.bm, %bb.bl
  %i.jm = load ptr, ptr %i.bz, align 8, !alias.scope !207, !noalias !208, !nonnull !3, !noundef !3
  %i.jn = getelementptr inbounds nuw [32 x i8], ptr %i.jm, i64 %i.jg
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jn, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  %i.jo = add i64 %i.jg, 1
  store i64 %i.jo, ptr %i.ca, align 8, !alias.scope !207, !noalias !208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.r

bb.br:                                            ; preds = %bb.bp
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.sink.split unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.jp = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.jq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body34, %bb.cd, %bb.ca, %bb.bs
  %common.resume.op = phi { ptr, i32 } [ %i.jv, %bb.ca ], [ %i.jp, %bb.bs ], [ %.pn1999, %bb.cd ], [ %.pn19, %.body34 ]
  resume { ptr, i32 } %common.resume.op

.sink.split:                                      ; preds = %bb.br, %bb.bz
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
  br label %bb.bu

bb.bu:                                            ; preds = %.sink.split, %bb.bp, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

.body30:                                          ; preds = %bb.bv, %bb.bh, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.jr, %bb.bv ], [ %i.je, %bb.bh ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_(ptr noalias noundef align 8 dereferenceable(24) %i.g) #14
          to label %.body34 unwind label %bb.cc

bb.bv:                                            ; preds = %bb.bi
  %i.jr = landingpad { ptr, i32 }
          cleanup
  br label %.body30

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit: ; preds = %bb.bi
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.js = load i64, ptr %i.g, align 8, !range !5, !alias.scope !209, !noundef !3
  %switch1.i = icmp slt i64 %i.js, -9223372036854775806
  br i1 %switch1.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit, label %bb.bw

bb.bw:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i unwind label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.jt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body34 unwind label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.ju = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i: ; preds = %bb.bw
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit unwind label %.loopexit.split-lp59

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtCsdjunURa2XPj_19ruff_python_literal6format13FieldNamePartEEB1b_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br i1 %.sroa.08.2, label %bb.bz, label %bb.bu

bb.bz:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCsdjunURa2XPj_19ruff_python_literal6format9FieldTypeEBF_.exit
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %.sink.split unwind label %bb.ca

bb.ca:                                            ; preds = %bb.bz
  %i.jv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i)
          to label %common.resume unwind label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cc:                                            ; preds = %bb.cd, %.body30, %.body
  %i.jx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.cd:                                            ; preds = %.body34.thread, %.body34
  %.pn1999 = phi { ptr, i32 } [ %lpad.loopexit60, %.body34.thread ], [ %.pn19, %.body34 ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.i) #14
          to label %common.resume unwind label %bb.cc
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsc_NtCsdjunURa2XPj_19ruff_python_literal6formatNtB5_12FormatString10parse_spec(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, i8 noundef range(i8 0, 2) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [80 x i8], align 8                ; 15 uses
  %i.e = alloca [24 x i8], align 8                ; 13 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [80 x i8], align 8                ; 15 uses
  %i.h = alloca [24 x i8], align 8                ; 11 uses
  %i.i = alloca [4 x i8], align 4                 ; 5 uses
  %.sroa.13 = alloca [24 x i8], align 8           ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 123, ptr %i.i, align 4
  %i.k = call noundef zeroext i1 @_RNvMNtCs4NRVxsYgnAr_4core5sliceSh11starts_withCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef 1)
  br i1 %i.k, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.l, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = add i64 %2, -1                           ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 0, ptr %i.j, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 5 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.421.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.522.0..sroa_idx, align 8
  %i.o = getelementptr i8, ptr %1, i64 %2         ; 6 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = icmp eq i64 %2, 1
  br i1 %i.p, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %.outer
  %i.q = phi i64 [ %storemerge, %.outer ], [ 0, %bb.c ]
  %.sroa.02.0.ph68 = phi i8 [ %.sroa.02.1, %.outer ], [ 0, %bb.c ] ; 2 uses
  %.sroa.0.0.ph67 = phi ptr [ %.sroa.0.1, %.outer ], [ %i.n, %bb.c ]
  %.sroa.11.0.ph66 = phi i64 [ %i.be, %.outer ], [ 0, %bb.c ]
  br label %bb.e

bb.d:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit31, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit, %bb.b
  ret void

bb.e:                                             ; preds = %.lr.ph, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33
  %i.r = phi i64 [ %i.q, %.lr.ph ], [ %i.cv, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33 ] ; 11 uses
  %.sroa.0.065 = phi ptr [ %.sroa.0.0.ph67, %.lr.ph ], [ %.sroa.0.1, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33 ] ; 6 uses
  %.sroa.11.064 = phi i64 [ %.sroa.11.0.ph66, %.lr.ph ], [ %i.be, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33 ] ; 2 uses
  %i.s = ptrtoint ptr %.sroa.0.065 to i64
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 1 ; 3 uses
  %i.u = load i8, ptr %.sroa.0.065, align 1, !noalias !222, !noundef !3 ; 5 uses
  %i.v = icmp sgt i8 %i.u, -1
  br i1 %i.v, label %bb.f, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i: ; preds = %bb.e
  %i.w = and i8 %i.u, 31
  %i.x = zext nneg i8 %i.w to i32                 ; 3 uses
  %i.y = icmp ne ptr %i.t, %i.o
  call void @llvm.assume(i1 %i.y)
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 2 ; 3 uses
  %i.aa = load i8, ptr %i.t, align 1, !noalias !222, !noundef !3
  %i.ab = shl nuw nsw i32 %i.x, 6
  %i.ac = and i8 %i.aa, 63
  %i.ad = zext nneg i8 %i.ac to i32               ; 2 uses
  %i.ae = or disjoint i32 %i.ab, %i.ad
  %i.af = icmp samesign ugt i8 %i.u, -33
  br i1 %i.af, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ag = zext nneg i8 %i.u to i32
  br label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i
  %i.ah = icmp ne ptr %i.z, %i.o
  call void @llvm.assume(i1 %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 3 ; 3 uses
  %i.aj = load i8, ptr %i.z, align 1, !noalias !222, !noundef !3
  %i.ak = shl nuw nsw i32 %i.ad, 6
  %i.al = and i8 %i.aj, 63
  %i.am = zext nneg i8 %i.al to i32
  %i.an = or disjoint i32 %i.ak, %i.am            ; 2 uses
  %i.ao = shl nuw nsw i32 %i.x, 12
  %i.ap = or disjoint i32 %i.an, %i.ao
  %i.aq = icmp samesign ugt i8 %i.u, -17
  br i1 %i.aq, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i, label %bb.g

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i
  %i.ar = icmp ne ptr %i.ai, %i.o
  call void @llvm.assume(i1 %i.ar)
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.0.065, i64 4
  %i.at = load i8, ptr %i.ai, align 1, !noalias !222, !noundef !3
  %i.au = shl nuw nsw i32 %i.x, 18
  %i.av = and i32 %i.au, 1835008
  %i.aw = shl nuw nsw i32 %i.an, 6
  %i.ax = and i8 %i.at, 63
  %i.ay = zext nneg i8 %i.ax to i32
  %i.az = or disjoint i32 %i.aw, %i.ay
  %i.ba = or disjoint i32 %i.az, %i.av
  br label %bb.g

.loopexit.loopexit:                               ; preds = %bb.s, %bb.r
  %lpad.loopexit53 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.loopexit.split-lp:                      ; preds = %bb.aa, %bb.l
  %lpad.loopexit.split-lp54 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.bn, %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecReEECsdjunURa2XPj_19ruff_python_literal.exit78.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit.split-lp, %.loopexit.loopexit.split-lp, %.loopexit.loopexit, %.body75.i, %bb.bg, %bb.bk
  %eh.lpad-body = phi { ptr, i32 } [ %.pn66.i, %.body75.i ], [ %i.fi, %bb.bk ], [ %i.fe, %bb.bg ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit53, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp54, %.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef align 8 dereferenceable(24) %i.j) #14
          to label %common.resume unwind label %bb.bs

bb.g:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i, %bb.f, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i
  %.sroa.0.1 = phi ptr [ %i.t, %bb.f ], [ %i.as, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i ], [ %i.ai, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i ], [ %i.z, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i ] ; 5 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.ag, %bb.f ], [ %i.ba, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit16.i.i ], [ %i.ap, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit14.i.i ], [ %i.ae, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsdjunURa2XPj_19ruff_python_literal.exit12.i.i ] ; 10 uses
  %i.bb = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.bb)
  %i.bc = ptrtoint ptr %.sroa.0.1 to i64
  %i.bd = sub i64 %.sroa.11.064, %i.s
  %i.be = add i64 %i.bd, %i.bc                    ; 2 uses
  switch i32 %.sroa.4.0.i.ph.i, label %bb.q [
    i32 125, label %bb.p
    i32 123, label %bb.j
  ]

.thread:                                          ; preds = %.outer, %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33, %bb.c
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.bf, align 8
  store i64 -2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit unwind label %bb.h

bb.h:                                             ; preds = %.thread
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

common.resume:                                    ; preds = %.body, %bb.n, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %i.bn, %bb.n ], [ %i.bg, %bb.h ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit: ; preds = %.thread
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.j:                                             ; preds = %bb.g
  %4 = or i8 %.sroa.02.0.ph68, %3
  %or.cond.not = icmp eq i8 %4, 0
  br i1 %or.cond.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.bi, align 8
  store i64 -2, ptr %0, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.bj = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.bj)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %.outer unwind label %.loopexit.loopexit.split-lp

.outer:                                           ; preds = %bb.l, %bb.aa
  %.sink = phi i8 [ 125, %bb.aa ], [ 123, %bb.l ]
  %.sroa.02.1 = phi i8 [ 0, %bb.aa ], [ 1, %bb.l ]
  %i.bk = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.r
  store i8 %.sink, ptr %i.bl, align 1
  %storemerge = add nuw i64 %i.r, 1               ; 2 uses
  store i64 %storemerge, ptr %.sroa.522.0..sroa_idx, align 8
  %i.bm = icmp eq ptr %.sroa.0.1, %i.o
  br i1 %i.bm, label %.thread, label %.lr.ph

bb.m:                                             ; preds = %bb.bq, %bb.br, %bb.k
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit31 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #13
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECsdjunURa2XPj_19ruff_python_literal.exit31: ; preds = %bb.m
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.d

bb.p:                                             ; preds = %bb.g
  %i.bp = trunc nuw i8 %.sroa.02.0.ph68 to i1
  br i1 %i.bp, label %bb.aa, label %bb.x

bb.q:                                             ; preds = %bb.g
  %i.bq = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.bq)
  %i.br = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 128
  br i1 %i.br, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 2048 ; 2 uses
  %i.bt = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 65536 ; 2 uses
  %..i = select i1 %i.bt, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.bs, i64 2, i64 %..i
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef %.sroa.0.0.ph.i)
          to label %.noexc unwind label %.loopexit.loopexit

.noexc:                                           ; preds = %bb.r
  %i.bu = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !alias.scope !223, !nonnull !3, !noundef !3
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 %i.r ; 9 uses
  %i.bw = trunc i32 %.sroa.4.0.i.ph.i to i8
  %i.bx = and i8 %i.bw, 63
  %i.by = or disjoint i8 %i.bx, -128              ; 3 uses
  %i.bz = lshr i32 %.sroa.4.0.i.ph.i, 6
  %i.ca = trunc i32 %i.bz to i8                   ; 2 uses
  %i.cb = and i8 %i.ca, 63
  %i.cc = or disjoint i8 %i.cb, -128              ; 2 uses
  %i.cd = lshr i32 %.sroa.4.0.i.ph.i, 12
  %i.ce = trunc i32 %i.cd to i8                   ; 2 uses
  %i.cf = and i8 %i.ce, 63
  %i.cg = or disjoint i8 %i.cf, -128
  %i.ch = lshr i32 %.sroa.4.0.i.ph.i, 18
  %i.ci = trunc nuw nsw i32 %i.ch to i8
  %i.cj = or disjoint i8 %i.ci, -16
  br i1 %i.bs, label %bb.t, label %bb.u

bb.s:                                             ; preds = %bb.q
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %.noexc32 unwind label %.loopexit.loopexit

.noexc32:                                         ; preds = %bb.s
  %i.ck = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !alias.scope !223, !nonnull !3, !noundef !3
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 %i.r
  %i.cm = trunc nuw nsw i32 %.sroa.4.0.i.ph.i to i8
  store i8 %i.cm, ptr %i.cl, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33

bb.t:                                             ; preds = %.noexc
  %i.cn = or disjoint i8 %i.ca, -64
  store i8 %i.cn, ptr %i.bv, align 1
  %i.co = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.by, ptr %i.co, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33

bb.u:                                             ; preds = %.noexc
  br i1 %i.bt, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.cp = or disjoint i8 %i.ce, -32
  store i8 %i.cp, ptr %i.bv, align 1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.cc, ptr %i.cq, align 1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.by, ptr %i.cr, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33

bb.w:                                             ; preds = %bb.u
  store i8 %i.cj, ptr %i.bv, align 1
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bv, i64 1
  store i8 %i.cg, ptr %i.cs, align 1
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bv, i64 2
  store i8 %i.cc, ptr %i.ct, align 1
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bv, i64 3
  store i8 %i.by, ptr %i.cu, align 1
  br label %_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33

_RNvMNtCscdodAO9FK5_5alloc6stringNtB2_6String4push.exit33: ; preds = %.noexc32, %bb.t, %bb.v, %bb.w
  %.sroa.0.03.i = phi i64 [ 1, %.noexc32 ], [ 2, %bb.t ], [ 3, %bb.v ], [ 4, %bb.w ]
  %i.cv = add nuw i64 %.sroa.0.03.i, %i.r         ; 2 uses
  store i64 %i.cv, ptr %.sroa.522.0..sroa_idx, align 8, !alias.scope !223
  %i.cw = icmp eq ptr %.sroa.0.1, %i.o
  br i1 %i.cw, label %.thread, label %bb.e

bb.x:                                             ; preds = %bb.p
  %i.cx = add i64 %.sroa.11.064, 1                ; 7 uses
  %i.cy = icmp eq i64 %i.cx, 0
  br i1 %i.cy, label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not.i = icmp ult i64 %i.cx, %i.m
  br i1 %.not.i, label %bb.z, label %.split3.i

.split3.i:                                        ; preds = %bb.y
  %i.cz = icmp eq i64 %i.cx, %i.m
  br i1 %i.cz, label %.split.i, label %bb.bn

bb.z:                                             ; preds = %bb.y
  %i.da = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cx
  %i.db = load i8, ptr %i.da, align 1, !alias.scope !224, !noalias !225, !noundef !3
  %i.dc = icmp sgt i8 %i.db, -65
  br i1 %i.dc, label %.split.i, label %bb.bn

.split.i:                                         ; preds = %bb.z, %.split3.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.cx
  %i.de = sub i64 %i.m, %i.cx
  br label %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit

bb.aa:                                            ; preds = %bb.p
  %i.df = icmp sgt i64 %i.r, -1
  call void @llvm.assume(i1 %i.df)
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %.outer unwind label %.loopexit.loopexit.split-lp

_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit: ; preds = %bb.x, %.split.i
  %.sroa.8.0 = phi i64 [ %i.m, %bb.x ], [ %i.de, %.split.i ]
  %.sroa.6.0 = phi ptr [ %i.n, %bb.x ], [ %i.dd, %.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13)
  %i.dg = load ptr, ptr %.sroa.421.0..sroa_idx, align 8, !nonnull !3, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !226
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !226
  store i64 2, ptr %i.g, align 8, !noalias !226
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 %i.r, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.dg, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 %i.r, ptr %.sroa.4.sroa.5.sroa.4.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 0, ptr %.sroa.4.sroa.5.sroa.5.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 %i.r, ptr %.sroa.4.sroa.5.sroa.6.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store i32 58, ptr %.sroa.4.sroa.5.sroa.7.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.5.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 60
  store i32 58, ptr %.sroa.4.sroa.5.sroa.8.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 4, !noalias !226
  %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 1, ptr %.sroa.4.sroa.5.sroa.9.0..sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i8 1, ptr %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !226
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 73
  store i8 0, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx.i, align 1, !noalias !226
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecReEINtB2_18SpecFromIterNestedB10_INtNtNtCs4NRVxsYgnAr_4core3str4iter6SplitNcEE9from_iterCsdjunURa2XPj_19ruff_python_literal(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(80) %i.g)
          to label %.noexc38 unwind label %.loopexit.split-lp

.noexc38:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core3stre16split_at_checked.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !226
  %i.dh = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.di = load i64, ptr %i.dh, align 8, !noalias !226, !noundef !3 ; 3 uses
  %.not.i37 = icmp eq i64 %i.di, 0
  br i1 %.not.i37, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.noexc38
end_hunk_0
