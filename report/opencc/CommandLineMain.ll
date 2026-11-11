Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencc/original/CommandLineMain?download=true
inline.NumInlined: 2961
inline.NumDeleted: 669
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z19WriteMeasuredResultv:bb.a

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit28: ; preds = %.noexc26
  %i.bu = load i8, ptr @_Z14outputFileNameB5cxx11, align 8, !tbaa !115, !range !37, !noundef !38
  %i.bv = trunc nuw i8 %i.bu to i1
  br i1 %i.bv, label %bb.i, label %bb.k

bb.i:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit28
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 0)
          to label %.noexc32 unwind label %bb.ag

.noexc32:                                         ; preds = %bb.i
  %i.bw = load ptr, ptr %1, align 8, !tbaa !121   ; 4 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 32
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !129
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !130 ; 2 uses
  %i.cb = ptrtoint ptr %i.by to i64
  %i.cc = ptrtoint ptr %i.ca to i64
  %i.cd = sub i64 %i.cb, %i.cc
  %i.ce = icmp slt i64 %i.cd, 4
  br i1 %i.ce, label %bb.j, label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE4NullEv.exit34, !prof !92

bb.j:                                             ; preds = %.noexc32
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, i64 noundef 4)
          to label %.noexc33 unwind label %bb.ag

.noexc33:                                         ; preds = %bb.j
  %.pre.i.i29 = load ptr, ptr %1, align 8, !tbaa !121 ; 2 uses
  %.phi.trans.insert.i.i30 = getelementptr inbounds nuw i8, ptr %.pre.i.i29, i64 24
  %.pre1.i.i31 = load ptr, ptr %.phi.trans.insert.i.i30, align 8, !tbaa !130
  br label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE4NullEv.exit34

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE4NullEv.exit34: ; preds = %.noexc32, %.noexc33
  %i.cf = phi ptr [ %i.ca, %.noexc32 ], [ %.pre1.i.i31, %.noexc33 ] ; 2 uses
  %i.cg = phi ptr [ %i.bw, %.noexc32 ], [ %.pre.i.i29, %.noexc33 ]
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  store ptr %i.ci, ptr %i.ch, align 8, !tbaa !130
  store i8 110, ptr %i.cf, align 1, !tbaa !47
  %i.cj = load ptr, ptr %1, align 8, !tbaa !121
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 24 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !130 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 1
  store ptr %i.cm, ptr %i.ck, align 8, !tbaa !130
  store i8 117, ptr %i.cl, align 1, !tbaa !47
  %i.cn = load ptr, ptr %1, align 8, !tbaa !121
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 24 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !130 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  store ptr %i.cq, ptr %i.co, align 8, !tbaa !130
  store i8 108, ptr %i.cp, align 1, !tbaa !47
  %i.cr = load ptr, ptr %1, align 8, !tbaa !121
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 24 ; 2 uses
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !130 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 1
  store ptr %i.cu, ptr %i.cs, align 8, !tbaa !130
  store i8 108, ptr %i.ct, align 1, !tbaa !47
  br label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit37

bb.k:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit28
  %i.cv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_Z14outputFileNameB5cxx11, i64 8), align 8, !tbaa !46 ; 2 uses
  %i.cw = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.cv) #38
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc35 unwind label %bb.ag

.noexc35:                                         ; preds = %bb.k
  %i.cx = trunc i64 %i.cw to i32
  %i.cy = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.cv, i32 noundef %i.cx)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit37 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit37: ; preds = %.noexc35, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE4NullEv.exit34
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc38 unwind label %bb.ag

.noexc38:                                         ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit37
  %i.cz = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.16, i32 noundef 4)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit40 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit40: ; preds = %.noexc38
  %i.da = load i8, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 48), align 8, !tbaa !137, !range !37, !noundef !38
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc41 unwind label %bb.ag

.noexc41:                                         ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit40
  %i.db = trunc nuw i8 %i.da to i1                ; 2 uses
  %i.dc = select i1 %i.db, i32 12, i32 4
  %i.dd = select i1 %i.db, ptr @.str.17, ptr @.str.18
  %i.de = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.dd, i32 noundef %i.dc)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit43 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit43: ; preds = %.noexc41
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc44 unwind label %bb.ag

.noexc44:                                         ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit43
  %i.df = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.19, i32 noundef 11)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit46 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit46: ; preds = %.noexc44
  %i.dg = load i32, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 52), align 4, !tbaa !138
  switch i32 %i.dg, label %bb.o [
    i32 1, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.n
  ]

bb.l:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit46
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc56.invoke unwind label %bb.ag

bb.m:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit46
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc56.invoke unwind label %bb.ag

bb.n:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit46
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc56.invoke unwind label %bb.ag

bb.o:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit46
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc56.invoke unwind label %bb.ag

.noexc56.invoke:                                  ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %i.dh = phi ptr [ @.str.22, %bb.n ], [ @.str.21, %bb.m ], [ @.str.20, %bb.l ], [ @.str.23, %bb.o ]
  %i.di = phi i32 [ 11, %bb.n ], [ 7, %bb.m ], [ 12, %bb.l ], [ 7, %bb.o ]
  %i.dj = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull %i.dh, i32 noundef %i.di)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit49 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit49: ; preds = %.noexc56.invoke
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc59 unwind label %bb.ag

.noexc59:                                         ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit49
  %i.dk = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.24, i32 noundef 7)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit61 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit61: ; preds = %.noexc59
  %i.dl = load double, ptr @measurement, align 8, !tbaa !139
  %i.dm = invoke noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.dl)
          to label %bb.p unwind label %bb.ag      ; 0 uses

bb.p:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit61
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc62 unwind label %bb.ag

.noexc62:                                         ; preds = %bb.p
  %i.dn = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.25, i32 noundef 10)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit64 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit64: ; preds = %.noexc62
  %i.do = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.dp = invoke noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.do)
          to label %bb.q unwind label %bb.ag      ; 0 uses

bb.q:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit64
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc65 unwind label %bb.ag

.noexc65:                                         ; preds = %bb.q
  %i.dq = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.26, i32 noundef 8)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit67 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit67: ; preds = %.noexc65
  %i.dr = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 16), align 8, !tbaa !141
  %i.ds = invoke noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.dr)
          to label %bb.r unwind label %bb.ag      ; 0 uses

bb.r:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit67
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc68 unwind label %bb.ag

.noexc68:                                         ; preds = %bb.r
  %i.dt = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.27, i32 noundef 8)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit70 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit70: ; preds = %.noexc68
  %i.du = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 24), align 8, !tbaa !142
  %i.dv = invoke noundef zeroext i1 @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6DoubleEd(ptr noundef nonnull align 8 dereferenceable(72) %1, double noundef %i.du)
          to label %bb.s unwind label %bb.ag      ; 0 uses

bb.s:                                             ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit70
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc71 unwind label %bb.ag

.noexc71:                                         ; preds = %bb.s
  %i.dw = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.28, i32 noundef 11)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit73 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit73: ; preds = %.noexc71
  %i.dx = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !143
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 6)
          to label %.noexc76.a unwind label %bb.ag

.noexc76.a:                                       ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit73
  %i.dy = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 32
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !129
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dy, i64 24 ; 3 uses
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !130 ; 2 uses
  %i.ed = ptrtoint ptr %i.ea to i64
  %i.ee = ptrtoint ptr %i.ec to i64               ; 2 uses
  %i.ef = sub i64 %i.ed, %i.ee
  %i.eg = icmp slt i64 %i.ef, 20
  br i1 %i.eg, label %bb.t, label %bb.u, !prof !92

bb.t:                                             ; preds = %.noexc76.a
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.dy, i64 noundef 20)
          to label %.noexc77.a unwind label %bb.ag

.noexc77.a:                                       ; preds = %bb.t
  %.pre.i.i.i74 = load ptr, ptr %i.eb, align 8, !tbaa !130 ; 2 uses
  %.pre.i.i75 = ptrtoint ptr %.pre.i.i.i74 to i64
  br label %bb.u

bb.u:                                             ; preds = %.noexc77.a, %.noexc76.a
  %.pre-phi.i.i = phi i64 [ %i.ee, %.noexc76.a ], [ %.pre.i.i75, %.noexc77.a ]
  %2 = phi ptr [ %i.ec, %.noexc76.a ], [ %.pre.i.i.i74, %.noexc77.a ] ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %2, i64 20
  store ptr %i.eh, ptr %i.eb, align 8, !tbaa !130
  %i.ei = call noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %i.dx, ptr noundef %2)
  %i.ej = load ptr, ptr %1, align 8, !tbaa !121
  %i.ek = ptrtoint ptr %i.ei to i64
  %.neg.neg.i.i = sub i64 %i.ek, %.pre-phi.i.i
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 24 ; 2 uses
  %i.em = load ptr, ptr %i.el, align 8, !tbaa !130
  %i.en = getelementptr i8, ptr %i.em, i64 %.neg.neg.i.i
  %i.eo = getelementptr i8, ptr %i.en, i64 -20
  store ptr %i.eo, ptr %i.el, align 8, !tbaa !130
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 5)
          to label %.noexc78 unwind label %bb.ag

.noexc78:                                         ; preds = %bb.u
  %i.ep = invoke noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteStringEPKcj(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull @.str.29, i32 noundef 12)
          to label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit80 unwind label %bb.ag ; 0 uses

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit80: ; preds = %.noexc78
  %i.eq = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  invoke void @_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE12PrettyPrefixENS_4TypeE(ptr noundef nonnull align 8 dereferenceable(72) %1, i32 noundef 6)
          to label %.noexc85 unwind label %bb.ag

.noexc85:                                         ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit80
  %i.er = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %i.es = getelementptr inbounds nuw i8, ptr %i.er, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !129
  %i.eu = getelementptr inbounds nuw i8, ptr %i.er, i64 24 ; 3 uses
  %i.ev = load ptr, ptr %i.eu, align 8, !tbaa !130 ; 2 uses
  %i.ew = ptrtoint ptr %i.et to i64
  %i.ex = ptrtoint ptr %i.ev to i64               ; 2 uses
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = icmp slt i64 %i.ey, 20
  br i1 %i.ez, label %bb.v, label %bb.w, !prof !92

bb.v:                                             ; preds = %.noexc85
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.er, i64 noundef 20)
          to label %.noexc86 unwind label %bb.ag

.noexc86:                                         ; preds = %bb.v
  %.pre.i.i.i83 = load ptr, ptr %i.eu, align 8, !tbaa !130 ; 2 uses
  %.pre.i.i84 = ptrtoint ptr %.pre.i.i.i83 to i64
  br label %bb.w

bb.w:                                             ; preds = %.noexc86, %.noexc85
  %.pre-phi.i.i81 = phi i64 [ %i.ex, %.noexc85 ], [ %.pre.i.i84, %.noexc86 ]
  %3 = phi ptr [ %i.ev, %.noexc85 ], [ %.pre.i.i.i83, %.noexc86 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %3, i64 20
  store ptr %i.fa, ptr %i.eu, align 8, !tbaa !130
  %i.fb = call noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %i.eq, ptr noundef %3)
  %i.fc = load ptr, ptr %1, align 8, !tbaa !121   ; 4 uses
  %i.fd = ptrtoint ptr %i.fb to i64
  %.neg.neg.i.i82 = sub i64 %i.fd, %.pre-phi.i.i81
  %i.fe = getelementptr inbounds nuw i8, ptr %i.fc, i64 24 ; 5 uses
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !130
  %i.fg = getelementptr i8, ptr %i.ff, i64 %.neg.neg.i.i82
  %i.fh = getelementptr i8, ptr %i.fg, i64 -20
  store ptr %i.fh, ptr %i.fe, align 8, !tbaa !130
  %i.fi = load ptr, ptr %i.o, align 8, !tbaa !130
  %i.fj = getelementptr inbounds i8, ptr %i.fi, i64 -16 ; 2 uses
  store ptr %i.fj, ptr %i.o, align 8, !tbaa !130
  %i.fk = load i64, ptr %i.fj, align 8, !tbaa !132
  %i.fl = icmp eq i64 %i.fk, 0
  br i1 %i.fl, label %bb.aa, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fc, i64 32
  %i.fn = load ptr, ptr %i.fm, align 8, !tbaa !129
  %i.fo = load ptr, ptr %i.fe, align 8, !tbaa !130 ; 2 uses
  %i.fp = ptrtoint ptr %i.fn to i64
  %i.fq = ptrtoint ptr %i.fo to i64
  %i.fr = sub i64 %i.fp, %i.fq
  %i.fs = icmp slt i64 %i.fr, 1
  br i1 %i.fs, label %bb.y, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !92

bb.y:                                             ; preds = %bb.x
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.fc, i64 noundef 1)
          to label %.noexc90.a unwind label %bb.ag

.noexc90.a:                                       ; preds = %bb.y
  %.pre.i.i89 = load ptr, ptr %i.fe, align 8, !tbaa !130
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %.noexc90.a, %bb.x
  %i.ft = phi ptr [ %i.fo, %bb.x ], [ %.pre.i.i89, %.noexc90.a ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 1
  store ptr %i.fu, ptr %i.fe, align 8, !tbaa !130
  store i8 10, ptr %i.ft, align 1, !tbaa !47
  %i.fv = load ptr, ptr %i.o, align 8, !tbaa !130
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !145
  %i.fy = ptrtoint ptr %i.fv to i64
  %i.fz = ptrtoint ptr %i.fx to i64
  %i.ga = sub i64 %i.fy, %i.fz
  %i.gb = lshr i64 %i.ga, 4
  %i.gc = load i32, ptr %i.k, align 8, !tbaa !127
  %i.gd = zext i32 %i.gc to i64
  %i.ge = mul i64 %i.gb, %i.gd                    ; 4 uses
  %i.gf = load ptr, ptr %1, align 8, !tbaa !121   ; 3 uses
  %i.gg = load i8, ptr %i.j, align 1, !tbaa !126
  %i.gh = getelementptr inbounds nuw i8, ptr %i.gf, i64 32
  %i.gi = load ptr, ptr %i.gh, align 8, !tbaa !129
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gf, i64 24 ; 3 uses
  %i.gk = load ptr, ptr %i.gj, align 8, !tbaa !130 ; 2 uses
  %i.gl = ptrtoint ptr %i.gi to i64
  %i.gm = ptrtoint ptr %i.gk to i64
  %i.gn = sub i64 %i.gl, %i.gm
  %i.go = icmp sgt i64 %i.ge, %i.gn
  br i1 %i.go, label %bb.z, label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i, !prof !92

bb.z:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gf, i64 noundef %i.ge)
          to label %.noexc91 unwind label %bb.ag

.noexc91:                                         ; preds = %bb.z
  %.pre.i.i.i88 = load ptr, ptr %i.gj, align 8, !tbaa !130
  br label %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i

_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i: ; preds = %.noexc91, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i
  %i.gp = phi ptr [ %i.gk, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i ], [ %.pre.i.i.i88, %.noexc91 ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 %i.ge
  store ptr %i.gq, ptr %i.gj, align 8, !tbaa !130
  call void @llvm.memset.p0.i64(ptr align 1 %i.gp, i8 %i.gg, i64 %i.ge, i1 false)
  %.pre = load ptr, ptr %1, align 8, !tbaa !121
  br label %bb.aa

bb.aa:                                            ; preds = %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i, %bb.w
  %i.gr = phi ptr [ %.pre, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteIndentEv.exit.i ], [ %i.fc, %bb.w ] ; 3 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.gt = load ptr, ptr %i.gs, align 8, !tbaa !129
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 24 ; 3 uses
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !130 ; 2 uses
  %i.gw = ptrtoint ptr %i.gt to i64
  %i.gx = ptrtoint ptr %i.gv to i64
  %i.gy = sub i64 %i.gw, %i.gx
  %i.gz = icmp slt i64 %i.gy, 1
  br i1 %i.gz, label %bb.ab, label %bb.ac, !prof !92

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.gr, i64 noundef 1)
          to label %.noexc92.a unwind label %bb.ag

.noexc92.a:                                       ; preds = %bb.ab
  %.pre.i.i1.i = load ptr, ptr %i.gu, align 8, !tbaa !130
  br label %bb.ac

bb.ac:                                            ; preds = %.noexc92.a, %bb.aa
  %i.ha = phi ptr [ %i.gv, %bb.aa ], [ %.pre.i.i1.i, %.noexc92.a ] ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.ha, i64 1
  store ptr %i.hb, ptr %i.gu, align 8, !tbaa !130
  store i8 125, ptr %i.ha, align 1, !tbaa !47
  %i.hc = invoke noundef ptr @_ZN6opencc5tools12OpenFileUtf8ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKc(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 8), ptr noundef nonnull @.str.30)
          to label %bb.ad unwind label %bb.ag     ; 4 uses

bb.ad:                                            ; preds = %bb.ac
  %.not = icmp eq ptr %i.hc, null
  br i1 %.not, label %bb.ae, label %bb.ai

bb.ae:                                            ; preds = %bb.ad
  %i.hd = call ptr @__cxa_allocate_exception(i64 40) #34 ; 3 uses
  invoke void @_ZN6opencc15FileNotWritableC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %i.hd, ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_Z22measuredResultFileNameB5cxx11, i64 8))
          to label %bb.af unwind label %bb.ah

bb.af:                                            ; preds = %bb.ae
  invoke void @__cxa_throw(ptr nonnull %i.hd, ptr nonnull @_ZTIN6opencc15FileNotWritableE, ptr nonnull @_ZN6opencc9ExceptionD2Ev) #35
          to label %bb.ap unwind label %bb.ag

bb.ag:                                            ; preds = %.noexc56.invoke, %bb.aj, %bb.ab, %bb.z, %bb.y, %bb.v, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit80, %.noexc78, %bb.u, %bb.t, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit73, %.noexc71, %bb.s, %.noexc68, %bb.r, %.noexc65, %bb.q, %.noexc62, %bb.p, %.noexc59, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit49, %bb.o, %bb.n, %bb.m, %bb.l, %.noexc44, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit43, %.noexc41, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit40, %.noexc38, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit37, %.noexc35, %bb.k, %bb.j, %bb.i, %.noexc26, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit25, %.noexc23, %bb.h, %bb.g, %bb.f, %.noexc18, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6StringEPKc.exit, %.noexc16, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit, %.noexc14, %bb.e, %bb.d, %bb.c, %bb.b, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit61, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit64, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit67, %_ZN9rapidjson12PrettyWriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE3KeyEPKc.exit70, %bb.af, %bb.ac
  %i.he = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.ah:                                            ; preds = %bb.ae
  %i.hf = landingpad { ptr, i32 }
          cleanup
  call void @__cxa_free_exception(ptr nonnull %i.hd) #34
  br label %bb.ao

bb.ai:                                            ; preds = %bb.ad
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !129
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.hj = load ptr, ptr %i.hi, align 8, !tbaa !130 ; 2 uses
  %i.hk = ptrtoint ptr %i.hh to i64
  %i.hl = ptrtoint ptr %i.hj to i64
  %i.hm = sub i64 %i.hk, %i.hl
  %i.hn = icmp slt i64 %i.hm, 1
  br i1 %i.hn, label %bb.aj, label %bb.ak, !prof !92

bb.aj:                                            ; preds = %bb.ai
  invoke void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %0, i64 noundef 1)
          to label %.noexc94 unwind label %bb.ag

.noexc94:                                         ; preds = %bb.aj
  %.pre.i93 = load ptr, ptr %i.hi, align 8, !tbaa !130
  br label %bb.ak

bb.ak:                                            ; preds = %.noexc94, %bb.ai
  %i.ho = phi ptr [ %i.hj, %bb.ai ], [ %.pre.i93, %.noexc94 ] ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 1
  store ptr %i.hp, ptr %i.hi, align 8, !tbaa !130
  store i8 0, ptr %i.ho, align 1, !tbaa !47
  %i.hq = load ptr, ptr %i.hi, align 8, !tbaa !130
  %i.hr = getelementptr inbounds i8, ptr %i.hq, i64 -1
  store ptr %i.hr, ptr %i.hi, align 8, !tbaa !130
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ht = load ptr, ptr %i.hs, align 8, !tbaa !145
  %i.hu = call i32 @fputs(ptr noundef %i.ht, ptr noundef nonnull %i.hc) ; 0 uses
  %i.hv = call i32 @fputc(i32 noundef 10, ptr noundef nonnull %i.hc) ; 0 uses
  %i.hw = call i32 @fclose(ptr noundef nonnull %i.hc) ; 0 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !145
  call void @free(ptr noundef %i.hy) #34
  %i.hz = load ptr, ptr %i.f, align 8, !tbaa !146 ; 2 uses
  %i.ia = icmp eq ptr %i.hz, null
  br i1 %i.ia, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @_ZdlPvm(ptr noundef nonnull %i.hz, i64 noundef 1) #36
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit: ; preds = %bb.ak, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  %i.ib = load ptr, ptr %i.hs, align 8, !tbaa !145
  call void @free(ptr noundef %i.ib) #34
  %i.ic = load ptr, ptr %i.c, align 8, !tbaa !146 ; 2 uses
  %i.id = icmp eq ptr %i.ic, null
  br i1 %i.id, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit, label %bb.am

bb.am:                                            ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit
  call void @_ZdlPvm(ptr noundef nonnull %i.ic, i64 noundef 1) #36
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit: ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  br label %bb.an

bb.an:                                            ; preds = %bb.a, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev.exit
  ret void

bb.ao:                                            ; preds = %bb.ag, %bb.ah
  %.pn.pn = phi { ptr, i32 } [ %i.hf, %bb.ah ], [ %i.he, %bb.ag ]
  call void @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EED2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %1) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #34
  call void @_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEED2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %0) #34
  resume { ptr, i32 } %.pn.pn

bb.ap:                                            ; preds = %bb.af
  unreachable
}

; Function Attrs: mustprogress uwtable
end_hunk_0
begin_hunk_1_@_ZN6opencc15AmbiguityStream5ChunkD2Ev:bb.a
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !173
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.k to i64
  %i.p = sub i64 %i.n, %i.o
  tail call void @_ZdlPvm(ptr noundef nonnull %i.k, i64 noundef %i.p) #36
  br label %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit

_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit: ; preds = %_ZSt8_DestroyIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEES5_EvT_S7_RSaIT0_E.exit.i, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !191  ; 3 uses
  %.not.i.i.i1 = icmp eq ptr %i.r, null
  br i1 %.not.i.i.i1, label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !192
  %i.u = ptrtoint ptr %i.t to i64
  %i.v = ptrtoint ptr %i.r to i64
  %i.w = sub i64 %i.u, %i.v
  tail call void @_ZdlPvm(ptr noundef nonnull %i.r, i64 noundef %i.w) #36
  br label %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit

_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit: ; preds = %_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EED2Ev.exit, %bb.c
  %i.x = load ptr, ptr %0, align 8, !tbaa !46     ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.z = icmp eq ptr %i.x, %i.y
  br i1 %i.z, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit
  %i.aa = load i64, ptr %i.y, align 8, !tbaa !47
  %i.ab = add i64 %i.aa, 1
  tail call void @_ZdlPvm(ptr noundef %i.x, i64 noundef %i.ab) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZNSt6vectorIN6opencc13AmbiguousSpanESaIS1_EED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN6opencc9ExceptionC2ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6opencc9ExceptionE, i64 16), ptr %0, align 8, !tbaa !44
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  store ptr %i.c, ptr %i.b, align 8, !tbaa !48
  %i.d = load ptr, ptr %1, align 8, !tbaa !46     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !45   ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #34
  store i64 %i.f, ptr %i.a, align 8, !tbaa !55
  %i.g = icmp ugt i64 %i.f, 15
  br i1 %i.g, label %.noexc.i, label %._crit_edge.i.i

.noexc.i:                                         ; preds = %bb.a
  %i.h = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.h, ptr %i.b, align 8, !tbaa !46
  %i.i = load i64, ptr %i.a, align 8, !tbaa !55
  store i64 %i.i, ptr %i.c, align 8, !tbaa !47
  br label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %.noexc.i, %bb.a
  %i.j = phi ptr [ %i.h, %.noexc.i ], [ %i.c, %bb.a ] ; 2 uses
  switch i64 %i.f, label %bb.c [
    i64 1, label %bb.b
    i64 0, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit
  ]

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.k = load i8, ptr %i.d, align 1, !tbaa !47
  store i8 %i.k, ptr %i.j, align 1, !tbaa !47
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

bb.c:                                             ; preds = %._crit_edge.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.j, ptr align 1 %i.d, i64 %i.f, i1 false)
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2ERKS4_.exit: ; preds = %._crit_edge.i.i, %bb.b, %bb.c
  %i.l = load i64, ptr %i.a, align 8, !tbaa !55   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !46
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.l
  store i8 0, ptr %i.o, align 1, !tbaa !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #34
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN6opencc9ExceptionD2Ev(ptr noundef nonnull align 8 dead_on_return(40) dereferenceable(40) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN6opencc9ExceptionE, i64 16), ptr %0, align 8, !tbaa !44
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !46   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = icmp eq ptr %i.b, %i.c
  br i1 %i.d, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.a
  %i.e = load i64, ptr %i.c, align 8, !tbaa !47
  %i.f = add i64 %i.e, 1
  tail call void @_ZdlPvm(ptr noundef %i.b, i64 noundef %i.f) #36
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  ret void
}

declare void @_ZN6opencc15AmbiguityStream6FinishEv(ptr dead_on_unwind writable sret(%"struct.opencc::AmbiguityStream::Chunk") align 8, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6Uint64Em(ptr noundef nonnull align 8 dereferenceable(61) %0, i64 noundef %1) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !130  ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !145
  %.not.i = icmp eq ptr %i.b, %i.d
  br i1 %.not.i, label %bb.i, label %bb.b, !prof !92

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds i8, ptr %i.b, i64 -16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !132  ; 2 uses
  %.not6.i = icmp eq i64 %i.f, 0
  br i1 %.not6.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds i8, ptr %i.b, i64 -8
  %i.h = load i8, ptr %i.g, align 8, !tbaa !133, !range !37, !noundef !38
  %i.i = trunc nuw i8 %i.h to i1
  %i.j = load ptr, ptr %0, align 8, !tbaa !121    ; 6 uses
  br i1 %i.i, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !129
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !130  ; 2 uses
  %i.o = ptrtoint ptr %i.l to i64
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = icmp slt i64 %i.q, 1
  br i1 %i.r, label %bb.e, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, !prof !92

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i.i = load ptr, ptr %i.m, align 8, !tbaa !130
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i: ; preds = %bb.e, %bb.d
  %i.s = phi ptr [ %i.n, %bb.d ], [ %.pre.i.i, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1
  store ptr %i.t, ptr %i.m, align 8, !tbaa !130
  store i8 44, ptr %i.s, align 1, !tbaa !47
  br label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.u = and i64 %i.f, 1
  %i.v = icmp eq i64 %i.u, 0
  %i.w = select i1 %i.v, i8 44, i8 58
  %i.x = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !129
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 24 ; 3 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !130 ; 2 uses
  %i.ab = ptrtoint ptr %i.y to i64
  %i.ac = ptrtoint ptr %i.aa to i64
  %i.ad = sub i64 %i.ab, %i.ac
  %i.ae = icmp slt i64 %i.ad, 1
  br i1 %i.ae, label %bb.g, label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, !prof !92

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.j, i64 noundef 1)
  %.pre.i7.i = load ptr, ptr %i.z, align 8, !tbaa !130
  br label %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i

_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i: ; preds = %bb.g, %bb.f
  %i.af = phi ptr [ %i.aa, %bb.f ], [ %.pre.i7.i, %bb.g ] ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 1
  store ptr %i.ag, ptr %i.z, align 8, !tbaa !130
  store i8 %i.w, ptr %i.af, align 1, !tbaa !47
  br label %bb.h

bb.h:                                             ; preds = %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit8.i, %_ZN9rapidjson19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEE3PutEc.exit.i, %bb.b
  %i.ah = load i64, ptr %i.e, align 8, !tbaa !132
  %i.ai = add i64 %i.ah, 1
  store i64 %i.ai, ptr %i.e, align 8, !tbaa !132
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

bb.i:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i8 1, ptr %i.aj, align 4, !tbaa !123
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit: ; preds = %bb.h, %bb.i
  %i.ak = load ptr, ptr %0, align 8, !tbaa !121   ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !129
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 24 ; 3 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  %i.ap = ptrtoint ptr %i.am to i64
  %i.aq = ptrtoint ptr %i.ao to i64               ; 2 uses
  %i.ar = sub i64 %i.ap, %i.aq
  %i.as = icmp slt i64 %i.ar, 20
  br i1 %i.as, label %bb.j, label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteUint64Em.exit, !prof !92

bb.j:                                             ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit
  tail call void @_ZN9rapidjson8internal5StackINS_12CrtAllocatorEE6ExpandIcEEvm(ptr noundef nonnull align 8 dereferenceable(48) %i.ak, i64 noundef 20)
  %.pre.i.i1 = load ptr, ptr %i.an, align 8, !tbaa !130 ; 2 uses
  %.pre.i = ptrtoint ptr %.pre.i.i1 to i64
  br label %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteUint64Em.exit

_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE11WriteUint64Em.exit: ; preds = %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit, %bb.j
  %.pre-phi.i = phi i64 [ %i.aq, %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit ], [ %.pre.i, %bb.j ]
  %2 = phi ptr [ %i.ao, %_ZN9rapidjson6WriterINS_19GenericStringBufferINS_4UTF8IcEENS_12CrtAllocatorEEES3_S3_S4_Lj0EE6PrefixENS_4TypeE.exit ], [ %.pre.i.i1, %bb.j ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 20
  store ptr %i.at, ptr %i.an, align 8, !tbaa !130
  %i.au = tail call noundef ptr @_ZN9rapidjson8internal6u64toaEmPc(i64 noundef %1, ptr noundef %2)
  %i.av = load ptr, ptr %0, align 8, !tbaa !121
  %i.aw = ptrtoint ptr %i.au to i64
  %.neg.neg.i = sub i64 %i.aw, %.pre-phi.i
  %i.ax = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !130
  %i.az = getelementptr i8, ptr %i.ay, i64 %.neg.neg.i
  %i.ba = getelementptr i8, ptr %i.az, i64 -20
  store ptr %i.ba, ptr %i.ax, align 8, !tbaa !130
  ret i1 true
}

declare noundef i64 @_ZNK6opencc15AmbiguityStream11SourceCountEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #11

; Function Attrs: nofree nounwind
declare noundef i32 @fflush(ptr noundef captures(none)) local_unnamed_addr #13

; Function Attrs: nounwind
declare void @_ZN6opencc15AmbiguityStreamD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #12

; Function Attrs: mustprogress uwtable
define dso_local void @_Z13ConvertStreamP8_IO_FILES0_(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #5 personality ptr @__gxx_personality_v0 {
_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 13 uses
  %3 = alloca %"class.opencc::ConverterStream", align 8 ; 20 uses
  %4 = alloca %"class.std::__cxx11::basic_string", align 8 ; 10 uses
  %5 = alloca %"class.std::__cxx11::basic_string", align 8 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #34
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 5 uses
  store ptr %i.a, ptr %2, align 8, !tbaa !48
  call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 1048576, i8 noundef signext 0)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  %i.b = load ptr, ptr @converter, align 16, !tbaa !164 ; 3 uses
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @converter, i64 8), align 8, !tbaa !168 ; 10 uses
  %.not.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i, label %_ZN6opencc15ConverterStreamC2ESt10shared_ptrINS_9ConverterEEm.exit, label %bb.a

bb.a:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 10 uses
  %i.e = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i.i = icmp eq i8 %i.e, 0
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  br i1 %.not.i.i.i.i, label %bb.b, label %.thread97

.thread97:                                        ; preds = %bb.a
  %i.g = load i32, ptr %i.d, align 4, !tbaa !39
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.d, align 4, !tbaa !39
  store ptr %i.b, ptr %3, align 8, !tbaa !164
  store ptr %i.c, ptr %i.f, align 8, !tbaa !168
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  %.pre = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %i.j = icmp eq i8 %.pre, 0
  store ptr %i.b, ptr %3, align 8, !tbaa !164
  store ptr %i.c, ptr %i.f, align 8, !tbaa !168
  br i1 %i.j, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.thread97, %bb.b
  %i.k = load i32, ptr %i.d, align 4, !tbaa !39
  %i.l = add nsw i32 %i.k, 1
  store i32 %i.l, ptr %i.d, align 4, !tbaa !39
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.m = atomicrmw volatile add ptr %i.d, i32 1 acq_rel, align 4 ; 0 uses
  br label %bb.e

_ZN6opencc15ConverterStreamC2ESt10shared_ptrINS_9ConverterEEm.exit: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2IS3_EEmcRKS3_.exit
  store ptr %i.b, ptr %3, align 8, !tbaa !164
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr null, ptr %i.n, align 8, !tbaa !168
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 16, ptr %i.o, align 8, !tbaa !351
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 3 uses
  store ptr %i.q, ptr %i.p, align 8, !tbaa !48
  %i.r = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.r, align 8, !tbaa !45
  store i8 0, ptr %i.q, align 8, !tbaa !47
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 16, ptr %i.s, align 8, !tbaa !351
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 5 uses
  store ptr %i.u, ptr %i.t, align 8, !tbaa !48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 0, ptr %i.v, align 8, !tbaa !45
  store i8 0, ptr %i.u, align 8, !tbaa !47
  %i.w = load atomic i64, ptr %i.d acquire, align 8 ; 2 uses
  %i.x = icmp eq i64 %i.w, 4294967297
  %i.y = trunc i64 %i.w to i32                    ; 2 uses
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i32 0, ptr %i.d, align 8, !tbaa !170
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  store i32 0, ptr %i.z, align 4, !tbaa !171
  %i.aa = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %i.ac = load ptr, ptr %i.ab, align 8
  call void %i.ac(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !15
  %i.ad = load ptr, ptr %i.c, align 8, !tbaa !44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  call void %i.af(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34, !inline_history !15
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e
  %i.ag = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i38 = icmp eq i8 %i.ag, 0
  br i1 %.not.i.i.i38, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ah = add nsw i32 %i.y, -1
  store i32 %i.ah, ptr %i.d, align 8, !tbaa !39
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.i:                                             ; preds = %bb.g
  %i.ai = atomicrmw volatile add ptr %i.d, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.i, %bb.h
  %.0.i.i.i.i = phi i32 [ %i.y, %bb.h ], [ %i.ai, %bb.i ]
  %i.aj = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.aj, label %bb.j, label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !92

bb.j:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.c) #34
  br label %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6opencc15ConverterStreamC2ESt10shared_ptrINS_9ConverterEEm.exit, %bb.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.j
  %i.ak = phi ptr [ %i.q, %_ZN6opencc15ConverterStreamC2ESt10shared_ptrINS_9ConverterEEm.exit ], [ %i.u, %bb.f ], [ %i.u, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.u, %bb.j ] ; 2 uses
  %i.al = phi ptr [ %i.p, %_ZN6opencc15ConverterStreamC2ESt10shared_ptrINS_9ConverterEEm.exit ], [ %i.t, %bb.f ], [ %i.t, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.t, %bb.j ]
  %i.am = phi ptr [ %i.n, %_ZN6opencc15ConverterStreamC2ESt10shared_ptrINS_9ConverterEEm.exit ], [ %i.f, %bb.f ], [ %i.f, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i ], [ %i.f, %bb.j ]
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i, %_ZNSt12__shared_ptrIN6opencc9ConverterELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit
  %i.aq = call i32 @feof(ptr noundef %0) #34
  %.not = icmp eq i32 %i.aq, 0
  br i1 %.not, label %bb.l, label %.thread80

bb.l:                                             ; preds = %bb.k
  %i.ar = load ptr, ptr %2, align 8, !tbaa !46
  %i.as = load i64, ptr %i.an, align 8, !tbaa !45
  %i.at = call i64 @fread(ptr noundef nonnull %i.ar, i64 noundef 1, i64 noundef %i.as, ptr noundef %0) ; 6 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %.thread80, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.av = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !143
  %i.aw = add i64 %i.av, %i.at
  store i64 %i.aw, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 32), align 8, !tbaa !143
  %i.ax = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @_Z42WarnIfStreamChunkContainsVariationSelectorPKcm(ptr noundef %i.ax, i64 noundef %i.at)
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.ay = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.az = load i64, ptr %i.an, align 8, !tbaa !45
  %i.ba = icmp ult i64 %i.at, %i.az
  br i1 %i.ba, label %bb.o, label %.thread

.thread:                                          ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  br label %bb.q

bb.o:                                             ; preds = %bb.n
  %i.bb = call i32 @feof(ptr noundef %0) #34
  %.not82 = icmp eq i32 %i.bb, 0
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  br i1 %.not82, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bc = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @_ZN6opencc15ConverterStream6FinishB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 %i.at, ptr %i.bc)
          to label %bb.r unwind label %bb.t

bb.q:                                             ; preds = %.thread, %bb.o
  %i.bd = load ptr, ptr %2, align 8, !tbaa !46
  invoke void @_ZN6opencc15ConverterStream12ConvertChunkB5cxx11ESt17basic_string_viewIcSt11char_traitsIcEE(ptr dead_on_unwind nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %4, ptr noundef nonnull align 8 dereferenceable(56) %3, i64 %i.at, ptr %i.bd)
          to label %bb.r unwind label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %cond = phi i1 [ true, %bb.q ], [ false, %bb.p ]
  %i.be = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
  %i.bf = sub nsw i64 %i.be, %i.ay
  %i.bg = sitofp i64 %i.bf to double
  %i.bh = fdiv double %i.bg, 1.000000e+06
  %i.bi = load double, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.bj = fadd double %i.bi, %i.bh
  store double %i.bj, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 8), align 8, !tbaa !140
  %i.bk = load i64, ptr %i.ao, align 8, !tbaa !45
  %i.bl = load i64, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.bm = add i64 %i.bl, %i.bk
  store i64 %i.bm, ptr getelementptr inbounds nuw (i8, ptr @measurement, i64 40), align 8, !tbaa !144
  %i.bn = call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #34
end_hunk_1
