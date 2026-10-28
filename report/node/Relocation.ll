Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/Relocation?download=true
inline.NumInlined: 2632
inline.NumDeleted: 858
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 46
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN4LIEF2PElsERSoRKNS0_10RelocationE:_ZN3fmt3v116detail10vformat_toERNS1_6bufferIcEENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEENS1_10locale_refE.exit
  store i8 %i.z, ptr %i.y, align 1
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.y, ptr align 1 %i.r, i64 %i.p, i1 false)
  br label %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i

_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i: ; preds = %bb.e, %bb.d, %._crit_edge.i.i.i.i
  %i.aa = load i64, ptr %i.b, align 8, !noalias !100 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i64 %i.aa, ptr %i.ab, align 8, !alias.scope !100
  %i.ac = load ptr, ptr %5, align 8, !alias.scope !100
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 %i.aa
  store i8 0, ptr %i.ad, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23, !noalias !100
  %i.ae = load ptr, ptr %3, align 8, !noalias !98 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ae, %i.k
  br i1 %.not.i.i.i, label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, label %bb.f

bb.f:                                             ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i
  call void @free(ptr noundef %i.ae) #23
  br label %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit

_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit: ; preds = %_ZN3fmt3v119to_stringILm500EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEERKNS0_19basic_memory_bufferIcXT_ENS0_6detail9allocatorIcEEEE.exit.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23, !noalias !98
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23, !noalias !97
  %i.af = load ptr, ptr %5, align 8
  %i.ag = load i64, ptr %i.ab, align 8
  %i.ah = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.af, i64 noundef %i.ag) #23 ; 0 uses
  %i.ai = load ptr, ptr %5, align 8               ; 2 uses
  %i.aj = icmp eq ptr %i.ai, %i.s
  br i1 %i.aj, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit
  %i.ak = load i64, ptr %i.s, align 8
  %i.al = add i64 %i.ak, 1
  call void @_ZdlPvm(ptr noundef %i.ai, i64 noundef %i.al) #24
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %_ZN3fmt3v117vformatB5cxx11ENS0_17basic_string_viewIcEENS0_17basic_format_argsINS0_7contextEEE.exit, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.an = load ptr, ptr %i.am, align 8, !noalias !101 ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !noalias !102 ; 2 uses
  %i.aq = ptrtoint ptr %i.ap to i64
  %i.ar = ptrtoint ptr %i.an to i64
  %i.as = sub i64 %i.aq, %i.ar
  %i.at = ashr exact i64 %i.as, 3
  %.not19 = icmp eq ptr %i.ap, %i.an
  br i1 %.not19, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  ret ptr %0

.lr.ph:                                           ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit
  %.sroa.410.021 = phi ptr [ %i.bf, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ %i.an, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ] ; 2 uses
  %.sroa.8.020 = phi i64 [ %i.bg, %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit ], [ 0, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ]
  %i.au = load ptr, ptr %.sroa.410.021, align 8
  %i.av = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @.str.1, i64 noundef 2) #23 ; 0 uses
  %i.aw = call noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_15RelocationEntryE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au) #23 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i8 10, ptr %i.a, align 1
  %i.ax = load ptr, ptr %i.aw, align 8
  %i.ay = getelementptr i8, ptr %i.ax, i64 -24
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds i8, ptr %i.aw, i64 %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8
  %.not.i = icmp eq i64 %i.bc, 0
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.bd = call noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, ptr noundef nonnull %i.a, i64 noundef 1) #23 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

bb.h:                                             ; preds = %.lr.ph
  %i.be = call noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo3putEc(ptr noundef nonnull align 8 dereferenceable(8) %i.aw, i8 noundef signext 10) #23 ; 0 uses
  br label %_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit

_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_c.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.bf = getelementptr inbounds nuw i8, ptr %.sroa.410.021, i64 8
  %i.bg = add nuw nsw i64 %.sroa.8.020, 1         ; 2 uses
  %.not = icmp eq i64 %i.bg, %i.at
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZN4LIEF2PElsERSoRKNS0_15RelocationEntryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN4LIEF2PE10Relocation5parseERNS0_6ParserERNS_12BinaryStreamE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.std::vector.54") align 8 captures(none) initializes((0, 24)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(215) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = alloca i16, align 2                      ; 7 uses
  %i.b = alloca i32, align 4                      ; 7 uses
  %i.c = alloca i32, align 4                      ; 7 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 180
  %i.g = load i32, ptr %i.f, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 16 uses
  %i.i = load i64, ptr %i.h, align 8
  %i.j = load ptr, ptr %2, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef i64 %i.l(ptr noundef nonnull align 8 dereferenceable(24) %2) #23, !inline_history !103
  %i.n = icmp ult i64 %i.i, %i.m
  br i1 %i.n, label %.lr.ph112, label %.critedge.loopexit

.lr.ph112:                                        ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph112, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit
  %i.r = phi ptr [ null, %.lr.ph112 ], [ %i.gi, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit ] ; 10 uses
  %i.s = phi ptr [ null, %.lr.ph112 ], [ %i.gj, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit ] ; 6 uses
  %i.t = phi ptr [ null, %.lr.ph112 ], [ %i.gk, %_ZNSt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS2_EED2Ev.exit ] ; 27 uses
  %i.u = load i64, ptr %i.h, align 8              ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #23
  store i32 0, ptr %i.c, align 4
  %i.v = load ptr, ptr %2, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call i64 %i.x(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.c, i64 noundef %i.u, i64 noundef 4, i64 noundef 0) #23, !inline_history !104
  %i.z = and i64 %i.y, 4294967296
  %.not.i.i = icmp eq i64 %i.z, 0
  store i64 %i.u, ptr %i.h, align 8
  br i1 %.not.i.i, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread, label %bb.c

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit.thread: ; preds = %bb.b
  store ptr %i.t, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.aa = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.4) #23 ; 0 uses
  br label %.critedge

bb.c:                                             ; preds = %bb.b
  %i.ab = load i8, ptr %i.o, align 8, !range !42, !noundef !43
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.d, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

bb.d:                                             ; preds = %bb.c
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.c) #23
  %.pre.i = load i64, ptr %i.h, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit: ; preds = %bb.c, %bb.d
  %i.ad = phi i64 [ %i.u, %bb.c ], [ %.pre.i, %bb.d ]
  %i.ae = load i32, ptr %i.c, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #23
  %i.af = add i64 %i.ad, 4                        ; 4 uses
  store i64 %i.af, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  store i32 0, ptr %i.b, align 4
  %i.ag = load ptr, ptr %2, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = call i64 %i.ai(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.b, i64 noundef %i.af, i64 noundef 4, i64 noundef 0) #23, !inline_history !104
  %i.ak = and i64 %i.aj, 4294967296
  %.not.i.i15 = icmp eq i64 %i.ak, 0
  store i64 %i.af, ptr %i.h, align 8
  br i1 %.not.i.i15, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread, label %bb.e

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20.thread: ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  store ptr %i.t, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.al = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.4) #23 ; 0 uses
  br label %.critedge

bb.e:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit
  %i.am = load i8, ptr %i.o, align 8, !range !42, !noundef !43
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.f, label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20

bb.f:                                             ; preds = %bb.e
  call void @_ZN4LIEF11swap_endianIjEEvPT_(ptr noundef nonnull %i.b) #23
  %.pre.i18 = load i64, ptr %i.h, align 8
  br label %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20

_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20: ; preds = %bb.e, %bb.f
  %i.ao = phi i64 [ %i.af, %bb.e ], [ %.pre.i18, %bb.f ]
  %i.ap = load i32, ptr %i.b, align 4             ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  %i.aq = add i64 %i.ao, 4
  store i64 %i.aq, ptr %i.h, align 8
  %i.ar = call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #26, !noalias !136 ; 12 uses
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.ar) #23, !noalias !136
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTVN4LIEF2PE10RelocationE, i64 16), ptr %i.ar, align 8, !noalias !136
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  store i32 %i.ap, ptr %i.as, align 8, !noalias !136
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store i32 %i.ae, ptr %i.at, align 4, !noalias !136
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 16 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false), !noalias !136
  %i.av = icmp ugt i32 %i.ap, 7
  br i1 %i.av, label %bb.l, label %bb.g

bb.g:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20
  %i.aw = ptrtoaddr ptr %i.r to i64
  %i.ax = ptrtoaddr ptr %i.t to i64
  store ptr %i.t, ptr %0, align 8
  %.not.i.i21 = icmp eq ptr %i.s, %i.r
  br i1 %.not.i.i21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ay = ptrtoint ptr %i.ar to i64
  store i64 %i.ay, ptr %i.s, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.az, ptr %i.p, align 8
  br label %.critedge

bb.i:                                             ; preds = %bb.g
  %i.ba = ptrtoint ptr %i.r to i64
  %i.bb = ptrtoint ptr %i.t to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 4 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.j, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.j:                                             ; preds = %bb.i
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.i
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i29 = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i29)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #26 ; 10 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.bc
  %i.bm = ptrtoint ptr %i.ar to i64
  store i64 %i.bm, ptr %i.bl, align 8
  %.not10.i.i.i.i = icmp eq ptr %i.t, %i.r
  br i1 %.not10.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.bn = add i64 %i.aw, -8
  %i.bo = sub i64 %i.bn, %i.ax                    ; 3 uses
  %i.bp = lshr i64 %i.bo, 3
  %i.bq = add nuw nsw i64 %i.bp, 1                ; 2 uses
  %min.iters.check228 = icmp ult i64 %i.bo, 120
  br i1 %min.iters.check228, label %.lr.ph.i.i.i.i.preheader246, label %vector.memcheck229

vector.memcheck229:                               ; preds = %.lr.ph.i.i.i.i.preheader
  %i.br = and i64 %i.bo, -8
  %i.bs = add i64 %i.br, 8                        ; 2 uses
  %i.bt = getelementptr i8, ptr %i.bk, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.t, i64 %i.bs
  %bound0230 = icmp ult ptr %i.bk, %i.bu
  %bound1231 = icmp ult ptr %i.t, %i.bt
  %found.conflict232 = and i1 %bound0230, %bound1231
  br i1 %found.conflict232, label %.lr.ph.i.i.i.i.preheader246, label %vector.ph233

vector.ph233:                                     ; preds = %vector.memcheck229
  %n.vec234 = and i64 %i.bq, 4611686018427387900  ; 3 uses
  %i.bv = shl i64 %n.vec234, 3                    ; 2 uses
  %i.bw = getelementptr i8, ptr %i.bk, i64 %i.bv  ; 2 uses
  %i.bx = getelementptr i8, ptr %i.t, i64 %i.bv
  br label %vector.body235

vector.body235:                                   ; preds = %vector.body235, %vector.ph233
  %index236 = phi i64 [ 0, %vector.ph233 ], [ %index.next241, %vector.body235 ] ; 2 uses
  %i.by = shl i64 %index236, 3                    ; 2 uses
  %next.gep237 = getelementptr i8, ptr %i.bk, i64 %i.by ; 2 uses
  %next.gep238 = getelementptr i8, ptr %i.t, i64 %i.by ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.bz = getelementptr i8, ptr %next.gep238, i64 16
  %wide.load239 = load <2 x i64>, ptr %next.gep238, align 8, !alias.scope !139
  %wide.load240 = load <2 x i64>, ptr %i.bz, align 8, !alias.scope !139
  %i.ca = getelementptr i8, ptr %next.gep237, i64 16
  store <2 x i64> %wide.load239, ptr %next.gep237, align 8, !alias.scope !140, !noalias !141
  store <2 x i64> %wide.load240, ptr %i.ca, align 8, !alias.scope !140, !noalias !141
  %i.cb = getelementptr i8, ptr %next.gep238, i64 16
  store <2 x ptr> splat (ptr null), ptr %next.gep238, align 8, !alias.scope !139
  store <2 x ptr> splat (ptr null), ptr %i.cb, align 8, !alias.scope !139
  %index.next241 = add nuw i64 %index236, 4       ; 2 uses
  %i.cc = icmp eq i64 %index.next241, %n.vec234
  br i1 %i.cc, label %middle.block242, label %vector.body235, !llvm.loop !113

middle.block242:                                  ; preds = %vector.body235
  %cmp.n243 = icmp eq i64 %i.bq, %n.vec234
  br i1 %cmp.n243, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i.preheader246

.lr.ph.i.i.i.i.preheader246:                      ; preds = %vector.memcheck229, %.lr.ph.i.i.i.i.preheader, %middle.block242
  %.012.i.i.i.i.ph = phi ptr [ %i.bk, %vector.memcheck229 ], [ %i.bk, %.lr.ph.i.i.i.i.preheader ], [ %i.bw, %middle.block242 ]
  %.0911.i.i.i.i.ph = phi ptr [ %i.t, %vector.memcheck229 ], [ %i.t, %.lr.ph.i.i.i.i.preheader ], [ %i.bx, %middle.block242 ]
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader246, %.lr.ph.i.i.i.i
  %.012.i.i.i.i = phi ptr [ %i.cf, %.lr.ph.i.i.i.i ], [ %.012.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader246 ] ; 2 uses
  %.0911.i.i.i.i = phi ptr [ %i.ce, %.lr.ph.i.i.i.i ], [ %.0911.i.i.i.i.ph, %.lr.ph.i.i.i.i.preheader246 ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !137)
  call void @llvm.experimental.noalias.scope.decl(metadata !138)
  %i.cd = load i64, ptr %.0911.i.i.i.i, align 8, !alias.scope !138
  store i64 %i.cd, ptr %.012.i.i.i.i, align 8, !alias.scope !137
  store ptr null, ptr %.0911.i.i.i.i, align 8, !alias.scope !138
  %i.ce = getelementptr inbounds nuw i8, ptr %.0911.i.i.i.i, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %.012.i.i.i.i, i64 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ce, %i.r
  br i1 %.not.i.i.i.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i, !llvm.loop !114

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i: ; preds = %.lr.ph.i.i.i.i, %middle.block242, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %.0.lcssa.i.i.i.i = phi ptr [ %i.bk, %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i ], [ %i.bw, %middle.block242 ], [ %i.cf, %.lr.ph.i.i.i.i ]
  %i.cg = getelementptr inbounds nuw i8, ptr %.0.lcssa.i.i.i.i, i64 8
  %.not.i23.i = icmp eq ptr %i.t, null
  br i1 %.not.i23.i, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit, label %bb.k

bb.k:                                             ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i
  call void @_ZdlPvm(ptr noundef nonnull %i.t, i64 noundef %i.bc) #24
  br label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit

_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE17_M_realloc_insertIJS6_EEEvN9__gnu_cxx17__normal_iteratorIPS6_S8_EEDpOT_.exit: ; preds = %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE10RelocationESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, %bb.k
  store ptr %i.bk, ptr %0, align 8
  store ptr %i.cg, ptr %i.p, align 8
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.ch, ptr %i.q, align 8
  br label %.critedge

bb.l:                                             ; preds = %_ZNK4LIEF12BinaryStream4readIjEENS_6resultIT_EEv.exit20
  %i.ci = add i32 %i.ap, -8                       ; 2 uses
  %i.cj = lshr i32 %i.ci, 1                       ; 2 uses
  %i.ck = zext nneg i32 %i.cj to i64
  %i.cl = load i64, ptr %i.h, align 8
  %.not = icmp eq i32 %i.cj, 0
  br i1 %.not, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 4 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 3 uses
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.t
  %storemerge105 = phi i64 [ 0, %.lr.ph ], [ %i.ey, %bb.t ]
  %i.co = load i64, ptr %i.h, align 8             ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i16 0, ptr %i.a, align 2
  %i.cp = load ptr, ptr %2, align 8
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = call i64 %i.cr(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.a, i64 noundef %i.co, i64 noundef 2, i64 noundef 0) #23, !inline_history !115
  %i.ct = and i64 %i.cs, 4294967296
  %.not.i.i22 = icmp eq i64 %i.ct, 0
  store i64 %i.co, ptr %i.h, align 8
  br i1 %.not.i.i22, label %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit.thread, label %bb.n

_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit.thread: ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cu = call noundef nonnull align 8 dereferenceable(16) ptr @_ZN4LIEF7logging6Logger8instanceEPKc(ptr noundef nonnull @.str.4) #23 ; 0 uses
  br label %.loopexit

bb.n:                                             ; preds = %bb.m
  %i.cv = load i8, ptr %i.o, align 8, !range !42, !noundef !43
  %i.cw = trunc nuw i8 %i.cv to i1
  br i1 %i.cw, label %bb.o, label %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit

bb.o:                                             ; preds = %bb.n
  call void @_ZN4LIEF11swap_endianItEEvPT_(ptr noundef nonnull %i.a) #23
  %.pre.i24 = load i64, ptr %i.h, align 8
  br label %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit

_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit: ; preds = %bb.n, %bb.o
  %i.cx = phi i64 [ %i.co, %bb.n ], [ %.pre.i24, %bb.o ]
  %i.cy = load i16, ptr %i.a, align 2             ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  %i.cz = add i64 %i.cx, 2
  store i64 %i.cz, ptr %i.h, align 8
  %i.da = and i16 %i.cy, 4095
  %i.db = call noundef i32 @_ZN4LIEF2PE15RelocationEntry14type_from_dataENS0_6Header13MACHINE_TYPESEt(i32 noundef %i.g, i16 noundef zeroext %i.cy) #23
  %i.dc = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #26, !noalias !142 ; 9 uses
  call void @_ZN4LIEF6ObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(32) %i.dc) #23, !noalias !142
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  store i64 0, ptr %i.dd, align 8, !noalias !142
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  store i8 0, ptr %i.de, align 8, !noalias !142
  store ptr getelementptr inbounds nuw inrange(-16, 104) (i8, ptr @_ZTVN4LIEF2PE15RelocationEntryE, i64 16), ptr %i.dc, align 8, !noalias !142
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 18
  store i16 %i.da, ptr %i.df, align 2, !noalias !142
  %i.dg = getelementptr inbounds nuw i8, ptr %i.dc, i64 20
  store i32 %i.db, ptr %i.dg, align 4, !noalias !142
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 24
  store ptr %i.ar, ptr %i.dh, align 8
  %i.di = load ptr, ptr %i.cm, align 8            ; 5 uses
  %i.dj = load ptr, ptr %i.cn, align 8
  %.not.i.i25 = icmp eq ptr %i.di, %i.dj
  br i1 %.not.i.i25, label %bb.q, label %bb.p

bb.p:                                             ; preds = %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit
  %i.dk = ptrtoint ptr %i.dc to i64
  store i64 %i.dk, ptr %i.di, align 8
  %i.dl = load ptr, ptr %i.cm, align 8
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  store ptr %i.dm, ptr %i.cm, align 8
  br label %bb.t

bb.q:                                             ; preds = %_ZNK4LIEF12BinaryStream4readItEENS_6resultIT_EEv.exit
  %i.dn = load ptr, ptr %i.au, align 8            ; 10 uses
  %i.do = ptrtoint ptr %i.di to i64               ; 3 uses
  %i.dp = ptrtoint ptr %i.dn to i64               ; 4 uses
  %i.dq = sub i64 %i.do, %i.dp                    ; 3 uses
  %i.dr = icmp eq i64 %i.dq, 9223372036854775800
  br i1 %i.dr, label %bb.r, label %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE15RelocationEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i

bb.r:                                             ; preds = %bb.q
  store ptr %i.t, ptr %0, align 8
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.6) #25
  unreachable

_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE15RelocationEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i: ; preds = %bb.q
  %i.ds = ashr exact i64 %i.dq, 3                 ; 3 uses
  %.sroa.speculated.i.i30 = call i64 @llvm.umax.i64(i64 %i.ds, i64 1)
  %i.dt = add nsw i64 %.sroa.speculated.i.i30, %i.ds ; 2 uses
  %i.du = icmp ult i64 %i.dt, %i.ds
  %i.dv = call i64 @llvm.umin.i64(i64 %i.dt, i64 1152921504606846975)
  %i.dw = select i1 %i.du, i64 1152921504606846975, i64 %i.dv ; 3 uses
  %.not.i.i31 = icmp ne i64 %i.dw, 0
  call void @llvm.assume(i1 %.not.i.i31)
  %i.dx = shl nuw nsw i64 %i.dw, 3
  %i.dy = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.dx) #26 ; 10 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dy, i64 %i.dq
  %i.ea = ptrtoint ptr %i.dc to i64
  store i64 %i.ea, ptr %i.dz, align 8
  %.not10.i.i.i.i32 = icmp eq ptr %i.dn, %i.di
  br i1 %.not10.i.i.i.i32, label %_ZNSt6vectorISt10unique_ptrIN4LIEF2PE15RelocationEntryESt14default_deleteIS3_EESaIS6_EE11_S_relocateEPS6_S9_S9_RS7_.exit22.i, label %.lr.ph.i.i.i.i33.preheader

.lr.ph.i.i.i.i33.preheader:                       ; preds = %_ZNKSt6vectorISt10unique_ptrIN4LIEF2PE15RelocationEntryESt14default_deleteIS3_EESaIS6_EE12_M_check_lenEmPKc.exit.i
  %i.eb = add i64 %i.do, -8
  %i.ec = sub i64 %i.eb, %i.dp                    ; 2 uses
  %i.ed = lshr i64 %i.ec, 3
  %i.ee = add nuw nsw i64 %i.ed, 1                ; 2 uses
  %min.iters.check205 = icmp ult i64 %i.ec, 56
  br i1 %min.iters.check205, label %.lr.ph.i.i.i.i33.preheader247, label %vector.memcheck196

vector.memcheck196:                               ; preds = %.lr.ph.i.i.i.i33.preheader
  %scevgep197 = getelementptr i8, ptr %i.dy, i64 8
  %i.ef = add i64 %i.do, -8
  %i.eg = sub i64 %i.ef, %i.dp
  %i.eh = and i64 %i.eg, -8                       ; 2 uses
end_hunk_0
begin_hunk_1_@_ZN3fmt3v116detail13format_dragonENS1_8basic_fpIoEEjiRNS1_6bufferIcEERi:bb.a
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104: ; preds = %bb.k, %bb.j
  %.pre-phi.i.i105 = phi i64 [ %i.cg, %bb.j ], [ %.pre2.i.i107, %bb.k ]
  %i.ck = phi i64 [ %i.cf, %bb.j ], [ %.pre.i.i106, %bb.k ]
  %i.cl = load ptr, ptr %8, align 8
  store i64 %.pre-phi.i.i105, ptr %i.m, align 8
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.cl, i64 %i.ck
  store i32 %i.cd, ptr %i.cm, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit108

_ZN3fmt3v116detail6bigintlSEi.exit108:            ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit, %.lr.ph.i98, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i104
  br i1 %.not, label %bb.p, label %bb.l

bb.l:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108
  %i.cn = load ptr, ptr %9, align 8
  store i32 1, ptr %i.cn, align 4
  %i.co = load i64, ptr %i.p, align 8
  %.not8.i.i112.not = icmp eq i64 %i.co, 0
  br i1 %.not8.i.i112.not, label %bb.m, label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

bb.m:                                             ; preds = %bb.l
  %i.cp = load ptr, ptr %i.q, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef 1) #23, !inline_history !26
  %.pre.i.i.i.i113 = load i64, ptr %i.p, align 8
  %i.cq = icmp ne i64 %.pre.i.i.i.i113, 0
  %i.cr = zext i1 %i.cq to i64
  br label %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114

_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114:       ; preds = %bb.l, %bb.m
  %i.cs = phi i64 [ 1, %bb.l ], [ %i.cr, %bb.m ]  ; 2 uses
  store i64 %i.cs, ptr %i.r, align 8
  %i.ct = add nuw nsw i32 %i.x, 1                 ; 2 uses
  %i.cu = lshr i32 %i.ct, 5
  store i32 %i.cu, ptr %i.t, align 8
  %i.cv = and i32 %i.ct, 31                       ; 3 uses
  %i.cw = icmp eq i32 %i.cv, 0
  %.not19.i115 = icmp eq i64 %i.cs, 0
  %or.cond484 = or i1 %i.cw, %.not19.i115
  br i1 %or.cond484, label %bb.p, label %.lr.ph.i116

.lr.ph.i116:                                      ; preds = %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114
  %i.cx = sub nuw nsw i32 32, %i.cv
  %i.cy = load ptr, ptr %9, align 8               ; 2 uses
  %i.cz = load i32, ptr %i.cy, align 4            ; 2 uses
  %i.da = lshr i32 %i.cz, %i.cx                   ; 2 uses
  %i.db = shl i32 %i.cz, %i.cv
  store i32 %i.db, ptr %i.cy, align 4
  %.not.i121 = icmp eq i32 %i.da, 0
  br i1 %.not.i121, label %bb.p, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i116
  %i.dc = load i64, ptr %i.r, align 8             ; 2 uses
  %i.dd = add i64 %i.dc, 1                        ; 3 uses
  %i.de = load i64, ptr %i.p, align 8
  %i.df = icmp ugt i64 %i.dd, %i.de
  br i1 %i.df, label %bb.o, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

bb.o:                                             ; preds = %bb.n
  %i.dg = load ptr, ptr %i.q, align 8
  call void %i.dg(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.dd) #23, !inline_history !25
  %.pre.i.i124 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i125 = add i64 %.pre.i.i124, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122: ; preds = %bb.o, %bb.n
  %.pre-phi.i.i123 = phi i64 [ %i.dd, %bb.n ], [ %.pre2.i.i125, %bb.o ]
  %i.dh = phi i64 [ %i.dc, %bb.n ], [ %.pre.i.i124, %bb.o ]
  %i.di = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i123, ptr %i.r, align 8
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.di, i64 %i.dh
  store i32 %i.da, ptr %i.dj, align 4
  br label %bb.p

bb.p:                                             ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit108, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114, %.lr.ph.i116, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122
  %.075 = phi ptr [ null, %_ZN3fmt3v116detail6bigintlSEi.exit108 ], [ %9, %_ZN3fmt3v116detail6bigintaSIiEEvT_.exit114 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i122 ], [ %9, %.lr.ph.i116 ] ; 3 uses
  %i.dk = load i32, ptr %4, align 4
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %7, i32 noundef %i.dk)
  %i.dl = load i64, ptr %i.h, align 8             ; 5 uses
  %.not19.i127 = icmp eq i64 %i.dl, 0
  %extract.t721 = trunc i128 %i.z to i32
  br i1 %.not19.i127, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %.lr.ph.i128

.lr.ph.i128:                                      ; preds = %bb.p
  %i.dm = xor i32 %i.u, 31                        ; 3 uses
  %xtraiter972 = and i64 %i.dl, 1
  %i.dn = icmp eq i64 %i.dl, 1
  br i1 %i.dn, label %.epil.preheader971, label %.lr.ph.i128.new

.lr.ph.i128.new:                                  ; preds = %.lr.ph.i128
  %unroll_iter976 = and i64 %i.dl, -2
  br label %bb.q

._crit_edge.i132.unr-lcssa:                       ; preds = %bb.q
  %lcmp.mod973.not = icmp eq i64 %xtraiter972, 0
  br i1 %lcmp.mod973.not, label %._crit_edge.i132, label %.epil.preheader971

.epil.preheader971:                               ; preds = %._crit_edge.i132.unr-lcssa, %.lr.ph.i128
  %.01418.i129.epil.init = phi i64 [ 0, %.lr.ph.i128 ], [ %i.eh, %._crit_edge.i132.unr-lcssa ]
  %.017.i130.epil.init = phi i32 [ 0, %.lr.ph.i128 ], [ %i.ee, %._crit_edge.i132.unr-lcssa ]
  %lcmp.mod975 = trunc i64 %i.dl to i1
  call void @llvm.assume(i1 %lcmp.mod975)
  %i.do = load ptr, ptr %7, align 8
  %i.dp = getelementptr inbounds nuw [4 x i8], ptr %i.do, i64 %.01418.i129.epil.init ; 2 uses
  %i.dq = load i32, ptr %i.dp, align 4            ; 2 uses
  %i.dr = lshr i32 %i.dq, %i.dm
  %i.ds = shl i32 %i.dq, %i.v
  %i.dt = add i32 %i.ds, %.017.i130.epil.init
  store i32 %i.dt, ptr %i.dp, align 4
  br label %._crit_edge.i132

._crit_edge.i132:                                 ; preds = %._crit_edge.i132.unr-lcssa, %.epil.preheader971
  %.lcssa931 = phi i32 [ %i.ee, %._crit_edge.i132.unr-lcssa ], [ %i.dr, %.epil.preheader971 ] ; 2 uses
  %.not.i133 = icmp eq i32 %.lcssa931, 0
  %extract.t722 = trunc i128 %i.z to i32
  br i1 %.not.i133, label %_ZN3fmt3v116detail6bigintlSEi.exit138, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph.i128.new
  %.01418.i129 = phi i64 [ 0, %.lr.ph.i128.new ], [ %i.eh, %bb.q ] ; 3 uses
  %.017.i130 = phi i32 [ 0, %.lr.ph.i128.new ], [ %i.ee, %bb.q ]
  %niter977 = phi i64 [ 0, %.lr.ph.i128.new ], [ %niter977.next.1, %bb.q ]
  %i.du = load ptr, ptr %7, align 8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %i.du, i64 %.01418.i129 ; 2 uses
  %i.dw = load i32, ptr %i.dv, align 4            ; 2 uses
  %i.dx = lshr i32 %i.dw, %i.dm
  %i.dy = shl i32 %i.dw, %i.v
  %i.dz = add i32 %i.dy, %.017.i130
  store i32 %i.dz, ptr %i.dv, align 4
  %i.ea = load ptr, ptr %7, align 8
  %i.eb = getelementptr inbounds nuw [4 x i8], ptr %i.ea, i64 %.01418.i129
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 4 ; 2 uses
  %i.ed = load i32, ptr %i.ec, align 4            ; 2 uses
  %i.ee = lshr i32 %i.ed, %i.dm                   ; 3 uses
  %i.ef = shl i32 %i.ed, %i.v
  %i.eg = add i32 %i.ef, %i.dx
  store i32 %i.eg, ptr %i.ec, align 4
  %i.eh = add nuw i64 %.01418.i129, 2             ; 2 uses
  %niter977.next.1 = add nuw i64 %niter977, 2     ; 2 uses
  %niter977.ncmp.1 = icmp eq i64 %niter977.next.1, %unroll_iter976
  br i1 %niter977.ncmp.1, label %._crit_edge.i132.unr-lcssa, label %bb.q, !llvm.loop !24

bb.r:                                             ; preds = %._crit_edge.i132
  %i.ei = load i64, ptr %i.h, align 8             ; 2 uses
  %i.ej = add i64 %i.ei, 1                        ; 3 uses
  %i.ek = load i64, ptr %i.f, align 8
  %i.el = icmp ugt i64 %i.ej, %i.ek
  br i1 %i.el, label %bb.s, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

bb.s:                                             ; preds = %bb.r
  %i.em = load ptr, ptr %i.g, align 8
  call void %i.em(ptr noundef nonnull align 8 dereferenceable(172) %7, i64 noundef %i.ej) #23, !inline_history !25
  %.pre.i.i136 = load i64, ptr %i.h, align 8      ; 2 uses
  %.pre2.i.i137 = add i64 %.pre.i.i136, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i134: ; preds = %bb.s, %bb.r
  %.pre-phi.i.i135 = phi i64 [ %i.ej, %bb.r ], [ %.pre2.i.i137, %bb.s ]
  %i.en = phi i64 [ %i.ei, %bb.r ], [ %.pre.i.i136, %bb.s ]
  %i.eo = load ptr, ptr %7, align 8
  store i64 %.pre-phi.i.i135, ptr %i.h, align 8
  %i.ep = getelementptr inbounds nuw [4 x i8], ptr %i.eo, i64 %i.en
  store i32 %.lcssa931, ptr %i.ep, align 4
  %extract.t719 = trunc i128 %i.z to i32
  br label %_ZN3fmt3v116detail6bigintlSEi.exit138

bb.t:                                             ; preds = %bb.a
  %i.eq = load i32, ptr %4, align 4               ; 2 uses
  %i.er = icmp slt i32 %i.eq, 0
  br i1 %i.er, label %bb.u, label %bb.ag

bb.u:                                             ; preds = %bb.t
  %i.es = sub nsw i32 0, %i.eq
  call void @_ZN3fmt3v116detail6bigint12assign_pow10Ei(ptr noundef nonnull align 8 dereferenceable(172) %6, i32 noundef %i.es)
  %i.et = load i64, ptr %i.c, align 8             ; 7 uses
  %i.eu = load i64, ptr %i.k, align 8
  %i.ev = icmp ugt i64 %i.et, %i.eu
  br i1 %i.ev, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i: ; preds = %bb.u
  %i.ew = load ptr, ptr %i.l, align 8
  call void %i.ew(ptr noundef nonnull align 8 dereferenceable(172) %8, i64 noundef %i.et) #23, !inline_history !264
  %.pre.i.i.i = load i64, ptr %i.k, align 8
  %i.ex = call noundef i64 @llvm.umin.i64(i64 %i.et, i64 %.pre.i.i.i)
  store i64 %i.ex, ptr %i.m, align 8
  %i.ey = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i = shl nuw nsw i64 %i.et, 2
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 %.idx8.i
  br label %.lr.ph.i.preheader.i

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i: ; preds = %bb.u
  store i64 %i.et, ptr %i.m, align 8
  %i.fa = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i = shl nuw nsw i64 %i.et, 2
  %i.fb = getelementptr inbounds nuw i8, ptr %i.fa, i64 %.idx.i
  %.not6.i.i = icmp eq i64 %i.et, 0
  br i1 %.not6.i.i, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i
  %i.fc = phi ptr [ %i.ez, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fb, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 2 uses
  %i.fd = phi ptr [ %i.ey, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i ], [ %i.fa, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i ] ; 4 uses
  %i.fe = ptrtoaddr ptr %i.fc to i64
  %i.ff = ptrtoaddr ptr %i.fd to i64              ; 2 uses
  %i.fg = load ptr, ptr %8, align 8               ; 4 uses
  %i.fh = add i64 %i.fe, -4
  %i.fi = sub i64 %i.fh, %i.ff                    ; 2 uses
  %i.fj = lshr i64 %i.fi, 2
  %i.fk = add nuw nsw i64 %i.fj, 1                ; 2 uses
  %min.iters.check = icmp ult i64 %i.fi, 44
  %i.fl = ptrtoaddr ptr %i.fg to i64
  %i.fm = sub i64 %i.ff, %i.fl
  %diff.check = icmp ugt i64 %i.fm, -32
  %or.cond880 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond880, label %.lr.ph.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader.i
  %n.vec = and i64 %i.fk, 9223372036854775800     ; 3 uses
  %i.fn = shl i64 %n.vec, 2                       ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fg, i64 %i.fn
  %i.fp = getelementptr i8, ptr %i.fd, i64 %i.fn
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.fq = shl i64 %index, 2                       ; 2 uses
  %next.gep = getelementptr i8, ptr %i.fg, i64 %i.fq ; 2 uses
  %next.gep857 = getelementptr i8, ptr %i.fd, i64 %i.fq ; 2 uses
  %i.fr = getelementptr i8, ptr %next.gep857, i64 16
  %wide.load = load <4 x i32>, ptr %next.gep857, align 4
  %wide.load858 = load <4 x i32>, ptr %i.fr, align 4
  %i.fs = getelementptr i8, ptr %next.gep, i64 16
  store <4 x i32> %wide.load, ptr %next.gep, align 4
  store <4 x i32> %wide.load858, ptr %i.fs, align 4
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ft = icmp eq i64 %index.next, %n.vec
  br i1 %i.ft, label %middle.block, label %vector.body, !llvm.loop !265

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.fk, %n.vec
  br i1 %cmp.n, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %.lr.ph.i.preheader.i, %middle.block
  %.08.i.i.ph = phi ptr [ %i.fg, %.lr.ph.i.preheader.i ], [ %i.fo, %middle.block ]
  %.057.i.i.ph = phi ptr [ %i.fd, %.lr.ph.i.preheader.i ], [ %i.fp, %middle.block ]
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i
  %.08.i.i = phi ptr [ %i.fw, %.lr.ph.i.i ], [ %.08.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %.057.i.i = phi ptr [ %i.fu, %.lr.ph.i.i ], [ %.057.i.i.ph, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %.057.i.i, i64 4 ; 2 uses
  %i.fv = load i32, ptr %.057.i.i, align 4
  %i.fw = getelementptr inbounds nuw i8, ptr %.08.i.i, i64 4
  store i32 %i.fv, ptr %.08.i.i, align 4
  %.not.i.i139 = icmp eq ptr %i.fu, %i.fc
  br i1 %.not.i.i139, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit, label %.lr.ph.i.i, !llvm.loop !266

_ZN3fmt3v116detail6bigint6assignERKS2_.exit:      ; preds = %.lr.ph.i.i, %middle.block, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i
  %i.fx = load i32, ptr %i.e, align 8             ; 2 uses
  store i32 %i.fx, ptr %i.o, align 8
  br i1 %.not, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.v

bb.v:                                             ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %i.fy = load i64, ptr %i.c, align 8             ; 7 uses
  %i.fz = load i64, ptr %i.p, align 8
  %i.ga = icmp ugt i64 %i.fy, %i.fz
  br i1 %i.ga, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148, label %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148: ; preds = %bb.v
  %i.gb = load ptr, ptr %i.q, align 8
  call void %i.gb(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.fy) #23, !inline_history !264
  %.pre.i.i.i149 = load i64, ptr %i.p, align 8
  %i.gc = call noundef i64 @llvm.umin.i64(i64 %i.fy, i64 %.pre.i.i.i149)
  store i64 %i.gc, ptr %i.r, align 8
  %i.gd = load ptr, ptr %6, align 8               ; 2 uses
  %.idx8.i150 = shl nuw nsw i64 %i.fy, 2
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.idx8.i150
  br label %.lr.ph.i.preheader.i143

_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140: ; preds = %bb.v
  store i64 %i.fy, ptr %i.r, align 8
  %i.gf = load ptr, ptr %6, align 8               ; 2 uses
  %.idx.i141 = shl nuw nsw i64 %i.fy, 2
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 %.idx.i141
  %.not6.i.i142 = icmp eq i64 %i.fy, 0
  br i1 %.not6.i.i142, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, label %.lr.ph.i.preheader.i143

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread: ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140
  store i32 %i.fx, ptr %i.t, align 8
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

.lr.ph.i.preheader.i143:                          ; preds = %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148
  %i.gh = phi ptr [ %i.ge, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gg, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 2 uses
  %i.gi = phi ptr [ %i.gd, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.thread.i148 ], [ %i.gf, %_ZN3fmt3v1119basic_memory_bufferIjLm32ENS0_6detail9allocatorIjEEE6resizeEm.exit.i140 ] ; 4 uses
  %i.gj = ptrtoaddr ptr %i.gh to i64
  %i.gk = ptrtoaddr ptr %i.gi to i64              ; 2 uses
  %i.gl = load ptr, ptr %9, align 8               ; 4 uses
  %i.gm = add i64 %i.gj, -4
  %i.gn = sub i64 %i.gm, %i.gk                    ; 2 uses
  %i.go = lshr i64 %i.gn, 2
  %i.gp = add nuw nsw i64 %i.go, 1                ; 2 uses
  %min.iters.check863 = icmp ult i64 %i.gn, 44
  %i.gq = ptrtoaddr ptr %i.gl to i64
  %i.gr = sub i64 %i.gk, %i.gq
  %diff.check865 = icmp ugt i64 %i.gr, -32
  %or.cond882 = select i1 %min.iters.check863, i1 true, i1 %diff.check865
  br i1 %or.cond882, label %.lr.ph.i.i144.preheader, label %vector.ph866

vector.ph866:                                     ; preds = %.lr.ph.i.preheader.i143
  %n.vec867 = and i64 %i.gp, 9223372036854775800  ; 3 uses
  %i.gs = shl i64 %n.vec867, 2                    ; 2 uses
  %i.gt = getelementptr i8, ptr %i.gl, i64 %i.gs
  %i.gu = getelementptr i8, ptr %i.gi, i64 %i.gs
  br label %vector.body868

vector.body868:                                   ; preds = %vector.body868, %vector.ph866
  %index869 = phi i64 [ 0, %vector.ph866 ], [ %index.next874, %vector.body868 ] ; 2 uses
  %i.gv = shl i64 %index869, 2                    ; 2 uses
  %next.gep870 = getelementptr i8, ptr %i.gl, i64 %i.gv ; 2 uses
  %next.gep871 = getelementptr i8, ptr %i.gi, i64 %i.gv ; 2 uses
  %i.gw = getelementptr i8, ptr %next.gep871, i64 16
  %wide.load872 = load <4 x i32>, ptr %next.gep871, align 4
  %wide.load873 = load <4 x i32>, ptr %i.gw, align 4
  %i.gx = getelementptr i8, ptr %next.gep870, i64 16
  store <4 x i32> %wide.load872, ptr %next.gep870, align 4
  store <4 x i32> %wide.load873, ptr %i.gx, align 4
  %index.next874 = add nuw i64 %index869, 8       ; 2 uses
  %i.gy = icmp eq i64 %index.next874, %n.vec867
  br i1 %i.gy, label %middle.block875, label %vector.body868, !llvm.loop !267

middle.block875:                                  ; preds = %vector.body868
  %cmp.n876 = icmp eq i64 %i.gp, %n.vec867
  br i1 %cmp.n876, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144.preheader

.lr.ph.i.i144.preheader:                          ; preds = %.lr.ph.i.preheader.i143, %middle.block875
  %.08.i.i145.ph = phi ptr [ %i.gl, %.lr.ph.i.preheader.i143 ], [ %i.gt, %middle.block875 ]
  %.057.i.i146.ph = phi ptr [ %i.gi, %.lr.ph.i.preheader.i143 ], [ %i.gu, %middle.block875 ]
  br label %.lr.ph.i.i144

.lr.ph.i.i144:                                    ; preds = %.lr.ph.i.i144.preheader, %.lr.ph.i.i144
  %.08.i.i145 = phi ptr [ %i.hb, %.lr.ph.i.i144 ], [ %.08.i.i145.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %.057.i.i146 = phi ptr [ %i.gz, %.lr.ph.i.i144 ], [ %.057.i.i146.ph, %.lr.ph.i.i144.preheader ] ; 2 uses
  %i.gz = getelementptr inbounds nuw i8, ptr %.057.i.i146, i64 4 ; 2 uses
  %i.ha = load i32, ptr %.057.i.i146, align 4
  %i.hb = getelementptr inbounds nuw i8, ptr %.08.i.i145, i64 4
  store i32 %i.ha, ptr %.08.i.i145, align 4
  %.not.i.i147 = icmp eq ptr %i.gz, %i.gh
  br i1 %.not.i.i147, label %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, label %.lr.ph.i.i144, !llvm.loop !268

_ZN3fmt3v116detail6bigint6assignERKS2_.exit151:   ; preds = %.lr.ph.i.i144, %middle.block875
  %.pr = load i64, ptr %i.r, align 8              ; 5 uses
  %i.hc = load i32, ptr %i.e, align 8
  store i32 %i.hc, ptr %i.t, align 8
  %.not19.i152 = icmp eq i64 %.pr, 0
  br i1 %.not19.i152, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %.lr.ph.i153.preheader

.lr.ph.i153.preheader:                            ; preds = %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151
  %xtraiter950 = and i64 %.pr, 1
  %i.hd = icmp eq i64 %.pr, 1
  br i1 %i.hd, label %.lr.ph.i153.epil.preheader, label %.lr.ph.i153.preheader.new

.lr.ph.i153.preheader.new:                        ; preds = %.lr.ph.i153.preheader
  %unroll_iter955 = and i64 %.pr, -2
  br label %.lr.ph.i153

._crit_edge.i157.unr-lcssa:                       ; preds = %.lr.ph.i153
  %lcmp.mod951.not = icmp eq i64 %xtraiter950, 0
  br i1 %lcmp.mod951.not, label %._crit_edge.i157, label %.lr.ph.i153.epil.preheader

.lr.ph.i153.epil.preheader:                       ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.preheader
  %.01418.i154.epil.init = phi i64 [ 0, %.lr.ph.i153.preheader ], [ %i.hv, %._crit_edge.i157.unr-lcssa ]
  %.017.i155.epil.init = phi i32 [ 0, %.lr.ph.i153.preheader ], [ %i.ht, %._crit_edge.i157.unr-lcssa ]
  %lcmp.mod954 = trunc i64 %.pr to i1
  call void @llvm.assume(i1 %lcmp.mod954)
  %i.he = load ptr, ptr %9, align 8
  %i.hf = getelementptr inbounds nuw [4 x i8], ptr %i.he, i64 %.01418.i154.epil.init ; 2 uses
  %i.hg = load i32, ptr %i.hf, align 4            ; 3 uses
  %i.hh = lshr i32 %i.hg, 31
  %i.hi = shl i32 %i.hg, 1
  %i.hj = or disjoint i32 %i.hi, %.017.i155.epil.init
  store i32 %i.hj, ptr %i.hf, align 4
  br label %._crit_edge.i157

._crit_edge.i157:                                 ; preds = %._crit_edge.i157.unr-lcssa, %.lr.ph.i153.epil.preheader
  %.lcssa937 = phi i32 [ %i.hs, %._crit_edge.i157.unr-lcssa ], [ %i.hg, %.lr.ph.i153.epil.preheader ]
  %.lcssa936 = phi i32 [ %i.ht, %._crit_edge.i157.unr-lcssa ], [ %i.hh, %.lr.ph.i153.epil.preheader ]
  %.not.i158 = icmp sgt i32 %.lcssa937, -1
  br i1 %.not.i158, label %_ZN3fmt3v116detail6bigintlSEi.exit163, label %bb.w

.lr.ph.i153:                                      ; preds = %.lr.ph.i153, %.lr.ph.i153.preheader.new
  %.01418.i154 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %i.hv, %.lr.ph.i153 ] ; 3 uses
  %.017.i155 = phi i32 [ 0, %.lr.ph.i153.preheader.new ], [ %i.ht, %.lr.ph.i153 ]
  %niter956 = phi i64 [ 0, %.lr.ph.i153.preheader.new ], [ %niter956.next.1, %.lr.ph.i153 ]
  %i.hk = load ptr, ptr %9, align 8
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.hk, i64 %.01418.i154 ; 2 uses
  %i.hm = load i32, ptr %i.hl, align 4            ; 2 uses
  %i.hn = shl i32 %i.hm, 1
  %i.ho = or disjoint i32 %i.hn, %.017.i155
  store i32 %i.ho, ptr %i.hl, align 4
  %i.hp = load ptr, ptr %9, align 8
  %i.hq = getelementptr inbounds nuw [4 x i8], ptr %i.hp, i64 %.01418.i154
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hq, i64 4 ; 2 uses
  %i.hs = load i32, ptr %i.hr, align 4            ; 3 uses
  %i.ht = lshr i32 %i.hs, 31                      ; 3 uses
  %i.hu = call i32 @llvm.fshl.i32(i32 %i.hs, i32 %i.hm, i32 1)
  store i32 %i.hu, ptr %i.hr, align 4
  %i.hv = add nuw i64 %.01418.i154, 2             ; 2 uses
  %niter956.next.1 = add nuw i64 %niter956, 2     ; 2 uses
  %niter956.ncmp.1 = icmp eq i64 %niter956.next.1, %unroll_iter955
  br i1 %niter956.ncmp.1, label %._crit_edge.i157.unr-lcssa, label %.lr.ph.i153, !llvm.loop !24

bb.w:                                             ; preds = %._crit_edge.i157
  %i.hw = load i64, ptr %i.r, align 8             ; 2 uses
  %i.hx = add i64 %i.hw, 1                        ; 3 uses
  %i.hy = load i64, ptr %i.p, align 8
  %i.hz = icmp ugt i64 %i.hx, %i.hy
  br i1 %i.hz, label %bb.x, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

bb.x:                                             ; preds = %bb.w
  %i.ia = load ptr, ptr %i.q, align 8
  call void %i.ia(ptr noundef nonnull align 8 dereferenceable(172) %9, i64 noundef %i.hx) #23, !inline_history !25
  %.pre.i.i161 = load i64, ptr %i.r, align 8      ; 2 uses
  %.pre2.i.i162 = add i64 %.pre.i.i161, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159: ; preds = %bb.x, %bb.w
  %.pre-phi.i.i160 = phi i64 [ %i.hx, %bb.w ], [ %.pre2.i.i162, %bb.x ]
  %i.ib = phi i64 [ %i.hw, %bb.w ], [ %.pre.i.i161, %bb.x ]
  %i.ic = load ptr, ptr %9, align 8
  store i64 %.pre-phi.i.i160, ptr %i.r, align 8
  %i.id = getelementptr inbounds nuw [4 x i8], ptr %i.ic, i64 %i.ib
  store i32 %.lcssa936, ptr %i.id, align 4
  br label %_ZN3fmt3v116detail6bigintlSEi.exit163

_ZN3fmt3v116detail6bigintlSEi.exit163:            ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159, %._crit_edge.i157, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit
  %.1 = phi ptr [ null, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151.thread ], [ %9, %_ZN3fmt3v116detail6bigint6assignERKS2_.exit151 ], [ %9, %._crit_edge.i157 ], [ %9, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i159 ] ; 3 uses
  %i.ie = load i128, ptr %0, align 16             ; 5 uses
  %i.if = and i128 %i.ie, 18446744073709551615
  %i.ig = load i64, ptr %i.c, align 8             ; 2 uses
  %.not23.i.i = icmp eq i64 %i.ig, 0
  br i1 %.not23.i.i, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i.i164

.lr.ph.i.i164:                                    ; preds = %_ZN3fmt3v116detail6bigintlSEi.exit163
  %i.ih = lshr i128 %i.ie, 32
  %i.ii = and i128 %i.ih, 79228162514264337589248983040
  br label %bb.y

.preheader.i.i:                                   ; preds = %bb.y
  %.not20.i.i = icmp eq i128 %i.iu, 0
  br i1 %.not20.i.i, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i

bb.y:                                             ; preds = %bb.y, %.lr.ph.i.i164
  %.019.i.i = phi i64 [ 0, %.lr.ph.i.i164 ], [ %i.iw, %bb.y ] ; 2 uses
  %.01718.i.i = phi i128 [ 0, %.lr.ph.i.i164 ], [ %i.iu, %bb.y ] ; 2 uses
  %i.ij = load ptr, ptr %6, align 8
  %i.ik = getelementptr inbounds nuw [4 x i8], ptr %i.ij, i64 %.019.i.i ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4
  %i.im = zext i32 %i.il to i128                  ; 2 uses
  %i.in = mul nuw nsw i128 %i.if, %i.im
  %i.io = and i128 %.01718.i.i, 4294967295
  %i.ip = add nuw nsw i128 %i.in, %i.io           ; 2 uses
  %i.iq = mul nuw i128 %i.ii, %i.im
  %i.ir = lshr i128 %i.ip, 32
  %i.is = lshr i128 %.01718.i.i, 32
  %i.it = add nuw i128 %i.iq, %i.is
  %i.iu = add nuw i128 %i.it, %i.ir               ; 3 uses
  %i.iv = trunc i128 %i.ip to i32
  store i32 %i.iv, ptr %i.ik, align 4
  %i.iw = add nuw i64 %.019.i.i, 1                ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.iw, %i.ig
  br i1 %exitcond.not.i.i, label %.preheader.i.i, label %bb.y, !llvm.loop !269

.lr.ph22.i.i:                                     ; preds = %.preheader.i.i, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i
  %.121.i.i = phi i128 [ %i.jg, %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i ], [ %i.iu, %.preheader.i.i ] ; 2 uses
  %i.ix = trunc i128 %.121.i.i to i32
  %i.iy = load i64, ptr %i.c, align 8             ; 2 uses
  %i.iz = add i64 %i.iy, 1                        ; 3 uses
  %i.ja = load i64, ptr %i.a, align 8
  %i.jb = icmp ugt i64 %i.iz, %i.ja
  br i1 %i.jb, label %bb.z, label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

bb.z:                                             ; preds = %.lr.ph22.i.i
  %i.jc = load ptr, ptr %i.b, align 8
  call void %i.jc(ptr noundef nonnull align 8 dereferenceable(172) %6, i64 noundef %i.iz) #23, !inline_history !270
  %.pre.i.i.i166 = load i64, ptr %i.c, align 8    ; 2 uses
  %.pre2.i.i.i = add i64 %.pre.i.i.i166, 1
  br label %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i

_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i: ; preds = %bb.z, %.lr.ph22.i.i
  %.pre-phi.i.i.i = phi i64 [ %i.iz, %.lr.ph22.i.i ], [ %.pre2.i.i.i, %bb.z ]
  %i.jd = phi i64 [ %i.iy, %.lr.ph22.i.i ], [ %.pre.i.i.i166, %bb.z ]
  %i.je = load ptr, ptr %6, align 8
  store i64 %.pre-phi.i.i.i, ptr %i.c, align 8
  %i.jf = getelementptr inbounds nuw [4 x i8], ptr %i.je, i64 %i.jd
  store i32 %i.ix, ptr %i.jf, align 4
  %i.jg = lshr i128 %.121.i.i, 32                 ; 2 uses
  %.not.i.i165 = icmp eq i128 %i.jg, 0
  br i1 %.not.i.i165, label %_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit, label %.lr.ph22.i.i, !llvm.loop !271

_ZN3fmt3v116detail6bigintmLIoEERS2_T_.exit:       ; preds = %_ZN3fmt3v116detail6bufferIjE9push_backERKj.exit.i.i, %.preheader.i.i
  %.pr727 = load i64, ptr %i.c, align 8           ; 5 uses
  %.not19.i167 = icmp eq i64 %.pr727, 0
  br i1 %.not19.i167, label %_ZN3fmt3v116detail6bigintlSEi.exit178, label %.lr.ph.i168

end_hunk_1
