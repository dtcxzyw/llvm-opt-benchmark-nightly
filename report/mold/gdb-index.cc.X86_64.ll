Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/mold/original/gdb-index.cc.X86_64?download=true
inline.NumInlined: 4499
inline.NumDeleted: 1982
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 64
begin_hunk_0_@_ZN4mold15write_gdb_indexINS_6X86_64EEEvRNS_7ContextIT_EE:._crit_edge.i.i

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit92: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i89
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bh, i64 137
  %i.cc = load i8, ptr %i.cb, align 1, !tbaa !632, !range !364, !noundef !365
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit92
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !211
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit99

bb.h:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit92
  %.val87 = load ptr, ptr %i.x, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.0.copyload.i7.i93 = load i64, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %.val87, i64 %.0.copyload.i7.i93
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit99

_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit99: ; preds = %bb.g, %bb.h
  %.sink.i94 = phi i64 [ 56, %bb.h ], [ 200, %bb.g ]
  %.sroa.0.0.i95 = phi ptr [ %i.ch, %bb.h ], [ %i.cf, %bb.g ]
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink.i94
  %.sroa.3.0.i96 = load i64, ptr %i.ci, align 1
  store ptr %.sroa.0.0.i95, ptr %i.z, align 8, !tbaa !211
  store i64 %.sroa.3.0.i96, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !95
  br label %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i100

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i100: ; preds = %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit99, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i89
  %i.cj = load i64, ptr %.sroa.8.0.copyload, align 1
  %i.ck = xor i64 %i.cj, 8241419596970943534
  %i.cl = getelementptr i8, ptr %.sroa.8.0.copyload, i64 5
  %i.cm = load i64, ptr %i.cl, align 1
  %i.cn = xor i64 %i.cm, 8315166010788437863
  %i.co = or i64 %i.ck, %i.cn
  %i.cp = icmp ne i64 %i.co, 0
  %i.cq = zext i1 %i.cp to i32
  %i.cr = icmp eq i32 %i.cq, 0
  br i1 %i.cr, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit103, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit103: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i100
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bh, i64 137
  %i.ct = load i8, ptr %i.cs, align 1, !tbaa !632, !range !364, !noundef !365
  %i.cu = trunc nuw i8 %i.ct to i1
  br i1 %i.cu, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit103
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !211
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit110

bb.j:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit103
  %.val86 = load ptr, ptr %i.x, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.0.copyload.i7.i104 = load i64, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %.val86, i64 %.0.copyload.i7.i104
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit110

_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit110: ; preds = %bb.i, %bb.j
  %.sink.i105 = phi i64 [ 56, %bb.j ], [ 200, %bb.i ]
  %.sroa.0.0.i106 = phi ptr [ %i.cy, %bb.j ], [ %i.cw, %bb.i ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink.i105
  %.sroa.3.0.i107 = load i64, ptr %i.cz, align 1
  store ptr %.sroa.0.0.i106, ptr %i.aa, align 8, !tbaa !211
  store i64 %.sroa.3.0.i107, ptr %.sroa.434.0..sroa_idx, align 8, !tbaa !95
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i111: ; preds = %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i
  %bcmp.i112 = call i32 @bcmp(ptr nonnull %.sroa.8.0.copyload, ptr nonnull @.str.6, i64 %.sroa.045.0.copyload)
  %i.da = icmp eq i32 %bcmp.i112, 0
  br i1 %i.da, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit114, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit114: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i111
  %i.db = getelementptr inbounds nuw i8, ptr %i.bh, i64 137
  %i.dc = load i8, ptr %i.db, align 1, !tbaa !632, !range !364, !noundef !365
  %i.dd = trunc nuw i8 %i.dc to i1
  br i1 %i.dd, label %bb.k, label %bb.l

bb.k:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit114
  %i.de = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !211
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit121

bb.l:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit114
  %.val85 = load ptr, ptr %i.x, align 8
  %i.dg = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.0.copyload.i7.i115 = load i64, ptr %i.dg, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %.val85, i64 %.0.copyload.i7.i115
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit121

_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit121: ; preds = %bb.k, %bb.l
  %.sink.i116 = phi i64 [ 56, %bb.l ], [ 200, %bb.k ]
  %.sroa.0.0.i117 = phi ptr [ %i.dh, %bb.l ], [ %i.df, %bb.k ]
  %i.di = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink.i116
  %.sroa.3.0.i118 = load i64, ptr %i.di, align 1
  store ptr %.sroa.0.0.i117, ptr %i.ab, align 8, !tbaa !211
  store i64 %.sroa.3.0.i118, ptr %.sroa.430.0..sroa_idx, align 8, !tbaa !95
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread

_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i122: ; preds = %bb.d
  %bcmp.i123 = call i32 @bcmp(ptr %.sroa.8.0.copyload, ptr nonnull @.str.7, i64 %.sroa.045.0.copyload)
  %i.dj = icmp eq i32 %bcmp.i123, 0
  br i1 %i.dj, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125, label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125: ; preds = %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i122
  %i.dk = getelementptr inbounds nuw i8, ptr %i.bh, i64 137
  %i.dl = load i8, ptr %i.dk, align 1, !tbaa !632, !range !364, !noundef !365
  %i.dm = trunc nuw i8 %i.dl to i1
  br i1 %i.dm, label %bb.m, label %bb.n

bb.m:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125
  %i.dn = getelementptr inbounds nuw i8, ptr %i.bh, i64 184
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !211
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit132

bb.n:                                             ; preds = %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125
  %.val84 = load ptr, ptr %i.x, align 8
  %i.dp = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  %.0.copyload.i7.i126 = load i64, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %.val84, i64 %.0.copyload.i7.i126
  br label %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit132

_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit132: ; preds = %bb.m, %bb.n
  %.sink.i127 = phi i64 [ 56, %bb.n ], [ 200, %bb.m ]
  %.sroa.0.0.i128 = phi ptr [ %i.dq, %bb.n ], [ %i.do, %bb.m ]
  %i.dr = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sink.i127
  %.sroa.3.0.i129 = load i64, ptr %i.dr, align 1
  store ptr %.sroa.0.0.i128, ptr %i.ac, align 8, !tbaa !211
  store i64 %.sroa.3.0.i129, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !95
  br label %_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread

_ZSteqIcSt11char_traitsIcEEbSt17basic_string_viewIT_T0_ENSt15__type_identityIS5_E4typeE.exit125.thread: ; preds = %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit121, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i111, %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit110, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i100, %bb.d, %_ZNSt11char_traitsIcE7compareEPKcS2_m.exit.i.i122, %_ZN4moldL10get_bufferINS_6X86_64EEESt4spanIhLm18446744073709551615EERNS_7ContextIT_EEPNS_5ChunkIS5_EE.exit132
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.0155.0160, i64 8 ; 2 uses
  %i.dt = icmp eq ptr %i.ds, %i.v
  br i1 %i.dt, label %._crit_edge, label %bb.d

._crit_edge163:                                   ; preds = %.lr.ph162, %_ZN4moldL19read_address_rangesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_8CompunitESaIS7_EE.exit
  %.lcssa = phi i32 [ %i.bc, %_ZN4moldL19read_address_rangesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_8CompunitESaIS7_EE.exit ], [ %i.fc, %.lr.ph162 ] ; 2 uses
  store i32 %.lcssa, ptr %i.bf, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !189
  %i.dw = shl nsw i64 %i.dv, 3                    ; 2 uses
  %i.dx = trunc i64 %i.dw to i32
  %i.dy = add i32 %.lcssa, %i.dx                  ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %10, i64 20
  store i32 %i.dy, ptr %i.dz, align 4
  %i.ea = zext i32 %i.dy to i64
  %i.eb = getelementptr inbounds nuw i8, ptr %i.l, i64 64 ; 2 uses
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !212
  %i.ed = add nsw i64 %i.ec, %i.ea
  %i.ee = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 2 uses
  %i.ef = load i64, ptr %i.ee, align 8, !tbaa !213
  %i.eg = add nsw i64 %i.ed, %i.ef                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #13
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 13168
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !634 ; 2 uses
  %i.ej = load ptr, ptr %i.ei, align 8, !tbaa !53
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.el = load ptr, ptr %i.ek, align 8
  %i.em = call noundef ptr %i.el(ptr noundef nonnull align 8 dereferenceable(66) %i.ei, ptr noundef nonnull align 8 dereferenceable(14448) %0, i64 noundef %i.eg) #13 ; 3 uses
  store ptr %i.em, ptr %i.c, align 8, !tbaa !211
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.em, ptr noundef nonnull align 4 dereferenceable(24) %10, i64 24, i1 false)
  %i.en = load ptr, ptr %i.l, align 8, !tbaa !126 ; 4 uses
  %i.eo = load ptr, ptr %i.p, align 8, !tbaa !126 ; 2 uses
  %i.ep = icmp eq ptr %i.en, %i.eo
  br i1 %i.ep, label %._crit_edge168, label %.lr.ph167.preheader

.lr.ph167.preheader:                              ; preds = %._crit_edge163
  %i.eq = getelementptr inbounds nuw i8, ptr %i.em, i64 24
  br label %.lr.ph167

.lr.ph162:                                        ; preds = %_ZN4moldL19read_address_rangesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_8CompunitESaIS7_EE.exit, %.lr.ph162
  %.sroa.0142.0161 = phi ptr [ %i.fd, %.lr.ph162 ], [ %i.aw, %_ZN4moldL19read_address_rangesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_8CompunitESaIS7_EE.exit ] ; 3 uses
  %i.er = phi i32 [ %i.fc, %.lr.ph162 ], [ %i.bc, %_ZN4moldL19read_address_rangesINS_6X86_64EEEvRNS_7ContextIT_EERSt6vectorINS_8CompunitESaIS7_EE.exit ]
  %i.es = getelementptr inbounds nuw i8, ptr %.sroa.0142.0161, i64 32
  %i.et = getelementptr inbounds nuw i8, ptr %.sroa.0142.0161, i64 40
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !366
  %i.ev = load ptr, ptr %i.es, align 8, !tbaa !138
  %i.ew = ptrtoint ptr %i.eu to i64
  %i.ex = ptrtoint ptr %i.ev to i64
  %i.ey = sub i64 %i.ew, %i.ex
  %i.ez = lshr exact i64 %i.ey, 4
  %i.fa = trunc i64 %i.ez to i32
  %i.fb = mul i32 %i.fa, 20
  %i.fc = add i32 %i.fb, %i.er                    ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %.sroa.0142.0161, i64 80 ; 2 uses
  %i.fe = icmp eq ptr %i.fd, %i.av
  br i1 %i.fe, label %._crit_edge163, label %.lr.ph162

._crit_edge168.loopexit:                          ; preds = %.lr.ph167
  %.pre = load ptr, ptr %i.p, align 8, !tbaa !124
  %.pre173 = load ptr, ptr %i.l, align 8, !tbaa !125
  br label %._crit_edge168

._crit_edge168:                                   ; preds = %._crit_edge168.loopexit, %._crit_edge163
  %i.ff = phi ptr [ %.pre173, %._crit_edge168.loopexit ], [ %i.en, %._crit_edge163 ] ; 2 uses
  %i.fg = phi ptr [ %.pre, %._crit_edge168.loopexit ], [ %i.en, %._crit_edge163 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.fh = ptrtoint ptr %i.fg to i64
  %i.fi = ptrtoint ptr %i.ff to i64
  %i.fj = sub i64 %i.fh, %i.fi                    ; 2 uses
  %i.fk = sdiv exact i64 %i.fj, 80                ; 3 uses
  %13 = icmp slt i64 %i.fj, 0
  br i1 %13, label %bb.o, label %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i

bb.o:                                             ; preds = %._crit_edge168
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.10) #27
  unreachable

_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i: ; preds = %._crit_edge168
  %.not.i.i.i.i = icmp eq ptr %i.fg, %i.ff
  br i1 %.not.i.i.i.i, label %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, label %bb.p

_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i: ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %11, i8 0, i64 24, i1 false)
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

bb.p:                                             ; preds = %_ZNSt6vectorIlSaIlEE17_S_check_init_lenEmRKS0_.exit.i
  %i.fl = shl nuw nsw i64 %i.fk, 3
  %i.fm = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.fl) #26 ; 6 uses
  store ptr %i.fm, ptr %11, align 8, !tbaa !368
  %i.fn = getelementptr inbounds nuw [8 x i8], ptr %i.fm, i64 %i.fk
  %i.fo = getelementptr inbounds nuw i8, ptr %11, i64 16
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !635
  store i64 0, ptr %i.fm, align 8, !tbaa !95
  %i.fp = getelementptr i8, ptr %i.fm, i64 8      ; 3 uses
  %i.fq = add nsw i64 %i.fk, -1                   ; 2 uses
  %i.fr = icmp eq i64 %i.fq, 0
  br i1 %i.fr, label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit, label %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i

_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i: ; preds = %bb.p
  %.idx.i.i.i.i.i.i.i = shl nuw nsw i64 %i.fq, 3  ; 2 uses
  call void @llvm.memset.p0.i64(ptr align 8 %i.fp, i8 0, i64 %.idx.i.i.i.i.i.i.i, i1 false), !tbaa !95
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.idx.i.i.i.i.i.i.i
  br label %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit

_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit:               ; preds = %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i, %bb.p, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i
  %i.ft = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.fm, %bb.p ], [ %i.fm, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ] ; 4 uses
  %.0.i.i.i.i.i = phi ptr [ null, %_ZNSt12_Vector_baseIlSaIlEEC2EmRKS0_.exit.thread.i ], [ %i.fp, %bb.p ], [ %i.fs, %_ZSt6fill_nIPlmlET_S1_T0_RKT1_.exit.loopexit.i.i.i.i.i ]
  %i.fu = getelementptr inbounds nuw i8, ptr %11, i64 8
  store ptr %.0.i.i.i.i.i, ptr %i.fu, align 8, !tbaa !636
  %i.fv = load ptr, ptr %i.p, align 8, !tbaa !124 ; 2 uses
  %i.fw = load ptr, ptr %i.l, align 8, !tbaa !125 ; 5 uses
  %i.fx = ptrtoint ptr %i.fv to i64
  %i.fy = ptrtoint ptr %i.fw to i64
  %i.fz = sub i64 %i.fx, %i.fy                    ; 2 uses
  %i.ga = icmp ugt i64 %i.fz, 80
  br i1 %i.ga, label %.lr.ph170, label %._crit_edge171

.lr.ph170:                                        ; preds = %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  %14 = sdiv exact i64 %i.fz, 80                  ; 2 uses
  %umax = call i64 @llvm.umax.i64(i64 %14, i64 2)
  %.pre174 = load i64, ptr %i.ft, align 8, !tbaa !95 ; 2 uses
  %i.gb = add i64 %umax, -1                       ; 3 uses
  %xtraiter = and i64 %i.gb, 1
  %15 = icmp ult i64 %14, 3
  br i1 %15, label %.epil.preheader, label %.lr.ph170.new

.lr.ph170.new:                                    ; preds = %.lr.ph170
  %unroll_iter = and i64 %i.gb, -2
  br label %bb.q

.lr.ph167:                                        ; preds = %.lr.ph167.preheader, %.lr.ph167
  %.082165 = phi ptr [ %i.gh, %.lr.ph167 ], [ %i.eq, %.lr.ph167.preheader ] ; 3 uses
  %.sroa.0138.0164 = phi ptr [ %i.gi, %.lr.ph167 ], [ %i.en, %.lr.ph167.preheader ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.0138.0164, i64 8
  %i.gd = load i64, ptr %i.gc, align 8, !tbaa !335
  store i64 %i.gd, ptr %.082165, align 1
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.0138.0164, i64 16
  %i.gf = load i64, ptr %i.ge, align 8, !tbaa !637
  %i.gg = getelementptr inbounds nuw i8, ptr %.082165, i64 8
  store i64 %i.gf, ptr %i.gg, align 1
  %i.gh = getelementptr inbounds nuw i8, ptr %.082165, i64 16
  %i.gi = getelementptr inbounds nuw i8, ptr %.sroa.0138.0164, i64 80 ; 2 uses
  %i.gj = icmp eq ptr %i.gi, %i.eo
  br i1 %i.gj, label %._crit_edge168.loopexit, label %.lr.ph167

._crit_edge171.loopexit.unr-lcssa:                ; preds = %bb.q
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge171, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge171.loopexit.unr-lcssa, %.lr.ph170
  %.epil.init = phi i64 [ %.pre174, %.lr.ph170 ], [ %i.il, %._crit_edge171.loopexit.unr-lcssa ]
  %.0169.epil.init = phi i64 [ 1, %.lr.ph170 ], [ %i.in, %._crit_edge171.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod193 = trunc i64 %i.gb to i1
  call void @llvm.assume(i1 %lcmp.mod193)
  %i.gk = getelementptr [80 x i8], ptr %i.fw, i64 %.0169.epil.init ; 2 uses
  %i.gl = getelementptr i8, ptr %i.gk, i64 -48
  %i.gm = getelementptr i8, ptr %i.gk, i64 -40
  %i.gn = load ptr, ptr %i.gm, align 8, !tbaa !366
  %i.go = load ptr, ptr %i.gl, align 8, !tbaa !138
  %i.gp = ptrtoint ptr %i.gn to i64
  %i.gq = ptrtoint ptr %i.go to i64
  %i.gr = sub i64 %i.gp, %i.gq
  %i.gs = ashr exact i64 %i.gr, 4
  %i.gt = mul i64 %i.gs, 20
  %i.gu = add i64 %i.gt, %.epil.init
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.0169.epil.init
  store i64 %i.gu, ptr %i.gv, align 8, !tbaa !95
  br label %._crit_edge171

._crit_edge171:                                   ; preds = %.epil.preheader, %._crit_edge171.loopexit.unr-lcssa, %_ZNSt6vectorIlSaIlEEC2EmRKS0_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store ptr %i.l, ptr %12, align 8, !tbaa !121
  %i.gw = getelementptr inbounds nuw i8, ptr %12, i64 8
  store ptr %i.c, ptr %i.gw, align 8, !tbaa !337
  %i.gx = getelementptr inbounds nuw i8, ptr %12, i64 16
  store ptr %10, ptr %i.gx, align 8, !tbaa !638
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 24
  store ptr %11, ptr %i.gy, align 8, !tbaa !639
  call void @_ZN3tbb6detail2d217parallel_for_eachIN9__gnu_cxx17__normal_iteratorIPN4mold8CompunitESt6vectorIS6_SaIS6_EEEEZNS5_15write_gdb_indexINS5_6X86_64EEEvRNS5_7ContextIT_EEEUlRS6_E_EEvSF_SF_RKT0_(ptr %i.fw, ptr %i.fv, ptr noundef nonnull align 8 dereferenceable(32) %12)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.gz = load i64, ptr %i.eb, align 8, !tbaa !212
  %i.ha = add nsw i64 %i.gz, %i.dw
  %i.hb = load i64, ptr %i.ee, align 8, !tbaa !213
  %i.hc = add nsw i64 %i.ha, %i.hb
  %i.hd = load ptr, ptr %i.c, align 8, !tbaa !211
  %.0.copyload.i135 = load i32, ptr %i.bf, align 4
  %i.he = zext i32 %.0.copyload.i135 to i64
  %i.hf = getelementptr inbounds nuw i8, ptr %i.hd, i64 %i.he
  %i.hg = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.hh = load ptr, ptr %i.hg, align 8, !tbaa !211
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.hf, ptr %i.a, align 8, !tbaa !194
  store ptr %i.hh, ptr %i.b, align 8, !tbaa !194
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 %i.hc, ptr %2, align 8, !tbaa !190
  %i.hi = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.hi, align 8, !tbaa !191
  %i.hj = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 2097152, ptr %i.hj, align 8, !tbaa !192
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr %i.a, ptr %3, align 8, !tbaa !371
  %i.hk = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.b, ptr %i.hk, align 8, !tbaa !371
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  call void @_ZN3tbb6detail2d19start_forINS1_13blocked_rangeIlEEZN4mold15parallel_memcpyEPvPKvlEUlRKS4_E_KNS1_16auto_partitionerEE3runESA_RKSB_RSD_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 1 dereferenceable(1) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 13832 ; 2 uses
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !863
  %.not = icmp eq ptr %i.hm, null
  br i1 %.not, label %bb.s, label %bb.r

bb.q:                                             ; preds = %bb.q, %.lr.ph170.new
  %i.hn = phi i64 [ %.pre174, %.lr.ph170.new ], [ %i.il, %bb.q ]
  %.0169 = phi i64 [ 1, %.lr.ph170.new ], [ %i.in, %bb.q ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph170.new ], [ %niter.next.1, %bb.q ]
  %i.ho = getelementptr [80 x i8], ptr %i.fw, i64 %.0169 ; 2 uses
  %i.hp = getelementptr i8, ptr %i.ho, i64 -48
  %i.hq = getelementptr i8, ptr %i.ho, i64 -40
  %i.hr = load ptr, ptr %i.hq, align 8, !tbaa !366
  %i.hs = load ptr, ptr %i.hp, align 8, !tbaa !138
  %i.ht = ptrtoint ptr %i.hr to i64
  %i.hu = ptrtoint ptr %i.hs to i64
  %i.hv = sub i64 %i.ht, %i.hu
  %i.hw = ashr exact i64 %i.hv, 4
  %i.hx = mul i64 %i.hw, 20
  %i.hy = add i64 %i.hx, %i.hn                    ; 2 uses
  %i.hz = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %.0169
  store i64 %i.hy, ptr %i.hz, align 8, !tbaa !95
  %i.ia = add nuw nsw i64 %.0169, 1               ; 2 uses
  %i.ib = getelementptr [80 x i8], ptr %i.fw, i64 %i.ia ; 2 uses
  %i.ic = getelementptr i8, ptr %i.ib, i64 -48
  %i.id = getelementptr i8, ptr %i.ib, i64 -40
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !366
  %i.if = load ptr, ptr %i.ic, align 8, !tbaa !138
  %i.ig = ptrtoint ptr %i.ie to i64
  %i.ih = ptrtoint ptr %i.if to i64
  %i.ii = sub i64 %i.ig, %i.ih
  %i.ij = ashr exact i64 %i.ii, 4
  %i.ik = mul i64 %i.ij, 20
  %i.il = add i64 %i.ik, %i.hy                    ; 3 uses
  %i.im = getelementptr inbounds nuw [8 x i8], ptr %i.ft, i64 %i.ia
  store i64 %i.il, ptr %i.im, align 8, !tbaa !95
  %i.in = add nuw nsw i64 %.0169, 2               ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge171.loopexit.unr-lcssa, label %bb.q, !llvm.loop !620

bb.r:                                             ; preds = %._crit_edge171
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 14088
  %i.ip = load ptr, ptr %i.io, align 8, !tbaa !864
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ip, i64 56
  store i64 %i.eg, ptr %i.iq, align 1
  %i.ir = load ptr, ptr %i.hl, align 8, !tbaa !863 ; 2 uses
  %i.is = load ptr, ptr %i.ir, align 8, !tbaa !53
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 48
  %i.iu = load ptr, ptr %i.it, align 8
  call void %i.iu(ptr noundef nonnull align 8 dereferenceable(184) %i.ir, ptr noundef nonnull align 8 dereferenceable(14448) %0) #13
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %._crit_edge171
  %i.iv = load ptr, ptr %11, align 8, !tbaa !368  ; 3 uses
  %.not.i.i.i = icmp eq ptr %i.iv, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIlSaIlEED2Ev.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.iw = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !635
  %i.iy = ptrtoint ptr %i.ix to i64
  %i.iz = ptrtoint ptr %i.iv to i64
  %i.ja = sub i64 %i.iy, %i.iz
  call void @_ZdlPvm(ptr noundef nonnull %i.iv, i64 noundef %i.ja) #25
  br label %_ZNSt6vectorIlSaIlEED2Ev.exit

_ZNSt6vectorIlSaIlEED2Ev.exit:                    ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  br label %bb.u

bb.u:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %_ZNSt6vectorIlSaIlEED2Ev.exit
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt12__shared_ptrIN4mold12GdbIndexDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.jb = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 4 uses
  %i.jc = load atomic i64, ptr %i.jb acquire, align 8 ; 2 uses
  %i.jd = icmp eq i64 %i.jc, 4294967297
  %i.je = trunc i64 %i.jc to i32                  ; 2 uses
  br i1 %i.jd, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  store i32 0, ptr %i.jb, align 8, !tbaa !50
  %i.jf = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  store i32 0, ptr %i.jf, align 4, !tbaa !51
  %i.jg = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  %i.ji = load ptr, ptr %i.jh, align 8
  call void %i.ji(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #13, !inline_history !621
  %i.jj = load ptr, ptr %i.n, align 8, !tbaa !53
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 24
  %i.jl = load ptr, ptr %i.jk, align 8
  call void %i.jl(ptr noundef nonnull align 8 dereferenceable(16) %i.n) #13, !inline_history !621
  br label %_ZNSt12__shared_ptrIN4mold12GdbIndexDataELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.x:                                             ; preds = %bb.v
  %i.jm = load i8, ptr @__libc_single_threaded, align 1, !tbaa !47
  %.not.i.i.i136 = icmp eq i8 %i.jm, 0
  br i1 %.not.i.i.i136, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.jn = add nsw i32 %i.je, -1
  store i32 %i.jn, ptr %i.jb, align 8, !tbaa !58
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.z:                                             ; preds = %bb.x
  %i.jo = atomicrmw volatile add ptr %i.jb, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.z, %bb.y
end_hunk_0
