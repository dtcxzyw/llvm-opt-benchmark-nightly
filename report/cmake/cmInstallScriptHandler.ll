Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmInstallScriptHandler?download=true
inline.NumInlined: 1346
inline.NumDeleted: 598
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN22cmInstallScriptHandler7InstallEjR17cmInstrumentation:bb.a
  call void @_ZdlPvm(ptr noundef %i.cm, i64 noundef %i.cq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.3
  %i.cr = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.cs = load ptr, ptr %i.cr, align 8, !tbaa !25 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  %i.cu = icmp eq ptr %i.cs, %i.ct
  br i1 %i.cu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3
  %i.cv = load i64, ptr %i.ct, align 8, !tbaa !27
  %i.cw = add i64 %i.cv, 1
  call void @_ZdlPvm(ptr noundef %i.cs, i64 noundef %i.cw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.4
  %i.cx = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !25 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.da = icmp eq ptr %i.cy, %i.cz
  br i1 %i.da, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4
  %i.db = load i64, ptr %i.cz, align 8, !tbaa !27
  %i.dc = add i64 %i.db, 1
  call void @_ZdlPvm(ptr noundef %i.cy, i64 noundef %i.dc) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.5
  %i.dd = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !25 ; 2 uses
  %i.df = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.dg = icmp eq ptr %i.de, %i.df
  br i1 %i.dg, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5
  %i.dh = load i64, ptr %i.df, align 8, !tbaa !27
  %i.di = add i64 %i.dh, 1
  call void @_ZdlPvm(ptr noundef %i.de, i64 noundef %i.di) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.6
  %i.dj = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !25 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.dm = icmp eq ptr %i.dk, %i.dl
  br i1 %i.dm, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6
  %i.dn = load i64, ptr %i.dl, align 8, !tbaa !27
  %i.do = add i64 %i.dn, 1
  call void @_ZdlPvm(ptr noundef %i.dk, i64 noundef %i.do) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.7
  %i.dp = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.dr = icmp eq ptr %i.dp, %i.dq
  br i1 %i.dr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7
  %i.ds = load i64, ptr %i.dq, align 8, !tbaa !27
  %i.dt = add i64 %i.ds, 1
  call void @_ZdlPvm(ptr noundef %i.dp, i64 noundef %i.dt) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.7, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.8
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %bb.r

bb.m:                                             ; preds = %bb.a
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %bb.dn

bb.n:                                             ; preds = %bb.b
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %bb.dl

bb.o:                                             ; preds = %.noexc.i, %bb.e
  %i.dw = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.p:                                             ; preds = %bb.l
  %i.dx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %12, i64 256
  %i.dz = load ptr, ptr %i.dy, align 8, !tbaa !25 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %12, i64 272 ; 2 uses
  %i.eb = icmp eq ptr %i.dz, %i.ea
  br i1 %i.eb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130: ; preds = %bb.p
  %i.ec = load i64, ptr %i.ea, align 8, !tbaa !27
  %i.ed = add i64 %i.ec, 1
  call void @_ZdlPvm(ptr noundef %i.dz, i64 noundef %i.ed) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132: ; preds = %bb.p, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130
  %i.ee = getelementptr inbounds nuw i8, ptr %12, i64 224
  %i.ef = load ptr, ptr %i.ee, align 8, !tbaa !25 ; 2 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %12, i64 240 ; 2 uses
  %i.eh = icmp eq ptr %i.ef, %i.eg
  br i1 %i.eh, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132
  %i.ei = load i64, ptr %i.eg, align 8, !tbaa !27
  %i.ej = add i64 %i.ei, 1
  call void @_ZdlPvm(ptr noundef %i.ef, i64 noundef %i.ej) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.1
  %i.ek = getelementptr inbounds nuw i8, ptr %12, i64 192
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !25 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %12, i64 208 ; 2 uses
  %i.en = icmp eq ptr %i.el, %i.em
  br i1 %i.en, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1
  %i.eo = load i64, ptr %i.em, align 8, !tbaa !27
  %i.ep = add i64 %i.eo, 1
  call void @_ZdlPvm(ptr noundef %i.el, i64 noundef %i.ep) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.2
  %i.eq = getelementptr inbounds nuw i8, ptr %12, i64 160
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !25 ; 2 uses
  %i.es = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 2 uses
  %i.et = icmp eq ptr %i.er, %i.es
  br i1 %i.et, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2
  %i.eu = load i64, ptr %i.es, align 8, !tbaa !27
  %i.ev = add i64 %i.eu, 1
  call void @_ZdlPvm(ptr noundef %i.er, i64 noundef %i.ev) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.3
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ex = load ptr, ptr %i.ew, align 8, !tbaa !25 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  %i.ez = icmp eq ptr %i.ex, %i.ey
  br i1 %i.ez, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.4, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3
  %i.fa = load i64, ptr %i.ey, align 8, !tbaa !27
  %i.fb = add i64 %i.fa, 1
  call void @_ZdlPvm(ptr noundef %i.ex, i64 noundef %i.fb) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.4

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.3, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.4
  %i.fc = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !25 ; 2 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.ff = icmp eq ptr %i.fd, %i.fe
  br i1 %i.ff, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.5, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.5

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.4
  %i.fg = load i64, ptr %i.fe, align 8, !tbaa !27
  %i.fh = add i64 %i.fg, 1
  call void @_ZdlPvm(ptr noundef %i.fd, i64 noundef %i.fh) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.5

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.5: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.4, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.5
  %i.fi = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !25 ; 2 uses
  %i.fk = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.fl = icmp eq ptr %i.fj, %i.fk
  br i1 %i.fl, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.6, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.6

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.5
  %i.fm = load i64, ptr %i.fk, align 8, !tbaa !27
  %i.fn = add i64 %i.fm, 1
  call void @_ZdlPvm(ptr noundef %i.fj, i64 noundef %i.fn) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.6

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.6: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.5, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.6
  %i.fo = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.fp = load ptr, ptr %i.fo, align 8, !tbaa !25 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.fr = icmp eq ptr %i.fp, %i.fq
  br i1 %i.fr, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.7, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.7

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.6
  %i.fs = load i64, ptr %i.fq, align 8, !tbaa !27
  %i.ft = add i64 %i.fs, 1
  call void @_ZdlPvm(ptr noundef %i.fp, i64 noundef %i.ft) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.7

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.7: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.6, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.7
  %i.fu = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.fw = icmp eq ptr %i.fu, %i.fv
  br i1 %i.fw, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.8

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.8: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.7
  %i.fx = load i64, ptr %i.fv, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4.a

bb.q:                                             ; preds = %.noexc.i114
  %i.fy = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !25 ; 2 uses
  %i.gb = getelementptr inbounds nuw i8, ptr %12, i64 144 ; 2 uses
  %i.gc = icmp eq ptr %i.ga, %i.gb
  br i1 %i.gc, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133: ; preds = %bb.q
  %i.gd = load i64, ptr %i.gb, align 8, !tbaa !27
  %i.ge = add i64 %i.gd, 1
  call void @_ZdlPvm(ptr noundef %i.ga, i64 noundef %i.ge) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135: ; preds = %bb.q, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133
  %i.gf = getelementptr inbounds nuw i8, ptr %12, i64 96
  %i.gg = load ptr, ptr %i.gf, align 8, !tbaa !25 ; 2 uses
  %i.gh = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %i.gi = icmp eq ptr %i.gg, %i.gh
  br i1 %i.gi, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.1, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.1

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135
  %i.gj = load i64, ptr %i.gh, align 8, !tbaa !27
  %i.gk = add i64 %i.gj, 1
  call void @_ZdlPvm(ptr noundef %i.gg, i64 noundef %i.gk) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.1

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.1: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.1
  %i.gl = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.gm = load ptr, ptr %i.gl, align 8, !tbaa !25 ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %12, i64 80 ; 2 uses
  %i.go = icmp eq ptr %i.gm, %i.gn
  br i1 %i.go, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.2, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.2

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.1
  %i.gp = load i64, ptr %i.gn, align 8, !tbaa !27
  %i.gq = add i64 %i.gp, 1
  call void @_ZdlPvm(ptr noundef %i.gm, i64 noundef %i.gq) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.2

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.2: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.1, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.2
  %i.gr = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.gs = load ptr, ptr %i.gr, align 8, !tbaa !25 ; 2 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %12, i64 48 ; 2 uses
  %i.gu = icmp eq ptr %i.gs, %i.gt
  br i1 %i.gu, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.3, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.3

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.2
  %i.gv = load i64, ptr %i.gt, align 8, !tbaa !27
  %i.gw = add i64 %i.gv, 1
  call void @_ZdlPvm(ptr noundef %i.gs, i64 noundef %i.gw) #23
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.3

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.3: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.2, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.3
  %i.gx = load ptr, ptr %12, align 8, !tbaa !25   ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.gz = icmp eq ptr %i.gx, %i.gy
  br i1 %i.gz, label %.thread, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4: ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.3
  %25 = load i64, ptr %i.gy, align 8, !tbaa !27
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4.a

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4.a: ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.8, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4
  %.sink480 = phi i64 [ %25, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4 ], [ %i.fx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.8 ]
  %.sink = phi ptr [ %i.gx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4 ], [ %i.fu, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.8 ]
  %.pn.pn.pn.pn.pn.pn.pn.pn274.ph = phi { ptr, i32 } [ %i.fy, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4 ], [ %i.dx, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i130.8 ]
  %i.ha = add i64 %.sink480, 1
  call void @_ZdlPvm(ptr noundef %.sink, i64 noundef %i.ha) #23
  br label %.thread

.thread:                                          ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4.a, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.3, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.7, %bb.o
  %.pn.pn.pn.pn.pn.pn.pn.pn274 = phi { ptr, i32 } [ %i.dw, %bb.o ], [ %i.dx, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit132.7 ], [ %i.fy, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit135.3 ], [ %.pn.pn.pn.pn.pn.pn.pn.pn274.ph, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i133.4.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #22
  br label %.loopexit.split-lp278

bb.r:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.8, %bb.d
  %i.hb = load ptr, ptr %0, align 8, !tbaa !56    ; 2 uses
  %i.hc = load ptr, ptr %i.g, align 8, !tbaa !56  ; 2 uses
  %.not328 = icmp eq ptr %i.hb, %i.hc
  br i1 %.not328, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.r
  %i.hd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 8 ; 3 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %10, i64 16
  br label %bb.u

._crit_edge:                                      ; preds = %_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE12emplace_backIJRNS0_13InstallScriptEEEERS1_DpOT_.exit, %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #22
  store i64 0, ptr %i.c, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #22
  store i64 0, ptr %i.d, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #22
  store i64 0, ptr %i.e, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #22
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %13, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.hg = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 0, ptr %i.hg, align 8
  %i.hh = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #26
          to label %.noexc136 unwind label %bb.aq ; 8 uses

.noexc136:                                        ; preds = %._crit_edge
  %i.hi = getelementptr inbounds nuw i8, ptr %8, i64 16
  store ptr %10, ptr %i.hh, align 16, !tbaa !58
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 8
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx, align 8, !tbaa !60
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 16
  store ptr %i.d, ptr %.sroa.6.0..sroa_idx, align 16, !tbaa !60
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 24
  store ptr %i.e, ptr %.sroa.7.0..sroa_idx, align 8, !tbaa !60
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 32
  store ptr %9, ptr %.sroa.8.0..sroa_idx, align 16, !tbaa !62
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 40
  store i32 %1, ptr %.sroa.9.0..sroa_idx, align 8, !tbaa !45
  %.sroa.10256.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.hh, i64 48
  store ptr %13, ptr %.sroa.10256.0..sroa_idx, align 16, !tbaa !64
  store ptr %i.hh, ptr %8, align 16, !tbaa !65
  %.sroa.0.i.i.i.sroa.0.0.copyload = load <2 x i64>, ptr %8, align 16, !tbaa !27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %8, ptr noundef nonnull align 16 dereferenceable(32) %13, i64 16, i1 false), !tbaa.struct !66
  store <2 x i64> %.sroa.0.i.i.i.sroa.0.0.copyload, ptr %13, align 16, !tbaa !27
  %i.hj = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 5 uses
  %i.hk = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.hl = load <2 x ptr>, ptr %i.hj, align 16, !tbaa !65
  %i.hm = load ptr, ptr %i.hj, align 16, !tbaa !65 ; 2 uses
  store ptr @"_ZNSt17_Function_handlerIFvvEZN22cmInstallScriptHandler7InstallEjR17cmInstrumentationE3$_0E10_M_managerERSt9_Any_dataRKS6_St18_Manager_operation", ptr %i.hj, align 16, !tbaa !65
  store <2 x ptr> %i.hl, ptr %i.hi, align 16, !tbaa !65
  store ptr @"_ZNSt17_Function_handlerIFvvEZN22cmInstallScriptHandler7InstallEjR17cmInstrumentationE3$_0E9_M_invokeERKSt9_Any_data", ptr %i.hk, align 8, !tbaa !65
  %.not.i.i = icmp eq ptr %i.hm, null
  br i1 %.not.i.i, label %.thread474, label %bb.s

.thread474:                                       ; preds = %.noexc136
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br label %bb.ab

bb.s:                                             ; preds = %.noexc136
  %i.hn = invoke noundef zeroext i1 %i.hm(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 8 dereferenceable(32) %8, i32 noundef 3)
          to label %bb.z unwind label %bb.t       ; 0 uses

bb.t:                                             ; preds = %bb.s
  %i.ho = landingpad { ptr, i32 }
          catch ptr null
  %i.hp = extractvalue { ptr, i32 } %i.ho, 0
  call void @__clang_call_terminate(ptr %i.hp) #25
  unreachable

bb.u:                                             ; preds = %.lr.ph, %_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE12emplace_backIJRNS0_13InstallScriptEEEERS1_DpOT_.exit
  %.sroa.0260.0329 = phi ptr [ %i.hb, %.lr.ph ], [ %i.id, %_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE12emplace_backIJRNS0_13InstallScriptEEEERS1_DpOT_.exit ] ; 5 uses
  %i.hq = load ptr, ptr %11, align 8, !tbaa !17   ; 3 uses
  %i.hr = load ptr, ptr %i.hd, align 8, !tbaa !17 ; 2 uses
  %i.hs = icmp eq ptr %i.hq, %i.hr
  br i1 %i.hs, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ht = getelementptr inbounds nuw i8, ptr %.sroa.0260.0329, i64 32
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hq, i64 224
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %i.hu, ptr noundef nonnull align 8 dereferenceable(32) %i.ht)
          to label %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge unwind label %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge: ; preds = %bb.v
  %.pre = load ptr, ptr %11, align 8, !tbaa !17
  %.pre344 = load ptr, ptr %i.hd, align 8, !tbaa !17
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit: ; preds = %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge, %bb.u
  %i.hv = phi ptr [ %.pre344, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %i.hr, %bb.u ]
  %i.hw = phi ptr [ %.pre, %._ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit_crit_edge ], [ %i.hq, %bb.u ]
  %i.hx = getelementptr inbounds nuw i8, ptr %.sroa.0260.0329, i64 64 ; 2 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !17
  invoke void @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE15_M_range_insertIN9__gnu_cxx17__normal_iteratorIPS5_S7_EEEEvSC_T_SD_St20forward_iterator_tag(ptr noundef nonnull align 8 dereferenceable(24) %i.hx, ptr %i.hy, ptr %i.hw, ptr %i.hv)
          to label %bb.w unwind label %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.w:                                             ; preds = %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit
  %i.hz = load ptr, ptr %i.he, align 8, !tbaa !69 ; 3 uses
  %i.ia = load ptr, ptr %i.hf, align 8, !tbaa !70
  %.not.i = icmp eq ptr %i.hz, %i.ia
  br i1 %.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN22cmInstallScriptHandler19InstallScriptRunnerC2ERKNS_13InstallScriptE(ptr noundef nonnull align 8 dereferenceable(96) %i.hz, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0260.0329)
          to label %.noexc139 unwind label %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc139:                                        ; preds = %bb.x
  %i.ib = load ptr, ptr %i.he, align 8, !tbaa !69
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ib, i64 96
  store ptr %i.ic, ptr %i.he, align 8, !tbaa !69
  br label %_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE12emplace_backIJRNS0_13InstallScriptEEEERS1_DpOT_.exit

bb.y:                                             ; preds = %bb.w
  invoke void @_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE17_M_realloc_insertIJRNS0_13InstallScriptEEEEvN9__gnu_cxx17__normal_iteratorIPS1_S3_EEDpOT_(ptr noundef nonnull align 8 dereferenceable(24) %10, ptr %i.hz, ptr noundef nonnull align 8 dereferenceable(88) %.sroa.0260.0329)
          to label %_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE12emplace_backIJRNS0_13InstallScriptEEEERS1_DpOT_.exit unwind label %.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt6vectorIN22cmInstallScriptHandler19InstallScriptRunnerESaIS1_EE12emplace_backIJRNS0_13InstallScriptEEEERS1_DpOT_.exit: ; preds = %bb.y, %.noexc139
  %i.id = getelementptr inbounds nuw i8, ptr %.sroa.0260.0329, i64 88 ; 2 uses
  %.not = icmp eq ptr %i.id, %i.hc
  br i1 %.not, label %._crit_edge, label %bb.u

.loopexit.split-lp278.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.v, %bb.x, %bb.y, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEaSERKS4_.exit, %bb.c
  %lpad.loopexit.split-lp481.a = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp278

bb.z:                                             ; preds = %bb.s
  %.pre346 = load ptr, ptr %i.hj, align 16, !tbaa !72
  %i.ie = icmp eq ptr %.pre346, null
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #22
  br i1 %i.ie, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  invoke void @_ZSt25__throw_bad_function_callv() #24
          to label %.noexc142 unwind label %bb.aq

.noexc142:                                        ; preds = %bb.aa
  unreachable

bb.ab:                                            ; preds = %.thread474, %bb.z
  %i.if = load ptr, ptr %i.hk, align 8, !tbaa !74
  invoke void %i.if(ptr noundef nonnull align 8 dereferenceable(32) %13)
          to label %_ZNKSt8functionIFvvEEclEv.exit unwind label %bb.aq, !inline_history !158

_ZNKSt8functionIFvvEEclEv.exit:                   ; preds = %bb.ab
  %i.ig = invoke noundef ptr @_ZNK2cm11uv_loop_ptrcvP9uv_loop_sEv(ptr noundef nonnull align 8 dereferenceable(16) %9)
          to label %bb.ac unwind label %bb.aq

bb.ac:                                            ; preds = %_ZNKSt8functionIFvvEEclEv.exit
  %i.ih = invoke i32 @uv_run(ptr noundef %i.ig, i32 noundef 0)
          to label %bb.ad unwind label %bb.aq     ; 0 uses

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #22
  %i.ii = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 10 uses
  store ptr %i.ii, ptr %14, align 8, !tbaa !22
  %i.ij = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 9 uses
  store i64 0, ptr %i.ij, align 8, !tbaa !26
  store i8 0, ptr %i.ii, align 8, !tbaa !27
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.il = load ptr, ptr %i.ik, align 8, !tbaa !17 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !17 ; 2 uses
  %.not275335 = icmp eq ptr %i.il, %i.in
  br i1 %.not275335, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit146, label %.lr.ph338

.lr.ph338:                                        ; preds = %bb.ad
  %i.io = getelementptr inbounds nuw i8, ptr %15, i64 528
  %i.ip = getelementptr inbounds nuw i8, ptr %15, i64 544 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i163 = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.iq = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ir = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.gep20.i = getelementptr inbounds nuw i8, ptr %19, i64 8
  %.sroa.4.0..sroa_idx.i10.i164 = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.is = getelementptr inbounds nuw i8, ptr %6, i64 40
  %i.it = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.4.0..sroa_idx.i18.i165 = getelementptr inbounds nuw i8, ptr %6, i64 56
  %i.iu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.iv = getelementptr inbounds nuw i8, ptr %18, i64 16 ; 6 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %18, i64 8 ; 5 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %19, i64 16 ; 4 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.iy = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.iz = getelementptr inbounds nuw i8, ptr %7, i64 24
  %.sroa.4.0..sroa_idx.i10.i = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ja = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.jb = getelementptr inbounds nuw i8, ptr %7, i64 48
  %.sroa.4.0..sroa_idx.i18.i = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.jc = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.jd = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 6 uses
  %i.je = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 5 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.sroa.4.0..sroa_idx.i.i185 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ji = getelementptr inbounds nuw i8, ptr %4, i64 24
end_hunk_0
