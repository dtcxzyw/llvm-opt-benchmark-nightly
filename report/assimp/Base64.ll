inline.NumInlined: 213
inline.NumDeleted: 115
begin_hunk_0
@_ZN6Assimp6Base64L17tableDecodeBase64E = internal unnamed_addr constant [128 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00>\00\00\00?456789:;<=\00\00\00@\00\00\00\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\00\00\00\00\00\00\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123\00\00\00\00\00", align 16
@_ZTV17DeadlyImportError = linkonce_odr unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI17DeadlyImportError, ptr @_ZNSt13runtime_errorD2Ev, ptr @_ZN17DeadlyImportErrorD0Ev, ptr @_ZNKSt13runtime_error4whatEv] }, comdat, align 8
@_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant [4 x ptr], align 8
@_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE = external unnamed_addr constant { [16 x ptr] }, align 8
@_ZTVSt15basic_streambufIcSt11char_traitsIcEE = external unnamed_addr constant { [16 x ptr] }, align 8
@.str.6 = private unnamed_addr constant [49 x i8] c"cannot create std::vector larger than max_size()\00", align 1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Base646EncodeEPKhmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef readonly captures(address_is_null) %0, i64 noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.c, align 8
  %i.d = load ptr, ptr %2, align 8
  store i8 0, ptr %i.d, align 1
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.e = add i64 %1, 2
  %i.f = udiv i64 %i.e, 3
  %i.g = shl i64 %i.f, 2
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load i64, ptr %i.h, align 8              ; 2 uses
  %i.j = add i64 %i.i, %i.g
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef %i.j, i8 noundef signext 0)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.i
  %.059 = phi i64 [ 0, %bb.c ], [ %i.br, %bb.i ]  ; 4 uses
  %.05358 = phi i64 [ %i.i, %bb.c ], [ %.1, %bb.i ] ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.059 ; 2 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = lshr i8 %i.l, 2
  %i.n = zext nneg i8 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableEncodeBase64E, i64 %i.n
  %i.p = load i8, ptr %i.o, align 1
  %i.q = add i64 %.05358, 1                       ; 2 uses
  %i.r = load ptr, ptr %2, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 %.05358
  store i8 %i.p, ptr %i.s, align 1
  %i.t = load i8, ptr %i.k, align 1
  %i.u = shl i8 %i.t, 4
  %i.v = and i8 %i.u, 48                          ; 2 uses
  %i.w = add nuw i64 %.059, 1                     ; 2 uses
  %i.x = icmp ult i64 %i.w, %1
  br i1 %i.x, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 %i.w ; 2 uses
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = lshr i8 %i.z, 4
  %i.ab = or disjoint i8 %i.aa, %i.v
  %i.ac = zext nneg i8 %i.ab to i64
  %i.ad = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableEncodeBase64E, i64 %i.ac
  %i.ae = load i8, ptr %i.ad, align 1
  %i.af = add i64 %.05358, 2                      ; 2 uses
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %i.q
  store i8 %i.ae, ptr %i.ah, align 1
  %i.ai = load i8, ptr %i.y, align 1
  %i.aj = shl i8 %i.ai, 2
  %i.ak = and i8 %i.aj, 60                        ; 2 uses
  %i.al = add nuw i64 %.059, 2                    ; 2 uses
  %i.am = icmp ult i64 %i.al, %1
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 %i.al ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1
  %i.ap = lshr i8 %i.ao, 6
  %i.aq = or disjoint i8 %i.ap, %i.ak
  %i.ar = zext nneg i8 %i.aq to i64
  %i.as = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableEncodeBase64E, i64 %i.ar
  %i.at = load i8, ptr %i.as, align 1
  %i.au = load ptr, ptr %2, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 %i.af
  store i8 %i.at, ptr %i.av, align 1
  %i.aw = load i8, ptr %i.an, align 1
  %i.ax = and i8 %i.aw, 63
  %i.ay = zext nneg i8 %i.ax to i64
  %i.az = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableEncodeBase64E, i64 %i.ay
  %i.ba = load i8, ptr %i.az, align 1
  br label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.bb = zext nneg i8 %i.ak to i64
  %i.bc = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableEncodeBase64E, i64 %i.bb
  %i.bd = load i8, ptr %i.bc, align 4
  %i.be = load ptr, ptr %2, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %i.af
  store i8 %i.bd, ptr %i.bf, align 1
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.bg = zext nneg i8 %i.v to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableEncodeBase64E, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 16
  %i.bj = load ptr, ptr %2, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 %i.q
  store i8 %i.bi, ptr %i.bk, align 1
  %i.bl = load ptr, ptr %2, align 8
  %i.bm = getelementptr i8, ptr %i.bl, i64 %.05358
  %i.bn = getelementptr i8, ptr %i.bm, i64 2
  store i8 61, ptr %i.bn, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.g, %bb.h
  %.sink = phi i8 [ %i.ba, %bb.f ], [ 61, %bb.g ], [ 61, %bb.h ]
  %i.bo = load ptr, ptr %2, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 %.05358
  %i.bq = getelementptr i8, ptr %i.bp, i64 3
  store i8 %.sink, ptr %i.bq, align 1
  %.1 = add i64 %.05358, 4
  %i.br = add i64 %.059, 3                        ; 2 uses
  %i.bs = icmp ult i64 %i.br, %1
  br i1 %i.bs, label %bb.d, label %.loopexit, !llvm.loop !3

.loopexit:                                        ; preds = %bb.i, %bb.b
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Base646EncodeERKSt6vectorIhSaIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(32) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = ptrtoint ptr %i.c to i64
  %i.e = ptrtoint ptr %i.a to i64
  %i.f = sub i64 %i.d, %i.e
  tail call void @_ZN6Assimp6Base646EncodeEPKhmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %i.a, i64 noundef %i.f, ptr noundef nonnull align 8 dereferenceable(32) %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Base646EncodeB5cxx11ERKSt6vectorIhSaIhEE(ptr dead_on_unwind noalias nonnull writable sret(%"class.std::__cxx11::basic_string") align 8 %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store i8 0, ptr %i.a, align 8
  %i.c = load ptr, ptr %1, align 8                ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = ptrtoint ptr %i.e to i64
  %i.g = ptrtoint ptr %i.c to i64
  %i.h = sub i64 %i.f, %i.g
  invoke void @_ZN6Assimp6Base646EncodeEPKhmRNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef %i.c, i64 noundef %i.h, ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %_ZN6Assimp6Base646EncodeERKSt6vectorIhSaIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8                ; 2 uses
  %i.k = icmp eq ptr %i.j, %i.a
  br i1 %i.k, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.b
  %i.l = load i64, ptr %i.a, align 8
  %i.m = add i64 %i.l, 1
  tail call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.m) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  resume { ptr, i32 } %i.i

_ZN6Assimp6Base646EncodeERKSt6vectorIhSaIhEERNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE.exit: ; preds = %bb.a
  ret void
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2, 4611686018427387904) i64 @_ZN6Assimp6Base646DecodeEPKcmRPh(ptr noundef %0, i64 noundef %1, ptr noundef nonnull align 8 captures(none) dereferenceable(8) %2) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %i.b = alloca i64, align 8                      ; 4 uses
  %i.c = alloca i64, align 8                      ; 4 uses
  %i.d = alloca i64, align 8                      ; 4 uses
  %i.e = alloca i64, align 8                      ; 4 uses
  %i.f = alloca i64, align 8                      ; 4 uses
  %i.g = alloca i64, align 8                      ; 4 uses
  %i.h = alloca i64, align 8                      ; 4 uses
  %i.i = alloca i64, align 8                      ; 2 uses
  %3 = alloca %"class.std::__cxx11::basic_string", align 8 ; 8 uses
  %4 = alloca %"class.std::allocator", align 1    ; 5 uses
  store i64 %1, ptr %i.i, align 8
  %i.j = icmp eq ptr %0, null
  br i1 %i.j, label %.sink.split, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = and i64 %1, 3
  %.not = icmp eq i64 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  %.sroa.speculated = tail call i64 @llvm.umin.i64(i64 %1, i64 32)
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull %0, i64 noundef %.sroa.speculated, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.d unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN17DeadlyImportErrorC2IJRA31_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 1 dereferenceable(31) @.str, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(11) @.str.1, ptr noundef nonnull align 8 dereferenceable(8) %i.i)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  invoke void @__cxa_throw(ptr nonnull %i.l, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
          to label %bb.ak unwind label %bb.f

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %common.resume.sink.split

bb.f:                                             ; preds = %bb.e, %bb.d
  %.061 = phi i1 [ false, %bb.e ], [ true, %bb.d ] ; 2 uses
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.o = load ptr, ptr %3, align 8                ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.q = icmp eq ptr %i.o, %i.p
  br i1 %i.q, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.f
  %i.r = load i64, ptr %i.p, align 8
  %i.s = add i64 %i.r, 1
  call void @_ZdlPvm(ptr noundef %i.o, i64 noundef %i.s) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.061, label %common.resume.sink.split, label %common.resume

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br i1 %.061, label %common.resume.sink.split, label %common.resume

bb.g:                                             ; preds = %bb.b
  %i.t = icmp ult i64 %1, 4
  br i1 %i.t, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = getelementptr i8, ptr %0, i64 %1         ; 2 uses
  %i.v = getelementptr i8, ptr %i.u, i64 -1
  %i.w = load i8, ptr %i.v, align 1
  %i.x = icmp eq i8 %i.w, 61
  %.neg = sext i1 %i.x to i64
  %i.y = getelementptr i8, ptr %i.u, i64 -2
  %i.z = load i8, ptr %i.y, align 1
  %i.aa = icmp eq i8 %i.z, 61
  %.neg70 = sext i1 %i.aa to i64
  %i.ab = mul i64 %1, 3
  %i.ac = lshr exact i64 %i.ab, 2
  %.neg71 = add nsw i64 %i.ac, %.neg
  %i.ad = add nsw i64 %.neg71, %.neg70            ; 4 uses
  %i.ae = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %i.ad) #17 ; 2 uses
  store ptr %i.ae, ptr %2, align 8
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ae, i8 0, i64 %i.ad, i1 false)
  %.not153 = icmp eq i64 %1, 4
  br i1 %.not153, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %_ZN6Assimp6Base6410DecodeCharEc.exit78
  %i.af = phi i64 [ %i.cd, %_ZN6Assimp6Base6410DecodeCharEc.exit78 ], [ 4, %bb.h ] ; 3 uses
  %.062112 = phi i64 [ %i.af, %_ZN6Assimp6Base6410DecodeCharEc.exit78 ], [ 0, %bb.h ]
  %.063111 = phi i64 [ %i.ca, %_ZN6Assimp6Base6410DecodeCharEc.exit78 ], [ 0, %bb.h ] ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 %.062112 ; 4 uses
  %i.ah = load i8, ptr %i.ag, align 1             ; 3 uses
  %.not.i = icmp sgt i8 %i.ah, -1
  br i1 %.not.i, label %_ZN6Assimp6Base6410DecodeCharEc.exit, label %bb.i

bb.i:                                             ; preds = %.lr.ph
  %i.ai = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #15
  %i.aj = sext i8 %i.ah to i64
  store i64 %i.aj, ptr %i.h, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.h)
          to label %bb.j unwind label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @__cxa_throw(ptr nonnull %i.ai, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

common.resume.sink.split:                         ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %bb.k, %bb.n, %bb.q, %bb.t, %bb.w, %bb.z, %bb.ac, %bb.af
  %.sink = phi ptr [ %i.ai, %bb.k ], [ %i.df, %bb.af ], [ %i.cx, %bb.ac ], [ %i.cp, %bb.z ], [ %i.ch, %bb.w ], [ %i.bd, %bb.t ], [ %i.ay, %bb.q ], [ %i.aq, %bb.n ], [ %i.l, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.l, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %common.resume.op.ph = phi { ptr, i32 } [ %i.ak, %bb.k ], [ %i.dh, %bb.af ], [ %i.cz, %bb.ac ], [ %i.cr, %bb.z ], [ %i.cj, %bb.w ], [ %i.bf, %bb.t ], [ %i.ba, %bb.q ], [ %i.as, %bb.n ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %i.m, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  call void @__cxa_free_exception(ptr %.sink) #15
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  %common.resume.op = phi { ptr, i32 } [ %i.n, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.n, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.k:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit:             ; preds = %.lr.ph
  %i.al = zext nneg i8 %i.ah to i64
  %i.am = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 1
  %i.ap = load i8, ptr %i.ao, align 1             ; 3 uses
  %.not.i73 = icmp sgt i8 %i.ap, -1
  br i1 %.not.i73, label %_ZN6Assimp6Base6410DecodeCharEc.exit74, label %bb.l

bb.l:                                             ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit
  %i.aq = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #15
  %i.ar = sext i8 %i.ap to i64
  store i64 %i.ar, ptr %i.g, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.aq, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.g)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @__cxa_throw(ptr nonnull %i.aq, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit74:           ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit
  %i.at = zext nneg i8 %i.ap to i64
  %i.au = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.at
  %i.av = load i8, ptr %i.au, align 1             ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 2
  %i.ax = load i8, ptr %i.aw, align 1             ; 3 uses
  %.not.i75 = icmp sgt i8 %i.ax, -1
  br i1 %.not.i75, label %_ZN6Assimp6Base6410DecodeCharEc.exit76, label %bb.o

bb.o:                                             ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit74
  %i.ay = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #15
  %i.az = sext i8 %i.ax to i64
  store i64 %i.az, ptr %i.f, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ay, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.f)
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  call void @__cxa_throw(ptr nonnull %i.ay, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.ba = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit76:           ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit74
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ag, i64 3
  %i.bc = load i8, ptr %i.bb, align 1             ; 3 uses
  %.not.i77 = icmp sgt i8 %i.bc, -1
  br i1 %.not.i77, label %_ZN6Assimp6Base6410DecodeCharEc.exit78, label %bb.r

bb.r:                                             ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit76
  %i.bd = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #15
  %i.be = sext i8 %i.bc to i64
  store i64 %i.be, ptr %i.e, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.bd, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  call void @__cxa_throw(ptr nonnull %i.bd, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.bf = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit78:           ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit76
  %i.bg = zext nneg i8 %i.ax to i64
  %i.bh = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.bg
  %i.bi = load i8, ptr %i.bh, align 1             ; 2 uses
  %i.bj = zext nneg i8 %i.bc to i64
  %i.bk = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.bj
  %i.bl = load i8, ptr %i.bk, align 1
  %i.bm = shl i8 %i.an, 2
  %i.bn = lshr i8 %i.av, 4
  %i.bo = or i8 %i.bn, %i.bm
  %i.bp = load ptr, ptr %2, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 %.063111
  store i8 %i.bo, ptr %i.bq, align 1
  %i.br = shl i8 %i.av, 4
  %i.bs = lshr i8 %i.bi, 2
  %i.bt = or i8 %i.bs, %i.br
  %i.bu = load ptr, ptr %2, align 8
  %i.bv = getelementptr i8, ptr %i.bu, i64 %.063111
  %i.bw = getelementptr i8, ptr %i.bv, i64 1
  store i8 %i.bt, ptr %i.bw, align 1
  %i.bx = shl i8 %i.bi, 6
  %i.by = or i8 %i.bx, %i.bl
  %i.bz = load ptr, ptr %2, align 8
  %i.ca = add i64 %.063111, 3                     ; 2 uses
  %i.cb = getelementptr i8, ptr %i.bz, i64 %.063111
  %i.cc = getelementptr i8, ptr %i.cb, i64 2
  store i8 %i.by, ptr %i.cc, align 1
  %i.cd = add i64 %i.af, 4                        ; 2 uses
  %i.ce = icmp ult i64 %i.cd, %1
  br i1 %i.ce, label %.lr.ph, label %._crit_edge, !llvm.loop !5

._crit_edge:                                      ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit78, %bb.h
  %.063.lcssa = phi i64 [ 0, %bb.h ], [ %i.ca, %_ZN6Assimp6Base6410DecodeCharEc.exit78 ] ; 3 uses
  %.062.lcssa = phi i64 [ 0, %bb.h ], [ %i.af, %_ZN6Assimp6Base6410DecodeCharEc.exit78 ]
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 %.062.lcssa ; 4 uses
  %i.cg = load i8, ptr %i.cf, align 1             ; 3 uses
  %.not.i79 = icmp sgt i8 %i.cg, -1
  br i1 %.not.i79, label %_ZN6Assimp6Base6410DecodeCharEc.exit80, label %bb.u

bb.u:                                             ; preds = %._crit_edge
  %i.ch = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #15
  %i.ci = sext i8 %i.cg to i64
  store i64 %i.ci, ptr %i.d, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.d)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %bb.u
  call void @__cxa_throw(ptr nonnull %i.ch, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit80:           ; preds = %._crit_edge
  %i.ck = zext nneg i8 %i.cg to i64
  %i.cl = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.ck
  %i.cm = load i8, ptr %i.cl, align 1
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cf, i64 1
  %i.co = load i8, ptr %i.cn, align 1             ; 3 uses
  %.not.i81 = icmp sgt i8 %i.co, -1
  br i1 %.not.i81, label %_ZN6Assimp6Base6410DecodeCharEc.exit82, label %bb.x

bb.x:                                             ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit80
  %i.cp = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #15
  %i.cq = sext i8 %i.co to i64
  store i64 %i.cq, ptr %i.c, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cp, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.y unwind label %bb.z

bb.y:                                             ; preds = %bb.x
  call void @__cxa_throw(ptr nonnull %i.cp, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.z:                                             ; preds = %bb.x
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit82:           ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit80
  %i.cs = zext nneg i8 %i.co to i64
  %i.ct = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1             ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cf, i64 2
  %i.cw = load i8, ptr %i.cv, align 1             ; 4 uses
  %.not.i83 = icmp sgt i8 %i.cw, -1
  br i1 %.not.i83, label %_ZN6Assimp6Base6410DecodeCharEc.exit84, label %bb.aa

bb.aa:                                            ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit82
  %i.cx = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #15
  %i.cy = sext i8 %i.cw to i64
  store i64 %i.cy, ptr %i.b, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.cx, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %bb.ab unwind label %bb.ac

bb.ab:                                            ; preds = %bb.aa
  call void @__cxa_throw(ptr nonnull %i.cx, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cz = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit84:           ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit82
  %i.da = zext nneg i8 %i.cw to i64
  %i.db = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.da
  %i.dc = load i8, ptr %i.db, align 1             ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cf, i64 3
  %i.de = load i8, ptr %i.dd, align 1             ; 4 uses
  %.not.i85 = icmp sgt i8 %i.de, -1
  br i1 %.not.i85, label %_ZN6Assimp6Base6410DecodeCharEc.exit86, label %bb.ad

bb.ad:                                            ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit84
  %i.df = tail call ptr @__cxa_allocate_exception(i64 16) #15 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.dg = sext i8 %i.de to i64
  store i64 %i.dg, ptr %i.a, align 8
  invoke void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 1 dereferenceable(28) @.str.2, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %bb.ae unwind label %bb.af

bb.ae:                                            ; preds = %bb.ad
  call void @__cxa_throw(ptr nonnull %i.df, ptr nonnull @_ZTI17DeadlyImportError, ptr nonnull @_ZNSt13runtime_errorD2Ev) #16
  unreachable

bb.af:                                            ; preds = %bb.ad
  %i.dh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br label %common.resume.sink.split

_ZN6Assimp6Base6410DecodeCharEc.exit86:           ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit84
  %i.di = zext nneg i8 %i.de to i64
  %i.dj = getelementptr inbounds nuw i8, ptr @_ZN6Assimp6Base64L17tableDecodeBase64E, i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1
  %i.dl = shl i8 %i.cm, 2
  %i.dm = lshr i8 %i.cu, 4
  %i.dn = or i8 %i.dm, %i.dl
  %i.do = load ptr, ptr %2, align 8
  %i.dp = add i64 %.063.lcssa, 1                  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.do, i64 %.063.lcssa
  store i8 %i.dn, ptr %i.dq, align 1
  %.not92 = icmp eq i8 %i.cw, 61
  br i1 %.not92, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %_ZN6Assimp6Base6410DecodeCharEc.exit86
  %i.dr = shl i8 %i.cu, 4
  %i.ds = lshr i8 %i.dc, 2
  %i.dt = add nuw nsw i8 %i.ds, %i.dr
  %i.du = load ptr, ptr %2, align 8
  %i.dv = add i64 %.063.lcssa, 2
  %i.dw = getelementptr inbounds nuw i8, ptr %i.du, i64 %i.dp
  store i8 %i.dt, ptr %i.dw, align 1
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %_ZN6Assimp6Base6410DecodeCharEc.exit86
  %.164 = phi i64 [ %i.dv, %bb.ag ], [ %i.dp, %_ZN6Assimp6Base6410DecodeCharEc.exit86 ]
  %.not93 = icmp eq i8 %i.de, 61
  br i1 %.not93, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dx = shl i8 %i.dc, 6
  %i.dy = or disjoint i8 %i.dk, %i.dx
  %i.dz = load ptr, ptr %2, align 8
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dz, i64 %.164
  store i8 %i.dy, ptr %i.ea, align 1
  br label %bb.aj

.sink.split:                                      ; preds = %bb.g, %bb.a
  store ptr null, ptr %2, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %.sink.split, %bb.ah, %bb.ai
  %.0 = phi i64 [ %i.ad, %bb.ai ], [ %i.ad, %bb.ah ], [ 0, %.sink.split ]
  ret i64 %.0

bb.ak:                                            ; preds = %bb.e
  unreachable
}

declare ptr @__cxa_allocate_exception(i64) local_unnamed_addr

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcmRKS3_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, i64 noundef, ptr noundef nonnull align 1 dereferenceable(1)) unnamed_addr #0 align 2

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA31_KcNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_S1_RmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %5)
  invoke void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_KcRmERA31_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(31) %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %5, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %5, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #15
  resume { ptr, i32 } %i.o
}

; Function Attrs: nounwind
declare void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: cold noreturn
declare void @__cxa_throw(ptr, ptr, ptr) local_unnamed_addr #3

declare void @__cxa_free_exception(ptr) local_unnamed_addr

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress uwtable
define noundef range(i64 -2, 4611686018427387904) i64 @_ZN6Assimp6Base646DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERSt6vectorIhSaIhEE(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.b = load ptr, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = call noundef i64 @_ZN6Assimp6Base646DecodeEPKcmRPh(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  tail call void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #14
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %i.e, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret i64 %.0
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define void @_ZN6Assimp6Base646DecodeERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr dead_on_unwind noalias writable sret(%"class.std::vector") align 8 initializes((0, 24)) %0, ptr noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  store ptr null, ptr %i.a, align 8
  %i.b = load ptr, ptr %1, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8
  %i.e = invoke noundef i64 @_ZN6Assimp6Base646DecodeEPKcmRPh(ptr noundef %i.b, i64 noundef %i.d, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 4 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.e, label %bb.b

bb.b:                                             ; preds = %.noexc
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.e
  invoke void @_ZNSt6vectorIhSaIhEE13_M_assign_auxIPhEEvT_S4_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.f, ptr noundef nonnull %i.h)
          to label %.noexc3 unwind label %bb.c

.noexc3:                                          ; preds = %bb.b
  tail call void @_ZdaPv(ptr noundef nonnull %i.f) #14
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  %i.j = load ptr, ptr %0, align 8                ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIhSaIhEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.j to i64
  %i.o = sub i64 %i.m, %i.n
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef %i.o) #14
  br label %_ZNSt6vectorIhSaIhEED2Ev.exit

_ZNSt6vectorIhSaIhEED2Ev.exit:                    ; preds = %bb.c, %bb.d
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %.noexc3, %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorC2IJRA28_KcmEEEDpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(376) %3)
  invoke void @_ZN15DeadlyErrorBaseC2IJmERA28_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3, ptr noundef nonnull align 1 dereferenceable(28) %1, ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %3, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %3, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #15
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17DeadlyImportError, i64 16), ptr %0, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #15
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJmERA28_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(28) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(28) %2) #15
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(28) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJEmEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #14
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %4) #15
  resume { ptr, i32 } %i.q
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.a, ptr %0, align 8
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.c = getelementptr i8, ptr %i.a, i64 -24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr inbounds i8, ptr %0, i64 %i.d
  store ptr %i.b, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.j = icmp eq ptr %i.h, %i.i
  br i1 %i.j, label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i: ; preds = %bb.a
  %i.k = load i64, ptr %i.i, align 8
  %i.l = add i64 %i.k, 1
  tail call void @_ZdlPvm(ptr noundef %i.h, i64 noundef %i.l) #14
  br label %_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit

_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev.exit: ; preds = %bb.a, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.f, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.m) #15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  tail call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.n) #15
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN17DeadlyImportErrorD0Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZNSt13runtime_errorD2Ev(ptr noundef nonnull align 8 dereferenceable(16) %0) #15
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #14
  ret void
}

; Function Attrs: nounwind
declare noundef ptr @_ZNKSt13runtime_error4whatEv(ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #0 align 2

; Function Attrs: nounwind
declare void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dead_on_return(216) dereferenceable(216)) unnamed_addr #2

; Function Attrs: nounwind
declare void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr hidden void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %0, ptr noundef nonnull align 8 dereferenceable(376) %1) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.std::__cxx11::basic_string", align 8 ; 12 uses
  tail call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEC1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #15
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 7 uses
  store ptr %i.a, ptr %2, align 8, !alias.scope !15
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  store i64 0, ptr %i.b, align 8, !alias.scope !15
  store i8 0, ptr %i.a, align 8, !alias.scope !15
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !noalias !15 ; 3 uses
  %.not.i.not.i.i.i = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load ptr, ptr %i.e, align 8, !noalias !15 ; 2 uses
  %i.g = icmp ugt ptr %i.d, %i.f
  %.08.i.i.i.i = select i1 %i.g, ptr %i.d, ptr %i.f ; 2 uses
  %.not5.i.i.i = icmp eq ptr %.08.i.i.i.i, null
  %.not.i.i.i = select i1 %.not.i.not.i.i.i, i1 true, i1 %.not5.i.i.i
  br i1 %.not.i.i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !noalias !15 ; 2 uses
  %i.j = ptrtoint ptr %.08.i.i.i.i to i64
  %i.k = ptrtoint ptr %i.i to i64
  %i.l = sub i64 %i.j, %i.k
  %i.m = invoke noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32) %2, i64 noundef 0, i64 noundef 0, ptr noundef %i.i, i64 noundef %i.l)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c ; 0 uses

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.o = load ptr, ptr %2, align 8, !alias.scope !15 ; 2 uses
  %i.p = icmp eq ptr %i.o, %i.a
  br i1 %i.p, label %.body, label %.body.sink.split

bb.d:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %i.q)
          to label %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit unwind label %bb.c

_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit: ; preds = %bb.d, %bb.b
  %i.r = load ptr, ptr %2, align 8
  %i.s = load i64, ptr %i.b, align 8
  %i.t = invoke noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.r, i64 noundef %i.s)
          to label %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit unwind label %bb.e ; 0 uses

_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit: ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.u = load ptr, ptr %2, align 8                ; 2 uses
  %i.v = icmp eq ptr %i.u, %i.a
  br i1 %i.v, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit
  %i.w = load i64, ptr %i.a, align 8
  %i.x = add i64 %i.w, 1
  call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.x) #14
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZStlsIcSt11char_traitsIcESaIcEERSt13basic_ostreamIT_T0_ES7_RKNSt7__cxx1112basic_stringIS4_S5_T1_EE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  ret void

bb.e:                                             ; preds = %_ZNK6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEcvNSt7__cxx1112basic_stringIcS3_S4_EEEv.exit
  %i.y = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.z = load ptr, ptr %2, align 8                ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.a
  br i1 %i.aa, label %.body, label %.body.sink.split

.body.sink.split:                                 ; preds = %bb.e, %bb.c
  %.sink = phi ptr [ %i.o, %bb.c ], [ %i.z, %bb.e ]
  %.pn.ph = phi { ptr, i32 } [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  %i.ab = load i64, ptr %i.a, align 8
  %i.ac = add i64 %i.ab, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ac) #14
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e, %.body.sink.split
  %.pn = phi { ptr, i32 } [ %.pn.ph, %.body.sink.split ], [ %i.n, %bb.c ], [ %i.y, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #15
  call void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJEmEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load i64, ptr %2, align 8
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(376) %1, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %3, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %3, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %3, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #14
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %3) #15
  resume { ptr, i32 } %i.q
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #9

; Function Attrs: mustprogress nounwind uwtable
declare void @_ZNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEED1Ev(ptr noundef nonnull align 8 dereferenceable(112)) unnamed_addr #10 align 2

declare noundef nonnull align 8 dereferenceable(32) ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE10_M_replaceEmmPKcm(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #8

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #8

declare void @_ZN15DeadlyErrorBaseC2EN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef) unnamed_addr #8

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertImEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6resizeEmc(ptr noundef nonnull align 8 dereferenceable(32), i64 noundef, i8 noundef signext) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERA11_KcRmERA31_S7_EEN6Assimp9Formatter15basic_formatterIcS4_S5_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(31) %2, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 8 dereferenceable(8) %5) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(31) %2) #15
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(31) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %6, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRA11_KcRmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %6, ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull align 1 dereferenceable(11) %4, ptr noundef nonnull align 8 dereferenceable(8) %5)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %6, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %6, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
  %i.n = add i64 %i.m, 1
  call void @_ZdlPvm(ptr noundef %i.j, i64 noundef %i.n) #14
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.h, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #15
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.p) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.q = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %6) #15
  resume { ptr, i32 } %i.q
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRA11_KcRmENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEEN6Assimp9Formatter15basic_formatterIcS8_S9_EEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = load ptr, ptr %2, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef %i.a, i64 noundef %i.c) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %5, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJRmERA11_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %5, ptr noundef nonnull align 1 dereferenceable(11) %3, ptr noundef nonnull align 8 dereferenceable(8) %4)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.e, ptr %5, align 8
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.g = getelementptr i8, ptr %i.e, i64 -24
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr inbounds i8, ptr %5, i64 %i.h
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 80
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %5, i64 96 ; 2 uses
  %i.n = icmp eq ptr %i.l, %i.m
  br i1 %i.n, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.o = load i64, ptr %i.m, align 8
  %i.p = add i64 %i.o, 1
  call void @_ZdlPvm(ptr noundef %i.l, i64 noundef %i.p) #14
  br label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit

_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.b, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVSt15basic_streambufIcSt11char_traitsIcEE, i64 16), ptr %i.j, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %5, i64 64
  call void @_ZNSt6localeD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.q) #15
  %i.r = getelementptr inbounds nuw i8, ptr %5, i64 112
  call void @_ZNSt8ios_baseD2Ev(ptr noundef nonnull align 8 dereferenceable(264) %i.r) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.s = landingpad { ptr, i32 }
          cleanup
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev(ptr noundef nonnull align 8 dead_on_return(376) dereferenceable(376) %5) #15
  resume { ptr, i32 } %i.s
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN15DeadlyErrorBaseC2IJRmERA11_KcEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, ptr noundef nonnull align 1 dereferenceable(11) %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.Assimp::Formatter::basic_formatter", align 8 ; 10 uses
  %i.a = tail call noundef i64 @strlen(ptr noundef nonnull align 1 dereferenceable(11) %2) #15
  %i.b = tail call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(376) %1, ptr noundef nonnull align 1 dereferenceable(11) %2, i64 noundef %i.a) ; 0 uses
  call void @_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEC2EOS5_(ptr noundef nonnull align 8 dereferenceable(376) %4, ptr noundef nonnull align 8 dereferenceable(376) %1)
  invoke void @_ZN15DeadlyErrorBaseC2IJERmEEN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEEEOT0_DpOT_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, align 8 ; 2 uses
  store ptr %i.c, ptr %4, align 8
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_ZTTNSt7__cxx1119basic_ostringstreamIcSt11char_traitsIcESaIcEEE, i64 24), align 8
  %i.e = getelementptr i8, ptr %i.c, i64 -24
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr inbounds i8, ptr %4, i64 %i.f
  store ptr %i.d, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTVNSt7__cxx1115basic_stringbufIcSt11char_traitsIcESaIcEEE, i64 16), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 80
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 96 ; 2 uses
  %i.l = icmp eq ptr %i.j, %i.k
  br i1 %i.l, label %_ZN6Assimp9Formatter15basic_formatterIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i.i.i: ; preds = %bb.b
  %i.m = load i64, ptr %i.k, align 8
end_hunk_0
